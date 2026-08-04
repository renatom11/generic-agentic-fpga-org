# Block: lessons harvest (gate precondition)

<!-- Not a standalone gate — this block instantiates INSIDE a parent
     record. Copy everything from the COPY line down into:
       - a phase-gate checklist (docs/gates/P<n>-*-checklist.md), when the
         parent checklist instantiates from its sibling template — only
         the orchestrator stages docs/gates/** (PROTOCOL §6);
       - a module sign-off packet (SO-<module>.md), when the packet opens
         — the completed block is a precondition of the PASS.
     Instantiation is the orchestrator's job and runs automatically at
     every gate and sign-off (PROTOCOL §7.1); the sponsor never requests,
     configures, or operates it. The end-to-end operating procedure is
     docs/playbooks/lessons-harvest.md. Delete this comment when
     instantiating; keep the comments inside the block — they are the
     filling instructions. -->

Normative source: **PROTOCOL §7.1** (inside §7, Gates). Every module
sign-off and every phase gate carries a lessons harvest as a precondition:
each agent holding a persistent journal chain mines its own journal over
the span since its last harvest, the orchestrator collates and classifies,
and the parent record is not fully signed until this block is. The export
packet's onward path — staging, screening, human-merged upstream
contribution — is [`docs/FEDERATION.md`](../../FEDERATION.md). This file
plus the block's own comments are everything a filler needs; no other
reading is assumed.

## The bar, short form

A candidate lesson clears all three criteria. LH2's grade depends on the
tier claimed.

| Criterion | Test |
|---|---|
| **LH1 — provenance-pinned** | Cites the incident commit(s) and the adjudicating journal entry or packet. |
| **LH2-g — general vocabulary** (tier 1) | With provenance hidden, the rule statement contains no proper noun of any project *or domain*: no module ids, requirement ids, signal names, file paths, protocol names, interface standards. |
| **LH2-d — domain vocabulary** (tier 2) | With provenance hidden, domain nouns are admissible (protocol names, interface standards, algorithm families); project nouns are still barred (module ids, requirement ids, signal names, repo file paths). |
| **LH3 — stated failure** | Says what breaks without the rule, in a form recognisable in someone else's repo. |

**The classifier — descend the tiers, stop at the first bar passed:**

1. Hide the provenance; remove every project noun. Still teaches?
   **Tier 1** — id `LC-nn`; target: the core `docs/LESSONS.md` — the org
   generic's at the inner hop, onward to the canonical shell's on the
   outer (docs/FEDERATION.md §0) — via the export packet.
2. Restore only the domain nouns. Teaches a stranger who knows the domain
   but not the project? **Tier 2** — id `LD-nn`; target: the **named**
   domain pack in `docs/domains/`, via the export packet.
3. Else **tier 3** — no `LC-`/`LD-` id; target: the project's own local
   accretion (its protocol, charters, plans); never leaves the project.
   Or a **war story**: a candidate that fails a bar is kept with the
   criterion it failed, not discarded.

`LC-`/`LD-` ids are local and provisional; the landing fence allocates
final `L-` and pack-local ids — the org generic at the inner hop, the
canonical shell at its merge. A candidate never self-assigns its final id.

---

<!-- COPY FROM HERE into the parent checklist or SO- packet. -->

### Lessons harvest — <parent gate / SO- id>

<!-- Bars and classifier: docs/gates/templates/lessons-harvest-block.md,
     top half. The export contract: docs/FEDERATION.md. -->

#### Span record

<!-- One row per persistent journal chain (orchestrator, each active
     lead, auditor), plus one row per worker span a lead commissioned in
     the shared worker journals, with the lead as miner. Spans are
     entry-id intervals and must TILE: this row's `from` = the same
     chain's previous harvest `to` + 1; a chain's first-ever harvest
     starts at its entry 0001 and its "Tiles with" cell says "first
     harvest". A gap or overlap is a visible arithmetic error and blocks
     this block. Yield lists the candidate ids minted (war stories
     included) or the word NIL — a nil yield is declared, never omitted;
     nil is legitimate and cheap, and there is no pressure to mint. Never
     record a count: a count cannot tell a harvest from a shrug, and the
     auditor samples these rows for span tiling and bar honesty instead. -->

| Journal chain | Miner | Span (`J-<agent>-NNNN..NNNN`) | Tiles with (previous harvest · its `to`) | Harvest note (miner's journal entry) | Yield (ids or NIL) |
|---|---|---|---|---|---|
| `J-<agent>` | `<agent>` | `J-<agent>-NNNN..NNNN` | `<gate/SO id>` · `NNNN` | `J-<agent>-NNNN` | `LC-nn, LD-nn` / NIL |
| `J-<worker template>` | `<commissioning lead>` | `J-<worker>-NNNN..NNNN` | `<gate/SO id>` · `NNNN` | `J-<lead>-NNNN` | NIL |

#### Yield — three-way disposition

<!-- Every candidate from every span lands in exactly one row here or in
     the war-stories table. Tier-3 rows carry a short title, not an id
     (LC-/LD- ids belong to tiers 1–2 only). Disposition names where the
     candidate now physically is: for tiers 1–2, the export packet; for
     tier 3, the local file it landed in, or the carry-forward obligation
     that will land it. -->

| Candidate | Tier | Target | Disposition |
|---|---|---|---|
| `LC-nn <short title>` | 1 | core `docs/LESSONS.md` (org generic, then onward) | in export packet |
| `LD-nn <short title>` | 2 | domain pack `<pack>` (org generic, then onward) | in export packet |
| `<short title>` | 3 | local accretion: `<file / section>` | landed at `<sha>` / obligation `C-nn` |

#### War stories

<!-- A candidate that failed a bar is kept with the criterion it failed
     (LH1 / LH2-g / LH2-d / LH3) — the corpus a later harvest re-reads
     when the missing provenance or generality arrives. "None" is a
     legitimate table. -->

| Candidate | Failed criterion | Kept where |
|---|---|---|
| `<id or short title>` | LH1 / LH2-g / LH2-d / LH3 | `<harvest note / packet>` |

#### Export packet and transmission

- Export packet: `<committed path>` at `<sha>` — carries every tier-1/2
  row above, each with a **self-contained incident description**
  (judgeable without visiting this repository, because foreign repos may
  be private; permalinks only where the source is public). **NONE** —
  every row tier-3, war story, or nil — is itself declared here, never
  left blank.
- Transmission — two hops (docs/FEDERATION.md §0), scoped to the parent
  record:
  - **At a sponsor-signed parent** (a checklist whose *passage requires*
    the sponsor's own signature — exactly G0, `P<n>-spec-freeze`,
    `P<n>-phase-accept`; `P<n>-module-ready`'s informational sponsor row
    does not qualify): the sponsor's one yes/no on the **outer hop**
    rides the gate signature, **default yes** — **YES / NO**, recorded
    in `J-orchestrator-NNNN`. Once the signature is journaled, the
    **inner hop runs automatically**: this gate's export packet and
    every packet DEFERRED to it land in the org generic under that
    signature's authority (docs/FEDERATION.md §5.1 — after the
    signature, never before; a bounced gate lands nothing); the landing
    commit(s) are recorded here as this block's final cells, then the
    gate is declared passed. On a yes the newly-landed packets go onward
    to the canonical shell (docs/FEDERATION.md §7); NO is the stated
    exception path for organizations that cannot share — the packets
    stay in the org generic, nothing else about the harvest changes, and
    a later gate's yes may flush the backlog.
  - **At any other parent** (an `SO-` packet or `P<n>-module-ready` —
    records the sponsor does not sign): record **DEFERRED to
    `<next sponsor-signed gate>`**. The packet is committed locally now;
    its org-generic landing and its outer-hop decision both ride that
    gate's signature — **one yes/no per sponsor-signed gate, never per
    module**; no sponsor action attaches to a record the sponsor does
    not sign.
  - A **NONE** export needs no landing and no decision for itself; record
    **N/A** — but at a sponsor-signed parent with anything DEFERRED to
    it, the landing and the one yes/no still run to discharge the queue,
    NONE or not.

#### Preconditions (these gate the parent record)

- [ ] Every active persistent journal chain has a span row, and every
      commissioned worker span has a lead-mined row.
- [ ] Spans tile: each `from` = the same chain's previous harvest
      `to` + 1, checked by arithmetic against the previous gate's block
      (or "first harvest" from entry 0001).
- [ ] Every yield cell carries candidate ids or a declared NIL — no blank
      cells, no counts.
- [ ] Every candidate is dispositioned exactly once (yield table or war
      story), and every war story names its failed criterion.
- [ ] Export packet produced and cited above, or NONE declared.
- [ ] Transmission recorded: at a sponsor-signed parent, the org-generic
      landing commit(s) — automatic under the gate signature — plus the
      sponsor's one yes/no on the outer hop (default yes), the only
      sponsor action in this block; N/A stands in only when this parent's
      export is NONE *and* nothing is DEFERRED to it. At any other
      parent, the DEFERRED carry-forward to the next sponsor-signed gate
      (or N/A for a NONE export). No sponsor action ever attaches to a
      record the sponsor does not sign.

The parent gate or sign-off is **not fully signed** until every box above
is checked (PROTOCOL §7.1).
