#!/usr/bin/env bash
# check_requirements.sh — MACHINE check of the requirements corpus form
# (ADR-0017 + A1; docs/specs/REQUIREMENTS-TEMPLATE.md §3). Every REQ row
# must carry a taxonomy Kind, a SHALL/SHALL NOT obligation (as a word,
# not a substring), a non-empty Verification cell, and exactly four
# cells (an unescaped pipe or short row is a violation, not a mis-read).
# Also cross-checks: every REQ-### id cited in sibling spec files has a
# corpus row (orphan ids and corpus-elsewhere topologies are refused).
# Skips cleanly when no corpus and no citing specs exist.
#
# Usage: scripts/check_requirements.sh [path-to-requirements.md]
set -euo pipefail

REQ_FILE="${1:-docs/specs/requirements.md}"
SPEC_DIR="$(dirname "$REQ_FILE")"

cited_ids() {
  # REQ-### citations in sibling specs (templates and the corpus excluded)
  find "$SPEC_DIR" -maxdepth 1 -name '*.md' \
      ! -name "$(basename "$REQ_FILE")" ! -name '*TEMPLATE*' -print0 2>/dev/null \
    | xargs -0 grep -hoE 'REQ-[0-9]+' 2>/dev/null | sort -u || true
}

if [ ! -f "$REQ_FILE" ]; then
  CITED=$(cited_ids)
  if [ -n "$CITED" ]; then
    echo "REQ-FORM VIOLATION: no corpus at $REQ_FILE but sibling specs cite REQ ids ($(echo "$CITED" | head -3 | tr '\n' ' ')...) — the corpus-elsewhere topology is refused (ADR-0017 A1)"
    exit 1
  fi
  echo "OK: no requirements corpus at $REQ_FILE (no project in this copy) — nothing to check"
  exit 0
fi

awk -F'|' -v f="$REQ_FILE" '
  function trim(s) { gsub(/^[[:space:]]+|[[:space:]]+$/, "", s); return s }
  /^[[:space:]]*\|[[:space:]]*REQ-[0-9]+/ {
    id = trim($2); kind = trim($3); body = $4; verif = trim($5)
    count++
    if (NF != 6) {
      printf "REQ-FORM VIOLATION %s:%d: %s malformed row — %d cell(s), expected 4 (unescaped pipe or missing cell)\n", f, NR, id, NF - 2; bad = 1
      next
    }
    if (kind !~ /^(INV|IFC|FUNC|ERR|PERF|PROC)$/) {
      printf "REQ-FORM VIOLATION %s:%d: %s Kind \"%s\" not in INV/IFC/FUNC/ERR/PERF/PROC\n", f, NR, id, kind; bad = 1
    }
    if (body !~ /(^|[^A-Za-z])SHALL([^A-Za-z]|$)/) {
      printf "REQ-FORM VIOLATION %s:%d: %s carries no SHALL/SHALL NOT obligation (as a word)\n", f, NR, id; bad = 1
    }
    if (verif == "") {
      printf "REQ-FORM VIOLATION %s:%d: %s has an empty Verification cell\n", f, NR, id; bad = 1
    }
  }
  END {
    if (count == 0) { printf "REQ-FORM VIOLATION %s: corpus exists but contains no | REQ-### | rows\n", f; exit 1 }
    if (bad) exit 1
    printf "OK: %d requirement row(s) satisfy the form standard (Kind, SHALL, Verification, 4 cells)\n", count
  }
' "$REQ_FILE"

# Orphan-id cross-check: every cited id has a corpus row.
MISSING=0
for rid in $(cited_ids); do
  case "$rid" in REQ-0*|REQ-[1-9]*) ;; *) continue ;; esac
  if ! grep -qE "^[[:space:]]*\|[[:space:]]*${rid}([^0-9]|$)" "$REQ_FILE"; then
    echo "REQ-FORM VIOLATION: $rid cited in $SPEC_DIR specs but has no corpus row in $REQ_FILE (orphan id, ADR-0017 A1)"
    MISSING=1
  fi
done
[ "$MISSING" -eq 0 ] || exit 1
echo "OK: every cited REQ id resolves to a corpus row"
