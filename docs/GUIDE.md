# The User Guide

Everything you need to know to run an FPGA program with this repository,
written for a first-time reader. (An FPGA — field-programmable gate
array — is a chip whose hardware behavior you define with code; an "FPGA
program" here means a project that designs and verifies such hardware.)
You do not need to be an FPGA expert or an AI expert to follow it. Where this guide summarizes, the linked
documents are the law — start here, follow links when you need depth.

---

## 1. What this actually is

When you fork this repository you get a **complete engineering
organization, staffed by AI agents**, with one empty slot: the project.
You fill the slot by describing what you want built; the organization
designs it, verifies it, documents it, audits itself, and brings you
decisions — not homework.

"Organization" is meant literally. There are nine agents, each with a
written charter, a defined scope, and things it is forbidden to do:

| Agent | In plain terms |
|---|---|
| **orchestrator** | The chief of staff. Runs the whole show, spawns everyone else, is the only one allowed to touch git. Your single point of contact. |
| **architect_docs_lead** | Writes the specifications and requirements everything else is measured against. |
| **rtl_lead** | Owns the hardware design code. Decomposes it, reviews every line a worker writes. |
| **dv_lead** | Owns verification — tests, sign-offs, pass/fail verdicts. Deliberately independent of the designers. |
| **auditor** | Audits the *agents*, not just the design: re-runs evidence claims, secretly plants defects to prove the tests can catch them (§6), and fixes nothing it finds — findings go to the responsible agent, and CRITICAL ones reach you unfiltered. |
| **rtl_module_dev, tb_writer, data_wrangler, formal_dv** | Workers, each spawned for one bounded task with a written work order, then reviewed by its lead: one writes design code, one writes testbenches (the programs that exercise a design), one prepares test data, one does formal (mathematical, proof-based) checking. |

The reason for the structure is the same reason human engineering
organizations have it: **nobody grades their own homework**. The people
who design a module never write the tests that judge it; the auditor who
seeds sabotage (see §6) never knows which tests are watching; the
orchestrator relays verdicts word-for-word and gets spot-checked for
tampering.

## 2. Who you are: the sponsor

You are the human authority — the "sponsor" throughout these documents.
The design goal, stated by the person this shell was built for (the
"generic" in his words — the reusable base copy your organization forks,
§3), is that you should **not** have to understand its machinery:

> "a future person using the generic doesnt have to worry about knowing
> most of this infrastructure... it does the lesson stuff automatically,
> like most other things."

Your entire job:

- **Once, at setup**: ratify the org (read the charters, or just approve
  them), set branch protection on GitHub (a five-minute settings task
  with an exact click-path provided), and sign the project intake.
- **At gates**: read a decision-ready evidence bundle and sign — or ask
  questions until you can.
- **When escalated to**: decide. Only six kinds of question may ever
  reach you (scope changes, toolchain/licensing calls, critical audit
  findings, deadlocks, schedule blowouts, gate approvals). Everything
  arrives batched, with options, a recommendation, and a cost.
- **One recurring yes/no**: whether to share your organization's
  harvested lessons with the wider community (§7). Default yes; saying
  no costs you nothing locally.

Everything else — planning, task routing, code review, test adequacy,
bug adjudication — happens inside the org and is *deliberately not
yours*. The short version of your job description lives in
[`docs/SPONSOR.md`](SPONSOR.md); it fits on one page.

## 3. The three levels: shell, org, project

There are three kinds of copy of this repository, and understanding the
distinction is the one piece of structure worth learning
([`docs/FEDERATION.md`](FEDERATION.md) §0):

1. **The canonical shell** — the upstream original you found on GitHub.
   Maintained by a human maintainer. Collects lessons from every
   organization that chooses to share.
2. **Your org generic** — your fork of the shell. Made **once**, when
   your team decides to use this. It is your organization's home base:
   it runs no project, but every project you run sends what it learned
   back here automatically, so it gets smarter with every project you
   complete.
3. **Your projects** — forks of *your org generic*, one per program. Each
   boots already knowing everything your organization has learned.

So the flow is: fork the shell once → fork your org generic per project.
**Fork; never use GitHub's "Use this template" button** — the button
squashes git history, and this repository's history is load-bearing (the
CI re-verifies the whole chain of journals; a squashed history fails it
by design).

