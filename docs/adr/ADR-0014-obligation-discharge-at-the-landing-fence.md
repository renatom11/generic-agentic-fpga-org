# ADR-0014: Closing the read path — obligation discharge at the landing fence

- **Status**: **ACCEPTED** — sponsor-directed under a scoped freeze
  override (ADR-0008's pattern; the sponsor delegated the disposition
  call for the first trial's findings: "you know best. make a judgement
  call"); override end condition = this absorption round's closing
  commit. Amendable only via PROTOCOL §11.
- **Deciders**: the sponsor (delegation, recorded verbatim above); the
  operating maintainer orchestrator, adopting a finding **first made and
  first legislated in the first org generic founded from this shell**
  (its founding round, commit `86e5d5a`, its own ADR-0014 — that repo has
  since been retired, so the substance is restated self-contained here;
  the sponsor relayed it by hand, which is the defect-relay path working
  as designed).
- **Scope**: when a promotion obligation opened by a landing is
  discharged, and what a landing may leave open. ADR-0012's decision 2 is
  extended, not amended: charters are still never written automatically.

## Context

Traced end-to-end for the multi-project case — sibling projects landing
tier-1/2 lessons into one org generic, expecting them to reach the
charters future forks inherit — the pipeline delivered everything except
the last step. Three defects compounded:

1. FEDERATION §5.1 step 4b said an entry naming a normative home "is not
   fully landed until the amendment ADR lands", while step 5 wrote the
   sent-ledger line declaring "landed" and "recorded" atomic — two
   clauses of one procedure disagreeing about what the ledger means.
2. Nothing scheduled the discharge: the amendment-obligations ledger was
   written from four places (§5.1 4b, §8.1 4, ADR-0010's recurrence
   rule, ADR-0012) and read by none — no gate template references it.
3. An org generic has no gates of its own, so the phase-gate cadence
   that forces every other ledger to closure never fires at the fence
   where these obligations live.

Together: an obligation could open at every landing, from every project,
forever, and no moment ever arrived at which anyone must act. The
charter never changes. This is ADR-0012's own finding — "the loop had no
output" — reappearing one level up, inside ADR-0012's own mechanism; it
is invisible until a second project exists, which is why the seeded
shell never hit it.

## Decision

1. **Discharge is part of the landing, not a follow-up.** FEDERATION
   §5.1 gains step **4c** (and §8.1 the same clause): before the ledger
   line is written, every obligation this landing opened is dispositioned
   to exactly one of three states — **DISCHARGED** (the amendment ADR
   lands and the named charter/protocol section/playbook/template is
   edited, in this landing's own commit sequence); **NARRATIVE-ONLY**
   (the entry re-marked, its `Now lives in` cleared, the reason
   recorded); **DEFERRED** (carried on the board's ledger with a named
   reason **and** a named discharging event). A landing may not end with
   an obligation in no state.
2. **The ledger line states the disposition.** Step 5's sent-ledger line
   gains a final field: the obligation ids this landing opened and their
   states, or `—` when it opened none — a board reader tells a complete
   landing from one carrying debt without opening another file.
3. **The backlog sweeps at every landing.** The landing session re-states
   every `DEFERRED` obligation on the board — not only its own — and
   discharges any whose reason no longer holds. Landings are the only
   moment an org generic's orchestrator is awake, so they are the only
   place the sweep can live. Discharge is an ADR under §11, written
   under the landing session's own authority — not an escalation class.

## Alternatives considered

- **Hang discharge on the project's phase-accept gate** — rejected: the
  obligation lives on the org generic's board and names the org
  generic's documents, which a project neither owns nor may stage; and
  recurrence-opened obligations belong to no project's gate at all.
- **Block every landing until its obligations are drafted** — rejected:
  coupling a sibling project's gate to constitutional work in another
  repo makes a landing fail for reasons its own sponsor cannot act on.
  DEFERRED-with-named-event plus the every-landing sweep keeps the valve
  from becoming the default: a stale deferral must be re-asserted in
  writing, never silently inherited.
- **Auto-append accepted lessons to charters** — remains rejected
  (ADR-0012): what lands in a charter still passes an ADR.

## Corpus backtest (§11)

No enforcement-script change (the disposition and sweep are procedure in
a §11-governed document; this ADR is their vehicle). Run backwards: no
landing has ever executed and both ledgers are empty in every historical
tree — nothing flagged, nothing missed. Forward, the first landing
anywhere will exercise step 4c on its first obligation.

## Status change (ADR-0018, 2026-08-17)

**Superseded** by [ADR-0018](ADR-0018-the-federation-retraction.md), the federation retraction. The DISCHARGED / NARRATIVE-ONLY / DEFERRED trichotomy and the backlog sweep survive, restated at gate cadence in PROTOCOL §7.1. The landing fence this document scheduled them at is retired.
