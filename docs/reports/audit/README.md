# Audit lane — conventions

This directory is the **only** tree the auditor stages, ever — deliberately,
so it can never modify an artifact it audits (PROTOCOL §3, auditor
exception; §6 write scopes). Everything in here is committed under
`Agent: auditor` by the orchestrator's commit service; verdicts that must
appear in other agents' packets are transcribed there by the orchestrator
from these reports.

## Reports — `AUD-NNNN`

- **Naming**: `AUD-NNNN-<slug>.md`. `NNNN` is zero-padded, monotonic, and
  allocated by the orchestrator when the report is first committed — the
  same sole-committer numbering authority as packets (PROTOCOL §3).
- **Findings** are numbered within their report — `AUD-NNNN-Fn` — and cited
  by that id everywhere (gate rows, ADR dispositions, re-verifications).
- **Severities**:
  - **CRITICAL** — gate-blocking; relayed to the sponsor verbatim (E4,
    PROTOCOL §8). Closure requires an ADR'd disposition **and** auditor
    re-verification in a follow-up report.
  - **MAJOR** — must be dispositioned (fixed, ADR'd, or carried with a named
    landing site) before the next gate signature that touches it.
  - **MINOR** — recorded; disposition at the owner's discretion, but the
    disposition is written down.
- **Verdict vocabulary**: PASS, PASS WITH FINDINGS, FAIL — and **NO-VERDICT**
  where the audit could not execute (broken harness, missing baseline).
  A no-verdict outcome is a distinct class from a negative verdict and is
  never a PASS (PROTOCOL §10).
- Every audit pins its **baseline SHA at spawn**; findings are adjudicated
  against that pin, not against a moving tree (PROTOCOL §3).

## Mutation campaigns — `WO-NNNN-mutations/`

Seeded diffs for a mutation campaign (PROTOCOL §10;
`docs/playbooks/mutation-campaign.md`) live in a per-campaign directory:

```
docs/reports/audit/WO-NNNN-mutations/
  <id-1>.diff        one unified diff per seeded defect class,
  …                  applying cleanly to the campaign's base SHA
  README.md          the seeder's report (scorecard shape below)
```

The directory **README** carries, in order:

1. **Author + no-stake statement** — the seeder authored neither the design
   under mutation nor any part of its bench, and has no stake in either
   verdict.
2. **Base pin** — the base SHA, plus the mutated file's blob hash so each
   diff's preimage is byte-verifiable (`git apply --3way` then verifies the
   base as well as the context).
3. **Scope statement** — everything read, itemized against the campaign
   brief's §1 allowlist, including ambient prior-spawn exposure.
4. **Per-diff record** — file and function touched, a one-paragraph fidelity
   argument, any build-only repair (disclosed), anything that could not be
   done faithfully, said plainly.
5. **The never-merge warning** — these patches are mutations; they are never
   committed to any branch that merges. Every hunk carries the greppable
   marker `<id> MUTATION (WO-NNNN)`.

Adjudication (kills vs the sealed predictions) is **dv_lead's**, recorded in
the campaign packet's Return log; the post-adjudication scorecard is
appended to the directory README by the auditor or transcribed by the
orchestrator, citing the verdict's journal entry.

## The DV-escape ledger — `dv_escapes.md`

The auditor owns `dv_escapes.md` in this directory (created at its first
entry):
every post-sign-off divergence found in replays, integration, or audits is
recorded **here, by the auditor, never by DV** (PROTOCOL §10), with the
escaped `SO-`, the discovering event, and dv_lead's journaled root cause
referenced.

## Marker-check duty — never-merged `mut/*` branches

Once per audit cycle, and at every `P<n>-module-ready` gate:

- `git log --all --grep 'MUTATION ('` and a tree grep for `MUTATION (` at
  the audited SHA — the marker must appear **nowhere** in any mergeable
  branch's history or tree;
- verify every `mut/*` branch is unmerged: `git branch -r --merged <main and
  the working branch>` lists no `mut/*`.

A leaked mutant — the marker reachable from any branch that merges — is a
**CRITICAL** finding, whoever leaked it.
