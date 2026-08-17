# ADR-0009: The federation serialization and landing law

- **Status**: **ACCEPTED** — sponsor-directed (federation-hardening round;
  the sponsor's words: landings "serialize with a retry (clone fresh,
  re-allocate, re-land)", never merge); amendable only via PROTOCOL §11.
- **Deciders**: the sponsor (the serialize-by-redo mandate); the operating
  orchestrator, on the concurrency lens of the adversarial pass (twenty
  enumerated failure modes) and this repository's own live precedent.
- **Scope**: FEDERATION §5.1 (rewritten), §5.2 (new), the fourth screen in
  §8, the path/branch/slug/ledger conventions, and one enforcement-script
  change: the R9 trivial-merge check gains a directional ancestry
  requirement.

## Context

Ten projects landing lessons into one org generic share three serialized
resources: the working-branch head, the orchestrator journal (R5 monotonic
ids, R3 append-only), and the lesson-id space. §5.1 as written assumed a
single writer. The live precedent is in this very repository: two sessions
both operating as orchestrator from C13 independently allocated journal
entries 0014–0016 with different content — histories that R3/R5 make
permanently unmergeable, exactly as designed. Scaled to ten projects, every
gate round reproduces it.

The pass further found the enforcement hole that makes naive repair
catastrophic rather than merely wrong: the R9 trivial-merge check accepted
any two-parent commit whose tree equals either parent's — which is also the
shape of `git merge -s ours`, a merge that silently **discards** the entire
other side (a landed packet, its screening report, its transcriptions) with
a green CI and an "content-free" success message.

## Decision

1. FEDERATION §5.1 is rewritten as a seven-step procedure (0–6): ledger
   idempotency check; fresh clone per attempt; attempt-numbered staging
   branch `fed/<project-slug>/<parent-record-id>/<attempt-n>`; packet at
   `docs/federation/landed/<project-slug>/<parent-record-id>.md` with the
   screening report beside it; four screens (the fourth, redundancy,
   head-dependent and re-run per attempt); transcription with fence-side id
   allocation against the attempt's head; **fast-forward-only** integration
   carrying the sent-ledger line in the same commit; record-back with
   `PENDING (attempt n)` while retries run.
2. FEDERATION §5.2 states the serialization law in twelve clauses:
   single-holder identity; the remote's accepted fast-forward push as sole
   arbiter; ff-only integration (PR-flow: merge-commit shape only, Squash
   and Rebase forbidden by name); the forbidden-verb enumeration; discard
   and redo on rejection; the re-derive vs reuse partition; check before
   redo; bounded retries with escalation; binding from landing #1; the
   protected `fed/**` staging namespace; rollover re-derivation; and the
   rationale — one redo is cheap, one bad merge makes the shared repo
   permanently red for every project, so the law has no operator-judgment
   clause.
3. The project-side packet path is pinned
   (`docs/federation/outbox/<parent-record-id>.md`) and the outer-hop inbox
   filename gains the project slug
   (`<source-org>-<project-slug>-<parent-record-id>.md`) — without it, one
   org's ten projects all submit a file named for the same G0.
4. §8's merge-authority clause is fence-qualified per the sponsor's
   decision: human maintainer, never automated, at the canonical fence;
   at the org fence the human step is discharged by the sponsor's gate
   signature, with the residual risk stated in place. §8.1's PR close
   carries the id-mapping table so contributors can recognize their own
   landed lessons.
5. **Enforcement change** — `scripts/check_journals.sh`: a two-parent
   merge whose tree equals one parent's is content-free only if the other
   parent is an **ancestor of the matched parent**. The direction matters:
   the naive "either parent is an ancestor of the other" still passes the
   plain `-s ours` discard (a branch point is always an ancestor of the
   surviving tip). PROTOCOL §5 R9's text states the hardened rule.

## Alternatives considered

- **A lock/queue file in the org generic** — rejected: a lock is itself
  shared mutable state needing the same serialization, deadlocks on
  abandoned holders, and adds a liveness protocol nobody audits. The
  remote's fast-forward acceptance already is a correct, existing arbiter.
- **Merge-based reconciliation of concurrent landings** — rejected as
  mechanically impossible under R3/R5 (both sides appended the same entry
  id at the same journal offset) and forbidden under R9.
- **Blanket ancestry ("one parent is an ancestor of the other")** for the
  R9 check — rejected as unsound; see Decision 5.
- **Leaving `-s ours` review-enforced** — rejected: silent data loss with
  green CI is precisely the class ADR-0002 requires be machine-refused
  when a mechanical test exists, and one does.

## Corpus backtest (§11)

`git log --merges` over the full history: zero merge commits — the
hardened check flags nothing historical and misses nothing. Proving
scenarios: **S35** (an `-s ours` merge of a genuinely divergent branch is
refused with the R9 discard message) and **S36** (an ours-shaped merge
whose second parent is already contained in the first still passes —
directionality, no false positive); S22's legitimate trivial merge is
unchanged and still passes. Self-test: 38 → 40 asserts.

## Status change (ADR-0018, 2026-08-17)

**Superseded in full** by [ADR-0018](ADR-0018-the-federation-retraction.md), the federation retraction. No landings exist to serialize: the pipeline this law governed is retired. Nothing in this document binds.
