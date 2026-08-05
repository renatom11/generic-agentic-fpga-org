# BOOTSTRAP — from cloned shell to running program

## What you get

This repository is a complete agent organization with the project left as a
slot. At the end of this walkthrough: the org is ratified and
branch-protected; the project's scope, phases, and success criteria are
recorded in [`README.md`](README.md)'s phase table and on
[`tasks/BOARD.md`](tasks/BOARD.md); the toolchain is decided by ADR; the
build CI is live; and work orders issue under the same enforcement machinery
that was proven in the source program — every commit coupled to its author's
journal entry, verified locally and re-verified over full history in CI.

Two people walk it: the **sponsor** (a human — your side of the org is
[`docs/SPONSOR.md`](docs/SPONSOR.md)) and the **orchestrator** (a fresh
Claude session in this repository, which boots from
[`CLAUDE.md`](CLAUDE.md)). The live checklist both are filling is
[`docs/gates/G0-checklist.md`](docs/gates/G0-checklist.md).

## Stage 0 — founding an org generic (once per organization)

Forks ship with GitHub Actions disabled, and the org generic is the one
repo every project of yours will depend on — so its founding is a short
checklist, run by the founding session before anything forks from it:

1. **Enable Actions** on the fork (Settings → Actions) and confirm
   `journal-check` runs green on the next push.
2. **Rulesets**: configure `protect-history` (Active, empty bypass list,
   Restrict deletions + Block force pushes) targeting `main` **and
   `fed/**`** — the federation staging namespace
   ([`docs/FEDERATION.md`](docs/FEDERATION.md) §5.2 clause 10).
3. **Verify the enforcement with your own hands**:
   `bash scripts/test_protocol.sh` green,
   `bash scripts/check_journals.sh --all` green.
4. **Record the identity**: set the board's **Repo role** line to
   `org-generic` and re-record the **This repository** line to this
   copy's own URL; the federation-upstream line stays the canonical
   shell. **The founding commit lands on the default branch (`main`),
   directly** — Stage 0 predates any branch-flow decision (that is a
   project matter, G0 row A8), and every future copy of this repo is
   cloned from the default branch and boots off its board: a founding
   parked on a side branch leaves the default branch claiming the
   shell's identity, and every child cloned meanwhile mis-founds as a
   copy of the shell. In an environment whose harness pins the session
   to an assigned working branch, landing here needs the sponsor's
   one-time say-so — that authorization is an E0 founding action, not
   a process question: bundle the ask into the founding greeting, and
   honor a grant already present in the sponsor's first message
   instead of asking.
5. **Re-scope the freeze**: rewrite the board's feature-freeze bullet to
   this repository's own observable end condition — *"No new law in this
   repository until its first lessons landing completes
   ([`docs/FEDERATION.md`](docs/FEDERATION.md) §5.1)"*. The inherited
   shell-history wording references events this fork cannot observe and
   never binds it as written.
6. **Seed the defect channel**: confirm the board's upstream-defect
   bullet points at the federation upstream's issue tracker; the local
   defect log starts empty. Shell defects travel as issues; lessons
   travel through the pipeline — never mix the channels.
7. **Stop — green before fork.** Stage 0 is complete only when the
   default branch carries the founding commit and its CI is green;
   until then nothing may be forked from this repo. An org generic runs
   no project and answers no intake — it waits to be forked from, and
   receives its projects' landings
   ([`docs/FEDERATION.md`](docs/FEDERATION.md) §5.1).

