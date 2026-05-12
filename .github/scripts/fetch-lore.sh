#!/bin/bash
# fetch-lore.sh - Fetch linux-bluetooth mailing list data from lore.kernel.org
#
# Usage: ./fetch-lore.sh [YYYY-MM-DD YYYY-MM-DD]
#   If no dates given, defaults to the previous week (Monday to Sunday).
#
# Reads bot and affiliation rules from:
#   .github/mailmap/bots.mailmap
#   .github/mailmap/affiliations.mailmap
#
# Output: Prints a structured summary to stdout suitable for AI analysis.

set -euo pipefail

UA="w3m/0.5.3"
LIST="linux-bluetooth"
BASE="https://lore.kernel.org/${LIST}"

# Resolve script directory to find mailmap files
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/../.." && pwd)"
BOTS_MAILMAP="${REPO_ROOT}/.github/mailmap/bots.mailmap"
AFFILIATIONS_MAILMAP="${REPO_ROOT}/.github/mailmap/affiliations.mailmap"

for f in "$BOTS_MAILMAP" "$AFFILIATIONS_MAILMAP"; do
    if [ ! -f "$f" ]; then
        echo "Error: mailmap not found: $f" >&2
        exit 1
    fi
done

# Determine date range
if [ $# -ge 2 ]; then
    START_DATE="$1"
    END_DATE="$2"
else
    # Previous week: Monday to Sunday
    # Find last Monday (if today is Monday, go back 7 days)
    DOW=$(date +%u)  # 1=Monday, 7=Sunday
    DAYS_SINCE_MON=$(( DOW - 1 ))
    if [ "$DAYS_SINCE_MON" -eq 0 ]; then
        DAYS_SINCE_MON=7
    fi
    LAST_MON=$(( DAYS_SINCE_MON + 7 ))
    START_DATE=$(date -d "-${LAST_MON} days" +%Y-%m-%d)
    END_DATE=$(date -d "-${DAYS_SINCE_MON} days" +%Y-%m-%d)
fi

# Compute ISO week number from start date
WEEK_NUM=$(date -d "$START_DATE" +%V)
YEAR=$(date -d "$START_DATE" +%G)

# End date for search query (exclusive, so add 1 day)
SEARCH_END=$(date -d "$END_DATE + 1 day" +%Y-%m-%d)

echo "=== linux-bluetooth Weekly Report Data ==="
echo "Period: ${START_DATE} to ${END_DATE} (Week ${WEEK_NUM}, ${YEAR})"
echo ""

WORKDIR=$(mktemp -d)
trap 'rm -rf "$WORKDIR"' EXIT

# Fetch search results via Atom feed for the date range
# lore supports: ?q=d:YYYYMMDD..YYYYMMDD&x=A for Atom output
SEARCH_START_COMPACT=$(echo "$START_DATE" | tr -d '-')
SEARCH_END_COMPACT=$(echo "$SEARCH_END" | tr -d '-')

echo "--- Fetching messages from lore.kernel.org ---" >&2

PAGE=0
TOTAL_FETCHED=0
while true; do
    OFFSET=$((PAGE * 200))
    URL="${BASE}/?q=d:${SEARCH_START_COMPACT}..${SEARCH_END_COMPACT}&x=A&o=${OFFSET}"
    echo "Fetching page $((PAGE + 1)) (offset ${OFFSET})..." >&2

    HTTP_CODE=$(curl -s -A "$UA" -o "$WORKDIR/feed_${PAGE}.xml" -w "%{http_code}" \
        --retry 3 --retry-delay 5 --max-time 30 "$URL")

    if [ "$HTTP_CODE" != "200" ]; then
        echo "Warning: HTTP ${HTTP_CODE} for page ${PAGE}" >&2
        break
    fi

    # Count entries in this page
    COUNT=$(grep -c '<entry>' "$WORKDIR/feed_${PAGE}.xml" 2>/dev/null || echo 0)
    TOTAL_FETCHED=$((TOTAL_FETCHED + COUNT))
    echo "  Got ${COUNT} entries (total: ${TOTAL_FETCHED})" >&2

    if [ "$COUNT" -lt 200 ]; then
        break  # Last page
    fi
    PAGE=$((PAGE + 1))

    # Safety limit
    if [ "$PAGE" -ge 10 ]; then
        echo "Warning: hit page limit" >&2
        break
    fi
done

echo "Total entries fetched: ${TOTAL_FETCHED}" >&2
echo ""

# Parse all Atom feeds into a structured format
# Pass mailmap file paths as arguments to the Python parser
cat "$WORKDIR"/feed_*.xml | python3 - "$BOTS_MAILMAP" "$AFFILIATIONS_MAILMAP" << 'PYTHON_SCRIPT'
import sys
import xml.etree.ElementTree as ET
from html import unescape
import re

# ---------------------------------------------------------------------------
# Load mailmap files
# ---------------------------------------------------------------------------

def load_bots_mailmap(path):
    """Parse bots.mailmap into name and email pattern lists."""
    name_patterns = []
    email_patterns = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#"):
                continue
            if line.startswith("name:"):
                name_patterns.append(line[5:].strip().lower())
            elif line.startswith("email:"):
                email_patterns.append(line[6:].strip().lower())
    return name_patterns, email_patterns


def load_affiliations_mailmap(path):
    """Parse affiliations.mailmap into ordered rule list.

    Returns [(kind, pattern, affiliation), ...] where kind is
    "email", "domain", or "name".
    """
    rules = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#"):
                continue
            if line.startswith("domain:"):
                rest = line[7:].strip()
                parts = rest.split(None, 1)
                if len(parts) == 2:
                    rules.append(("domain", parts[0].lower(), parts[1]))
            elif line.startswith("email:"):
                rest = line[6:].strip()
                parts = rest.split(None, 1)
                if len(parts) == 2:
                    rules.append(("email", parts[0].lower(), parts[1]))
            elif line.startswith("name:"):
                rest = line[5:].strip()
                # Last token is the affiliation, everything before is the name
                parts = rest.rsplit(None, 1)
                if len(parts) == 2:
                    rules.append(("name", parts[0].lower(), parts[1]))
    return rules


bots_mailmap = sys.argv[1]
affiliations_mailmap = sys.argv[2]

bot_name_patterns, bot_email_patterns = load_bots_mailmap(bots_mailmap)
affiliation_rules = load_affiliations_mailmap(affiliations_mailmap)

# ---------------------------------------------------------------------------
# Classification helpers
# ---------------------------------------------------------------------------

def is_bot(name, email=""):
    name_lower = name.lower()
    email_lower = email.lower()
    for pat in bot_name_patterns:
        if pat in name_lower:
            return True
    for pat in bot_email_patterns:
        if pat in email_lower:
            return True
    return False


def get_affiliation(name, email):
    """Return affiliation string or 'Independent'."""
    name_lower = name.lower()
    email_lower = email.lower()
    # Extract domain from email
    domain = ""
    if "@" in email_lower:
        domain = email_lower.split("@", 1)[1]

    for kind, pattern, aff in affiliation_rules:
        if kind == "email" and pattern == email_lower:
            return aff
        if kind == "domain" and domain == pattern:
            return aff
        if kind == "name" and pattern == name_lower:
            return aff
    return "Independent"


def normalize_name(name, email):
    """Merge known aliases into canonical names using affiliation rules."""
    # Use name-based affiliation rules as a hint for canonical names
    # (e.g. "hadess" -> keep as-is, but affiliation resolves to Red Hat)

    # Strip " via B4 Relay" suffix
    if " via B4 Relay" in name:
        name = name.replace(" via B4 Relay", "")

    # Merge email-based aliases via name overrides in affiliation map
    for kind, pattern, aff in affiliation_rules:
        if kind == "name":
            # If this person's email domain matches a known alias, remap
            pass  # affiliation lookup handles this; name stays as-is

    return name


# ---------------------------------------------------------------------------
# Parse Atom feed entries
# ---------------------------------------------------------------------------

data = sys.stdin.read()
entries = []

for match in re.finditer(r"<entry>(.*?)</entry>", data, re.DOTALL):
    entry_xml = "<entry>" + match.group(1) + "</entry>"
    try:
        elem = ET.fromstring(entry_xml)
    except ET.ParseError:
        continue

    title = elem.find("title")
    author_name = elem.find("author/name")
    author_email = elem.find("author/email")
    updated = elem.find("updated")
    link = elem.find("link")

    title_text = unescape(title.text) if title is not None and title.text else ""
    name_text = unescape(author_name.text) if author_name is not None and author_name.text else ""
    email_text = author_email.text if author_email is not None and author_email.text else ""
    date_text = updated.text if updated is not None and updated.text else ""
    href = link.get("href", "") if link is not None else ""

    # Extract message-id from link href
    msg_id = ""
    if href:
        parts = href.rstrip("/").split("/")
        if len(parts) >= 2:
            msg_id = parts[-1]

    bot = is_bot(name_text, email_text)
    role = "BOT" if bot else "HUMAN"
    name_text = normalize_name(name_text, email_text)
    affiliation = get_affiliation(name_text, email_text) if not bot else ""

    entries.append({
        "date": date_text[:10],
        "time": date_text[11:16] if len(date_text) > 16 else "",
        "name": name_text,
        "email": email_text,
        "role": role,
        "affiliation": affiliation,
        "subject": title_text,
        "msg_id": msg_id,
        "link": href,
    })

entries.sort(key=lambda e: e["date"] + e["time"])

# ---------------------------------------------------------------------------
# Output
# ---------------------------------------------------------------------------

humans = [e for e in entries if e["role"] == "HUMAN"]
bots = [e for e in entries if e["role"] == "BOT"]

print("=== STATISTICS ===")
print(f"Total messages: {len(entries)}")
print(f"Human messages: {len(humans)}")
print(f"Bot messages: {len(bots)}")
print()

print("=== BOT BREAKDOWN ===")
bot_counts = {}
for e in bots:
    bot_counts[e["name"]] = bot_counts.get(e["name"], 0) + 1
for name, count in sorted(bot_counts.items(), key=lambda x: -x[1]):
    print(f"  {name}: {count}")
print()

print("=== TOP HUMAN CONTRIBUTORS ===")
human_counts = {}
human_affs = {}
for e in humans:
    name = e["name"]
    human_counts[name] = human_counts.get(name, 0) + 1
    if name not in human_affs:
        human_affs[name] = e["affiliation"]
for name, count in sorted(human_counts.items(), key=lambda x: -x[1]):
    aff = human_affs.get(name, "Independent")
    print(f"  {name} ({aff}): {count}")
print()

print("=== THREADS ===")
seen_subjects = {}
for e in entries:
    subj = e["subject"]
    if subj not in seen_subjects:
        seen_subjects[subj] = {
            "first_date": e["date"],
            "from": e["name"],
            "role": e["role"],
            "affiliation": e["affiliation"],
            "msg_id": e["msg_id"],
            "link": e["link"],
            "count": 1,
            "participants": {e["name"]},
        }
    else:
        seen_subjects[subj]["count"] += 1
        seen_subjects[subj]["participants"].add(e["name"])

for subj, info in sorted(seen_subjects.items(), key=lambda x: x[1]["first_date"]):
    participants = ", ".join(sorted(info["participants"]))
    print(f"Date: {info['first_date']}")
    print(f"Subject: {subj}")
    print(f"From: {info['from']}")
    print(f"Affiliation: {info['affiliation']}")
    print(f"Messages: {info['count']}")
    print(f"Participants: {participants}")
    print(f"Link: {info['link']}")
    print(f"Message-ID: {info['msg_id']}")
    print()

print("=== ALL MESSAGES ===")
for e in entries:
    print(f"{e['date']}\t{e['time']}\t{e['name']}\t{e['role']}\t{e['affiliation']}\t{e['subject']}\t{e['link']}")
PYTHON_SCRIPT
