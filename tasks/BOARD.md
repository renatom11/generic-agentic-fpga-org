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

- **This repository**:
  https://github.com/renatom11/generic-agentic-fpga-org — the copy's own
  URL, re-recorded at every founding (BOOTSTRAP Stage 0 step 4 / G0 row
  B6). A session whose `git remote get-url origin` disagrees with this
  line is in a **fresh, unfounded copy** of whatever the role line below
  claims (`CLAUDE.md`, First session).
- **Repo role**: `canonical-shell` (values: canonical-shell / project —
  ADR-0011 as amended by ADR-0018). Set at founding; **a fresh copy's
  first act is its founding commit**, which sets this line to `project`
  on the default branch. The canonical shell runs no program: the M0/G0
  rows on this board are shipped template state that activates in a
  founded project, and a session booting here operates in maintainer mode
  (`CLAUDE.md`).
- Constitution ADR-0001..0007 pre-adopted at seeding (see each ADR's
  provenance).
- **Lessons baseline** (ADR-0018): _shipped template state — set at
  founding: the last inherited `docs/LESSONS.md` entry id per section.
  Everything past the baseline is what this copy's own program learned,
  which is the tail a human hands onward as the travel copy._
- **Lessons seed provenance** (ADR-0018): _none — recorded at founding
  only if the sponsor seeds `docs/LESSONS.md` from another project's
  travel copy (source repo or file, date, and the baseline that results)._
- **Amendment obligations** (open promotion obligations — the read-path
  channel, ADR-0012 as amended; the local recurrence threshold,
  ADR-0010 as amended): _none open_. One line per obligation: entry id ·
  opened by (harvest / recurrence) · **state** — DISCHARGED (ADR-NNNN) /
  NARRATIVE-ONLY (reason) / DEFERRED (reason · discharging event). Every
  gate dispositions the obligations its harvest opened and sweeps the
  DEFERRED backlog before it closes (PROTOCOL §7.1; ADR-0018) — gates
  are this repository's cadence.
- **Feature freeze (J-orchestrator-0016): RE-ENGAGED.** The
  sponsor-directed federation-hardening round (ADR-0008..0013,
  2026-08-04) ran under a scoped override and closed at C26 — its end
  condition (ADR-0008). No new law lands until the first harvest
  transits; the deletion-only simplification pass stays queued behind
  that transit. **Override #2 (sponsor-delegated, 2026-08-04): CLOSED** —
  the first-trial absorption round (ADR-0014, ADR-0015, the SD-0004 doc
  fix) ran under a scoped override on the ADR-0008 pattern and closed at
  its final commit, re-engaging the freeze there.
  **Override #3 (sponsor-directed, 2026-08-05): CLOSED** — the
  audit-correction round (ADR-0016 and its Amendment A1) ran under a
  scoped override on the same pattern; its end condition, extended by
  Amendment A1 from ADR-0016's landing commit to the completion-sweep
  commit that propagated the standing pre-answer tree-wide, closed at
  that sweep commit, re-engaging the freeze there.
  **Override #4 (sponsor-directed, 2026-08-05): OPEN** — the
  artefact-standard round (ADR-0017: requirements standard + MACHINE
  checker, atomicity criterion, derived-artefact fidelity lane,
  event-bound audit, read-back/stop-signal/house-style disciplines)
  plus the sponsor-directed my-project lessons-mining sweep; **CLOSED**
  at the sweep commit C44 (ADR-0017 A1), re-engaging the freeze there.
  **Override #5 (sponsor-directed, 2026-08-17): the federation
  retraction (ADR-0018) — CLOSED at the retraction sweep commit, and
  the freeze RETIRES with it.** Its end condition — the first lessons
  landing — retired with the pipeline it was built to test, and the
  deletion-only simplification pass queued above was this round. The
  fork re-scope instruction this bullet formerly carried is void: a
  founded copy inherits no freeze. Law changes hereafter by ordinary
  §11 ADRs.
- **First-trial findings absorbed** (2026-08-04, sponsor hand-relay from
  the first org generic founded from this shell, since retired): SD-0001
  → R-ROLE-1 wedge check (ADR-0015); SD-0002 (unobservable freeze) and
  SD-0003 (no defect channel) → already fixed in the zero-question
  founding commit; SD-0004 (fork-button impossibility) → clone-and-push
  now leads the founding docs; its ADR-0014 (obligation discharge)
  adopted as this shell's ADR-0014.
