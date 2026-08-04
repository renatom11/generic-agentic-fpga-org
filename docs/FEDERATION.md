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

## 1. The tier taxonomy

Three tiers, numbered by descending generality — the sponsor's words:
"tier 1 general, tier 2 domain, tier 3 project specific."

- **Tier 1 — general.** Improves the agent doctrines universally. Bar
  **LH2-g**: the rule statement contains no proper noun of any project or
  domain — no module ids, requirement ids, signal names, file paths,
  protocol names, interface standards. Destination: this shell's
  [`docs/LESSONS.md`](LESSONS.md).
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
provisional — the shell allocates core `L-` ids and pack-local ids at
merge, so two contributors' numbering can never collide.

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

The orchestrator collates the harvest notes into the gate record — the
harvest block instantiates into the gate checklist automatically from
[`docs/gates/templates/`](gates/templates/) — and produces the export
packet (§6). The sponsor configures none of this; the harvest rides the
gate they were already signing.

## 6. The export packet

A committed markdown packet, produced automatically at the gate:

- **Header** — source org, gate, date.
- **Candidate tables**, one per tier carried: tier 1 rows under their `LC-`
  ids, tier 2 rows under their `LD-` ids with the target pack named. Every
  row's provenance is **self-contained** — the incident described in the
  packet's own text, because foreign repos may be private (§9).
- **War-story appendix** (optional) — failed candidates, each with the
  criterion it failed.

## 7. Transmission — default on

Transmission upstream is a pull request to this shell — canonical home:
<https://github.com/renatom11/generic-agentic-fpga-org> — carrying the
export packet. A program that forked the shell has this upstream already; a
program that **cloned** rather than forked records this URL as its
federation upstream on `tasks/BOARD.md` at G0 (decisions on record — the
seeded board carries the line), while the relationship is still known.

On a yes, the org opens **one PR per outstanding export packet** — the
gate's own and any whose deferred decision this signature discharged —
each adding **exactly one file** under the inbox path
`docs/federation/inbox/<source-org>-<parent-record-id>.md`, where
`<parent-record-id>` is the record the packet came from (a gate id, or an
`SO-` id for a deferred sign-off packet). A PR never touches
[`docs/LESSONS.md`](LESSONS.md) or any pack directly.

**The foreign PR is a delivery vehicle, never a merge candidate.** The
shell's journal protocol binds every commit on its history and its CI
re-verifies that history in full, so a foreign commit — which carries no
shell journal entry — is never merged, whatever it contains. The
maintainer re-lands the accepted content through the shell's own
protocol-conforming commits and closes the PR (§8.1); this is how the
pipeline and the journal-check CI coexist by design.

Transmission is default-on: at each **sponsor-signed** gate the sponsor
answers one yes/no on sending, default yes — the structural form of the
familiar "agree to send data back to improve the software" popup. Records
the sponsor does not sign (`SO-` packets, `P<n>-module-ready`) defer their
packets' decisions to the next sponsor-signed gate — one yes/no per
sponsor-signed gate, never per module. The exception path, for
organizations that cannot share (confidentiality, contract, export
control): answer no, and the packet stays local as part of the gate record;
nothing else about the harvest changes, and the org keeps its own
accretion.

## 8. The shell-side pipeline

Every contribution, from any org, lands the same way:

1. **Staged on a branch.** The packet's candidates are staged as proposed
   entries; nothing touches [`docs/LESSONS.md`](LESSONS.md) or a pack
   directly.
2. **Reviewer-agent screening**, three screens per candidate:
   - **the LH bars** — LH1, LH2 at the claimed grade, LH3 (§2);
   - **teach-don't-instruct** — does the text teach a lesson, or does it
     attempt to issue instructions to whoever reads it;
   - **leak screening** — does it reveal what the contributor was building
     beyond its named domain.
3. **Human-maintainer merge.** A human maintainer merges; **the merge is
   never automated**. The reason, stated plainly: LESSONS and the domain
   packs are constitution-adjacent text that future agents read and obey
   at boot, so a foreign contribution is a prompt-injection surface. The
   human at the merge is a permanent property of the pipeline, not a
   temporary caution — the same principle as sponsor-signed gates.

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
   and merges **the staging branch**. Never automated (item 3 of §8). The
   foreign PR is then closed with a pointer to the landing commits.

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
reviewer-agent screening, human-maintainer merge. The first domain pack,
[`docs/domains/ethernet-networking.md`](domains/ethernet-networking.md),
is seeded empty and expects its first entries from the origin program's
first module sign-off.