**Working alone on one project?** You can skip the middle level: your
single copy then plays both roles — lessons land in itself, and its
upstream stays the canonical shell. If a second project ever becomes
likely, create the real org generic first; the README's Getting Started
section describes the graduation path.

## 4. Your first session, step by step

1. Fork (twice, per §3 — or once, solo). Open a Claude Code session on
   the project copy and say:
   *"Read CLAUDE.md — you are this repository's orchestrator. Walk me
   through G0."*
   (G0 — "gate zero" — is the one-time founding gate where the project
   slot gets filled and the org is ratified. It happens once, before
   the per-phase gates of §5.)
2. The orchestrator verifies its own machinery first (self-tests, CI),
   then asks you for the project. **Give it a brain dump**: paste prose,
   drop files — anything you have (rough requirements, reference specs,
   datasheets) — into an `intake/` directory. Interview-style Q&A also
   works, but the brain dump is the expected path.
3. It comes back with **one signed proposal**: the project split into
   phases, measurable success criteria per phase, the toolchain and
   reference materials with license classes, which lesson packs apply
   (§7), and the bookkeeping (all recorded so a future session can pick
   up where this one left off). You read it, correct it if needed, sign
   once.
4. You do your two one-time duties when the checklist reaches them:
   ratify the charters, and set branch protection (exact click-path in
   [`docs/gates/G0-checklist.md`](gates/G0-checklist.md)).
5. Work begins. From here your involvement is §2's short list.

This walkthrough is scripted in [`BOOTSTRAP.md`](../BOOTSTRAP.md) —
the orchestrator drives it; you never need to read it in advance.

## 5. Life of a project: phases and gates

Work proceeds in phases you approved at intake (G0, the founding gate,
already happened once at setup — §4). Each phase then passes through
three **gates** — committed checklists that close only when signed:

1. **Spec freeze** — the architect's specifications are complete,
   verification has countersigned that they are testable, and you sign.
2. **Module ready** — every module has a passing verification sign-off,
   each backed by a completed sabotage campaign (§6). Informational for
   you; the org signs this one.
3. **Phase accept** — the phase's success criteria (the ones *you*
   recorded at intake) are demonstrated green, the audit is clean, and
   you sign.

Between your check-ins, the org runs a strict loop: work orders go to
workers, workers' output is line-reviewed by leads, verdicts are
committed, and nothing merges without its independent sign-off. You can
watch any of it live in [`tasks/BOARD.md`](../tasks/BOARD.md) — the
running state of the whole program — but you never have to.

## 6. Why you can trust what it tells you

Four mechanisms, designed so that **no single agent's honesty is
load-bearing**: every claim is checked by someone who didn't make it,
and the checker is itself spot-checked. Where a safeguard rests on audit
rather than on a script, the documents say so plainly — no guarantee
here is stronger than what the repository actually enforces:

- **Append-only journals.** Every agent keeps a journal, and every
  commit pairs one agent's work with that agent's reasoning — enforced
  by scripts and re-verified over the *entire history* on every push.
  `git show <any commit>` shows you a change and the reasoning that
  produced it, side by side. History cannot be quietly rewritten once
  you've done your one-time branch-protection duty (§2, §4); until
  then, that guarantee is convention only, which is why the checklist
  won't close without it.
- **Separation of duties.** Write access is mechanically walled: the
  agents who write the design cannot commit tests, and the agents who
  write tests cannot commit design code — CI rejects the commit. The
  *read* side — test writers deriving from specifications without
  peeking at the design's source — is enforced by what their work
  orders contain plus auditor sampling of what each agent declares it
  read, and the documents are honest that this part is audit-enforced,
  not mechanical.
