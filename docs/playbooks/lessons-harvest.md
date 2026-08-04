# Playbook — the lessons harvest

The procedure that runs at every module sign-off and every phase gate
(PROTOCOL §7.1): each journal-holding agent mines its own record over the
span since its last harvest, the orchestrator collates and classifies, and
what generalises travels upstream. The instantiable checklist block is
[`lessons-harvest-block.md`](../gates/templates/lessons-harvest-block.md);
the share-back contract — packet form, screening, who merges — is
[`FEDERATION.md`](../FEDERATION.md). This playbook is the orchestrator's
end-to-end procedure.

**Cast**: every agent with a persistent journal chain mines its own
journal; a lead additionally mines the worker spans it commissioned; the
orchestrator instantiates, collates, classifies, packages, and transmits;
the auditor samples span tiling and bar honesty; the sponsor answers
exactly one question. Nothing here is sponsor-operated — the harvest rides
the gate the sponsor was already signing.

## The procedure

### 1. Instantiate the block

When the parent record opens — a phase-gate checklist instantiating from
its template, or an `SO-` packet coming into sight — copy the harvest
block into it and fill the span skeleton **before dispatching anything**:

- one row per persistent journal chain active since the previous harvest
  (orchestrator, each active lead, auditor);
- one row per worker span commissioned in the window, miner = the
  commissioning lead;
