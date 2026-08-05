#!/usr/bin/env bash
# check_requirements.sh — MACHINE check of the requirements corpus form
# (ADR-0017; docs/specs/REQUIREMENTS-TEMPLATE.md §3). Every | REQ-### |
# table row must carry a taxonomy Kind, a SHALL/SHALL NOT obligation,
# and a non-empty Verification cell. Skips cleanly when no corpus
# exists — the shell and an org generic run no project.
#
# Usage: scripts/check_requirements.sh [path-to-requirements.md]
set -euo pipefail

REQ_FILE="${1:-docs/specs/requirements.md}"

if [ ! -f "$REQ_FILE" ]; then
  echo "OK: no requirements corpus at $REQ_FILE (no project in this copy) — nothing to check"
  exit 0
fi

awk -F'|' -v f="$REQ_FILE" '
  function trim(s) { gsub(/^[[:space:]]+|[[:space:]]+$/, "", s); return s }
  /^\|[[:space:]]*REQ-[0-9]+/ {
    id = trim($2); kind = trim($3); body = $4; verif = trim($5)
    count++
    if (kind !~ /^(INV|IFC|FUNC|ERR|PERF|PROC)$/) {
      printf "REQ-FORM VIOLATION %s:%d: %s Kind \"%s\" not in INV/IFC/FUNC/ERR/PERF/PROC\n", f, NR, id, kind; bad = 1
    }
    if (body !~ /SHALL/) {
      printf "REQ-FORM VIOLATION %s:%d: %s carries no SHALL/SHALL NOT obligation\n", f, NR, id; bad = 1
    }
    if (verif == "") {
      printf "REQ-FORM VIOLATION %s:%d: %s has an empty Verification cell\n", f, NR, id; bad = 1
    }
  }
  END {
    if (count == 0) { printf "REQ-FORM VIOLATION %s: corpus exists but contains no | REQ-### | rows\n", f; exit 1 }
    if (bad) exit 1
    printf "OK: %d requirement row(s) satisfy the form standard (Kind, SHALL, Verification)\n", count
  }
' "$REQ_FILE"