- **Sabotage campaigns** (the documents call them mutation campaigns).
  Before any module is signed off, the auditor secretly plants defects
  in copies of the design; the test suite must catch them. Before any
  defect runs, the verification lead seals a prediction of exactly
  which test will speak first for each planted defect — results are
  judged against those sealed predictions, so they can't be
  retro-justified. A defect the tests miss is a formal finding, not a
  shrug.
- **An auditor with teeth.** It re-executes evidence claims at the
  recorded commit, checks that relayed verdicts weren't edited, and
  reports CRITICAL findings to you verbatim — the orchestrator is
  forbidden to summarize them. You may even plant deliberate process
  violations ("canaries") to test whether the auditor catches them; a
  missed canary counts against the auditor.

You can spot-check everything yourself with plain git commands —
[`docs/SPONSOR.md`](SPONSOR.md) lists them.

## 7. The lessons system: your org gets smarter

Every gate, each agent mines its own journal for lessons — rules that
would have prevented a real incident. Each candidate is classified
automatically ([`docs/FEDERATION.md`](FEDERATION.md)):

- **Tier 1 — general**: true for any project, stated with no
  project-specific vocabulary. Example shape: *"a reviewer must re-run
  the failing command, not re-read the passing log."*
- **Tier 2 — domain**: needs domain vocabulary (say, Ethernet or CRC)
  but no project internals. Kept in per-domain "packs" that load only
  for projects in that domain.
- **Tier 3 — project-specific**: stays in the project.

Tier 1 and 2 lessons land in **your org generic** automatically when you
sign a gate — that's the compounding: your second project starts where
your first left off. Then you get the one recurring question: *send them
onward to the canonical shell?* Default yes. Yes means your organization
contributes to (and benefits from) the commons; no means everything
stays home and nothing else changes. Sharing opens a pull request; a
human maintainer screens it and re-lands accepted lessons **by hand,
always**, through the shell's own commits — the PR itself is never
merged, and no machine ever lands a contributed lesson unreviewed,
because contributed lessons become instructions future agents obey.

## 8. Common situations

**"Our work is confidential."** Answer no to the sharing question.
Everything still works; lessons still compound inside your organization.

**"CI is red and I don't know why."** Say so to the orchestrator —
diagnosing it is its job, not yours. A red `journal-check` on every
push is the alarm for tampered history; treat that one seriously.

**"I want to change how the org itself works."** Ask the orchestrator
for an ADR (a recorded decision). The protocol and charters change only
that way — including for the agents themselves.

**"Can I see what an agent was thinking three weeks ago?"**
`git log --grep 'Agent: rtl_lead'` — the full thread of any agent's
work, with reasoning, forever.

**"We finished a project. Now what?"** Fork your org generic again for
the next one. It boots with everything the last project taught your
organization. (A project's knowledge is fixed when it's forked —
running projects don't absorb siblings' lessons mid-flight, by design.)

**"What does this cost me to ignore?"** The machinery runs whether or
not you watch it. The only things that stall without you are the things
that *should*: gate signatures and the six escalation classes.

## 9. Map of the documents

| You want | Read |
|---|---|
| Your one-page job description | [`docs/SPONSOR.md`](SPONSOR.md) |
| The setup walkthrough | [`BOOTSTRAP.md`](../BOOTSTRAP.md) (the orchestrator drives it) |
| The org chart and every charter | [`ORG_CHART.md`](../ORG_CHART.md), [`agents/charters/`](../agents/charters/) |
| The law (journals, commits, gates, campaigns) | [`agents/PROTOCOL.md`](../agents/PROTOCOL.md) |
| The lessons and sharing contract | [`docs/FEDERATION.md`](FEDERATION.md) |
| Live program state | [`tasks/BOARD.md`](../tasks/BOARD.md) |
| How key procedures run | [`docs/playbooks/`](playbooks/) |

Where this guide and a linked document disagree, the linked document
wins — this guide explains; the protocol governs.
