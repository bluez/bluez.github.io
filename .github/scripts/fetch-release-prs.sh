#!/bin/bash
# fetch-release-prs.sh - Generate release notes from closed PRs between BlueZ tags
#
# Usage: ./fetch-release-prs.sh <previous_tag> <new_tag>
#   e.g.: ./fetch-release-prs.sh 5.86 5.87
#
# BlueZ uses patchwork-based workflow: PRs are created by BluezTestBot
# and closed (not GitHub-merged) when patches are applied to the tree.
# This script fetches all closed PRs, categorizes them by subsystem based
# on title prefixes, and outputs structured release notes in markdown.
#
# Output: Prints formatted release notes to stdout.

set -euo pipefail

REPO="bluez/bluez"
PREVIOUS_TAG="${1:?Usage: $0 <previous_tag> <new_tag>}"
NEW_TAG="${2:?Usage: $0 <previous_tag> <new_tag>}"

# Get the date of the previous release tag
echo "Fetching release dates..." >&2
PREV_DATE=$(gh api "repos/${REPO}/releases/tags/${PREVIOUS_TAG}" --jq '.published_at // .created_at' 2>/dev/null || true)

# Validate it looks like a date
if [ -z "$PREV_DATE" ] || [[ "$PREV_DATE" == *"Not Found"* ]] || [[ "$PREV_DATE" == "null" ]]; then
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

    sleep 2
done

TOTAL=$(echo "$ALL_PRS" | jq 'length')

if [ "$TOTAL" -eq 0 ]; then
    echo "Error: No closed PRs found between ${PREVIOUS_TAG} and ${NEW_TAG}" >&2
    exit 1
fi

echo "Total closed PRs: ${TOTAL}" >&2

# Clean titles and categorize PRs using jq
# Categories are determined by title prefix patterns
CATEGORIZED=$(echo "$ALL_PRS" | jq -r '
    [.[] |
        # Clean the title
        .clean_title = (.title
            | gsub("\\[PW_SID:[0-9]+\\] "; "")
            | gsub("\\[BlueZ,?[^]]*\\] ?"; "")
            | gsub("\\[v[0-9]+[^]]*\\] ?"; "")
            | gsub("^ +"; "")
            | gsub("\\s+$"; "")
        ) |
        # Determine category from title
        .category = (
            if (.clean_title | test("^(bap|shared/bap)[:/]"; "i")) then "BAP (Basic Audio Profile)"
            elif (.clean_title | test("^(bass|shared/bass)[:/]"; "i")) then "BASS (Broadcast Audio Scan Service)"
            elif (.clean_title | test("^(mcp|shared/mcp)[:/]"; "i")) then "MCP (Media Control Profile)"
            elif (.clean_title | test("^(vcp|shared/vcp)[:/]"; "i")) then "VCP (Volume Control Profile)"
            elif (.clean_title | test("^(csip|shared/csip)[:/]"; "i")) then "CSIP (Coordinated Set Identification)"
            elif (.clean_title | test("^(avrcp)[:/]"; "i")) then "AVRCP"
            elif (.clean_title | test("^(a2dp|audio|transport|media)[:/]"; "i")) then "Audio"
            elif (.clean_title | test("^(hfp|audio/hfp)[:/]"; "i")) then "HFP (Hands-Free Profile)"
            elif (.clean_title | test("^(iso|monitor.*iso|lib.*iso)"; "i")) then "ISO (Isochronous Channels)"
            elif (.clean_title | test("^(adapter|device|src)[:/]"; "i")) then "Device Management"
            elif (.clean_title | test("^(gatt|shared/gatt|gatt-client|gatt-server)[:/]"; "i")) then "GATT"
            elif (.clean_title | test("^(obex|obexd)[:/]"; "i")) then "OBEX"
            elif (.clean_title | test("^(mesh|shared/mesh)[:/]"; "i")) then "Mesh"
            elif (.clean_title | test("^(monitor)[:/]"; "i")) then "Monitor"
            elif (.clean_title | test("^(emulator|hciemu)[:/]"; "i")) then "Emulator"
            elif (.clean_title | test("^(l2cap|lib.*l2cap)"; "i")) then "L2CAP"
            elif (.clean_title | test("^(mgmt|shared/mgmt)[:/]"; "i")) then "Management Interface"
            elif (.clean_title | test("^(doc|man)[:/]"; "i")) then "Documentation"
            elif (.clean_title | test("^(build|meson|configure|autoconf)"; "i")) then "Build System"
            elif (.clean_title | test("^(test|unit|tools/test)[:/]"; "i")) then "Testing"
            elif (.clean_title | test("^(tools|btpclient|btmon|btmgmt|bluetoothctl|client)[:/]"; "i")) then "Tools"
            elif (.clean_title | test("^(profiles|input|hostname|bearer|plugin|main)[:/]"; "i")) then "Profiles & Plugins"
            elif (.clean_title | test("^(shared)[:/]"; "i")) then "Shared Libraries"
            elif (.clean_title | test("[Ff]ix|[Cc]rash|[Bb]ug|[Rr]egression|[Nn]ull [Pp]ointer|off.by.one"; "")) then "Bug Fixes"
            else "Other"
            end
        )
    ] | group_by(.category) | sort_by(.[0].category) | .[] |
    {
        category: .[0].category,
        prs: [.[] | {number, title: .clean_title}]
    }
' | jq -s '.')

# Output formatted release notes
echo "This release includes the following changes:"
echo ""

# Print each category
echo "$CATEGORIZED" | jq -r '.[] | "---\n\n## \(.category)\n\n" + ([.prs[] | "- **\(.title)** ([#\(.number)](https://github.com/bluez/bluez/pull/\(.number)))"] | join("\n")) + "\n"'

echo "---"
echo ""
echo "PR List: https://github.com/${REPO}/pulls?q=is%3Apr+is%3Aclosed+closed%3A${PREV_DATE}..${NEW_DATE}+PW_SID"
echo "**Full Changelog**: [${PREVIOUS_TAG}...${NEW_TAG}](https://github.com/${REPO}/compare/${PREVIOUS_TAG}...${NEW_TAG})"
