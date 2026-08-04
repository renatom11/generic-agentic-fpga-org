# FEDERATION — the lessons share-back contract

How lessons leave a program built on this shell and come back to every
program built on it. This document is the whole contract: what is harvested
and when, how a candidate is classified, what travels upstream, and who is
allowed to merge it.

None of it is sponsor-operated. The sponsor's requirement, in his words:
"a future person using the generic doesnt have to worry about knowing most
of this infrastructure... it does the lesson stuff automatically, like most
other things." The org declares and loads domain packs at intake, runs the
harvest at every gate, and produces the export packet without being asked.
The sponsor's touchpoints are exactly two: the gate signature they were
already giving, and one yes/no on sending the upstream contribution
(default yes).

## 0. The three levels

Federation runs at two fences, three levels deep:

- **The canonical shell** — this repository's upstream original
  (<https://github.com/renatom11/generic-agentic-fpga-org>), kept by its
  human maintainer. The universal tier-1 core and the shared domain packs
  live here.
- **The org generic** — an organization's own copy of the shell, forked
  (or cloned) **once, when the organization is founded**. It is that
  team's whole local ecosystem — their protocol, charters, and agents,
  and their own accumulating `docs/LESSONS.md` core and `docs/domains/`
  packs. It records the canonical shell as its federation upstream on
  `tasks/BOARD.md`, and it runs no project itself: it is the template the
  team's projects are created from, and the place their lessons come
  home to.
- **A project** — a working instance created from the org generic, one
  per program the team runs. It boots with the org generic's accumulated
  lessons — the core plus the packs its intake declares — and records
  the **org generic**, not the canonical shell, as its federation
  upstream.
- **A solo-collapsed copy** — one repo holding both the project and
  org-generic roles, for a person or team running a single project
  (declared on the board's **Repo role** line, ADR-0011; README's
  Getting Started describes it and the graduation path to a real org
  generic). Its inner hop lands in itself (§5.1's solo clause); its
  federation upstream stays the canonical shell.

Lessons flow inward-to-outward. A project's harvest lands in its org
generic **automatically** — the inner hop (§5): all one team's property,
no consent question, mandatory by the gate law. The org generic's
accumulated lessons travel to the canonical shell **by choice** — the
outer hop (§7): one default-yes question riding gates the org's sponsor
already signs. An organization that never sends anything upstream still
compounds — its second project boots smarter than its first. Both fences
run the same pipeline (§8); at the canonical fence the maintainer is this
repository's, at the org fence the org's own.

## 1. The tier taxonomy

Three tiers, numbered by descending generality — the sponsor's words:
"tier 1 general, tier 2 domain, tier 3 project specific."

- **Tier 1 — general.** Improves the agent doctrines universally. Bar
  **LH2-g**: the rule statement contains no proper noun of any project or
  domain — no module ids, requirement ids, signal names, file paths,
  protocol names, interface standards. Destination: the core
  [`docs/LESSONS.md`](LESSONS.md) — the org generic's at the inner hop
  (§5), the canonical shell's on the outer hop (§7).
- **Tier 2 — domain.** Portable across projects sharing a technical domain,
  and unstatable without domain vocabulary. Bar **LH2-d**: domain nouns
  admissible (protocol names, interface standards, algorithm families —
  Ethernet, CRC, lane encoding), project nouns still barred (module ids,
  requirement ids, signal names, repo file paths). Destination: a pack in
  [`docs/domains/`](domains/), loaded by a project only when relevant —
  packs are declared automatically at intake, in the day-one proposal the
  org already produces.
- **Tier 3 — project.** Needs project vocabulary; improves the running
  project only. Destination: the project's own local accretion — its
  protocol, charters, plans. It never leaves the project.

## 2. The bar at every tier

A candidate at any tier clears all three:

- **LH1 — provenance-pinned.** Cites the incident commit(s) and the
  adjudicating journal entry or packet.
- **LH2 — generality, at grade.** LH2-g or LH2-d above, tested with the
  provenance hidden (§3).
- **LH3 — stated failure.** Says what breaks without the rule, in a form
  recognisable in someone else's repo.

## 3. The classifier

A decision procedure, not a judgement call: a candidate descends the tiers
and stops at the first bar it passes.

1. Read the rule with provenance hidden and every project noun removed.
   Still teaches? **Tier 1.**
2. Restore only the domain nouns. Teaches a stranger who knows the domain
   but not the project? **Tier 2**, with the target pack named.
3. Else **tier 3** — or a war story, kept with the criterion it failed.

## 4. Candidate ids

Harvest candidates are numbered locally: `LC-` for general (tier 1)
candidates, `LD-` for domain (tier 2) candidates. Local ids are
provisional — **the landing fence allocates** final ids (the org generic
at the inner hop, the canonical shell at its merge), so two contributors'
numbering can never collide.

## 5. The harvest law

Day-zero and per-gate: **every module sign-off and every phase gate carries
a lessons harvest as a precondition** (the gates law, PROTOCOL §7).
Mechanics:

- Each agent holding a persistent journal chain mines **its own journal**
  over the span since its last harvest. Spans are stated as entry-id
  intervals so they tile; a skipped harvest is a visible arithmetic gap.
- A lead also mines the worker spans it commissioned.
- Yield is recorded as a harvest note in the round's journal entry.
- War stories — candidates that failed a bar — are kept with the criterion
  each failed.
- **A nil yield is declared, never omitted.** Nil is legitimate and cheap;
  there is no pressure to mint.
- **No counting metric, ever.** A count cannot tell a harvest from a
  shrug; harvest quality is review-enforced, not tallied.
- **The phase retrospective is part of the harvest.** At
  `P<n>-phase-accept` the auditor's second-altitude harvest (PROTOCOL
  §7.1) contributes its candidates to the same round: same classifier,
  same bars, same export packet — landed like any others.

The orchestrator collates the harvest notes into the gate record — the
harvest block instantiates into the gate checklist automatically from
[`docs/gates/templates/`](gates/templates/) — and produces the export
packet (§6). The sponsor configures none of this; the harvest rides the
gate they were already signing.

**The inner hop is mandatory and automatic.** At each sponsor-signed
gate, **after the sponsor's signature is journaled**, the export packets
in hand — this gate's and any DEFERRED to it — are landed in the **org
generic** (§0) through the org-fence procedure (§5.1). The authority for
the landing is that gate signature — the landing runs once it exists,
never before, so a bounced gate lands nothing; recording the landing
commits is the block's final act before the orchestrator declares the
gate passed. No separate approval, no new touchpoint; within one
organization there is no foreign fence. The screening report still
exists, and each packet also stays committed in the project as part of
its gate record.

### 5.1 The org-fence procedure

How the project orchestrator executes the inner hop, concretely. Push
access to the team's own org generic is a **founding assumption**,
verified read-only at G0 alongside the upstream-line record (the G0
checklist's federation row); the org generic's URL is read from the
project's `tasks/BOARD.md` upstream line — never asked. A landing is
identified everywhere by its **landing key**:
`<project-slug>` (a BOARD field set at G0) + `<parent-record-id>` (the
gate id, or the `SO-` id of a deferred packet).

0. **Ledger check** (idempotency): in a fresh clone of the org generic's
   head, grep the board's sent-ledger and
   `docs/federation/landed/<project-slug>/` for this landing key. A hit
   means a previous attempt already landed — skip directly to step 6 and
   record the SHAs found at the head. A landing never overwrites an
   existing path: a path collision is a hard stop, not a merge.
1. **Clone fresh** at the URL on the project's board. Every attempt
   starts from a fresh clone of the current remote head — never from a
   kept working copy of a previous attempt.
2. **Stage**: on the staging branch
   `fed/<project-slug>/<parent-record-id>/<attempt-n>` (attempt numbers
   start at 1 and never reuse — a fresh attempt gets a fresh branch,
   never a force-update), commit the export packet(s) verbatim at
   `docs/federation/landed/<project-slug>/<parent-record-id>.md`.
3. **Screen**: spawn a fresh reviewer agent per packet. Its brief is
   §8's four screens; the first three (LH bars, teach-don't-instruct,
   leak) judge the packet's own text and their verdicts are **reusable
   verbatim across attempts**; the fourth — **redundancy**, §8 — judges
   the packet against the freshly-cloned head and **re-runs on every
   attempt**. The reviewer is a roster-less spawn with no journal of its
   own; its report is committed by the landing orchestrator at
   `docs/federation/landed/<project-slug>/<parent-record-id>.screen.md`.
   A rejected candidate is appended to the report's war-story table and
   annotated in the project's harvest block; it is never silently
   dropped.
4. **Transcribe** accepted candidates into the org generic's
   `docs/LESSONS.md` / pack entry formats, allocating final ids at this
   fence (§4) **against this attempt's head**.
5. **Integrate fast-forward-only**: update the org generic's working
   branch to the staging tip with a fast-forward push
   (`git push origin <staging-tip>:<working-branch>` or
   `git merge --ff-only`) — no merge commit is ever created at this
   fence. The same commit that carries the transcription carries the
   board's sent-ledger line for this landing key, so "landed" and
   "recorded" are atomic. The authority cited is the project gate id and
   its sponsor signature. **A rejected (non-fast-forward) push is the
   race signal, not an error** — go to §5.2.
6. **Record** the resulting org-generic SHAs back in the project's
   harvest block (its final cells). While retries run, the block's
   landing cells read `PENDING (attempt n)` — see §5.2.

**Identity rule.** The orchestrator role is **per-repository**: a session
operating at the org fence acts as the org generic's own orchestrator,
committing under that repo's `Agent: orchestrator` identity and appending
to that repo's orchestrator journal chain, each entry citing the project
gate id it lands for. This is the role continuing in another of the
team's repos, not one agent writing another's journal — every repo's
protocol and CI stay green under their own rules. The identity is
**single-holder-at-a-time** (§5.2): holding it concurrently is the race
§5.2 exists to resolve.

**Solo collapse.** If the board's Repo role line says `solo-collapsed`
(§0), the project and its org generic are one repo: steps 0–2 and 5
collapse — no clone, no staging branch, no push race — and the
transcription commits land directly on the copy's own working branch,
with the packet still committed at its outbox path and the ledger line
still written in the same commit. The step-3 reviewer spawn is **still
mandatory and still fresh**: the session that mined the candidates never
screens them (PROTOCOL §1's independence).

**Graduation.** A solo-collapsed copy founding a real org generic
(README's graduation path) emits **one synthetic export packet per
landed entry** — the entry's existing incident text is already the
self-contained description §6 requires — and lands them in the new org
generic through this same procedure; the new fence allocates fresh ids
(§4). Nothing is copied file-to-file: graduation is a landing, so it is
screened like one.

### 5.2 Concurrent landings — serialize by redo, never by merge

Ten projects share one org generic. Its history is serialized (PROTOCOL
§5 R9) and its journal ids monotonic (R5), so two landings prepared
against the same head cannot both push: the remote rejects the second as
non-fast-forward. That rejection **is** the serialization mechanism. The
law:

1. **Exclusivity.** The org generic's orchestrator identity is
   single-holder-at-a-time. Nothing grants a session the identity but a
   successful landing; every concurrent holder is provisional.
2. **The arbiter is the remote.** The holder is whoever's fast-forward
   push the remote accepted. No timestamps, no human adjudication, no
   negotiation between sessions.
3. **Integration shape.** Fast-forward only. In a PR-flow org generic
   (where required status checks block direct pushes), the landing
   merges as a **merge commit** whose base has not moved — GitHub's
   "Squash and merge" and "Rebase and merge" are **forbidden by name**
   (squash collapses journal entries into an R5/R6 violation; rebase
   re-parents an append and breaks R3).
4. **Forbidden verbs**, enumerated: `merge` (of two landings), `pull`,
   `pull --rebase`, `rebase`, `cherry-pick`, `-X ours`, `-X theirs`,
   `-s ours`, `push -f`, `--allow-unrelated-histories`. None of these is
   a repair; each either destroys a landing silently or turns the org
   generic permanently red.
5. **On rejection: discard and redo.** Delete the clone. Re-clone fresh
   (§5.1 step 1). Re-run from step 0. Never repair the losing attempt in
   place — its journal entry id, its lesson ids, and every SHA it cites
   were allocated against a head that no longer exists.
6. **Re-derive vs reuse.** Re-derived from the new head, every attempt:
   the journal entry id; each final `L-` id **and its section
   assignment** (if the winner opened section G, the redo lands in G,
   not a second G); each pack-local id **and the pack-creation decision**
   (if the winner created the pack, the redo does not create it again);
   any volume-rollover fields (R10's back-link hash and first-entry id
   are head-dependent end to end); all recorded SHAs and the screening
   report's citations. Reused verbatim: the export packet, the first
   three screening verdicts, the tier classifications, the provisional
   `LC-`/`LD-` ids. The fourth screen (redundancy) re-runs by
   construction.
7. **Check before redo.** The first act of every redo is §5.1 step 0 —
   the winner may have landed an equivalent candidate, or a previous
   attempt of *this* landing may have succeeded with the acknowledgment
   lost.
8. **Bounded patience.** Retries are bounded (default three) with
   backoff; the attempt counter is recorded in the landing journal
   entry, and the project's harvest block reads
   `PENDING (attempt n)` while retries run — the gate does not close on
   PENDING. Exhaustion is an escalation to the org's sponsor (§8-class
   anomaly in the project's protocol), never a silent skip.
9. **From landing #1.** This law binds at G0 — the maximal-contention
   window is founding, when all projects land their first packets. The
   conventions it needs (the ledger line, the landed/ path, the staging
   namespace, the slug) are seeded, not invented per landing.
10. **The staging namespace is protected.** The org generic's founding
    checklist extends its ruleset to `fed/**` (no force pushes, no
    deletions), so a lost attempt cannot be clobbered into looking like
    a won one; stale attempt branches accumulate as an auditable record
    of the race — attempt numbers never reuse, so they never collide.
11. **Rollover under contention.** If the landing must roll the
    orchestrator journal into a new volume (PROTOCOL §4.3), every
    rollover field is re-derived per attempt; a rollover is never
    carried from a losing attempt.
12. **Why redo is unconditional.** A failed push costs one redo. A
    merged bad landing costs the org generic itself: `journal-check`
    re-verifies the full history on every push, forever, and R9 plus
    branch protection forbid the rewrite that could remove a broken
    merge — one "just this once" merge makes the shared repo of every
    project permanently red. There is no operator-judgment clause in
    this law by design.

## 6. The export packet

A committed markdown packet, produced automatically at the gate:

- **Header** — source org, gate, date.
- **Candidate tables**, one per tier carried: tier 1 rows under their `LC-`
  ids, tier 2 rows under their `LD-` ids with the target pack named. Every
  row's provenance is **self-contained** — the incident described in the
  packet's own text, because foreign repos may be private (§9).
- **War-story appendix** (optional) — failed candidates, each with the
  criterion it failed.

In the project repo the packet is committed at
`docs/federation/outbox/<parent-record-id>.md` — one fixed path per
record, so ten projects never invent ten conventions and the landing key
(§5.1) is derivable from the path alone.

## 7. Transmission — the outer hop, default on

The outer hop carries the org generic's newly-landed lessons onward to
the canonical shell — canonical home:
<https://github.com/renatom11/generic-agentic-fpga-org>. Upstream lines
on `tasks/BOARD.md` (the seeded board carries the line, recorded at
founding while the relationship is still known): an **org generic**
records the canonical shell's URL; a **project** records its org generic
(§0).

At each gate the org's sponsor signs, one yes/no rides the signature,
**default yes**: *send the lessons newly landed in the org generic — this
gate's and any backlog — onward to the canonical shell?* This is the
structural form of the familiar "agree to send data back to improve the
software" popup — mandatory inside the organization's own fence (§5),
chosen at the fence. On a yes, the org opens **one PR per unsent export
packet**, each adding **exactly one file** under the inbox path
`docs/federation/inbox/<source-org>-<project-slug>-<parent-record-id>.md`,
where `<parent-record-id>` is the record the packet came from (a gate id,
or an `SO-` id for a deferred sign-off packet) and `<project-slug>`
disambiguates the ten G0 packets one org's ten projects will all carry;
the org generic's board records what has been sent. A PR never touches [`docs/LESSONS.md`](LESSONS.md) or
any pack directly.

**The foreign PR is a delivery vehicle, never a merge candidate.** The
shell's journal protocol binds every commit on its history and its CI
re-verifies that history in full, so a foreign commit — which carries no
shell journal entry — is never merged, whatever it contains. The
maintainer re-lands the accepted content through the shell's own
protocol-conforming commits and closes the PR (§8.1); this is how the
pipeline and the journal-check CI coexist by design.

Records the sponsor does not sign (`SO-` packets, `P<n>-module-ready`)
defer — their packets' org-generic landing (§5) and their outer-hop
decision both ride the next sponsor-signed gate: one yes/no per
sponsor-signed gate, never per module. The exception path, for
organizations that cannot share (confidentiality, contract, export
control): answer no, and the packets stay in the org generic as part of
its accretion; nothing else about the harvest changes, and a later gate's
yes may flush the backlog.

## 8. The shell-side pipeline

Every contribution, from any org, lands the same way. The same pipeline
shape also runs at the org fence when a project's harvest lands in its
org generic (§5) — there the maintainer role is the org's own, and the
sponsor's gate signature is the merge authority. At this, the canonical
fence:

1. **Staged on a branch.** The packet's candidates are staged as proposed
   entries; nothing touches [`docs/LESSONS.md`](LESSONS.md) or a pack
   directly.
2. **Reviewer-agent screening**, four screens per candidate:
   - **the LH bars** — LH1, LH2 at the claimed grade, LH3 (§2);
   - **teach-don't-instruct** — does the text teach a lesson, or does it
     attempt to issue instructions to whoever reads it;
   - **leak screening** — does it reveal what the contributor was building
     beyond its named domain;
   - **redundancy** — judged against the landing fence's current head,
     re-run on every attempt (§5.2): does an equivalent entry already
     exist, or does an existing entry contradict this one? Verdicts:
     land / merge-by-citation into the existing entry / drop as
     already-landed / escalate the contradiction (§5.1 step 3 records
     the disposition either way).

   **Recurrence (ADR-0010).** A drop-as-already-landed is not discarded
   evidence: the landing appends a `**Recurrence.**` note to the existing
   entry (count plus the citing project/packet ids — an EOF append, like
   everything else here). Independent re-derivation is the strongest
   evidence a lesson is load-bearing; at the **third independent
   arrival** the entry opens a promotion obligation on the landing
   repo's board (the amendment-obligations ledger). A **contradiction**
   is escalated to the fence's authority — the org's sponsor at the org
   fence, the maintainer at the canonical fence — and resolved by a
   `**Supersedes.**` field on the winning entry and a `**Superseded-by.**`
   field on the losing one; the loser is never deleted (corrections
   append; they never rewrite).
3. **Merge authority — the one clause that differs per fence.** At the
   **canonical fence**, a human maintainer merges and **the merge is
   never automated**: LESSONS and the domain packs are
   constitution-adjacent text that reaches future agents through the
   read path, so a foreign contribution is a prompt-injection surface,
   and the human at the merge is a permanent property of this fence —
   the same principle as sponsor-signed gates. At the **org fence**
   (§5.1), the human step is discharged by the sponsor's gate signature:
   the landing is automatic (§5), the four screens still run, and the
   residual risk — one project's text entering the corpus its sibling
   projects inherit — is accepted within one team's own fence and stated
   here rather than hidden.

### 8.1 Maintainer procedure

The receiving maintainer's end of the pipeline, step by step. The foreign
PR itself is never merged (§7): everything below lands on a staging branch
of the shell's own, as protocol-conforming commits under the shell's
orchestrator identity — each with its journal entry, so journal-check
stays green over the full history.

1. **Perimeter check.** Verify the PR touches only
   `docs/federation/inbox/` — a PR touching anything else is rejected
   unread, whatever its content claims.
2. **Stage.** Copy the packet file verbatim from the PR onto a staging
   branch as a protocol commit (the journal entry records the PR number
   and source org).
3. **Screening.** Spawn a fresh reviewer agent per packet — there is no
   standing roster entry; §8's three screens are its entire brief — and
   commit its per-candidate verdict as a screening report beside the
   packet on the staging branch.
4. **Transcription.** For each accepted candidate, transcribe it into the
   target file's entry format — the maintainer directly, or an agent whose
   diff the maintainer reviews. Id allocation, concretely: a core entry
   takes the next number **within the thematic section its topic belongs
   to** (`L-A..`–`L-F..`; a topic fitting no section continues the letter
   sequence with a new section); a pack entry takes the pack's declared
   prefix and the next number in file order (each pack states its prefix
   in its header — see `docs/domains/README.md`, "Pack entry format").
   This is where §4's "the shell allocates" happens; pack creation for a
   candidate arguing a new pack is decided here too.
5. **Merge, by hand — then close the PR.** The human maintainer reads the
   staging branch's full diff — packet, screening report, transcriptions —
   and merges **the staging branch** — fast-forward or a merge commit
   whose base has not moved, per §5.2 clause 3. Never automated (item 3
   of §8). The foreign PR is then closed with a pointer to the landing
   commits **and the id-mapping table** (`LC-nn → L-Xnn`,
   `LD-nn → <PREFIX>-nn`), so the contributing org can link its own
   records to the landed entries and tell a duplicate resubmission from
   a new candidate.

## 9. The foreign-provenance rule

LH1 pins provenance, but a federated candidate cannot assume its incident
is reachable: an export-packet candidate carries a self-contained incident
description sufficient to judge LH2 and LH3 without visiting the source
repo. Permalinks are added only when the source is public, and they
supplement the description, never replace it.

## 10. Origin honesty

The [agentic-fpga program](https://github.com/renatom11/agentic-fpga)
predates this shell — it is the origin the shell was distilled from, not a
derivation of it. Its harvests hold no privileged lane: they arrive through
the same pipeline as any contributor's — export packet, staged branch,
reviewer-agent screening, human-maintainer merge. For the origin
organization the two fences coincide: its org generic **is** the canonical
shell, so its inner hop and outer hop are the same landing, at this fence.
**Where fences coincide, the stricter fence's law wins** (ADR-0011): a
landing at the canonical shell follows §8's canonical-fence clause —
human-maintainer merge, never automated — even when it is "only" an inner
hop. (A solo-collapsed copy, §0, is the other coincidence case — there
both roles are the team's own, so §5.1's solo clause applies and the
landing stays automatic inside the team's fence.) The first domain pack,
[`docs/domains/ethernet-networking.md`](domains/ethernet-networking.md),
is seeded empty and expects its first entries from the first
sponsor-signed gate that discharges the origin program's first module
sign-off (`SO-` records defer, §7).
