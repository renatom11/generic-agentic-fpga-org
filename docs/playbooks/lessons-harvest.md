# Playbook — the lessons harvest

The procedure that runs at every module sign-off and every phase gate
(PROTOCOL §7.1): each journal-holding agent mines its own record over the
span since its last harvest, the orchestrator collates and classifies, and
everything that generalises lands in this repository's own
[`docs/LESSONS.md`](../LESSONS.md) — the file that doubles as the
program's hand-carried travel copy (ADR-0018). The instantiable checklist
block is
[`lessons-harvest-block.md`](../gates/templates/lessons-harvest-block.md).
This playbook is the orchestrator's end-to-end procedure.

**Cast**: every agent with a persistent journal chain mines its own
journal; a lead additionally mines the worker spans it commissioned; the
orchestrator instantiates, collates, classifies, and lands; the auditor
samples span tiling and bar honesty; the sponsor does nothing — the
harvest rides the gate the sponsor was already signing, and no lessons
question ever reaches them.

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
  previous `to` + 1 (a chain's first-ever harvest starts at the board's
  Lessons baseline, + 1 — entry 0001 only in a repo with no inherited
  history, ADR-0010);
- an idle chain (no new entries since its previous harvest) still gets a
  row — span `(idle)`, yield NIL; it tiles, and its next `from` is
  unchanged.

Ownership (ADR-0013): the orchestrator instantiates into `docs/gates/**`
checklists (§6 — only it may stage them); **dv_lead instantiates into its
own `SO-` packets**, with the orchestrator transcribing only the
collation cells.

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
   **Tier 1** (`LC-<chain>-nn`).
2. Restore only the domain nouns. Teaches a stranger who knows the domain
   but not the project? **Tier 2** (`LD-<chain>-nn`), and the target
   domain section of `docs/LESSONS.md` is **named** — an existing
   section, or the section the candidate argues should exist (creating
   one is a landing decision, recorded in the landing entry with its id
   prefix stated in the new section's heading).
3. Else **tier 3**: route it into the project's own local accretion — its
   protocol, charters, plans — and record in the disposition column where
   it landed or the carry-forward obligation that will land it. Or a war
   story, kept with its failed criterion.

A classification disagreement routes back to the miner as a question with
the orchestrator's reading as input, not as an override — the miner holds
the incident. Every candidate ends in exactly one row: yield table or war
story.

### 4b. The phase retrospective (phase-accept only)

At `P<n>-phase-accept`, dispatch one additional mining round to the
**auditor**: the phase retrospective (PROTOCOL §7.1, ADR-0010). Its span
is the phase's accumulated **harvest record** — war stories, nil
declarations, tier-3 landings, bounce/`BUG-` packets — never raw journal
entries (those stay tiled, mined once), and its question is only *what
recurs*. Its candidates join this gate's classify/land flow attributed
to the auditor; its report lands in `docs/reports/audit/**` and is
transcribed like any auditor verdict.

### 5. Land — locally, in the gate's closing commits (ADR-0018)

For each tier-1/2 candidate, in order:

1. **Dedup against the file** (ADR-0010 as amended): read the candidate
   against the existing corpus. Verdicts: **land** (new entry) ·
   **merge-by-citation** (the existing entry absorbs the new incident as
   a citation) · **drop as duplicate**, appending a `**Recurrence.**`
   note to the existing entry (count + citing packet ids — the third
   independent recurrence opens a promotion obligation on the board) ·
   **contradiction** — escalate to the orchestrator's judgement,
   resolved by `**Supersedes.**` on the winning entry and
   `**Superseded-by.**` on the losing one, which is never deleted.
2. **Transcribe** into `docs/LESSONS.md` entry format, allocating the
   final id (next in the receiving section), with a **self-contained
   incident description**: the file is the travel copy, and a reader
   holding only the file — in another project, another org, another
   session — must be able to judge LH2 and LH3 without visiting this
   repository. Repository-qualified citations (ADR-0017 A1) supplement
   the description; they never replace it.
3. **Open obligations** (ADR-0012): an entry whose text names a normative
   home — a protocol section, charter, playbook, template — opens an
   amendment obligation on the board's ledger in the same commit.
4. **Disposition before the gate closes** (the trichotomy, at gate
   cadence): every obligation this harvest opened ends the round
   DISCHARGED (the amendment landed), NARRATIVE-ONLY (re-marked, reason
   recorded), or DEFERRED (named reason + named discharging event) — and
   the board's DEFERRED backlog is swept, each reason re-stated or
   discharged. Gates are this repository's cadence; there is no other
   moment the sweep can live.

If every candidate is tier-3, war story, or nil, declare **NONE** in the
block; a nil-landing gate is a normal gate. The block's landing cells
record the landing commit SHAs; the gate is then declared passed.

### 6. The travel copy

Nothing transmits, ever (ADR-0018). What compounds beyond this repository
does so **by hand**: the board's Lessons-baseline line marks where this
program's own learning starts, so `docs/LESSONS.md` past the baseline is
what this project learned — the tail a human hands to another session, or
seeds a new project's file with (recorded there as a seed-provenance
line). The shell's own corpus grows the same way: a maintainer session
lands hand-carried entries as ordinary reviewed commits. Shell defects
are GitHub issues on the shell — a defect is never a lesson.

## Hygiene

- **No counting metric, ever.** Not in dispatches, not in the block, not
  in gate summaries. A count cannot tell a harvest from a shrug; the
  auditor's sampling of span tiling and bar honesty is the enforcement,
  and a padded yield is a finding where a declared nil is not.
- **Day-zero, per-gate.** The first harvest of a program tiles from the
  board's Lessons baseline + 1 (entry 0001 only in a repo with no
  inherited history — ADR-0010): a project mines its own history, never
  its template's. There is no warm-up gate exempt from the
  precondition — G0's own checklist carries the program's first block,
  mining the bring-up spans; a nil yield there is normal and declared.
- **War stories are corpus, not waste.** A later harvest re-reads them
  when the missing provenance or generality arrives; discarding one
  discards the half-paid lesson.
- **The block gates the gate.** The parent checklist or `SO-` PASS is not
  fully signed until the block's precondition boxes are checked
  (PROTOCOL §7.1) — the harvest is not a side channel that can quietly
  lapse while the gate proceeds.
