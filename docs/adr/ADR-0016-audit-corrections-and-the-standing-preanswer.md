# ADR-0016: Audit corrections, and the standing pre-answer

- **Status**: **ACCEPTED** — sponsor-directed ("Fix it and then run an
  audit agent to verify") under **freeze override #3**, scoped on the
  ADR-0008 pattern; end condition = this ADR's own landing commit, which
  re-engages the freeze. Amendable only via PROTOCOL §11.
- **Deciders**: the sponsor (the audit order and the fix directive); the
  operating maintainer orchestrator, acting on an independent audit
  agent's findings against its own claims.
- **Scope**: two internal contradictions in §11-governed law; one missing
  capability the orchestrator had wrongly claimed to exist; the standing
  reporting discipline the audit recommended.

## Context

The sponsor, unconvinced by the orchestrator's architecture summary,
ordered an independent audit of thirteen claims against the tree. Nine
survived. The audit refuted: (1) `docs/FEDERATION.md` §8.1 still said the
reviewer's brief is "§8's **three** screens" after ADR-0009 added the
fourth — a live contradiction with §5.1 and §8; (2) the harvest block
still called `P<n>-module-ready`'s sponsor row "informational" after the
round that changed it to a no-contact board record — a second
contradiction; (3) the orchestrator told the sponsor an org "can
pre-answer NO standing" — a capability that existed nowhere in law: it
was invented, correctly and for good reason, by the first org generic
during its founding, and the orchestrator presented that local invention
as shell capability. The audit's systemic finding: uniform confidence
across MACHINE-enforced and PROSE-instructed rules, and present-tense
description of a pipeline with zero executions.

## Decision

1. **Contradictions corrected**: §8.1's brief reads four screens; the
   block's exclusion clause reads "summary row is a board record, not a
   sponsor signature".
2. **The standing pre-answer becomes law** (FEDERATION §7): a sponsor may
   record a standing answer to the outer-hop question as a board line;
   while it stands the question is not asked and no session acts on the
   default; reopening is a sponsor decision recorded the same way. The
   harvest block records the standing line's reference instead of a
   fresh yes/no. Adopted on the first org generic's provenance (its
   founding round designed exactly this, for exactly the right reason:
   a protection that depends on a default-yes question being answered
   correctly every time fails the first time a distracted sponsor signs
   the default). This also converts the orchestrator's false claim into
   a true one by the only honest route — making the capability exist,
   on its merits, with its real provenance.
3. **Execution honesty stated in the contract itself** (FEDERATION
   preamble): nothing in the federation law has executed yet; until the
   first end-to-end landing completes, the contract is a design
   specification and that landing is its designated first test.
4. **The MACHINE/PROSE reporting discipline** (CLAUDE.md iron rule):
   every enforcement claim the orchestrator makes to the sponsor carries
   its class, and never-executed machinery is never described in bare
   present tense. The audit itself, its refuted claims, and the standing
   coverage finding (zero federation scenarios in the 45-assertion
   suite) are recorded on the board.

## Alternatives considered

- **Correct the record without adding the standing pre-answer** —
  rejected: the capability is independently justified (the trial's own
  insulation need), its absence was the root of the false claim, and
  per-gate NO-every-time is precisely the distracted-sponsor trap.
- **Add federation test scenarios now** — rejected, on the audit's own
  recommendation: prose procedure cannot be unit-tested into truth; the
  first real landing is the designated test, and writing more machinery
  before it would deepen the exact failure mode the audit named.
- **Silently patch the contradictions without an ADR** — refused by the
  freeze and by ADR-0002; this ADR is the vehicle and the record.

## Corpus backtest (§11)

No enforcement-script change; no `test_protocol.sh` scenario owed. Run
backwards: the two corrected sentences are the only instances of their
respective contradictions in the tree (grep verdicts recorded in the
landing journal entry); the standing pre-answer, applied backwards,
would have been exercisable at exactly one recorded moment — the first
org generic's C29 — where it was in fact invented. Nothing else flagged.
