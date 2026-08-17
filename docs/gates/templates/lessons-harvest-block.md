# Block: lessons harvest (gate precondition)

<!-- Not a standalone gate — this block instantiates INSIDE a parent
     record. Copy everything from the COPY line down into:
       - a phase-gate checklist (docs/gates/P<n>-*-checklist.md), when the
         parent checklist instantiates from its sibling template — only
         the orchestrator stages docs/gates/** (PROTOCOL §6);
       - a module sign-off packet (SO-<module>.md), when the packet opens
         — the completed block is a precondition of the PASS.
     Instantiation ownership (ADR-0013): the orchestrator instantiates
     into docs/gates/** checklists (§6 — only it may stage them,
     machine-enforced); dv_lead instantiates into its own SO- packets.
     Both run automatically at every gate and sign-off (PROTOCOL §7.1);
     the sponsor never requests, configures, or operates it. The
     end-to-end operating procedure is docs/playbooks/lessons-harvest.md.
     Delete this comment when instantiating; keep the comments inside the
     block — they are the filling instructions. -->

Normative source: **PROTOCOL §7.1** (inside §7, Gates). Every module
sign-off and every phase gate carries a lessons harvest as a precondition:
each agent holding a persistent journal chain mines its own journal over
the span since its last harvest, the orchestrator collates and classifies,
and the parent record is not fully signed until this block is. Everything
the harvest yields **stays in this repository** (ADR-0018): tier-1 and
tier-2 entries land in [`docs/LESSONS.md`](../../LESSONS.md) — the file
that doubles as the program's hand-carried travel copy — and tier-3
lands in the project's own protocol, charters, and plans. This file plus
the block's own comments are everything a filler needs; no other reading
is assumed.

## The bar, short form

A candidate lesson clears all three criteria. LH2's grade depends on the
tier claimed.

| Criterion | Test |
|---|---|
| **LH1 — provenance-pinned** | Cites the incident commit(s) and the adjudicating journal entry or packet. |
| **LH2-g — general vocabulary** (tier 1) | With provenance hidden, the rule statement contains no proper noun of any project *or domain*: no module ids, requirement ids, signal names, file paths, protocol names, interface standards. |
| **LH2-d — domain vocabulary** (tier 2) | With provenance hidden, domain nouns are admissible (protocol names, interface standards, algorithm families); project nouns are still barred (module ids, requirement ids, signal names, repo file paths). |
| **LH3 — stated failure** | Says what breaks without the rule, in a form recognisable in someone else's repo. |

The bars are not bureaucracy: they are what makes an entry teachable to a
session that never saw the incident — the property the travel copy
depends on.

**The classifier — descend the tiers, stop at the first bar passed:**

1. Hide the provenance; remove every project noun. Still teaches?
   **Tier 1** — id `LC-<chain>-nn` (chain-qualified, ADR-0017 A1 —
   parallel miners minting bare `LC-nn` collide); target: a general
   section of `docs/LESSONS.md`.
2. Restore only the domain nouns. Teaches a stranger who knows the domain
   but not the project? **Tier 2** — id `LD-<chain>-nn` (chain-qualified,
   as above); target: the **named** domain section of `docs/LESSONS.md`
   (a new domain section states its id prefix in its heading; creating
   one is a landing decision recorded in the landing entry).
3. Else **tier 3** — no `LC-`/`LD-` id; target: the project's own local
   accretion (its protocol, charters, plans); it needs project vocabulary
   and stays where that vocabulary means something. Or a **war story**: a
   candidate that fails a bar is kept with the criterion it failed, not
   discarded.

`LC-`/`LD-` ids are provisional harvest handles; the landing commit
allocates final ids — the next id in the receiving section of
`docs/LESSONS.md`. A candidate never self-assigns its final id.

---

<!-- COPY FROM HERE into the parent checklist or SO- packet. -->

### Lessons harvest — <parent gate / SO- id>

<!-- Bars and classifier: docs/gates/templates/lessons-harvest-block.md,
     top half. The landing rules: PROTOCOL §7.1 (ADR-0018). -->

#### Span record

<!-- One row per persistent journal chain (orchestrator, each active
     lead, auditor), plus one row per worker span a lead commissioned in
     the shared worker journals, with the lead as miner. Spans are
     entry-id intervals and must TILE: this row's `from` = the same
     chain's previous harvest `to` + 1; a chain's first-ever harvest
     starts at the Lessons-baseline line recorded on the board at
     founding, + 1 (entry 0001 only in a repo with no inherited
     history — ADR-0010) and its "Tiles with" cell says "first harvest
     (baseline NNNN)". An idle chain (no new entries since its previous
     harvest) still gets a row: span `(idle)`, yield NIL — it tiles, and
     its next harvest's `from` is unchanged. A gap or overlap is a
     visible arithmetic error and blocks this block. Yield lists the
     candidate ids minted (war stories included) or the word NIL — a nil
     yield is declared, never omitted; nil is legitimate and cheap, and
     there is no pressure to mint. Never record a count: a count cannot
     tell a harvest from a shrug, and the auditor samples these rows for
     span tiling and bar honesty instead. -->

| Journal chain | Miner | Span (`J-<agent>-NNNN..NNNN`) | Tiles with (previous harvest · its `to`) | Harvest note (miner's journal entry) | Yield (ids or NIL) |
|---|---|---|---|---|---|
| `J-<agent>` | `<agent>` | `J-<agent>-NNNN..NNNN` | `<gate/SO id>` · `NNNN` | `J-<agent>-NNNN` | `LC-<chain>-nn, LD-<chain>-nn` / NIL |
| `J-<worker template>` | `<commissioning lead>` | `J-<worker>-NNNN..NNNN` | `<gate/SO id>` · `NNNN` | `J-<lead>-NNNN` | NIL |

#### Yield — three-way disposition

<!-- Every candidate from every span lands in exactly one row here or in
     the war-stories table. Tier-3 rows carry a short title, not an id
     (LC-/LD- ids belong to tiers 1–2 only). Disposition names where the
     candidate now physically is: for tiers 1–2, the docs/LESSONS.md
     entry id it landed as (or the dedup verdict — see the landing
     rows); for tier 3, the local file it landed in, or the
     carry-forward obligation that will land it. -->

| Candidate | Tier | Target | Disposition |
|---|---|---|---|
| `LC-<chain>-nn <short title>` | 1 | `docs/LESSONS.md` §<section> | landed as `L-Xnn` at `<sha>` / merged into `L-Xnn` / dropped-duplicate of `L-Xnn` (recurrence noted) |
| `LD-<chain>-nn <short title>` | 2 | `docs/LESSONS.md` §<domain section> | landed as `<PREFIX>-nn` at `<sha>` |
| `<short title>` | 3 | local accretion: `<file / section>` | landed at `<sha>` / obligation `C-nn` |

#### War stories

<!-- A candidate that failed a bar is kept with the criterion it failed
     (LH1 / LH2-g / LH2-d / LH3) — the corpus a later harvest re-reads
     when the missing provenance or generality arrives. "None" is a
     legitimate table. -->

| Candidate | Failed criterion | Kept where |
|---|---|---|
| `<id or short title>` | LH1 / LH2-g / LH2-d / LH3 | `<harvest note / packet>` |

#### Landing (local — ADR-0018)

- Tier-1/2 rows transcribed into `docs/LESSONS.md` **in this gate's
  closing commit(s)**, each with a **self-contained incident
  description** — the file is the travel copy, and a reader holding only
  the file must be able to judge LH2 and LH3. Final ids allocated at
  transcription (next id in the receiving section). **NONE** — every row
  tier-3, war story, or nil — is itself declared here, never left blank.
- **Dedup against the file** (ADR-0010 as amended): each candidate is
  read against the existing corpus before transcription — land /
  merge-by-citation into the existing entry / drop as duplicate with a
  `**Recurrence.**` note appended to the existing entry / escalate a
  contradiction (resolved by `**Supersedes.**` on the winner,
  `**Superseded-by.**` on the loser; the loser is never deleted). The
  third independent recurrence of one lesson opens a promotion
  obligation on the board.
- **Amendment obligations** (ADR-0012, at gate cadence): a transcribed
  entry whose text names a normative home — a protocol section, charter,
  playbook, or template — opens an obligation on the board's
  amendment-obligations ledger in the same commit. Before this gate is
  declared passed, every obligation this harvest opened is in exactly
  one state — **DISCHARGED** (the amendment landed this round),
  **NARRATIVE-ONLY** (re-marked, reason recorded), or **DEFERRED**
  (named reason + named discharging event) — and the board's DEFERRED
  backlog is swept, each reason re-stated or discharged.

#### Preconditions (these gate the parent record)

- [ ] Every active persistent journal chain has a span row, and every
      commissioned worker span has a lead-mined row.
- [ ] Spans tile: each `from` = the same chain's previous harvest
      `to` + 1, checked by arithmetic against the previous gate's block
      (or "first harvest" from the board's Lessons baseline + 1).
- [ ] Every yield cell carries candidate ids or a declared NIL — no blank
      cells, no counts.
- [ ] Every candidate is dispositioned exactly once (yield table or war
      story), and every war story names its failed criterion.
- [ ] Tier-1/2 rows transcribed into `docs/LESSONS.md` with dedup
      verdicts recorded, or NONE declared.
- [ ] Obligations dispositioned and the DEFERRED backlog swept (the
      Landing rows above).

The parent gate or sign-off is **not fully signed** until every box above
is checked (PROTOCOL §7.1).
