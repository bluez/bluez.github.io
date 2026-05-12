#!/bin/bash
# fetch-lore.sh - Fetch linux-bluetooth mailing list data from lore.kernel.org
#
# Usage: ./fetch-lore.sh [YYYY-MM-DD YYYY-MM-DD]
#   If no dates given, defaults to the previous week (Monday to Sunday).
#
# Output: Prints a structured summary to stdout suitable for AI analysis.

set -euo pipefail

UA="w3m/0.5.3"
LIST="linux-bluetooth"
BASE="https://lore.kernel.org/${LIST}"

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
# Extract: date, author, email, subject, message-id
cat "$WORKDIR"/feed_*.xml | python3 -c '
import sys
import xml.etree.ElementTree as ET
from html import unescape
import re

# Bot classification patterns
BOT_PATTERNS = [
    "bluez.test.bot",
    "BluezTestBot",
    "patchwork-bot+bluetooth",
    "patchwork-bot+netdevbpf",
    "kernel test robot",
    "syzbot",
    "bugzilla-daemon",
    "github-actions[bot]",
    "prathibhamadugonde",
]

BOT_EMAIL_PATTERNS = [
    "lkp@intel.com",
    "syzbot",
    "bugzilla-daemon",
    "patchwork-bot",
    "sashal@kernel.org",  # AUTOSEL
]

def is_bot(name, email=""):
    for pat in BOT_PATTERNS:
        if pat.lower() in name.lower():
            return True
    for pat in BOT_EMAIL_PATTERNS:
        if pat.lower() in email.lower():
            return True
    # Sasha Levin AUTOSEL
    if "sasha levin" in name.lower():
        return True
    return False

# Read all XML from stdin, handling multiple concatenated feeds
data = sys.stdin.read()

# Split into individual feed documents and parse each
entries = []
ns = {"atom": "http://www.w3.org/2005/Atom"}

# Find all <entry>...</entry> blocks
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
    # Format: https://lore.kernel.org/linux-bluetooth/MESSAGE_ID/
    msg_id = ""
    if href:
        parts = href.rstrip("/").split("/")
        if len(parts) >= 2:
            msg_id = parts[-1]

    bot = is_bot(name_text, email_text)
    role = "BOT" if bot else "HUMAN"

    entries.append({
        "date": date_text[:10],
        "time": date_text[11:16] if len(date_text) > 16 else "",
        "name": name_text,
        "email": email_text,
        "role": role,
        "subject": title_text,
        "msg_id": msg_id,
        "link": href,
    })

# Sort by date/time
entries.sort(key=lambda e: e["date"] + e["time"])

# Output summary statistics
humans = [e for e in entries if e["role"] == "HUMAN"]
bots = [e for e in entries if e["role"] == "BOT"]

print(f"=== STATISTICS ===")
print(f"Total messages: {len(entries)}")
print(f"Human messages: {len(humans)}")
print(f"Bot messages: {len(bots)}")
print()

# Bot breakdown
print("=== BOT BREAKDOWN ===")
bot_counts = {}
for e in bots:
    bot_counts[e["name"]] = bot_counts.get(e["name"], 0) + 1
for name, count in sorted(bot_counts.items(), key=lambda x: -x[1]):
    print(f"  {name}: {count}")
print()

# Human contributor ranking
print("=== TOP HUMAN CONTRIBUTORS ===")
human_counts = {}
for e in humans:
    # Normalize: merge admin@fluentlogic.org with Martin Brodeur
    name = e["name"]
    if e["email"] and "fluentlogic.org" in e["email"]:
        name = "Martin Brodeur"
    # Merge hadess push notifications with Bastien Nocera
    if name == "hadess":
        name = "Bastien Nocera"
    # Merge B4 Relay
    if "via B4 Relay" in name:
        name = name.replace(" via B4 Relay", "")
    human_counts[name] = human_counts.get(name, 0) + 1
for name, count in sorted(human_counts.items(), key=lambda x: -x[1]):
    print(f"  {name}: {count}")
print()

# All threads (unique subjects, grouped)
print("=== THREADS ===")
seen_subjects = {}
for e in entries:
    subj = e["subject"]
    # Normalize subject for grouping (strip Re:, [PATCH ...] prefixes for matching)
    if subj not in seen_subjects:
        seen_subjects[subj] = {
            "first_date": e["date"],
            "from": e["name"],
            "role": e["role"],
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
    print(f"Date: {info[\"first_date\"]}")
    print(f"Subject: {subj}")
    print(f"From: {info[\"from\"]}")
    print(f"Messages: {info[\"count\"]}")
    print(f"Participants: {participants}")
    print(f"Link: {info[\"link\"]}")
    print(f"Message-ID: {info[\"msg_id\"]}")
    print()

# Full message list for detailed analysis
print("=== ALL MESSAGES ===")
for e in entries:
    print(f"{e[\"date\"]}\t{e[\"time\"]}\t{e[\"name\"]}\t{e[\"role\"]}\t{e[\"subject\"]}\t{e[\"link\"]}")
'