- each row's `from` computed by arithmetic from the previous gate's block:
  previous `to` + 1 (a chain's first-ever harvest starts at entry 0001).

Filling the spans first is what makes a skipped harvest a visible
arithmetic gap rather than a silent one — the hole exists on paper before
any mining starts, not after somebody remembers.

### 2. Dispatch the mining rounds

Each agent mines **its own** journal: the reasoning being mined is the
miner's own, and no agent writes — or speaks for — another agent's record.
The one exception is structural: workers are stateless between spawns and
hold no standing identity to mine with, so the lead that commissioned a
worker span mines it in the shared worker-template journal.

The dispatch (spawn prompt or standing work item) carries:

- the span, as an entry-id interval — mine this, nothing outside it;
- the bar in short form (LH1 / LH2-g / LH2-d / LH3 and the classifier,
  from the block template);
- **the refusable bar**: an explicit license to return nil. A nil return
  is a complete, correct answer; candidates are minted against the bar,
  never to fill a quota; a candidate the miner cannot provenance-pin or
  state generally comes back as a war story with its failed criterion
  named, not padded until it passes. No count is requested and none is
  reported — a dispatch that asks for "at least N lessons" has already
  corrupted the harvest.

The miner records its yield as a **harvest note** in the round's journal
entry (normal §4 discipline): per candidate, the draft rule statement, the
provisional tier with the classifier steps shown, the provenance pins, and
the stated failure; war stories with the criterion each failed; or the
declared nil.

### 3. Collate

The orchestrator gathers the harvest notes into the block: span rows
completed with their harvest-note references, tiling verified by
arithmetic. Authority lives in each miner's own journal entry; the block
edit is clerical transcription, the same rule as gate signatures
(PROTOCOL §7). A missing note is a gap to be dispatched, never backfilled
by the orchestrator on the miner's behalf.

### 4. Classify — descend the tiers

For every candidate, with the miner's provisional tier as input, run the
classifier as a procedure, not a judgement call:

1. Read the rule statement with provenance hidden and every project noun
   removed — literally: the statement alone, no incident. Still teaches?
   **Tier 1** (`LC-nn`).
2. Restore only the domain nouns. Teaches a stranger who knows the domain
   but not the project? **Tier 2** (`LD-nn`), and the target pack is
   **named** — an existing pack in `docs/domains/`, or the pack the
   candidate argues should exist (pack creation is a shell-side merge
   decision, not the contributor's).
3. Else **tier 3**: route it into the project's own local accretion — its
   protocol, charters, plans — and record in the disposition column where
   it landed or the carry-forward obligation that will land it. Or a war
   story, kept with its failed criterion.

A classification disagreement routes back to the miner as a question with
the orchestrator's reading as input, not as an override — the miner holds
the incident. Every candidate ends in exactly one row: yield table or war
story.

### 5. Produce the export packet

From the tier-1/2 rows, produce the export packet
([`FEDERATION.md`](../FEDERATION.md) §6): header (source org, gate, date);
one candidate table per tier carried, `LC-`/`LD-` ids local; optional
war-story appendix. Every row's incident description is
**self-contained** — sufficient to judge LH2 and LH3 without visiting this
repository, because the reviewer upstream cannot assume it is reachable;
permalinks only where the source is public, and only as a supplement.
Never pre-allocate final `L-` or pack-local ids — the landing fence does
that (the org generic at the inner hop, the canonical shell at its
merge). Commit the packet as part of the gate record and cite its path in
the block. If every row is tier-3, war story, or nil, declare **NONE** in
the block; a nil-export gate is a normal gate.

### 6. The sponsor's one question

At a **sponsor-signed** gate (G0, `P<n>-spec-freeze`, `P<n>-phase-accept`),
present the **outer-hop** decision beside the gate signature,
decision-ready and one line long: *send this gate's lessons onward to the
canonical shell? Default yes.* — one question covering everything this
gate will land. Record the answer in the block and in the orchestrator's
journal. Then, **once the signature is journaled — never before**, the
**inner hop runs automatically**: this gate's export packet and every
packet DEFERRED to it are landed in the org generic through the
org-fence procedure ([`FEDERATION.md`](../FEDERATION.md) §5.1 — clone,
stage, screen, transcribe, merge under the signature's authority), the
landing commits are recorded in the block as its final cells, and on a
yes the packets go onward (§7). A bounced gate lands nothing. At a parent the sponsor does **not**
sign — an `SO-` packet or `P<n>-module-ready` — there is no signature to
ride: commit the export packet locally, record **DEFERRED to the next
sponsor-signed gate** in the block, and ask nothing. One yes/no per
sponsor-signed gate, never per module. **NO** is the exception path for organizations
that cannot share ([`FEDERATION.md`](../FEDERATION.md) §7): the packet
stays local as part of the gate record, and nothing else about the harvest
changes. This and the gate signature are the sponsor's only touchpoints;
everything above ran without them.

### 7. Transmit

On yes, open **one pull request per unsent export packet** against the
**canonical shell** — the org generic's board records what has been
sent — each PR adding exactly one file under
`docs/federation/inbox/<source-org>-<parent-record-id>.md`
([`FEDERATION.md`](../FEDERATION.md) §7). The PR is a delivery vehicle,
never merged as-is: at the canonical fence (§8.1), the maintainer stages
the packet as the shell's own protocol commits, screens it with a
reviewer agent (the LH bars, teach-don't-instruct, leak screening),
transcribes accepted candidates, and a **human maintainer merges the
staging branch — never automated**: `docs/LESSONS.md` and the domain
packs are constitution-adjacent text future agents read and obey at boot,
so a foreign contribution is a prompt-injection surface, and the human at
the merge is a permanent property of the pipeline. The orchestrator's
duty ends at the PR; final id allocation happens at merge.

## Hygiene

- **No counting metric, ever.** Not in dispatches, not in the block, not
  in gate summaries. A count cannot tell a harvest from a shrug; the
  auditor's sampling of span tiling and bar honesty is the enforcement,
  and a padded yield is a finding where a declared nil is not.
- **Day-zero, per-gate.** The first harvest of a program tiles from entry
  0001 — there is no warm-up gate exempt from the precondition. G0's own
  checklist carries the program's first block, mining the bring-up spans;
  a nil yield there is normal and declared.
- **War stories are corpus, not waste.** A later harvest re-reads them
  when the missing provenance or generality arrives; discarding one
  discards the half-paid lesson.
- **The block gates the gate.** The parent checklist or `SO-` PASS is not
  fully signed until the block's precondition boxes are checked
  (PROTOCOL §7.1) — the harvest is not a side channel that can quietly
  lapse while the gate proceeds.