A solo-collapsed copy (README's Getting Started) skips Stage 0: its one
repo is founded as a project below, with the role line `solo-collapsed`
and the `fed/**` ruleset noted at the A7 click-path — and steps 5–6 (the
freeze re-scope and defect channel) run at B6 instead.

## Stage 1 — G0: ratify the org, fill the project slot

### Section A — org ratification

**Orchestrator first.** Confirm the seeded rows (G0 items A1–A5) still hold
at your HEAD — each row carries its verify command; run them
(`bash scripts/test_protocol.sh`, `bash scripts/check_journals.sh --all`,
Actions tab green). These were satisfied at seeding under
J-orchestrator-0001/0002; you are re-verifying, not re-doing.

**Sponsor next, two duties in order:**

1. **A6 — charter critique.** Read [`ORG_CHART.md`](ORG_CHART.md) and the
   nine charters in [`agents/charters/`](agents/charters/). Ratify, or ask
   the orchestrator for amendments — amendments before ratification are
   ADRs like any other (PROTOCOL §11). Your approval is recorded in an
   orchestrator journal entry and transcribed onto the checklist.
2. **A7 + A8 — branch protection and branch topology.** Decide A8 first
   (single-branch on `main`, or working branch + milestone PRs — the
   checklist explains what each costs); the orchestrator records the
   decision on the BOARD. Then configure the rulesets per the A7 click-path
   in the checklist. The orchestrator verifies rejection by live fire (an
   attempted force-push that bounces) and journals the result.

### Section B — project intake

Two ways to fill it — the recorded outcome is identical:

**Path A — questionnaire.** The sponsor answers the five rows (G0 items
B1–B5) directly, interview-style.

**Path B — brain dump plus resources (the expected path).** The sponsor
provides whatever exists, in two forms, freely mixed:

- **Prose**, pasted into the session — ideas, constraints, goals,
  half-formed thoughts.
- **Files**, dropped into an `intake/` directory — documentation about
  what is being built, rough requirement drafts, reference specs,
  datasheets, links files, prior-art notes. Anything goes; sorting it is
  the org's work, not the sponsor's.

The orchestrator digests all of it into PROPOSED answers for the five
rows — a draft phase table, candidate toolchains with trade-offs,
proposed license classes for every reference found in the material, a
proposed simulation boundary and per-phase success criteria — and
presents the whole proposal for sponsor sign-off in one round, asking
questions only where the material genuinely underdetermines an answer.
The sponsor edits and signs; nothing is binding until signed.

**Intake resources outlive the intake.** Files in `intake/` are not
consumed and discarded: they are recorded on the BOARD with their
license class and remain the org's project reference material — rough
requirement drafts feed the architect's real REQ-### requirements work
in the first spec milestone; reference designs feed the DV lead's
external-anchor planning (free-use) or design study (consult-only). The
sponsor may prune `intake/` at any time; what the org relies on gets
cited into specs and ADRs by then, under each file's license class.

Either way, the orchestrator records every signed answer into README's
phase table and onto the BOARD in the same commit, then transcribes
signatures:

1. **B1** — the project, decomposed into phases.
2. **B2** — scope parameters and performance criteria, as numbers.
3. **B3** — external references, each classed free-use or consult-only.
4. **B4** — the simulation-first boundary.
5. **B5** — success criteria per phase (these become the
   `P<n>-phase-accept` acceptance rows later, via
   [`docs/gates/templates/`](docs/gates/templates/)).
6. **B6** — the federation founding record: the orchestrator proposes
   this project's org generic URL from the fork relationship (for a
   clone, one line in the same proposal), verifies push access
   **read-only** (`git ls-remote` + `git push --dry-run` — never a probe
   push), and records on the BOARD the upstream line, the **project
   slug**, the **fork-point harvest baseline**, and the completed **Repo
   role** line — your intake signature covers all of it, nothing to
   configure ([`docs/FEDERATION.md`](docs/FEDERATION.md) §0, §5.1;
   ADR-0010/0011).

**Domain packs ride the same signature.** From the intake material the
orchestrator also declares which [`docs/domains/`](docs/domains/) lesson
packs are relevant to your project and loads them — these are your org
generic's packs, inherited when this project was forked from it
([`docs/FEDERATION.md`](docs/FEDERATION.md) §0) — as part of the proposal
it already brings you. You
never pick or configure a pack; signing the intake covers it. The declared
packs are recorded on [`tasks/BOARD.md`](tasks/BOARD.md) in the same commit
as the intake rows — the line a later orchestrator session rehydrates its
loaded packs from.

Intake fills the project slot; it never amends the protocol (PROTOCOL §1).
Until intake is on the BOARD, the orchestrator spawns no agent.

### Closing Stage 1

**A9 — the retro-audit, the org's first spawn.** With intake recorded, the
orchestrator spawns the auditor to retro-audit the seed commit range
(baseline SHA pinned in the spawn packet, PROTOCOL §3). Its report lands in
`docs/reports/audit/` (conventions:
[`docs/reports/audit/README.md`](docs/reports/audit/README.md)). Findings
are dispositioned; a CRITICAL blocks the gate until ADR'd and re-verified.

**The gate flip.** All rows signed → the orchestrator declares G0 passed in
its journal, flips the BOARD (milestone → M1), and Stage 2 opens.

## Stage 2 — M1: toolchain, build CI, spec regime

### 2.1 The toolchain ADR (escalation class E3)

