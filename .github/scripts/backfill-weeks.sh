#!/bin/bash
# backfill-weeks.sh - Generate weekly report posts for given ISO weeks of a year.
#
# Usage: ./backfill-weeks.sh YEAR WEEK [WEEK...]
#
# Fetches the lore.kernel.org archive for each week, renders the report
# deterministically, and writes content/news/<year>/weekly-report-w<NN>.md.

set -euo pipefail

cd "$(dirname "$0")/../.."

YEAR="${1:?Usage: $0 YEAR WEEK [WEEK...]}"
shift

for WEEK in "$@"; do
    WEEK_PAD=$(printf "%02d" "$WEEK")

    read -r START END < <(python3 -c "
from datetime import date, timedelta
mon = date.fromisocalendar($YEAR, $WEEK, 1)
print(mon, mon + timedelta(days=6))
")

    POST_DIR="content/news/${YEAR}"
    POST_FILE="${POST_DIR}/weekly-report-w${WEEK_PAD}.md"
    mkdir -p "$POST_DIR"

    echo ">>> Week ${WEEK_PAD}: ${START} .. ${END}" >&2

    if ! .github/scripts/fetch-lore.sh "$START" "$END" > /tmp/lore-w${WEEK_PAD}.txt 2>/tmp/lore-w${WEEK_PAD}.log; then
        echo "    FAILED to fetch; see /tmp/lore-w${WEEK_PAD}.log" >&2
        continue
    fi

    if ! .github/scripts/render-weekly-report.py < /tmp/lore-w${WEEK_PAD}.txt > /tmp/body-w${WEEK_PAD}.md; then
        echo "    FAILED to render" >&2
        continue
    fi

    SUMMARY=$(grep -m1 '^\*\*Total messages:' /tmp/body-w${WEEK_PAD}.md | sed 's/\*\*//g')

    cat > "$POST_FILE" <<FRONTMATTER
---
title: "linux-bluetooth Weekly Report - Week ${WEEK_PAD}"
date: ${END}
summary: "${SUMMARY}"
draft: false
---

FRONTMATTER

    cat /tmp/body-w${WEEK_PAD}.md >> "$POST_FILE"

    echo "    wrote ${POST_FILE} (${SUMMARY})" >&2
    sleep 3
done
