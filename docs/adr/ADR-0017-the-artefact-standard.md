# ADR-0017: The artefact standard, and the review lane over what the sponsor sees

- **Status**: **ACCEPTED** — sponsor-directed ("the actual work products
  … were terrible and this is what the audit was trying to specify. You
  should try to take into account that type of stuff") under **freeze
  override #4**, scoped on the ADR-0008 pattern; end condition = the
  round's **closing commit** — the round includes the sponsor-directed
  my-project lessons-mining sweep, and the board records the close,
  which re-engages the freeze. Amendable only via PROTOCOL §11.
- **Deciders**: the sponsor (the direction above); the maintainer
  orchestrator, implementing Shell feedback 0001 §5.1–§5.7 and AUD-0003
  §3.C — findings from a descendant field program, filed as issues #1
  and #2 on this repository and verified against this tree before
  adoption.
- **Scope**: what a requirement must look like (MACHINE + PROSE); who
  reviews artefacts rendered for the sponsor (PROSE); when the auditor
  runs (PROSE); three working disciplines (PROSE).

## Context

A field program forked from this lineage passed every gate — journals,
work orders, three DV gradings, two withheld countersignatures — and
produced a requirements corpus in which 57 of 91 entries were not
requirement statements; three stated something that was not the
requirement, one of them the design alternative the specification had
rejected. The independent audit (AUD-0003: FAIL, 2 CRITICAL) traced the
cause: the origin program's quality lived in a project-local document
("every row stands alone"; "one REQ states one testable fact"), not in
the constitution the fork inherited — the shell shipped the certifier
without the criterion (F6). Its second CRITICAL: nothing in the org
design reviews what the orchestrator publishes to the sponsor, and the
only independent control is invoked at the audited party's discretion
(F4) — "the sponsor has been this program's review function." Both
findings were verified byte-for-byte against this tree before this ADR.

## Decision

1. **The requirements standard ships as law.**
   `docs/specs/REQUIREMENTS-TEMPLATE.md` carries the origin standard:
   the Kind taxonomy (INV/IFC/FUNC/ERR/PERF/PROC), one-REQ-one-fact,
   the stands-alone rule, obligation language, a mandatory Verification
   cell, and the topology rule — the requirements document is the
   single normative definition site, and no instruction may reduce it
   to an index (the WO-0003 trap, named in the template).
2. **The form is machine-checked.** `scripts/check_requirements.sh`
   (MACHINE) refuses any REQ row lacking a taxonomy Kind, a SHALL/SHALL
   NOT, or a Verification cell; wired into CI; skips cleanly in a copy
   with no corpus. Scenarios S41 (3 assertions) prove both directions.
3. **The gate asks the second question.** `P<n>-spec-freeze` requires
   the corpus authored per the template with the checker green, and
   dv_lead's countersignature grades **atomicity** as a named criterion
   beside testability — "testable from the whole document" does not
   entail "stands alone", and no role was ever asked the second
   question (AUD-0003 F8).
4. **The review lane over sponsor-facing artefacts exists.** No
   artefact derived from a normative document reaches the sponsor
   without the source owner's **fidelity signature** — and dv_lead's
   **derivability signature** where it renders requirements. Checklist
   rows on `P<n>-spec-freeze` (Q1–Q3) and `P<n>-phase-accept` (Q1);
   charter duties on the architect, dv_lead, and the orchestrator (who
   never self-certifies a view of someone else's source). PROSE.
5. **The audit is event-bound.** Every orchestrator-authored artefact
   outside `scripts/`/`.github/`, and everything shown to the sponsor,
   joins the next audit window's scope by standing rule — the
   orchestrator's discretion over whether is removed; only when is
   scheduling. PROSE.
6. **Three working disciplines** (orchestrator charter): read back what
   you delivered as the reader receives it; a renderer that needs
   heuristics is a stop signal that the source is missing a field;
   sponsor-facing prose follows `docs/STYLE.md` (new, short, binding).

## Alternatives considered

- **Wait for the freeze to lift** (the first landing is in flight) —
  rejected by sponsor direction: the defect class is live in a running
  program, and every day of founding activity ships the gap to new
  copies.
- **PROSE-only (no checker)** — rejected: the field program's four
  rounds of extractor patching showed surface-feature review cannot
  catch a fluent wrong artefact; the form check is cheap, and the audit
  showed it would have caught the corpus at first commit.
- **A new gate for derived artefacts** — rejected on AUD-0003 §3.C's
  own argument: the artefact class appears only beside existing gates;
  rows on those gates avoid new quorum machinery.
- **Adopting LC-06/07/08 into `docs/LESSONS.md` here** — refused:
  lessons travel the pipeline, and their harvest has not landed;
  channel discipline holds even when the content is this good.

## Corpus backtest (§11)

Run backwards over this repository: the shell ships no
`docs/specs/requirements.md` (no project), so the checker's
skip-branch is the shell's own steady state — verified green at this
tree. The one historical corpus this rule could have bound is the
descendant program's, where AUD-0003 measured exactly the violations
the checker refuses (49 header-glued table rows, 6 empty definitions);
the rule, applied backwards there, fails that corpus at its first
commit, which is the point. Self-test 47 → 50 assertions
(41 → 42 scenarios), all green. The website question (whether a public
deployment is a deliverable under Q-rows or needs its own lane) is
carried as AUD-0003's NV-3 — deliberately not decided here.
