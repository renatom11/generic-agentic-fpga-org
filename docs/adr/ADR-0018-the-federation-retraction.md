# ADR-0018: The federation retraction — lessons are local, and they travel by hand

- **Status**: **ACCEPTED** — sponsor-directed (2026-08-17; freeze override
  #5, ADR-0008's pattern; end condition = this retraction round's closing
  sweep commit). Amendable only via PROTOCOL §11.
- **Deciders**: the sponsor, reversing his own earlier direction after two
  days' reflection, in his words: *"It was designed to be an installer that
  you fork and then forked versions would generate rules based on their
  journal that could flow to the originally installed version but I dont
  love that anymore. Harvesting rules from journal is cool, but it should
  only be for a local project. Maybe it would be cool to have a file that
  has rules its learned since starting that project that you could give
  another session so it could learn but it shouldnt be like it currently
  is."* The operating maintainer orchestrator executes.
- **Scope**: the entire cross-repository lessons pipeline — the org-generic
  level, both hops, packets, fences, ledgers, and races — and what replaces
  it. The gate-time harvest itself is **retained**; this ADR moves its
  destination, not its discipline.

## Context

ADR-0009..0016 built a three-level federation: projects landed harvested
lessons in their org generic automatically at every sponsor-signed gate
(the inner hop), and org generics forwarded them to this canonical shell
by a default-yes question or standing pre-answer (the outer hop), through
export packets, screening agents, a sent-ledger, a race-resolution law,
and a human-merge fence. The board froze all law pending the pipeline's
first end-to-end landing — which never ran: the standing audit finding
(board, 2026-08-05) records that **the federation pipeline had zero
mechanical test coverage** and that its first landing was its designated
first test. Field trials exercised the founding path and returned real
defects, but no landing ever transited either hop.

The sponsor has now retracted the design's premise. What he wants kept is
the part that was always locally true: agents mining their own journals at
every gate, under bars that make the yield teachable, accreting into a
file. What he wants gone is the automation that moved that file's contents
between repositories.

## Decision

1. **The topology collapses to two roles.** `canonical-shell` (the
   installer; runs nothing) and `project` (a founded copy running one
   program). The `org-generic` and `solo-collapsed` roles retire. Founding
   is one hop: clone the shell, push to a new empty repository, land the
   role-recording founding commit on the default branch, run G0. The
   board's **Repo role** line and the R-ROLE-1 wedge check survive with
   the reduced value set.

2. **The harvest law survives unchanged in discipline** (PROTOCOL §7.1):
   every module sign-off and phase gate carries a lessons harvest as a
   precondition; spans tile as entry-id intervals; nil is declared, never
   omitted; no counting metric; war stories are kept; the auditor runs the
   phase retrospective at every `P<n>-phase-accept`; the closing harvest
   rides program halts. The three-tier classifier and the LH1/LH2/LH3
   bars survive verbatim — the bars are what make an entry teachable
   outside the session that wrote it, which the travel-copy design below
   depends on.

3. **All destinations are local.** Tier-1 (general) and tier-2 (domain)
   candidates both land in the project's own `docs/LESSONS.md`, in the
   gate-closing commit, with final `L-` ids allocated locally (next id in
   the thematic section; domain-vocabulary entries sit in domain-titled
   sections, their LH2-d grade noted per entry). Tier-3 lands in the
   project's protocol, charters, and plans, as before. `docs/domains/`
   packs, export packets, `docs/federation/**`, the sent-ledger, the
   landing procedure, the race law, the standing pre-answer, and both
   hops are **deleted**. The sponsor's per-gate touchpoint contract
   shrinks to one: the gate signature. No consent question exists because
   nothing transmits.

4. **`docs/LESSONS.md` is the travel copy.** The file doubles as the
   hand-off artifact — its header says so. The board records a **Lessons
   baseline** line at founding (last inherited entry id per section);
   everything past the baseline is what this project learned. To teach
   another session or project, a human hands it the file (or its
   post-baseline tail). A new project may be seeded from any prior
   project's file at founding — recorded as a provenance line beside the
   new baseline. Transport is manual, human-carried, one direction, one
   hop, with no machinery behind it.