- **Second-trial defect fixed (2026-08-05)**: the first field founding
  from this shell hit an R-ROLE-1 false positive — the check
  substring-matched `canonical-shell` against the whole role line, and
  the shipped line carries the value enumeration as plain text on the
  same physical line, so every founded copy went permanently red (and
  the false red stops the next founding at the project M0 red-check).
  Fixed same-day: exact backticked-value comparison, regression
  scenario S40 (ADR-0015 Amendment A1). Reported live by the founding
  session through the upstream defect channel; its issue closes against
  the fix commit when it lands.
- **Third-trial defect fixed (2026-08-05)**: the second field founding
  parked its Stage 0 founding commit on a working branch, leaving the
  org generic's default branch carrying the pre-founding board; the
  project cloned from that branch inherited the shell's identity and
  mis-founded as an org generic — correct boot logic on poisoned
  state. Fixed same-day, docs-only (freeze-legal founding surfaces):
  Stage 0 step 4 mandates the founding commit lands on the default
  branch, step 7 gates Stage 0 completion on the default branch being
  green, README adds the fork-only-from-green rule, CLAUDE.md's boot
  line carries the branch mandate. The R-ROLE-1 red on the unfounded
  default branch was the designed signal all along — the fix makes it
  a stop condition instead of a judgement call.
- **Fourth-trial findings fixed (2026-08-05)**: the third field
  founding surfaced two founding-UX gaps. (1) The session asked which
  role to found as — the tree held the answer (no project material
  supplied → org generic) but stated the solo-collapsed alternative
  without saying decided-never-asked; the rule is now explicit on both
  CLAUDE.md surfaces. (2) The harness-vs-law branch conflict: a
  branch-pinned session must obtain the sponsor's permission to push
  the founding to the default branch — previously unframed, it
  surfaced as an ad-hoc question; now classified as an E0 founding
  action, bundled into the greeting, pre-grantable in the sponsor's
  first message (README suggests the grant sentence). Docs-only,
  freeze-legal founding surfaces.
- **Queued law-debt — dispositioned by ADR-0018**: item 1 (generalize
  R-ROLE-1, keyed on the This-repository line) **DISCHARGED** in the
  retraction sweep — check re-keyed, every role covered, scenarios
  S39/S40 rewritten. Item 2 (MACHINE guard on org-generic side-branch
  founding) **RETIRED** — the role it guarded no longer exists; the
  surviving rule (a founding commit lands on the default branch) keeps
  its PROSE form.
- **Independent claims audit (2026-08-05), on the record**: an
  independent agent audited the orchestrator's architecture claims
  against this tree. Verdicts: 9/13 confirmed or confirmed-with-caveat;
  4/13 refuted in part — the claimed-but-nonexistent standing
  pre-answer (C4); "lessons never touch working files", false in the
  solo-collapsed topology (C7); "lessons move only inside gate-closing
  commits", false of outer-hop PRs (C11); and "45 scenarios, signed
  commits" — 40 scenarios carrying 45 assertions, trailer-attributed,
  not cryptographically signed (C13). Corrected in law under override
  #3 (ADR-0016): the audit's two live tree contradictions — the §8.1
  "three screens" line and the harvest block's stale "informational
  sponsor row" phrase — and the missing standing pre-answer, made law
  on its merits; the remaining overclaims were reporting errors,
  corrected by the standing findings below and the MACHINE/PROSE
  discipline, not by tree edits. A follow-up verification audit
  (2026-08-05) confirmed the three fixes and required the completing
  sweep that landed with ADR-0016 Amendment A1. Standing findings
  every future report must honor: **the federation pipeline has zero
  mechanical test coverage — the 52 self-test assertions (44 scenarios)
  test journal/commit hygiene only, and the first end-to-end landing is
  the pipeline's designated first test** *(retired by ADR-0018: the
  pipeline was retracted untested; the finding stands as history)*;
  commits are trailer-attributed,
  not cryptographically signed; enforcement claims are tagged MACHINE or
  PROSE (`CLAUDE.md` iron rule).
