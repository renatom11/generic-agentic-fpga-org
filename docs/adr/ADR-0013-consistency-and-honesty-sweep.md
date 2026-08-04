# ADR-0013: The consistency law — write-scope truth, the grammar advisory, E0, and the sweep

- **Status**: **ACCEPTED** — sponsor-directed (federation-hardening round,
  full scope); amendable only via PROTOCOL §11.
- **Deciders**: the sponsor (fix everything); the operating orchestrator,
  on the consistency lens of the adversarial pass (23 findings).
- **Scope**: the findings with enforcement or classification teeth; the
  purely editorial sweep rides the round's later commits under this ADR's
  authority.

## Context

The pass found places where the constitution claimed more than the
scripts enforce (the ADR-0002 defect class), where two documents directed
contradictory action, and where the shell's own most recent journal
entries (0014–0016) drifted from the §4.1 grammar invisibly to the
structural parsers — in the very commits that built the machinery that
mines journals.

## Decision

1. **Gates write scope is machine-true.** `docs/gates/**` is excluded
   from `architect_docs_lead`'s §6 row (policy.sh), so §7's "signers
   cannot stage the checklist" transcription rule is enforced rather than
   claimed. Chosen over downgrading the five sentences that state the
   rule: the rule is load-bearing (a signer editing its own gate row is a
   real conflict), so the script moves up to the claim, not the claim
   down to the script. Proving scenario **S37**.
2. **WARN-GRAMMAR** — both scripts print an advisory when an appended
   journal entry's header lacks the `| task: | <title>` fields or its
   body lacks any of the seven narrative sections. **Advisory only,
   never gating**, same contract as WARN-SEAL: narrative quality is
   review-enforced, and a machine cannot judge it — it can only surface
   drift. A strict mode was considered and rejected: gating on section
   *presence* would invite empty sections, converting honest drift into
   dishonest compliance. Proving scenario **S38** (fires on a bare
   header; silent on full grammar; never rejects).
3. **E0 — founding and intake contacts** joins §8: the seeded board's
   three pending escalations, charter ratification, branch protection,
   the intake signature, and Stage 0 founding actions now have a class,
   so SPONSOR.md's "anything else is a process violation" sentence is
   true. E0 exists only at founding.
4. **The sponsor-signature exception** (§7): the sponsor is not an agent
   and holds no journal; a sponsor signature's authority is the
   orchestrator's transcription entry quoting the sponsor verbatim —
   provenance class *relayed*, stated as honestly weaker. A6 is G0's row
   of this class.
5. **The gate table tells the whole truth**: all four §7 rows carry the
   harvest-block precondition; G0's row carries intake (B1–B6) and
   Section C; spec-freeze's row states the interface-check regime as the
   M1 ADR decides it (compiled records or reviewed port table) instead of
   hard-coding one; phase-accept's row names the auditor retrospective.
6. **The two-per-gate touchpoint formula** replaces every "exactly two"
   overclaim: two touchpoints per gate, after a one-time setup of four
   items (A6, A7, A8, the intake signature). Applied across README,
   GUIDE, SPONSOR, BOOTSTRAP, FEDERATION, and §7.1 in this round's
   commits.
7. **Ownership and convention fixes** (landed across the round's
   alignment commits under this ADR): `SO-` harvest-block instantiation
   belongs to dv_lead (packet participants update their own packets),
   with the orchestrator transcribing collation cells only; the
   idle-chain span convention (`(idle)` rows still tile); the
   grammar-drift record for entries 0014–0016 (frozen under R3, recorded
   in J-orchestrator-0017); the dangling-reference sweep (stale §
   citations, the deleted-quote reference, tier-2 fence qualification,
   LH2 naming).

## Alternatives considered

- **Downgrade the five "only the orchestrator stages gates" sentences**
  instead of tightening the script — rejected; see Decision 1.
- **Gating grammar enforcement** (refuse malformed entries) — rejected;
  see Decision 2.
- **Exempting C14–C16 from WARN-GRAMMAR by SHA** — rejected as dishonest:
  the advisory fires on those three commits in every full-history run,
  permanently, and that standing noise is the true record of the drift.

## Corpus backtest (§11)

**Write-scope change**: every historical commit touching `docs/gates/**`
is `Agent: orchestrator` (C7, C10, C14, C15, and this round) — the
tightened rule retro-flags nothing. **WARN-GRAMMAR**: fires on exactly
C14, C15, C16 (two advisories each: header fields, missing sections
Trigger/Inputs/Reasoning), on every `--all` run, forever — accepted, and
predicted here so the noise is never mistaken for a new failure. Proving
scenarios S35–S38 land with their script changes; self-test 40 → 43.
