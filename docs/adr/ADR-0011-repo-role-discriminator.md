# ADR-0011: The repo-role discriminator — the shell as installer

- **Status**: **ACCEPTED** — sponsor-directed (federation-hardening round;
  the sponsor's framing: "its an executable … instead of installing code
  on a device, it installs this agentic fpga on a local ecosystem");
  amendable only via PROTOCOL §11.
- **Deciders**: the sponsor (the fully-commit-to-fork-me-to-start
  decision); the operating orchestrator, on the pass finding that an org
  generic had no defined boot behavior at all.
- **Scope**: how a session knows which copy of this repository it is in,
  and what each copy does at boot.

## Context

The repository was half live program, half fork-me-to-start: its board
says "M0 — bring-up" with G0 open and pending escalations, and
`CLAUDE.md` keyed its unprompted first-boot sequence on exactly that
milestone — while `docs/FEDERATION.md` §0 declared that an org generic
"runs no project itself" and the README told strangers to fork. A
byte-identical org-generic fork would therefore greet its sponsor and
demand project intake for a repo that must never run one, and a session
attached to the canonical shell itself would try to bring up an org
inside the installer. The sponsor resolved the identity: the shell is the
installer; forks are the installations.

## Decision

1. **The Repo role line.** `tasks/BOARD.md` (Decisions on record) carries
   `**Repo role**: canonical-shell | org-generic | project |
   solo-collapsed`, set at founding. **A fork's first act is a commit
   updating this line** (for a project fork, completed and signed at G0
   row B6). The discriminator is the role line, primary; the milestone,
   secondary; a mismatch between the role line's claim and
   `git remote get-url origin` (checked against the federation-upstream
   line, which in the canonical shell names itself) marks a fresh fork
   that has not yet recorded itself.
2. **Boot behavior per role** (`CLAUDE.md`):
   - *canonical-shell* — maintainer mode: service
     `docs/federation/inbox/` (§8.1), steward the core and packs, develop
     the shell under sponsor direction. No G0, no intake, no project
     spawns, ever. The board's M0/G0/escalation rows are **shipped
     template state**, active only in project forks — the installer
     carries the program's initial state the way an installer image
     carries the program's initial configuration.
   - *org-generic* — run BOOTSTRAP Stage 0 (the founding checklist), then
     wait to be forked from; runs no project, answers no intake.
   - *project* / *solo-collapsed* — the existing bring-up flow at M0;
     PROTOCOL §9 rehydration after G0. A solo-collapsed copy additionally
     holds the org-generic role, with FEDERATION §5.1's solo clause.
3. **The org-generic founding checklist** (BOOTSTRAP Stage 0): enable
   Actions (forks ship with workflows disabled — the one repo every
   project depends on must not be the one repo whose enforcement never
   runs), rulesets on `main` **and `fed/**`**, self-test and
   full-history check green by the founder's own hands, role recorded.
4. **Solo collapse and graduation** (FEDERATION §5.1): in a
   solo-collapsed copy the landing steps that presume a second repo
   collapse away, the reviewer screen stays mandatory and fresh;
   graduation to a real org generic is a *landing* of synthetic export
   packets, screened like any landing, never a file copy.
5. **Coincidence precedence** (FEDERATION §10): where the two fences
   coincide — the origin organization, whose org generic is the
   canonical shell — the stricter fence's law wins: human-maintainer
   merge, never automated. The solo-collapsed coincidence stays
   automatic, because there both fences are the same team's own.

## Alternatives considered

- **Detect by origin URL alone, no board line** — rejected: URL
  inspection cannot distinguish org-generic from project (both are forks
  of something), and a renamed/mirrored remote would misclassify; the
  board line is explicit, diffable state in the file every session reads
  first.
- **Strip the M0 template state from the shell** so nothing can misfire —
  rejected: the seeded state is the installer's payload; deleting it
  would force every fork to reconstruct G0 scaffolding from documentation
  (the "Use this template" failure, self-inflicted).
- **A separate installer repo distinct from the lessons home** —
  rejected: two upstreams to keep synchronized, and the federation
  upstream line would no longer name the place forks actually come from.

## Corpus backtest (§11)

No enforcement-script change (boot behavior is CLAUDE.md/BOOTSTRAP text;
the role line is board state), so no `test_protocol.sh` scenario is owed.
Run backwards: every historical session in this repository operated it as
a live org — under this ADR those sessions read `canonical-shell` and
would have been in maintainer mode, which is in fact what C14–C16 and
this round's commits are (shell development under sponsor direction);
nothing historical is flagged. The one prior misfire this rule would have
prevented — a session walking G0 inside the shell — was this session's
own opening move in an earlier turn, caught by the sponsor.

## Status change (ADR-0018, 2026-08-17)

**Amended** by [ADR-0018](ADR-0018-the-federation-retraction.md), the federation retraction. The discriminator and the installer framing survive. The role set is reduced to `canonical-shell` / `project`; the org-generic and solo-collapsed roles retire with the federation topology.
