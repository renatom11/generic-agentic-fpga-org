# REQUIREMENTS-TEMPLATE — the requirements document standard

<!-- Instantiate as docs/specs/requirements.md when the first spec phase
     opens. Owned and authored by architect_docs_lead (charter §3); its
     form is machine-checked by scripts/check_requirements.sh in CI
     (ADR-0017). Delete this comment when instantiating; keep §0 and §1
     verbatim — they are the standard, not filler. -->

Provenance: ADR-0017. This template exists because a field program
(Shell feedback 0001, AUD-0003 F6) proved the shell transported every
rule about how to work and none about what good output looks like: its
copy passed every gate and produced a requirements corpus in which 57
of 91 entries were not requirement statements. The standard below is
the origin program's, restated as shipped law so a fork inherits it.

## 0. The standard

### 0.1 Every row stands alone

A reader who has never seen the design must be able to build a test
from a single row. If a row only makes sense next to the spec, the
requirement is not yet written.

### 0.2 One REQ states one testable fact

Where a behaviour has several observable consequences, each consequence
gets its own REQ. A row that needs "and" between two falsifiable claims
is two rows.

### 0.3 Every row carries a Kind

| Kind | Meaning |
|---|---|
| `INV` | Invariant — holds in every state, every cycle |
| `IFC` | Interface — a port/protocol contract |
| `FUNC` | Function — input/state to output behaviour |
| `ERR` | Error — detection, fault code, containment |
| `PERF` | Performance — a number with its unit and measurement point |
| `PROC` | Process — an obligation on how work is done, not on the RTL |

### 0.4 Obligation language

The normative body contains `SHALL` or `SHALL NOT` binding a named
subject to a falsifiable predicate. Banned: "as needed",
"appropriately", "should normally", and every phrasing the
SPEC-TEMPLATE bans. Rationale is welcome — after the obligation, never
instead of it.

### 0.5 Verification is a mandatory cell

Every row states how the requirement is checked: directed test, stress
bench, property, co-simulation, mechanical check over an artefact. An
empty Verification cell fails CI. "Structural — no run-time control
path exists" is a legitimate cell; blank is not.

## 1. Topology — this file is the source

This file is **the requirements document**: the single normative
definition site for every REQ statement. Specs elaborate behaviour and
**cite** REQ ids; they never redefine them. The traceability matrix
maps REQs to tests; it never restates them. A spec's §10 coverage
column holds one-line *handles*; a handle is not the requirement.

The anti-divergence rule points one direction only: downstream
artefacts must not restate what this file defines. **It must never be
inverted into an instruction that this file hold no requirement text**
— that instruction, issued once in a field program (its WO-0003), left
the standalone statement homeless, and every gate still passed. If
this file's rows are ever reduced to an index, the standard above has
been deleted, whatever the gates say.

## 2. Format

One table per module or subsystem section, rows in id order:

| REQ | Kind | Requirement | Verification |
|---|---|---|---|
| REQ-001 | IFC | The core SHALL issue at most one memory access per clock cycle, in every state. | Property: no cycle asserts two access strobes; stress bench sweep at max issue rate. |
| REQ-002 | ERR | On an access whose span crosses the top of memory, the core SHALL halt with `ERR_ADDR_RANGE` before issuing any access. | Directed test: drive crossing spans; check halt code and that no access strobe fired. |

Ids are permanent: never renumbered, never reused. A dropped
requirement keeps its row with Kind struck through and a pointer to the
ADR that dropped it.

## 3. Machine check

`scripts/check_requirements.sh` (MACHINE, wired into CI) refuses any
`REQ-` row lacking a taxonomy Kind, lacking `SHALL`/`SHALL NOT`, or
carrying an empty Verification cell. It skips cleanly in a copy with no
requirements corpus — the shell runs no project. The
check enforces form, not truth: whether a row states the *right*
requirement is dv_lead's countersignature (testability + atomicity,
PROTOCOL §7) and the architect's authorship, both PROSE.
