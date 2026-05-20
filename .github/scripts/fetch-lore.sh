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

# End date for search query (lore date range is inclusive on both ends)
SEARCH_END="$END_DATE"

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
cat > "$WORKDIR/parse.py" << 'PYTHON_SCRIPT'
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

    Each line uses '->' to separate the pattern from the affiliation:
        domain:intel.com -> Intel
        email:user@example.com -> Company Name
        name:Display Name -> Company Name
    """
    rules = []
    with open(path) as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("#"):
                continue
            for prefix, kind in [("domain:", "domain"), ("email:", "email"),
                                 ("name:", "name")]:
                if line.startswith(prefix):
                    rest = line[len(prefix):]
                    parts = rest.split("->", 1)
                    if len(parts) == 2:
                        rules.append((kind, parts[0].strip().lower(),
                                      parts[1].strip()))
                    break
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
    # Strip namespace-prefixed elements (e.g. thr:in-reply-to) that cause
    # "unbound prefix" errors when parsing entries outside the feed root.
    entry_xml = re.sub(r"<[a-zA-Z]+:[^>]*/>", "", entry_xml)
    entry_xml = re.sub(r"<[a-zA-Z]+:[^>]*>.*?</[a-zA-Z]+:[^>]*>", "", entry_xml, flags=re.DOTALL)
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
# First, merge subjects that differ only by Re: prefix into the same thread
seen_subjects = {}
for e in entries:
    subj = e["subject"]
    # Normalize: strip Re: prefix for grouping
    norm_subj = re.sub(r"^(?:Re:\s*)+", "", subj, flags=re.IGNORECASE)
    is_original = (subj == norm_subj)  # Not a Re: message
    if norm_subj not in seen_subjects:
        seen_subjects[norm_subj] = {
            "first_date": e["date"],
            "from": e["name"],
            "role": e["role"],
            "affiliation": e["affiliation"],
            "link": e["link"],
            "count": 1,
            "participants": {e["name"]},
            "has_original": is_original,
        }
    else:
        seen_subjects[norm_subj]["count"] += 1
        seen_subjects[norm_subj]["participants"].add(e["name"])
        if is_original:
            seen_subjects[norm_subj]["has_original"] = True
        # Keep the original poster's info (earliest date)
        if e["date"] < seen_subjects[norm_subj]["first_date"]:
            seen_subjects[norm_subj]["first_date"] = e["date"]
            seen_subjects[norm_subj]["from"] = e["name"]
            seen_subjects[norm_subj]["role"] = e["role"]
            seen_subjects[norm_subj]["affiliation"] = e["affiliation"]
            seen_subjects[norm_subj]["link"] = e["link"]

# ---- Deduplicate patch series: keep only latest version ----
# Group patches by series using message-id prefix patterns, then
# collapse each series into one entry using the cover letter or
# first patch as representative.

def parse_patch_meta(subj):
    """Parse patch metadata from subject. Returns dict or None.
    Returns None for Re: subjects (replies are not new submissions)."""
    # Replies are discussion on existing threads, not new patches
    if re.match(r"^Re:\s*", subj, re.IGNORECASE):
        return None
    m = re.match(r"\[([^\]]*)\]\s*(.+)", subj)
    if not m:
        return None
    bracket = m.group(1)
    topic = m.group(2).strip()
    if not re.search(r"PATCH|RFC|BlueZ", bracket, re.IGNORECASE):
        return None
    vm = re.search(r"v(\d+)", bracket)
    version = int(vm.group(1)) if vm else 1
    nm = re.search(r"(\d+)/(\d+)", bracket)
    patch_num = int(nm.group(1)) if nm else 0
    total = int(nm.group(2)) if nm else 1
    return {"topic": topic, "version": version, "patch_num": patch_num, "total": total}

def extract_series_key(link):
    """Extract a grouping key from the message-id to identify patches in same series."""
    msg_id = link.rstrip("/").split("/")[-1] if link else ""
    # Pattern: YYYYMMDD-slug-vN-PATCHNUM-HASH@domain -> group by YYYYMMDD-slug-vN
    m = re.match(r"([\d]+-[^-]+-v\d+)-\d+-", msg_id)
    if m:
        return m.group(1)
    # Pattern: YYYYMMDD-slug-vN-PATCHNUM-HASH@domain (longer slug)
    m = re.match(r"(\d{8}-[\w_]+-v\d+)-", msg_id)
    if m:
        return m.group(1)
    # git-format-patch: HASH.TIMESTAMP.git.user@domain or cover.TIMESTAMP.git.user@domain
    m = re.match(r"(?:[0-9a-f]+|cover)\.(\d+)\.git\.(.+)", msg_id)
    if m:
        return f"git-{m.group(1)}-{m.group(2)}"
    # Numbered series without version: YYYYMMDDHHMMSS.NNNNNN-N-user@domain
    m = re.match(r"(\d{14}\.\d+-)\d+-", msg_id)
    if m:
        return m.group(1)
    return None

from collections import defaultdict

# Classify each thread as part of a series or standalone
series_map = defaultdict(list)  # series_key -> [(subj, info, meta)]
standalone = []

for subj, info in seen_subjects.items():
    # Skip GitHub push notifications entirely
    msg_id = info["link"].rstrip("/").split("/")[-1] if info["link"] else ""
    if "github.com" in msg_id:
        continue
    # Skip threads that only have Re: replies (no original post this week)
    if not info.get("has_original"):
        continue
    meta = parse_patch_meta(subj)
    if meta:
        series_key = extract_series_key(info["link"])
        if series_key:
            series_map[series_key].append((subj, info, meta))
        else:
            # Has patch format but no identifiable series key - standalone patch
            series_map[f"solo-{subj}"].append((subj, info, meta))
    else:
        standalone.append((subj, info))

# Collapse each series into one entry
merged_threads = []
for series_key, patches in series_map.items():
    # Find latest version
    max_version = max(p[2]["version"] for p in patches)
    latest = [p for p in patches if p[2]["version"] == max_version]
    # Total messages across ALL versions (for activity ranking)
    total_msgs = sum(p[1]["count"] for p in patches)
    # All participants
    all_participants = set()
    for p in patches:
        all_participants.update(p[1]["participants"])
    # Representative: cover letter (patch_num==0) or lowest patch number
    cover = next((p for p in latest if p[2]["patch_num"] == 0), None)
    rep = cover if cover else min(latest, key=lambda p: p[2]["patch_num"])
    subj, info, meta = rep
    merged_threads.append({
        "subject": meta["topic"],
        "from": info["from"],
        "affiliation": info["affiliation"],
        "role": info["role"],
        "link": info["link"],
        "count": total_msgs,
        "version": max_version,
        "patches": meta["total"],
        "participants": all_participants,
    })

# Add standalone threads (exclude GitHub push notifications)
for subj, info in standalone:
    msg_id = info["link"].rstrip("/").split("/")[-1] if info["link"] else ""
    if "github.com" in msg_id:
        continue  # Skip push notifications - they're not discussions
    merged_threads.append({
        "subject": subj,
        "from": info["from"],
        "affiliation": info["affiliation"],
        "role": info["role"],
        "link": info["link"],
        "count": info["count"],
        "version": 0,
        "patches": 0,
        "participants": info["participants"],
    })

# Filter to human-initiated, sort by activity
human_threads = [t for t in merged_threads if t["role"] == "HUMAN"]
human_threads.sort(key=lambda x: (-x["count"], x["subject"]))

for t in human_threads:
    short_subj = t["subject"][:80] + "..." if len(t["subject"]) > 80 else t["subject"]
    link = t["link"]
    msg_id = link.rstrip("/").split("/")[-1] if link else ""
    version_str = f" v{t['version']}" if t["version"] > 1 else ""
    patches_str = f" {t['patches']}patches" if t["patches"] > 1 else ""
    print(f"- {short_subj} | {t['from']}({t['affiliation']}) | {t['count']}msgs{version_str}{patches_str} | {msg_id}")

# ---------------------------------------------------------------------------
# === APPLIED TO BLUETOOTH-NEXT ===
# Detected from patchwork-bot+bluetooth notifications
# ---------------------------------------------------------------------------
print()
print("=== APPLIED TO BLUETOOTH-NEXT ===")
for e in entries:
    if "patchwork-bot" in e["name"].lower() and "bluetooth" in e["name"].lower():
        # Extract the patch title from subject (usually "Re: [PATCH...] title")
        subj = e["subject"]
        # Strip Re: and patch prefix to get clean title
        clean = re.sub(r"^(?:Re:\s*)+", "", subj, flags=re.IGNORECASE)
        clean = re.sub(r"^\[[^\]]*\]\s*", "", clean)
        print(f"- {clean[:70]} | {e['date']}")

# ---------------------------------------------------------------------------
# === PUSHED TO BLUEZ MASTER ===
# Detected from GitHub push notifications ([bluez/bluez] subjects)
# ---------------------------------------------------------------------------
print()
print("=== PUSHED TO BLUEZ MASTER ===")
push_entries = []
for e in entries:
    msg_id = e["link"].rstrip("/").split("/")[-1] if e["link"] else ""
    if "github.com" in msg_id and e["role"] == "HUMAN":
        # Subject format: "[bluez/bluez] hash: description"
        subj = e["subject"]
        push_entries.append((e["date"], e["name"], e["affiliation"], subj, msg_id))

# Deduplicate by subject (same commit can appear in multiple push notifications)
seen_pushes = set()
for date, author, aff, subj, msg_id in sorted(push_entries):
    # Extract commit description, strip [bluez/bluez] prefix and commit hash
    clean = re.sub(r"^\[.*?\]\s*", "", subj)
    clean = re.sub(r"^[0-9a-f]{6,7}:\s*", "", clean)
    if clean in seen_pushes:
        continue
    seen_pushes.add(clean)
    print(f"- {clean[:70]} | {author}({aff}) | {date}")

# ---------------------------------------------------------------------------
# === VERSION HISTORY ===
# Show series that went through multiple versions this week
# ---------------------------------------------------------------------------
print()
print("=== SERIES WITH MULTIPLE VERSIONS ===")
# Collect all versions seen per series key
all_series_versions = defaultdict(list)
for e in entries:
    subj = e["subject"]
    if re.match(r"^Re:", subj, re.IGNORECASE):
        continue
    m = re.match(r"\[([^\]]*)\]\s*(.+)", subj)
    if not m:
        continue
    bracket = m.group(1)
    topic = m.group(2).strip()
    if not re.search(r"PATCH|RFC|BlueZ", bracket, re.IGNORECASE):
        continue
    vm = re.search(r"v(\d+)", bracket)
    version = int(vm.group(1)) if vm else 1
    nm = re.search(r"(\d+)/(\d+)", bracket)
    patch_num = int(nm.group(1)) if nm else 0
    # Only track cover letters or single patches (not individual series patches)
    if patch_num <= 1:
        # Use topic as grouping key for version tracking
        all_series_versions[topic].append({
            "version": version,
            "from": e["name"],
            "affiliation": e["affiliation"],
            "date": e["date"],
            "link": e["link"],
        })

for topic, versions in sorted(all_series_versions.items()):
    unique_versions = sorted(set(v["version"] for v in versions))
    if len(unique_versions) > 1:
        latest = max(versions, key=lambda v: v["version"])
        msg_id = latest["link"].rstrip("/").split("/")[-1] if latest["link"] else ""
        ver_str = "->".join(f"v{v}" for v in unique_versions)
        print(f"- {topic[:70]} | {latest['from']}({latest['affiliation']}) | {ver_str} | {msg_id}")
PYTHON_SCRIPT

cat "$WORKDIR"/feed_*.xml | python3 "$WORKDIR/parse.py" "$BOTS_MAILMAP" "$AFFILIATIONS_MAILMAP"
