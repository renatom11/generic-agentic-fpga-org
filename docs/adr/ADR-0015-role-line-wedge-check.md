# ADR-0015: R-ROLE-1 — the unrecorded-fork wedge becomes a red build

- **Status**: **ACCEPTED** — sponsor-directed under the first-trial
  absorption round's scoped freeze override (recorded on the board and in
  ADR-0014's Status; end condition = the round's closing commit).
  Amendable only via PROTOCOL §11.
- **Deciders**: the sponsor (delegated); the operating maintainer
  orchestrator, adopting finding **SD-0001** from the first org generic's
  shell-defect log (relayed by the sponsor by hand; the source repo has
  since been retired, so the finding is restated self-contained here).
- **Scope**: one machine check, `R-ROLE-1`, in `scripts/check_journals.sh`
  (and therefore in CI on every push), with its proving scenario.

## Context

ADR-0011 mandates that a fork's first act is a commit updating the
board's Repo role line, and CLAUDE.md's boot detects an unrecorded fork
by comparing `git remote get-url origin` against the federation-upstream
line. Nothing enforced either. The consequence — found live, in the first
org generic ever founded from this shell — is not a warning but a wedged
repository: a copy whose board still reads `canonical-shell` boots its
orchestrator into maintainer mode, whose documented behavior is "no G0,
no intake, no project spawns, ever." The session correctly refuses to
start the program, and the sponsor is left with a repo that will not do
the thing it was cloned to do, with no error message anywhere.

## Decision

`check_journals.sh` gains **R-ROLE-1**, run at the range head after the
chain checks: if the board's Repo role line claims `canonical-shell`
while the `origin` remote's owner/repo tail disagrees with the
federation-upstream line's tail, fail with a named cause pointing at
ADR-0011's role-recording first act. The check skips when there is no
board at the head, no Repo role line, a non-canonical role, or no origin
remote — so the test sandbox and detached analysis clones are unaffected,
and a correctly-founded copy (role recorded) is out of the check's scope
by construction. URL comparison is by owner/repo tail, so https, ssh, and
proxy remotes for the same repository all match. Named `R-ROLE-1` rather
than R11 per ADR-0002: the R1–R10 series is closed, and a namespaced id
carries its enforcement class in its name's ADR — this one is
machine-refused in CI.

## Alternatives considered

- **Boot-time-only detection (status quo)** — rejected by the live
  incident: the wedge produced no error anywhere; detection that depends
  on a session reading two lines by hand is detection that fails silent.
- **A warning instead of a failure** — rejected: an unrecorded fork has
  exactly one correct first act and zero legitimate alternative states;
  advisory grammar (WARN-GRAMMAR's contract) is for qualities a machine
  cannot judge, and this is a two-grep equality test.
- **Enforcing in `agent_commit.sh` too** — rejected as wrong-sided: the
  wedge exists before any commit is attempted; the push/CI surface is
  where the fork's first contact actually happens.

## Corpus backtest (§11)

Proving scenario **S39** (self-test 43 → 45): a sandbox copy claiming
`canonical-shell` with a mismatched origin is refused with the R-ROLE-1
message; correcting the origin passes; the sandbox's other 38 scenarios,
which run with no origin remote, are untouched. Run backwards over this
repository's history: the role line has existed since C20 and this
repository's origin tail has always matched its upstream line's tail —
nothing flagged. Run against the retired first org generic's founding
state: its pre-C27 head is exactly the condition R-ROLE-1 refuses — the
check would have turned its silent wedge into a red build, which is the
finding's own proposed fix (SD-0001) implemented as proposed.
