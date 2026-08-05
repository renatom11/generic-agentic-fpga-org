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

## Amendment A1 — the completion sweep (2026-08-05)

Appended under the same sponsor direction, on the origin program's
ADR+A1 precedent; nothing above this heading is edited.

The backtest's closing sentence — "Nothing else flagged" — was this
ADR's own overclaim: the §11 restatement sweep it implies was never
run. A sponsor-ordered verification audit (2026-08-05) confirmed the
three corrections and the mechanical state, then found the standing
pre-answer stated in exactly two places while seventeen other surfaces
still described the outer-hop question as unconditional — among them
the harvest block's own Preconditions box, which demanded a fresh
yes/no and so blocked the new law at the one place that gates a gate,
and the playbook the orchestrator executes from. It further found
freeze override #3 absent from the board's freeze line, the audit
tally accounting for only 12 of 13 claims, no seeded board slot for
the standing line, and the "exactly two touchpoints" formula — which
ADR-0013 Decision 6 had deliberately swept tree-wide — falsified by
this ADR without a re-sweep. Its verdict: "I would require a
completing sweep commit before treating the standing pre-answer as
operable law."

**Decision.** Override #3's end condition extends from this ADR's
landing commit to the completion-sweep commit that lands together with
this amendment; the freeze re-engages at that sweep commit. The sweep:

1. The harvest block's Preconditions box accepts the standing line's
   board reference in place of a fresh yes/no.
2. Every restatement surface — FEDERATION §0 and preamble, PROTOCOL
   §7.1, the harvest playbook, CLAUDE.md, SPONSOR.md, GUIDE.md,
   README.md, MANIFEST.md, BOOTSTRAP.md, the orchestrator charter, and
   all four gate checklists — carries the standing-pre-answer
   conditional, and "exactly two touchpoints" reads "at most two"
   wherever the formula appears.
3. §7 states explicitly that a standing answer may be YES as well as
   NO, and that reopening or reversing the line is the sponsor's
   decision alone — no session proposes or escalates it (it fits no
   escalation class, by design).
4. The board gains a seeded **Outer-hop standing pre-answer** slot,
   confirmed at every founding (G0 row B6); override #3 and the
   corrected 13-claim tally (9 confirmed or with-caveat, 4 refuted in
   part) are recorded on the board's freeze and audit lines.
5. GUIDE §6 carries the execution-honesty note; MANIFEST's amendment
   range runs to ADR-0016.

**Record kept honest.** The backtest's sentence about the first org
generic's C29 describes a retired repository not present in this tree;
it stands as relayed provenance (§10 classes), not as a verifiable
citation. This amendment is that sentence's caveat, and this ADR now
carries its own correction the same way the audit record above carries
the orchestrator's.