The orchestrator prepares the decision **decision-ready** and escalates E3.
Skeleton (modeled on the source program's toolchain ADR):

```markdown
# ADR-NNNN: Toolchain lane — <decision>

- **Status**: Accepted (sponsor decision, E3, <date>)
- **Deciders**: sponsor, on orchestrator escalation with options +
  recommendation + cost (PROTOCOL §8)

## Context
Every M1+ artifact — build project, CI, the specs' §4.1 interface regime,
all RTL and tests — binds to one toolchain lane. Candidate lanes and their
license classes were recorded at the B3 intake.

## Options
| Lane | For | Against | Cost / risk |
|---|---|---|---|

## Decision
<the lane; where exact version pins live (committed project files, not CI
steps); recommendation and cost as escalated>

## Consequences
- The interface-record regime for SPEC-TEMPLATE §4.1 (see 2.3).
- CI instantiation proceeds (see 2.2).
- New write-scope lanes for PROTOCOL §6's table, if any (see 2.4).
- A needed capability missing from the lane is a NEW E3 — named gap,
  raised before the affected gate — not a quiet re-pin.
```

### 2.2 Instantiate the build CI

After the ADR is accepted, the orchestrator runs:

```sh
git mv .github/workflows/build.yml.template .github/workflows/build.yml
```

and fills every `<SLOT>` (setup toolchain / install deps / build / test)
for the chosen lane, keeping or deleting the two ready-made blocks — the
promotion-block failure handler and the staged-diff determinism gate — per
their "delete if not applicable" notes. Recipes and the R-CI rules for any
later simulator lanes: [`docs/playbooks/ci-evidence.md`](docs/playbooks/ci-evidence.md).
This is an orchestrator commit citing the toolchain ADR.

### 2.3 Instantiate SPEC-TEMPLATE §4.1

Record in the ADR (and from then on in every spec) which interface regime
the program runs: **compile-checked interface records** where the M1
toolchain supports them — wiring the interface-check lane the ADR names —
or the stated fallback, **reviewed port tables** graded line-by-line at the
dv_lead countersignature
([`docs/specs/SPEC-TEMPLATE.md`](docs/specs/SPEC-TEMPLATE.md), how-to-use
item 6 and §12).

### 2.4 Lane amendments, if the ADR adds any

If the toolchain decision creates new write-scope lanes (new top-level
paths, new worker roles), those are amendments to PROTOCOL §6's table —
made via §11: numbered ADR, orchestrator journal entry, and an updated
enforcement self-test case if commit semantics change.

## The org runs as proven

From here the loop is the one the source program practiced — five lines:

1. A lead drafts a `WO-` from
   [`agents/handoffs/templates/WO-template.md`](agents/handoffs/templates/WO-template.md);
   the orchestrator allocates its number and commits it (PROTOCOL §3).
2. The orchestrator spawns the worker with the packet — spawn short-id in
   the prompt, check-in expectation armed at spawn.
3. The worker returns; the orchestrator lands its layer and journal
   (splitting shared files per
   [`docs/playbooks/packet-splitting.md`](docs/playbooks/packet-splitting.md)).
4. The owning lead reviews against the packet's spec basis
   ([`docs/playbooks/review.md`](docs/playbooks/review.md)) — ACCEPT, or
   BOUNCE with the RV- defect list; benches are qualified by freeze-first
   mutation campaigns
   ([`docs/playbooks/mutation-campaign.md`](docs/playbooks/mutation-campaign.md))
   before any `SO-` PASS.
5. Gates close by signed checklists instantiated from
   [`docs/gates/templates/`](docs/gates/templates/); the sponsor sees only
   E1–E6, batched and decision-ready, on the BOARD.

Every module sign-off and every gate in that loop also carries a **lessons
harvest** as a precondition: agents mine their own journals, the
orchestrator collates the yield into the gate record, produces an export
packet, and lands it in your organization's own generic — all automatic,
instantiated by the orchestrator into every gate checklist — and by
dv_lead into its own `SO-` packets (ADR-0013) — from
[`docs/gates/templates/lessons-harvest-block.md`](docs/gates/templates/lessons-harvest-block.md)
([`docs/FEDERATION.md`](docs/FEDERATION.md) §0, §5). You operate none of
it. Your per-gate touchpoints are the gate signature you were already
giving, and one yes/no on sending the newly-landed lessons onward to
the canonical shell (default yes) — asked only at gates you sign, and
not at all once a standing answer is recorded on your board
([`docs/FEDERATION.md`](docs/FEDERATION.md) §7); other records defer
to the next one.
