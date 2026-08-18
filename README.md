# A reusable AI-agent organization for FPGA programs

Copy this repository and you get a **complete engineering organization,
staffed by AI agents, with one empty slot: your project**. You describe
what you want built; nine agents — an orchestrator, an architect, design
and verification leads, workers, and an independent auditor — design it,
verify it, document it, and audit themselves, bringing you only
decisions. Every change ships with the reasoning that produced it, in an
append-only record that CI re-verifies on every push; designs are signed
off only after planted-defect campaigns prove the tests can catch real
bugs; and your organization gets smarter as it works, because
lessons are harvested from the agents' own journals at every gate and
land in your copy's [`docs/LESSONS.md`](docs/LESSONS.md) — a file
written so a stranger can learn from it, which you can hand to your
next project, another session, or anyone (ADR-0018). Nothing is ever
sent anywhere automatically.

**This repository is the installer, not the program.** The canonical
shell exists to be copied: each copy becomes one live project, while the
shell itself runs nothing and ships the starter lessons every copy
inherits (ADR-0011, ADR-0018). **The copying stops there.** A project is
not itself an installer, nothing is copied out of a project, and no copy
reports back to this one — one hop, shell to project, and that is the
whole topology. Which kind of copy a session is in — `canonical-shell` or
`project` — is written on its board, the **Repo role** line, and the
orchestrator reads it before acting.

**Why this exists — the full story: [the Manifest](docs/MANIFEST.md).**
**Why every rule is shaped the way it is — [the carried handbook](docs/handbook/README.md):**
the origin program's process document, pinned per edition, with the failure
class behind each mechanism and a Simplified Technical English rendition an
agent can parse without a human.

**New here? Read [the User Guide](docs/GUIDE.md)** — everything
explained for a first-time reader, no FPGA (field-programmable gate
array — a chip whose hardware you define with code) or AI expertise
assumed. If
you'll be the human in charge, your one-page job description is
[docs/SPONSOR.md](docs/SPONSOR.md).

