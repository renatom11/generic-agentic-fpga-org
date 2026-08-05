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
- **Outer-hop standing pre-answer** (`docs/FEDERATION.md` §7): _none —
  the per-gate question stands_. The sponsor may replace this value
  with a standing YES or NO (e.g. *STANDING CLOSED — pre-answered NO,
  for every gate and every backlog*); while a standing line is recorded
  here the gate-time question is not asked, the harvest block cites
  this line instead, and only the sponsor changes it. Confirmed at
  every founding (G0 row B6).
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
  **In a fork this line is re-scoped at founding**
  (BOOTSTRAP Stage 0 step 5, or B6 for a solo-collapsed copy) to: *no
  new law until this repository's first lessons landing completes* — the
  shell-history wording above never binds a fork as written. *Law*
  excludes the project-scoped ADRs the bootstrap itself mandates (the
  M1 toolchain lane, design-choice records): those are project
  decisions, never blocked (ADR-0017 A1).
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
- **Queued law-debt (behind the freeze)**: generalize the R-ROLE-1 CI
  check from the canonical-shell claim to every role, keyed on the
  This-repository line (script change + scenario, §11) — the boot logic
  already applies the generalized rule; only the machine backstop waits.
  Second item (2026-08-05, from the third field defect): a MACHINE
  guard in `agent_commit.sh` refusing any commit that sets the board's
  Repo role line to `org-generic` on a branch other than the default
  branch (script change + scenario, §11). C36's Stage 0 branch mandate
  is PROSE — determined, but instructed; this backstop would make the
  side-branch founding mechanically impossible. Lands at the freeze's
  end, or earlier under a sponsor-directed override.
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
  the pipeline's designated first test**; commits are trailer-attributed,
  not cryptographically signed; enforcement claims are tagged MACHINE or
  PROSE (`CLAUDE.md` iron rule).
- **Fifth field finding (2026-08-05, recorded; fix queued behind the
  freeze)**: at the first live outer hop, the project session could
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
  command block for the next hop (create-empty-repo reminder, clone /
  set-url / push with this copy's real URL filled in from the board,
  the pre-grant sentence, the expect-red-then-green note): Stage 0
  step 7 for org generic → project; README already carries shell →
  org generic. Founding-surface only: freeze-legal in full. Same
  landing condition as P1.
- **Upstream defect channel**: shell defects — wrong claims, broken
  steps, gaps found while operating this copy — file as **GitHub issues
  on the canonical shell** — the defect channel at every level (a
  project skips its org generic, which authored no law — ADR-0017 A1); they never travel through
  the lessons pipeline. Local defect log (one line per defect: date ·
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
  travel the lessons pipeline from their own program, never this
  channel. **Recommendations 5.1–5.7 LANDED under override #4
  (ADR-0017)**; issues #1/#2 closed at C44: the mining sweep confirmed and
  hardened coverage (ADR-0017 A1). P1–P3 and the non-quality law-debt items remain queued.
  The freeze's own end condition — the first lessons landing — is in
  flight.