5. **The shell's corpus grows only by maintainer hand-carry.** The shell
   ships its `docs/LESSONS.md` as the starter corpus every clone inherits.
   When the maintainer chooses to adopt entries from a project's travel
   copy, a shell session lands them as ordinary protocol-conforming
   commits under ordinary review — no inbox, no PR law, no pipeline. The
   defect channel (GitHub issues on the shell) is unchanged: defects were
   never lessons.

6. **The read path survives at gate cadence** (ADR-0012 amended, ADR-0014
   restated). A landed entry whose text names a normative home opens an
   amendment obligation on the board in the same commit; before its gate
   closes, every obligation the round opened is dispositioned —
   **DISCHARGED** (the amendment lands in this round), **NARRATIVE-ONLY**
   (re-marked, reason recorded), or **DEFERRED** (named reason + named
   discharging event) — and the gate sweeps the DEFERRED backlog. Gates
   replace landings as the cadence, since gates are when this repository's
   orchestrator is awake. Local dedup survives (ADR-0010 amended):
   candidate against the file — land, merge-by-citation, drop with a
   recurrence note, or escalate a contradiction into Supersedes /
   Superseded-by fields; the third independent recurrence opens a
   promotion obligation.

7. **R-ROLE-1 is re-keyed and generalized** — discharging the first
   queued law-debt item. The wedge check compares `git remote get-url
   origin` against the board's **This repository** line for **every**
   role claim (not only `canonical-shell`), failing any founded-identity
   claim whose origin disagrees: an unrecorded fresh copy's first act is
   its founding commit. The federation-upstream line it formerly keyed on
   is deleted. Scenarios S39/S40 are rewritten to the new key and the
   two-value enumeration.

8. **The freeze closes with this round.** Its end condition — the first
   lessons landing — retires with the pipeline it was designed to test;
   the deletion-only simplification pass the board queued behind it **is
   this round**. Law changes hereafter by ordinary §11 ADRs.

## Supersession and amendment table

| ADR | Disposition here |
|---|---|
| ADR-0009 (federation serialization and landing law) | **Superseded in full** — no landings exist to serialize |
| ADR-0010 (dedup precedence and growth law) | **Amended** — local dedup, recurrence notes, Supersedes fields, and the promotion threshold survive inside one repository; every cross-project clause retires |
| ADR-0011 (repo-role discriminator) | **Amended** — the discriminator and installer framing survive; the role set is now `canonical-shell` / `project` |
| ADR-0012 (the read path) | **Amended** — work-order standing lessons and promotion obligations survive; promotion cadence moves from landings to gates |
| ADR-0014 (obligation discharge at the landing fence) | **Superseded** — its DISCHARGED / NARRATIVE-ONLY / DEFERRED trichotomy and backlog sweep are restated at gate cadence in PROTOCOL §7.1 |
| ADR-0015 (role-line wedge check) | **Amended** — R-ROLE-1 re-keyed to the This-repository line and generalized to every role |
| ADR-0016 (audit corrections and the standing pre-answer) | **Amended** — the audit-correction half stands; the standing pre-answer retires with the question it pre-answered |
| ADR-0017 (the artefact standard) | Stands — its federation citations become historical |

## Queued-item dispositions

- Law-debt #1 (generalize R-ROLE-1): **DISCHARGED** by decision 7.
- Law-debt #2 (MACHINE guard on org-generic side-branch founding):
  **RETIRED** — the role it guarded no longer exists; the surviving rule
  (a founding commit lands on the default branch) keeps its PROSE form.
- Fifth field finding (outer-hop repo access): **RETIRED** with the outer
  hop.
- Sponsor proposals P1/P2/P3: **remain queued**, re-scoped to the two-role
  world (P1's role-keyed README renders two identities, not four; P2's
  touchpoint brief loses the outer-hop line; P3's next-copy block is the
  single shell→project hop).

## Consequences

- `docs/FEDERATION.md`, `docs/federation/**`, and `docs/domains/**` are
  deleted; every living document that referenced them is rewritten in the
  retraction sweep (the commit following this ADR). Historical documents —
  ADRs' body text and journals — are not rewritten; this table is how a
  reader knows what still binds.
- The MANIFEST's "recursive self-improvement" experiment is re-stated as
  what it now is: an organization that compounds locally, whose lessons a
  human may carry forward by hand.
- The 52-assertion enforcement self-test keeps its authority statement
  honest with no change in kind: it tested journal/commit hygiene before
  and still does; the never-tested pipeline it silently excluded no longer
  exists to be excluded.
