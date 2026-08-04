# ADR-0010: Dedup, precedence, the growth law, and the meta-lesson mechanisms

- **Status**: **ACCEPTED** — sponsor-directed (federation-hardening round;
  both meta-lesson mechanisms explicitly approved by the sponsor);
  amendable only via PROTOCOL §11.
- **Deciders**: the sponsor (the meta-lesson question — "if it looks too
  often, it might miss big meta lessons … too sparse, it might miss
  smaller lessons" — and the approval of both mechanisms); the operating
  orchestrator, on the loop-quality lens of the adversarial pass.
- **Scope**: what happens when a harvested candidate duplicates or
  contradicts an existing lesson; how the corpus grows without breaking
  the blob gate; where a forked project's first harvest starts; and the
  two mechanisms that give the loop a coarse-grained pass: recurrence
  tracking and the phase retrospective.

## Context

The pass found no dedup, supersede, or contradiction law at either fence:
ten projects forked from one org generic mine an identical inherited
journal prefix, so every gate round would land near-identical candidates —
each with real provenance, each passing every screen — with distinct ids,
and a contradiction between two landed rules had no adjudicator. The
`LESSONS.md`/pack corpus also had no growth law (journals have volume
chains; the lessons corpus had nothing between "grow forever" and the
1 MB blob-gate refusal, with no advisory). And the sponsor identified the
altitude problem directly: span tiling mines each entry exactly once, so
big meta-lessons — which live in recurrence — are invisible to every
individual harvest, while sparse mining would lose the small ones.

## Decision

1. **The redundancy screen is the dedup law** (§8's fourth screen,
   ADR-0009). A duplicate is rejected citing the existing id; a
   contradiction is escalated to the fence's authority and resolved by
   `**Supersedes.**` on the winning entry and `**Superseded-by.**` on the
   losing one — the loser is never deleted. Both fields join the core and
   pack entry skeletons as optional fields.
2. **Recurrence tracking** — the cross-project meta-lesson detector. A
   drop-as-already-landed appends a `**Recurrence.**` note to the cited
   entry (count + citing project/packet ids). At the **third independent
   arrival** the entry automatically opens a promotion obligation on the
   landing repo's board (the amendment-obligations ledger, seeded by this
   round; the promotion channel's full discharge law is the read-path ADR
   of this round). Rationale: independent re-derivation is the strongest
   evidence a lesson is load-bearing, and the collision machinery detects
   it for free.
3. **The phase retrospective** — the second mining altitude (PROTOCOL
   §7.1). At each `P<n>-phase-accept` the auditor mines the phase's
   accumulated harvest record — war stories, nil declarations, tier-3
   landings, bounce/`BUG-` packets — never raw journal spans, which stay
   tiled and mined once. Auditor-owned because recurrence review is
   process analysis, the auditor is independent by construction, and its
   write scope (`docs/reports/audit/**` + orchestrator transcription)
   already fits. This answers the sponsor's cadence dilemma structurally:
   fine-grained and coarse-grained harvesting are different passes over
   different material, not a cadence to choose.
4. **The growth law — documented convention, advisory only.** The core
   and the packs roll over into volume chains (like journals, §4.3) as
   they approach the blob gate, advisory at 800000 bytes. Machine
   enforcement (an R10 analogue plus script scenarios) was considered and
   deferred: the corpus is ~55 KB against a ~1 MB ceiling, this round is
   already script-heavy, and the convention upgrades to enforcement with
   a later one-line ADR when growth warrants it. The tradeoff is stated
   here so nobody mistakes the convention for a check.
5. **The fork-point baseline.** A forked project's first harvest tiles
   from (inherited last entry id + 1) per chain, with the baseline
   recorded at G0 row B6 — a project mines its own history, never its
   template's. Without this, every fork's G0 re-mines the org generic's
   inherited journal (16 entries today, more forever), which is the
   duplicate factory recurrence tracking would otherwise spend itself
   suppressing.

## Alternatives considered

- **A similarity threshold or embedding-based dedup** — rejected: the
  redundancy screen is a judgment a fresh reviewer can make against the
  head it can read; a numeric similarity bar is a counting metric in
  disguise, the thing §7.1 bans.
- **Deleting superseded entries** — rejected: corrections append, never
  rewrite (the corpus's own L-A04 discipline); a deleted loser erases the
  evidence the contradiction happened.
- **A cadence change instead of the retrospective** (harvest less often to
  see bigger patterns) — rejected: it trades away the fine-grained pass
  the per-gate harvest already does well; the two altitudes are
  complementary, not alternatives.
- **Orchestrator-owned retrospective** — rejected: the orchestrator
  collates every harvest and would grade its own collation; the auditor
  is the role built to audit the process.

## Corpus backtest (§11)

No enforcement-script semantics change in this ADR (the growth law is
convention; the recurrence note and retrospective are procedure), so no
`test_protocol.sh` scenario is owed. Run backwards: the seeding corpus
contains no duplicate or contradicting entries to adjudicate (77 entries,
distinct rules), and no fork has yet taken a baseline — the rules bind
forward from this round; nothing historical is flagged, nothing missed.
