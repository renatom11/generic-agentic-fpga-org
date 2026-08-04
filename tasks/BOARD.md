# Program Board

**Live program state.** The orchestrator updates this file in the same commit
as any state change it describes. A fresh orchestrator session rehydrates by
reading: this board → `agents/PROTOCOL.md` → `ORG_CHART.md` → journal tails of
agents with open work.

## Current milestone

**M0 — bring-up.** This shell was seeded from the agentic-fpga program
(reference: https://github.com/renatom11/agentic-fpga, source pin
1799e10a37f19059ac3337982af4b6d035e14d0c) by that program's orchestrator
session; **seeding is COMPLETE at C9** and the operating orchestrator session
takes over here. Working branch: `main`.

Seeding verification, recorded at C9: enforcement self-test 38/38 in a fresh
clone; `check_journals.sh --all` green over the full seed history (R10 chain
verified); journal-check CI green on every push; toolchain-term sweep clean;
the only SEALED-named file is the mechanics template; zero broken relative
links; all 35 provenance permalinks into the source program return HTTP 200;
the bootstrap dry-run (a toy project walked through Stage 1+2) passed.

**Open for the operating orchestrator, in order** (details:
`docs/gates/G0-checklist.md`): sponsor charter critique (A6); sponsor branch
protection + branch-flow decision (A7/A8); project intake (B1-B6
→ README phase table + this board); the G0 Section C lessons-harvest
block; the auditor retro-audit of the seed commit
range as the org's first spawn (A9); then Stage 2 (toolchain ADR via E3,
build-CI template activation).

## Milestone roadmap

| Milestone | Scope | Status |
|---|---|---|
| M0 | Bring-up: G0 intake, org ratification, branch protection, enforcement self-test green | **In progress** |
| M1+ | Set at G0 intake — recorded here and in README.md's phase table | Pending |

## Gates

| Gate | Status | Checklist |
|---|---|---|
| G0 | **OPEN** | [docs/gates/G0-checklist.md](../docs/gates/G0-checklist.md) |

## Open work orders

_None._

## Pending escalations to sponsor

All three are class **E0 — founding** (PROTOCOL §8, ADR-0013): they exist
only at G0, and under `Repo role: canonical-shell` they are shipped
template state (ADR-0011).

- **G0 ratification** — the sponsor ratifies the org: this protocol, the
  roster, the charters (or amends them before ratifying).
- **Branch protection** — the sponsor configures branch protection on `main`
  and the working branch (no force push, no deletion, `journal-check`
  required, no admin bypass); without it PROTOCOL §5 R9 is convention only.
- **G0 intake** — the sponsor states the project: scope, phases, success
  criteria, and license classes for external references, recorded in
  README.md's phase table per PROTOCOL §1.

## Decisions on record

- **Repo role**: `canonical-shell` (values: canonical-shell / org-generic /
  project / solo-collapsed — ADR-0011). Set at founding; **a fork's first
  act is updating this line**. The canonical shell runs no program: the
  M0/G0 rows on this board are shipped template state that activates in a
  project fork, and a session booting here operates in maintainer mode
  (`CLAUDE.md`).
- Constitution ADR-0001..0007 pre-adopted at seeding (see each ADR's
  provenance).
- **Declared domain packs**: _none — set at G0 intake_ (recorded here in
  the same commit as the intake rows; a later orchestrator session
  rehydrates its loaded packs from this line).
- **Federation upstream** (`docs/FEDERATION.md` §0, §7):
  https://github.com/renatom11/generic-agentic-fpga-org — seeded. An
  **org generic** (or a solo-collapsed copy) keeps this line as the
  canonical shell; a **project** re-records it at G0 — checklist row
  B6 — to point at its own org generic. Set at founding, while the
  relationship is still known.
- **Project slug**: _set at G0 B6_ — lowercase-hyphenated, unique within
  the org; keys every federation landing (`docs/FEDERATION.md` §5.1).
- **Fork-point harvest baseline**: _set at G0 B6_ (ADR-0010) — last
  inherited entry id per journal chain; the first harvest tiles from
  baseline + 1.
- **Federation sent-ledger** (append-only; one line per landing:
  `<parent-record-id>` · landing SHA(s) · outer-hop PR URL or `—` ·
  obligation ids + states or `—`, ADR-0014):
  _none yet_. A landing's ledger line is written in the same commit as
  its transcription (`docs/FEDERATION.md` §5.1 step 5).
- **Amendment obligations** (open promotion obligations — the recurrence
  threshold, ADR-0010 / `docs/FEDERATION.md` §8; the read-path promotion
  channel rides the same ledger): _none open_. One line per obligation:
  entry id · opened by (landing / recurrence) · **state** — DISCHARGED
  (ADR-NNNN) / NARRATIVE-ONLY (reason) / DEFERRED (reason · discharging
  event). Every landing dispositions its own and sweeps the DEFERRED
  backlog (`docs/FEDERATION.md` §5.1 step 4c, ADR-0014) — landings are
  this fence's only cadence.
- **Feature freeze (J-orchestrator-0016): RE-ENGAGED.** The
  sponsor-directed federation-hardening round (ADR-0008..0013,
  2026-08-04) ran under a scoped override and closed at C26 — its end
  condition (ADR-0008). No new law lands until the first harvest
  transits; the deletion-only simplification pass stays queued behind
  that transit. **Override #2 (sponsor-delegated, 2026-08-04)**: the
  first-trial absorption round (ADR-0014, ADR-0015, and the SD-0004 doc
  fix) runs under a scoped override on the ADR-0008 pattern; end
  condition = the round's closing commit, which re-engages the freeze.
  **In a fork this line is re-scoped at founding**
  (BOOTSTRAP Stage 0 step 5, or B6 for a solo-collapsed copy) to: *no
  new law until this repository's first lessons landing completes* — the
  shell-history wording above never binds a fork as written.
- **Upstream defect channel**: shell defects — wrong claims, broken
  steps, gaps found while operating this copy — file as **GitHub issues
  on the federation upstream** (line above); they never travel through
  the lessons pipeline. Local defect log (one line per defect: date ·
  one-line summary · upstream issue URL): _none yet_.
