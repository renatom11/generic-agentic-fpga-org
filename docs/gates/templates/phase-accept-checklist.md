# Gate: P<n>-phase-accept

<!-- Copy to docs/gates/P<n>-phase-accept-checklist.md at the start of P<n>
     hardening. Only the orchestrator stages docs/gates/** (PROTOCOL §6);
     signatures are transcribed from the signing agent's journal per
     PROTOCOL §7. Delete these comments when instantiating. -->

Closes when the phase's validation evidence is green against the success
criteria recorded at the G0 intake for this phase, the audit report is
committed with no open CRITICAL findings, and the sponsor approves
(escalation class E1) — PROTOCOL §7.

## Acceptance evidence

<!-- One row per intake-recorded success criterion for this phase — copied
     from README.md's phase table verbatim, then evidenced. Every Evidence
     cell is a CI run id + SHA or a committed report path; PROTOCOL §10: no
     gate signature rests on a local build, and a skipped or absent check is
     never a PASS (no-verdict is its own class and blocks the row). -->

| # | Success criterion (verbatim from intake) | Evidence | Status |
|---|---|---|---|
| 1 | <criterion> | <run id at `<sha>` / docs/reports/dv/… > | OPEN / GREEN / NO-VERDICT |

## Audit release

| # | Item | Status | Signature |
|---|---|---|---|
| 1 | Phase audit report committed to `docs/reports/audit/` (AUD-NNNN) | OPEN | <J-auditor-NNNN — verdict + report path> |
| 2 | No open CRITICAL findings; each CRITICAL raised during the phase dispositioned by ADR **and re-verified by the auditor** | OPEN | <J-auditor-NNNN — re-verification report> |
| 3 | DV-escape ledger reviewed for the phase; every escape carries a journaled root cause | OPEN | <J-auditor-NNNN> |

### Auditor countersignature (transcribed)

> "I sign gate P<n>-phase-accept, audit release, at `<sha>`." — auditor,
> journal `J-auditor-NNNN` (AUD-NNNN), transcribed by the orchestrator
> <UTC date> per PROTOCOL §3's auditor exception.

## Carry-forward ledger

<!-- Permanent C-nn ids, named landing sites, closure recorded in place —
     same rules as the sibling templates. A row may land in the NEXT
     phase's spec-freeze ledger; if so, both ledgers carry it, cross-
     referenced. An OPEN row with no landing site blocks the gate. -->

| id | Item | Must land before | Status |
|---|---|---|---|
| C-nn | <obligation surviving the phase> | <P<n+1> gate / named packet> | OPEN / CLOSED (WO-NNNN at `<sha>`) |

## Lessons harvest

<!-- Instantiate docs/gates/templates/lessons-harvest-block.md here when
     this checklist opens (PROTOCOL §7.1); the gate is not fully signed
     until the block's precondition boxes are checked. This gate is
     sponsor-signed: its block records the automatic org-generic landing
     (the inner hop, under this gate's signature) and the sponsor's one
     yes/no on the outer hop (default yes) — or the standing
     pre-answer's board reference, where one stands (§7) — discharging
     everything DEFERRED from the phase's SO- packets and
     P<n>-module-ready — one question at most, beside S1
     (docs/FEDERATION.md §0, §7). The block at THIS gate
     additionally includes the auditor's PHASE RETROSPECTIVE (PROTOCOL
     §7.1, ADR-0010): one second-altitude row mined by the auditor over
     the phase's harvest record — war stories, nils, tier-3 landings,
     bounce packets — never over raw journal spans; its candidates join
     this gate's yield, its report lands in docs/reports/audit/**, and
     the Exit below requires it. -->

## Sponsor items

| # | Item | Status | Signature |
|---|---|---|---|
| S1 | **Sponsor phase approval (E1)** — the evidence bundle (acceptance table, audit reports, carry-forwards) delivered decision-ready: options, recommendation, cost | OPEN | <sponsor approval date, recorded in J-orchestrator-NNNN> |

## Exit

Acceptance table green, audit release signed, carry-forwards dispositioned,
harvest block complete (including the auditor's phase retrospective), sponsor approved → the orchestrator declares the phase accepted in its
journal, updates `tasks/BOARD.md`, and (PR-flow mode) merges to `main` at
this milestone boundary via a trivial PR merge (PROTOCOL §5 R9). The next
phase's gate ladder instantiates from these templates.