The org design and its enforcement machinery were distilled from the
[agentic-fpga program](https://github.com/renatom11/agentic-fpga), where they
were proven in operation.

## The project

Filled at G0 intake — see [BOOTSTRAP.md](BOOTSTRAP.md). The table below is the
canonical statement of scope, phases, and success criteria (PROTOCOL §1);
it changes only by sponsor decision (escalation class E2 — a scope
change).

| Phase | Scope | Success criteria |
|---|---|---|
| _—_ | _recorded at G0 intake_ | _recorded at G0 intake_ |

## The org

**Start at [`ORG_CHART.md`](ORG_CHART.md).** Every agent has a
version-controlled charter in [`agents/charters/`](agents/charters/) defining
its responsibilities, interfaces, definition of done, evaluation criteria, and
escalation rules. Shared rules live in
[`agents/PROTOCOL.md`](agents/PROTOCOL.md). Live program state is in
[`tasks/BOARD.md`](tasks/BOARD.md).

## The journaling guarantee

Every agent keeps an **append-only journal**
(`agents/journals/claude_<name>_agent.md` — workers under
`agents/journals/workers/` — a volume chain per PROTOCOL §4.3)
and every commit couples one agent's work with that agent's journal entry
explaining it — mechanically enforced by
[`scripts/agent_commit.sh`](scripts/agent_commit.sh) and re-verified over
every pushed range by CI
([`.github/workflows/journal-check.yml`](.github/workflows/journal-check.yml)).

Consequences you can rely on:

- `git diff A..B` — for *any* two commits — shows both what changed and the
  reasoning that produced it, side by side in the same diff.
- `git log --grep 'Agent: rtl_lead'` reconstructs any one agent's entire
  thread of work.
- Journal history cannot be quietly rewritten: the append-only property is
  re-checked over the FULL history on every push (an incremental range check
  cannot detect a rewrite), backstopped by branch protection on `main` and the
  working branch (a one-time sponsor setup, G0 checklist item), and journal
  `Evidence` sections are falsifiable — the auditor re-executes them at the
  recorded SHA.

Run the enforcement self-test: `bash scripts/test_protocol.sh`.

## Getting started

One copy per project; your part is a one-time four-item setup, then one
touchpoint per gate — the signature (PROTOCOL §8 class E0; ADR-0018):

**Start a project.** Make a full-history copy of this repository — one
per project. **Clone-and-push is the way**, and the only load-bearing
requirement is that the commit chain arrives unsquashed:

```bash
git clone https://github.com/renatom11/generic-agentic-fpga-org my-project
cd my-project
git remote set-url origin <your new EMPTY repo's URL>
git push -u origin main
```

(On an organization account GitHub's Fork button does the same job; on a
single account it cannot target the account that already owns the repo,
which is why the commands above are the default path.) Do **not** use
GitHub's "Use this template" button: it squashes history into a single
commit, and this repository's commit history is load-bearing — the
journal-check CI verifies the whole chain, and a squashed history fails
it by design.

Then:

1. Open a Claude Code session on the new copy, on any machine, and say
   anything — *"Read CLAUDE.md — you are this repository's orchestrator.
   Walk me through G0."* works, and so does "get started". Adding
   *"founding pushes to the default branch are authorized"* pre-grants
   the one permission a branch-pinned environment (Claude Code on the
   web pins sessions to an assigned branch) must otherwise ask for
   once. The session founds the copy first — the board's **Repo role**
   line to `project`, its **This repository** line to the copy's own
   URL, committed on the default branch ([BOOTSTRAP.md](BOOTSTRAP.md)
   Stage 0) — then walks you through G0. It boots already carrying the
   shell's accumulated starter lessons; to seed it with what a previous
   project of yours learned, hand the session that project's
   `docs/LESSONS.md` (the travel copy) and it records the seed's
   provenance and baseline on the board.
2. Give it your material: paste prose, and/or drop files — docs about
   what you're building, rough requirement drafts, reference specs,
   datasheets — into an `intake/` directory. The org digests everything
   into one proposal for your signature ([BOOTSTRAP.md](BOOTSTRAP.md)
   Section B, Path B); your resources then remain its project reference
   material.
3. Do the sponsor-only setup when the checklist reaches it: ratify the
   charters (A6) and set branch protection with its branch-flow decision
   (A7/A8, a GitHub settings action) — with the intake signature from
   step 2, that completes the one-time four-item E0 setup.

Found a problem with the shell itself while running your copy? **File an
issue on the canonical shell** — defects travel as GitHub issues;
lessons stay in your copy's `docs/LESSONS.md` and travel only when a
human hands the file onward. The two channels never mix.

The sponsor and the fresh orchestrator session walk G0 together;
[BOOTSTRAP.md](BOOTSTRAP.md) is the script. G0 covers: org ratification (or
amendment before ratification), branch protection on `main` and the working
branch, a green enforcement self-test, and the project intake that fills the
phase table above and records the toolchain candidates, external references,
and their license classes. Until the intake is recorded on
[`tasks/BOARD.md`](tasks/BOARD.md), the orchestrator spawns no agent.

## Repository map

```
BOOTSTRAP.md          the G0 walk-through: sponsor + orchestrator fill the project slot
CLAUDE.md             orchestrator session bootstrap (rehydration order, iron rules)
docs/GUIDE.md         the user guide — start here if any of this is new to you
docs/SPONSOR.md       the sponsor's one-page job description
ORG_CHART.md          the org: chart, roster, execution model
agents/
  PROTOCOL.md         shared operating constitution (journals, commits, gates)
  charters/           per-agent instruction files — open any of them
  journals/           append-only reasoning logs, one volume chain per agent
  handoffs/           versioned work orders, sign-offs, bug packets (+ templates/)
docs/
  adr/                architecture decision records (constitution ADRs seeded)
  gates/              committed gate checklists (signatures = journal refs)
  specs/              module specs and REQ-### requirements (fills after intake)
  reports/audit/      auditor findings + the ledger of bugs that escaped verification
  reports/dv/         verification and performance reports (DV = design verification; fills at the first report)
  handbook/           the origin program's process handbook, carried as a pinned copy — the WHY behind every rule here (see its README; reference, not law)
scripts/              protocol enforcement + self-test
tasks/BOARD.md        live program state
.claude/agents/       thin spawn launchers (charters remain the truth)
rtl/ test/ tools/     created as the program builds, from the first work phase on (RTL = the hardware design source code)
```
