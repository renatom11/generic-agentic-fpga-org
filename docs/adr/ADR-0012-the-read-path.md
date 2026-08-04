# ADR-0012: The read path — standing lessons in force, and the promotion obligation

- **Status**: **ACCEPTED** — sponsor-decided (federation-hardening round;
  the sponsor chose "work orders + promotion" over boot-time reading and
  promotion-only); amendable only via PROTOCOL §11.
- **Deciders**: the sponsor (the channel choice); the operating
  orchestrator, on the loop-quality lens's blocking finding.
- **Scope**: how a landed lesson ever changes an agent's behavior — the
  output side of the recursive self-improvement loop.

## Context

The pass's most important finding: the loop had no output. Lessons were
mined, classified, screened, and transcribed into `docs/LESSONS.md` and
the packs — which no working agent ever read. No launcher named either
file; only the orchestrator's boot loaded packs; `LESSONS.md` declared
itself non-normative; and no federation step obliged anyone to amend the
documents agents actually obey. The corpus's own entries predicted this:
L-F01 (rules accreting outside the constitution stop reaching new agents)
and L-F02 (a worker reads its work order, not the org's history). Three
documents meanwhile justified the human-merge fence with the claim that
agents "read and obey [lessons] at boot" — false in the tree as it stood.

## Decision

1. **The routine channel — standing lessons in force.** Every `WO-`
   carries a mandatory **Standing lessons in force** section: the entry
   ids from the core and the BOARD-declared packs that bind the task,
   each with a one-line statement of what it requires there, filled by
   the **issuing lead** ("none apply" is declared, never omitted). Every
   launcher's mandatory first actions gain the step honoring that section
   as binding; the three lead launchers additionally carry the
   WO-drafting duty. This is L-F02 applied: lessons reach workers through
   the packet, at bounded per-task cost, selected by the role that knows
   which lessons bear on the work.
2. **The structural channel — the promotion obligation** (FEDERATION
   §5.1/§8.1 step 4b). A transcribed entry whose `Now lives in` names a
   protocol section, charter, playbook, or packet template opens a
   recorded amendment obligation on the landing repo's board, in the same
   commit as the transcription; the entry is not fully landed until the
   amendment ADR lands (§11) or the entry is re-marked "narrative only".
   Recurrence-opened obligations (ADR-0010's third-arrival rule)
   discharge through the same channel.
3. **Honesty corrections.** `LESSONS.md`'s header now states the
   two-channel mechanism instead of a bare "nothing here is normative";
   the three "agents read and obey at boot" claims (GUIDE §7, domains
   README, harvest playbook) are corrected to the actual mechanism. The
   prompt-injection rationale for the human fence survives intact — it
   is in fact *strengthened*, since the read path is now real.

## Alternatives considered

- **Read-at-boot** (every launcher reads the core + declared packs) —
  rejected by the sponsor: every spawn pays the full corpus cost, which
  grows without bound as ten projects compound; and an unselective dump
  is weaker than a lead's selection of the lessons that bind *this* task.
- **Promotion-only** — rejected by the sponsor: the loop would improve
  the org only as fast as ADRs are written; routine lessons would wait on
  constitutional process.
- **Auto-appending lessons to charters at landing** — rejected: charters
  are §11-governed law; automatic writes to them from the federation
  pipeline would be exactly the ungoverned-law defect ADR-0008 closed.

## Corpus backtest (§11)

No enforcement-script change (the section is template text; the
obligation is board state), so no `test_protocol.sh` scenario is owed.
Run backwards: no historical `WO-` packet exists in this repository (the
shell has never issued one), so nothing is flagged; the seeded corpus's
77 entries each already name a normative home or "narrative only", so the
promotion obligation, applied retroactively, opens no backlog — their
homes were hand-landed at seeding (C13's charter weave).
