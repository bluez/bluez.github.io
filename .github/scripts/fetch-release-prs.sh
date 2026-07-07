#!/bin/bash
# fetch-release-prs.sh - Fetch closed PRs between two BlueZ release tags
#
# Usage: ./fetch-release-prs.sh <previous_tag> <new_tag>
#   e.g.: ./fetch-release-prs.sh 5.86 5.87
#
# BlueZ uses patchwork-based workflow: PRs are created by BluezTestBot
# and closed (not GitHub-merged) when patches are applied to the tree.
# This script fetches all closed PRs in the date range between releases.
#
# Output: Prints structured PR data to stdout suitable for AI analysis.

set -euo pipefail

REPO="bluez/bluez"
PREVIOUS_TAG="${1:?Usage: $0 <previous_tag> <new_tag>}"
NEW_TAG="${2:?Usage: $0 <previous_tag> <new_tag>}"

# Get the date of the previous release tag
echo "Fetching release dates..." >&2
PREV_DATE=$(gh api "repos/${REPO}/releases/tags/${PREVIOUS_TAG}" --jq '.published_at // .created_at' 2>/dev/null || true)

# Validate it looks like a date
if [ -z "$PREV_DATE" ] || [[ "$PREV_DATE" == *"Not Found"* ]] || [[ "$PREV_DATE" == "null" ]]; then
    # Fallback: get the tag's commit date via git tag object
    TAG_SHA=$(gh api "repos/${REPO}/git/ref/tags/${PREVIOUS_TAG}" --jq '.object.sha' 2>/dev/null || true)
    if [ -n "$TAG_SHA" ] && [[ "$TAG_SHA" != *"Not Found"* ]]; then
        PREV_DATE=$(gh api "repos/${REPO}/git/tags/${TAG_SHA}" --jq '.tagger.date' 2>/dev/null || true)
        if [ -z "$PREV_DATE" ] || [[ "$PREV_DATE" == "null" ]]; then
            PREV_DATE=$(gh api "repos/${REPO}/commits/${TAG_SHA}" --jq '.commit.committer.date' 2>/dev/null || true)
        fi
    fi
fi

if [ -z "$PREV_DATE" ] || [[ "$PREV_DATE" == *"Not Found"* ]] || [[ "$PREV_DATE" == "null" ]]; then
    echo "Error: Could not determine date for tag ${PREVIOUS_TAG}" >&2
    exit 1
fi

# Check if the new tag has a release, otherwise use today
NEW_DATE=$(gh api "repos/${REPO}/releases/tags/${NEW_TAG}" --jq '.published_at // .created_at' 2>/dev/null || true)
if [ -z "$NEW_DATE" ] || [[ "$NEW_DATE" == *"Not Found"* ]] || [[ "$NEW_DATE" == "null" ]]; then
    NEW_DATE=$(date -u +%Y-%m-%dT%H:%M:%SZ)
fi

echo "Date range: ${PREV_DATE} to ${NEW_DATE}" >&2
echo "Fetching closed PRs..." >&2

# Fetch closed PRs using the search API with closed date range
# BlueZ PRs are closed (not merged) when patches are applied via patchwork
PAGE=1
PER_PAGE=100
ALL_PRS="[]"

while true; do
    QUERY="repo:${REPO}+is:pr+is:closed+closed:${PREV_DATE}..${NEW_DATE}"
    RESULT=$(gh api "search/issues?q=${QUERY}&per_page=${PER_PAGE}&page=${PAGE}&sort=created&order=asc" \
        --jq '[.items[] | {number, title, user: .user.login, closed_at: .closed_at, labels: [.labels[].name]}]' 2>/dev/null || echo "[]")

    if [ "$RESULT" = "[]" ] || [ -z "$RESULT" ]; then
        break
    fi

    ALL_PRS=$(echo "$ALL_PRS" "$RESULT" | jq -s 'add')

    COUNT=$(echo "$RESULT" | jq 'length')
    echo "  Page ${PAGE}: ${COUNT} PRs" >&2

    if [ "$COUNT" -lt "$PER_PAGE" ]; then
        break
    fi

    PAGE=$((PAGE + 1))
    if [ $PAGE -gt 10 ]; then
        echo "  Reached page limit" >&2
        break
    fi

    # Respect GitHub search rate limits
    sleep 2
done

TOTAL=$(echo "$ALL_PRS" | jq 'length')

if [ "$TOTAL" -eq 0 ]; then
    echo "Error: No closed PRs found between ${PREVIOUS_TAG} and ${NEW_TAG}" >&2
    exit 1
fi

echo "Total closed PRs: ${TOTAL}" >&2

# Filter: keep only PW_SID PRs (patchwork-submitted, i.e., real patches)
# and exclude the lone external PRs without PW_SID
PW_PRS=$(echo "$ALL_PRS" | jq '[.[] | select(.title | test("PW_SID"))]')
PW_COUNT=$(echo "$PW_PRS" | jq 'length')
OTHER_PRS=$(echo "$ALL_PRS" | jq '[.[] | select(.title | test("PW_SID") | not)]')
OTHER_COUNT=$(echo "$OTHER_PRS" | jq 'length')

echo "  Patchwork PRs: ${PW_COUNT}" >&2
echo "  Other PRs: ${OTHER_COUNT}" >&2

# Output structured data
echo "# Closed PRs: ${PREVIOUS_TAG} -> ${NEW_TAG}"
echo ""
echo "**Period**: ${PREV_DATE} to ${NEW_DATE}"
echo "**Total PRs closed**: ${TOTAL}"
echo "**Patchwork PRs (applied patches)**: ${PW_COUNT}"
echo "**Other PRs**: ${OTHER_COUNT}"
echo ""

# Clean up PW_SID prefix from titles for readability
# Title format: "[PW_SID:NNNNNN] [BlueZ,v1,1/2] actual title"
echo "## Patchwork PRs (Applied Patches)"
echo ""

echo "$PW_PRS" | jq -r 'sort_by(.number) | .[] | {number, title: (.title | gsub("\\[PW_SID:[0-9]+\\] "; "")), user: .user, closed_at, labels} | "- **\(.title)** ([#\(.number)](https://github.com/bluez/bluez/pull/\(.number))) - @\(.user) [\(.labels | join(", "))]"'

if [ "$OTHER_COUNT" -gt 0 ]; then
    echo ""
    echo "## Other PRs"
    echo ""
    echo "$OTHER_PRS" | jq -r 'sort_by(.number) | .[] | "- **\(.title)** ([#\(.number)](https://github.com/bluez/bluez/pull/\(.number))) - @\(.user) [\(.labels | join(", "))]"'
fi

echo ""
echo "## PR Query Link"
echo "https://github.com/${REPO}/pulls?q=is%3Apr+is%3Aclosed+closed%3A${PREV_DATE}..${NEW_DATE}+PW_SID"
echo ""
echo "**Full Changelog**: https://github.com/${REPO}/compare/${PREVIOUS_TAG}...${NEW_TAG}"
