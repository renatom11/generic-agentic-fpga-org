# Program Board

**Live program state.** The orchestrator updates this file in the same commit
as any state change it describes. A fresh orchestrator session rehydrates by
reading: this board → `agents/PROTOCOL.md` → `ORG_CHART.md` → journal tails of
agents with open work.

## Current milestone

**M0 — bring-up.** This shell was seeded from the agentic-fpga program
(reference: https://github.com/renatom11/agentic-fpga); the operating
orchestrator session takes over here. Working branch: `main`.

## Milestone roadmap

| Milestone | Scope | Status |
|---|---|---|
| M0 | Bring-up: G0 intake, org ratification, branch protection, enforcement self-test green | **In progress** |
| M1+ | Set at G0 intake — recorded here and in README.md's phase table | Pending |

## Gates

| Gate | Status | Checklist |
|---|---|---|
| G0 | **OPEN** | [docs/gates/G0-checklist.md](../docs/gates/G0-checklist.md) |

## Open work orders

_None._

## Pending escalations to sponsor

- **G0 ratification** — the sponsor ratifies the org: this protocol, the
  roster, the charters (or amends them before ratifying).
- **Branch protection** — the sponsor configures branch protection on `main`
  and the working branch (no force push, no deletion, `journal-check`
  required, no admin bypass); without it PROTOCOL §5 R9 is convention only.
- **G0 intake** — the sponsor states the project: scope, phases, success
  criteria, and license classes for external references, recorded in
  README.md's phase table per PROTOCOL §1.

## Decisions on record

- Constitution ADR-0001..0007 pre-adopted at seeding (see each ADR's
  provenance).
