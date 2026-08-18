# Gate G0 — Org Ratification and Project Intake

Passing G0 means (A) the org, protocol, and enforcement machinery exist, are
proven, and are ratified by the sponsor, and (B) the project slot is filled:
scope, phases, and success criteria are recorded where the constitution says
they live. **No M1 work order may be issued before G0 passes** (PROTOCOL §1,
§7). Signatures are journal-entry references, transcribed by the orchestrator
under PROTOCOL §7's transcription rule. The walkthrough that drives this
checklist is [`BOOTSTRAP.md`](../../BOOTSTRAP.md).

## Section A — Org ratification

| # | Item | Owner | Status | Signature / verify |
|---|---|---|---|---|
| A1 | Operating protocol committed (`agents/PROTOCOL.md`, v2) | orchestrator | ✅ satisfied at seeding | J-orchestrator-0001 · verify: `git log --oneline -- agents/PROTOCOL.md` |
| A2 | Enforcement self-test green in CI (every rejection asserting its rule, R1–R10 + WARN-SEAL) | orchestrator | ✅ satisfied at seeding | J-orchestrator-0001 · verify: `bash scripts/test_protocol.sh` locally; same script is the first step of the `journal-check` workflow on every push |
| A3 | `journal-check` CI green on the pushed branch (full-history re-verification) | orchestrator | ✅ satisfied at seeding | J-orchestrator-0002 (run 1, conclusion success) · verify: Actions tab → `journal-check` on the latest push, or `bash scripts/check_journals.sh --all` |
| A4 | Charters, org chart, and spawn launchers committed and mutually consistent (roster 1:1 across `ORG_CHART.md`, `agents/charters/`, `.claude/agents/`) | orchestrator | ✅ satisfied at seeding | J-orchestrator-0002 · verify: `ls agents/charters .claude/agents` against the ORG_CHART roster table |
| A5 | Journals seeded, append-only from birth; `agents/journals/INDEX.md` committed | orchestrator | ✅ satisfied at seeding | J-orchestrator-0001, J-orchestrator-0002 · verify: `bash scripts/check_journals.sh --all` |
| A6 | **Sponsor**: charter critique round — org chart + all nine charters read, critiqued, and ratified (or amended by ADR before ratification) | sponsor | OPEN | <sponsor approval date, recorded in an orchestrator journal entry> |
| A7 | **Sponsor**: branch protection on `main` AND the working branch — exact click-path below. Until this is done, PROTOCOL §5 R9's no-force-push guarantee is convention only | sponsor | OPEN | <sponsor configured date + ruleset names; rejection verified by live fire, journal ref> |
| A8 | **Decision**: single-branch mode (work lands on `main` directly) vs PR-flow mode (working branch + milestone PRs into `main`, R9). **Default: single-branch mode** — the orchestrator proposes it in the intake proposal and the sponsor overrides only if they want PR-flow; either way the choice rides the E0 setup, no open-ended question asked. Decide with A7 — it changes which ruleset binds what — and record the decision and the working-branch name on [`tasks/BOARD.md`](../../tasks/BOARD.md) | sponsor + orchestrator | OPEN | <BOARD updated at SHA; journal ref> |
| A9 | Auditor's G0 retro-audit of the seed commit range committed to `docs/reports/audit/` — the new org's **first spawn**, and the first proof the audit lane works; its mandate includes **intake-digest fidelity**: every constraint, number, and reference in the raw sponsor dump traced to an intake row or a recorded exclusion (ADR-0017 A1) | auditor | OPEN | <J-auditor-NNNN — verdict + report path> |

**Section A note (ADR-0017 A1)**: after the founding re-verification (CLAUDE.md, M0 step 1), re-point rows A1–A5's signature cells at the journal entry recording **this repository's own** re-verification; the seeding entries remain as provenance, never as authority — a copy's gate must resolve to the copy's record.

### A7 click-path (protecting pushed history)

**The hosting platform is a declared parameter** (ADR-0019,
[`docs/PLATFORM.md`](../PLATFORM.md)). What the platform must buy is the same
everywhere — refusal of force pushes and of branch deletion on the protected
branches, and the journal-check pipeline required to pass — and the clicks
differ. **Record the platform, the settings and the live-fire refusal on the
BOARD**; a later reader cannot tell which world they are in from the scripts.

**On GitLab** → Settings → Repository → **Protected branches**, per branch:
*Allowed to force push* **OFF**, and the smallest workable *Allowed to push
and merge* set; then, in PR-flow mode, Settings → Merge requests →
**Pipelines must succeed** ON. **GitLab has no empty-bypass-list analogue** —
a project Owner can change these settings, so the honest board sentence is
*history is protected by the server, and that protection is protected by who
holds Owner*. Narrow the Owner set; that is the control. Full detail, and the
degraded posture where no platform is reachable at all, in
[`docs/PLATFORM.md`](../PLATFORM.md).

**On GitHub**, the click-path below. Use **rulesets** (Settings → Rules →
Rulesets), not classic branch protection — an empty bypass list makes a
ruleset admin-proof by default. Do this **only after A3 is green** — the
`journal-check` status check must have run at least once before GitHub will
list it in the picker. *(That ordering is a GitHub property, not a law here;
GitLab's boolean needs no prior run. Run CI green first anyway — an
unverified protective setting is a belief.)*

**Ruleset 1 — "protect-history"** (guards git history):

