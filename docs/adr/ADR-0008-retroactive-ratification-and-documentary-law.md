# ADR-0008: Retroactive ratification of the federation era; the documentary law; the freeze override

- **Status**: **ACCEPTED** — sponsor-directed (federation-hardening round,
  2026-08-04); amendable only via PROTOCOL §11.
- **Deciders**: the sponsor (direction and scope); the operating orchestrator
  session (drafting), on the findings of a three-lens adversarial pass over
  the C14–C16 federation machinery.
- **Scope**: (a) the §11 status of the C14/C15 amendments; (b) which
  documents §11 governs from now on; (c) the C16 feature freeze and the
  sponsor's override of it for this round.

## Context

C14 amended `agents/PROTOCOL.md` (§7, new §7.1) and five charters; C15
amended `agents/PROTOCOL.md` and the orchestrator charter again. §11 as then
written required a numbered ADR in `docs/adr/` for any change to the
protocol, a charter, or the enforcement scripts — and no ADR was written for
either commit. The journal record (J-orchestrator-0014) cites the origin
program's ADR-0018 + Amendment A1, an ADR in a *different repository*,
unreachable from this tree, which §11's "in `docs/adr/`" does not admit.

Separately, the pass found that the entire harvest/federation law —
`docs/FEDERATION.md`, the gate templates, the playbooks, the domains law —
sat outside §11's scope: constitution-adjacent text that agents execute,
amendable by any agent holding `docs/**` write scope, with no ADR, no
orchestrator, no sponsor.

Third: J-orchestrator-0016 declared the shell feature-frozen ("no new law
until the first harvest transits"), recorded only in journal narrative — a
constraint invisible to the §9 rehydration path (BOARD → PROTOCOL →
ORG_CHART → tails-of-open-work), and now in direct tension with the
sponsor's explicit direction to fix everything the pass found.

## Decision

1. **Retroactive ratification.** The C14 and C15 amendments to
   `agents/PROTOCOL.md` and the charters are ratified as constitutional,
   effective from their landing commits. Their required §11 vehicle is this
   ADR, late; the journal entries J-orchestrator-0014/0015 stand as the
   §11(2) entries. The gap itself is recorded as a process defect, not
   erased: the law was operated before it was ratified.
2. **The documentary law.** §11's first sentence is extended. From this ADR
   on, a change to **this protocol, a charter, the enforcement scripts,
   `docs/FEDERATION.md`, the gate templates (`docs/gates/templates/**`),
   the playbooks (`docs/playbooks/**`), or the domains law
   (`docs/domains/README.md` and pack headers)** requires the full §11
   procedure. Rationale: these documents are executed by stateless agents
   exactly as written; a silent edit to any of them changes org behavior as
   surely as a protocol edit does.
3. **The freeze override.** The C16 feature freeze is overridden for the
   sponsor-directed federation-hardening round (ADR-0008..0013) and for
   that round only. **End condition**: the round's closing commit — which
   re-engages the freeze on `tasks/BOARD.md` in the same commit — after
   which no new law lands until the first harvest transits, as C16
   declared. The freeze and the override are both recorded on the BOARD so
   the §9 rehydration path sees them at its first read.

## Alternatives considered

- **Leave C14/C15 unratified and note the gap** — rejected: an operating
  constitution whose own amendment law it visibly violated invites every
  later agent to treat §11 as advisory.
- **Rewrite history to insert the missing ADRs at C14/C15** — mechanically
  refused (R3/R9) and dishonest; rejected.
- **Leave FEDERATION outside §11 as "operational guidance"** — rejected: the
  pass demonstrated agents obey it as law (it directs commits, merges, and
  identities); ungoverned law is the ADR-0002 defect class.

## Corpus backtest (§11)

The extended §11 run backwards over the 16-commit history flags exactly
C14 and C15 (protocol + charter changes, no ADR — cured by decision 1;
under the extension their FEDERATION/template/playbook/domains changes
would have been flagged identically, cured the same way). C16 touched only
`README.md` and `docs/GUIDE.md`, which remain outside §11 — not flagged.
No other commit is flagged; nothing the rule should catch is missed.