- **Fifth field finding (2026-08-05, recorded; RETIRED by ADR-0018 —
  the outer hop it gated no longer exists)**: at the first live outer hop, the project session could
  not open the upstream PR — the canonical shell was outside its
  session-authorized repository set — and reported it honestly,
  carrying the PR and two shell-defect filings on the same blocker.
  Same class as the C38 branch authorization: a session-scoped
  environment gates an action the law assumes available. Fix when the
  freeze lifts (or in the sponsor's batch round): FEDERATION §7 and
  the harvest playbook name the repo-access grant as an expected
  sponsor touchpoint, bundled with the outer-hop ask — sessions
  request it, never discover it as a wall. Interim: the sponsor
  approves the session's add-repo prompt, or hand-relays.
- **Sponsor proposals (recorded, pending direction)**: (P1,
  2026-08-05) **role-keyed self-rewriting README** — a marked identity
  block re-rendered at founding (shell: installer framing; org
  generic: founded home-base state with a landings-received line;
  project: the program's own face with its current phase) and
  refreshed at every phase gate in the gate commit. The
  founding-surface half is freeze-legal; the phase-accept checklist
  row is law behind the freeze. Lands on sponsor direction, or batched
  with the trial round's next findings. (P2, 2026-08-05) **process
  brief in the project founding greeting** — a fresh project's first
  message to the sponsor also briefs the full arc ahead (intake digest
  → one signed proposal → G0 harvest → spawn cadence → the P<n> gate
  ladder → per-gate harvests landing in the org generic) and the
  sponsor's complete touchpoint contract, rendered from the tree's own
  gate/escalation law so every founding briefs identically — never
  improvised per session. Founding-surface only (CLAUDE.md M0
  greeting spec): freeze-legal in full. Same landing condition as P1.
  (P3, 2026-08-05) **next-copy commands as the founding's last step**
  — a completed founding ends by printing the ready-to-paste git
  command block for the next copy. Founding-surface only. Same
  landing condition as P1. *(All three proposals re-scoped by
  ADR-0018 to the two-role world: P1 renders two identities, not
  four; P2's touchpoint brief loses the outer-hop line; P3's block
  is the single shell → project hop, which README already carries.)*
- **Upstream defect channel**: shell defects — wrong claims, broken
  steps, gaps found while operating this copy — file as **GitHub issues
  on the canonical shell** — the defect channel for every copy
  (ADR-0017 A1); a defect is never a lesson. Local defect log (one line per defect: date ·
  one-line summary · upstream issue URL):
  - 2026-08-05 · F6/F8 (Shell feedback 0001, AUD-0003): no
    requirement-form rule anywhere in the shell; spec-freeze certifies
    testability, never self-containment — verified on this tree ·
    https://github.com/renatom11/generic-agentic-fpga-org/issues/1
  - 2026-08-05 · F4-class (Shell feedback 0001, AUD-0003): no review
    lane over sponsor-facing/derived artefacts; the only independent
    control is invoked at the audited party's discretion — verified on
    this tree ·
    https://github.com/renatom11/generic-agentic-fpga-org/issues/2
- **Shell feedback 0001 + AUD-0003 received (2026-08-05, sponsor
  hand-relay)**: a descendant program (CHIP-8 SystemVerilog) compared
  its inherited constitution against the origin program
  (`renatom11/agentic-fpga` @ e5c0b11) after a FAIL audit of its
  requirements corpus (2 CRITICAL, 8 MAJOR). Its two shell defects are
  filed above; its recommendations 5.1–5.7 (requirements template +
  MACHINE checker, atomicity clause in the gate, derived-artefact
  fidelity signature, event-triggered audit, read-back rule, house
  style, heuristics-as-stop-signal) join the post-freeze hardening
  batch alongside proposals P1–P3 and the two queued law-debt items —
  ordered per the feedback's own postscript: the review lane and the
  event trigger first. Its tier-1 lesson candidates (LC-06/07/08)
  stay in their own program's travel copy — reaching this corpus only
  if the maintainer hand-carries them in (ADR-0018). **Recommendations 5.1–5.7 LANDED under override #4
  (ADR-0017)**; issues #1/#2 closed at C44: the mining sweep confirmed and
  hardened coverage (ADR-0017 A1). P1–P3 remain queued (re-scoped by ADR-0018); the law-debt items are
  dispositioned in the law-debt bullet above. *(The sentence this
  bullet formerly closed on — the first lessons landing in flight —
  is superseded: ADR-0018 retired the pipeline and the freeze.)*