1. **New ruleset → New branch ruleset**; name it `protect-history`.
2. *Enforcement status*: **Active**.
3. *Bypass list*: leave **empty** — this is what stops the admin account
   (the same one the orchestrator pushes with) from force-pushing history
   away; the append-only journal guarantee depends on it.
4. *Target branches* → Include by pattern → add `main`, and — in PR-flow
   mode — the working branch named on the BOARD.
5. *Rules*: check **Restrict deletions** and **Block force pushes**.
6. **Create**.

**Ruleset 2 — "main-requires-ci"** (PR-flow mode only):

1. New branch ruleset, name `main-requires-ci`, Active, empty bypass list.
2. *Target branches*: `main` only.
3. *Rules*: **Require status checks to pass** → add `journal-check`.
   Optionally also **Require a pull request before merging** (R9: `main`
   receives milestone PRs only).
4. **Create**.

**Why the split, and why A8 matters here**: GitHub rejects direct pushes to
any branch with required status checks (new commits cannot have passing
checks yet). In PR-flow mode the check requirement binds `main` only, and
the working branch is guarded by force-push/deletion blocking with CI
failing publicly on every push as the detection mechanism. In single-branch
mode `main` **cannot** carry ruleset 2 at all — protection is ruleset 1 plus
public CI failure — and that weaker regime is exactly what the A8 decision
row exists to record consciously rather than inherit silently.

## Section B — Project intake

The sponsor answers; the orchestrator records. Every row below writes its
answer into **[`README.md`](../../README.md)'s phase table** (the canonical
scope statement, PROTOCOL §1) **and [`tasks/BOARD.md`](../../tasks/BOARD.md)**
(milestone roadmap + decisions on record). Intake fills the project slot;
it never amends the protocol (PROTOCOL §1).

| # | Item | Recorded where | Status | Signature |
|---|---|---|---|---|
The B rows may be filled by questionnaire or, expectedly, by the sponsor's
brain dump digested into one signed proposal (BOOTSTRAP.md Section B,
Path B). The rows below are the record either way.

| B1 | **The project, decomposed into phases**: what is being built, split into orderable phases with a one-line scope each | README phase table + BOARD roadmap | OPEN | <J-orchestrator-NNNN> |
| B2 | **Scope parameters and performance criteria**: the interface parameters, throughput/latency/capacity figures, and any resource envelope the design must meet — stated as numbers, since PROTOCOL §10's evidence rules and SPEC-TEMPLATE §8's stress obligation will bind to them | README phase table + BOARD | OPEN | <J-orchestrator-NNNN> |
| B3 | **External references and toolchain candidates, each with a license class**: every reference design, document, dataset, or candidate toolchain lane the org may consult or adopt, classed **free-use** (may be vendored verbatim with provenance, never edited in place) or **consult-only** (design study only — never ported, never quoted into shipped source), per PROTOCOL §10. Toolchain candidates feed the M1 E3 decision | BOARD (decisions on record) | OPEN | <J-orchestrator-NNNN> |
| B4 | **The simulation-first boundary**: what this program validates in simulation, and where (if anywhere) hardware bring-up sits — phases and success criteria must not silently assume lab equipment nobody has | README phase table + BOARD | OPEN | <J-orchestrator-NNNN> |
| B5 | **Success criteria per phase**: for each phase, the evidence that closes its `P<n>-phase-accept` gate — replay/validation runs, performance figures, audit state. These become the gate checklists' acceptance rows (see [`templates/`](templates/)) | README phase table + BOARD | OPEN | <J-orchestrator-NNNN> |
| B6 | **Founding record, confirmed** (ADR-0018): the board's **Repo role** line reads `project` and its **This repository** line reads this copy's own URL, as the Stage 0 founding commit recorded them (ADR-0011); the **Lessons baseline** recorded on the BOARD (last inherited `docs/LESSONS.md` entry id per section — the first harvest tiles from baseline + 1, ADR-0010), with the **seed provenance** line beside it where Stage 0 landed a hand-carried travel copy; the **upstream defect channel** confirmed (the canonical shell's issue tracker) | BOARD (decisions on record) | OPEN | <J-orchestrator-NNNN> |

## Section C — Lessons harvest

<!-- Instantiate docs/gates/templates/lessons-harvest-block.md here when
     Section B closes (PROTOCOL §7.1) — the program's FIRST harvest,
     mining the bring-up spans from the Lessons baseline recorded at
     B6, + 1 ("first harvest" tiling; entry 0001 only in a repo with no
     inherited history — ADR-0010). Tier-1/2 yield lands in this copy's
     own docs/LESSONS.md in the gate's closing commits (ADR-0018);
     nothing transmits and no lessons question rides the ratification.
     A nil yield at G0 is normal and declared — there is
     no warm-up gate exempt from the precondition, and this section is
     what makes that sentence true on day zero. -->

## Exit

All Section A and Section B rows signed and the Section C harvest block
complete → the orchestrator declares G0 passed
in its journal, updates `tasks/BOARD.md` (milestone → M1), and M1 work orders
may issue.

**Spawn ordering**: until the Section B intake is recorded on the board, the
orchestrator spawns no agent ([`README.md`](../../README.md),
[`CLAUDE.md`](../../CLAUDE.md)). A9's retro-audit — the org's first spawn —
therefore runs **after** Section B is recorded, as the final open item before
the gate flip.
