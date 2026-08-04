# Federation inbox — the perimeter

This directory receives **outer-hop export packets** from organizations
built on this shell ([`docs/FEDERATION.md`](../../FEDERATION.md) §7). The
rules are the perimeter check the maintainer runs before reading anything
(§8.1 step 1):

- One PR adds **exactly one file** here, named
  `<source-org>-<project-slug>-<parent-record-id>.md` — the source
  organization, the contributing project's slug, and the gate or `SO-` id
  the packet came from.
- **A PR touching anything outside this directory is rejected unread**,
  whatever its content claims.
- The PR is a **delivery vehicle, never a merge candidate**: its commits
  carry no shell journal entries, so merging it would fail the shell's
  own CI. The maintainer stages the packet as protocol-conforming shell
  commits, screens it (§8's four screens), transcribes accepted
  candidates, merges the staging branch by hand, and closes the PR with a
  pointer to the landing commits and the final-id mapping.

Contributors: the packet's candidate rows must be **self-contained**
(judgeable without visiting your repository — §9); provisional `LC-`/`LD-`
ids are yours, final ids are allocated here (§4).
