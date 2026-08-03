# Journal: claude_orchestrator_agent

- **Agent**: orchestrator (main session)
- **Charter**: agents/charters/orchestrator.md
- **Format**: v2 — entry grammar in agents/PROTOCOL.md §4

This file is APPEND-ONLY. Content may only ever be added after the last line;
nothing above it is ever edited. Enforced by scripts/agent_commit.sh and CI.

---
## [J-orchestrator-0001] 2026-08-03T18:40:00Z | task:none | C1 - the enforcement core, seeded from the agentic-fpga program

### Trigger
Sponsor decision (2026-08-03): package the agentic-fpga program's
proven methodology as this reusable, toolchain-agnostic shell.
This is the first commit; the seeding session is the agentic-fpga
orchestrator, acting here as this repository's first orchestrator.

### Inputs
- Source: https://github.com/renatom11/agentic-fpga at pinned SHA
  1799e10a37f19059ac3337982af4b6d035e14d0c (all reads at the pin;
  the source working tree carried concurrent in-flight edits).
- The source's PROTOCOL v1 (ratified at its G0, never amended in
  place until its first amendment landed the seal rule), its four
  enforcement scripts, and its journal-check workflow.

### Reasoning
- The R1-R9 engine ports near-verbatim: the commit and CI scripts
  carried no project hardcoding; the two genuine slots were the
  agent roster and the path-lane table, both now generic (rtl/**,
  test/**, tools/**, docs/reports/{dv,audit}/**).
- Two hardenings the source learned by incident are built in from
  birth rather than inherited as debt: R10 journal volume chains
  (the source's 1 MB journal incident; freeze-in-place /
  fork-forward with sha256 back-links, rotation supported from
  commit #1) and the R-SEAL-1 advisory check (the source's
  sealed-sweep-that-never-existed incident; WARN-SEAL, gating
  only under STRICT_SEALS=1, because no grep distinguishes
  quotation from assertion).
- PROTOCOL v2 folds the source's operationally-accreted rules
  into the constitution at birth - the source's own largest
  topology lesson was that its protocol froze while its rules
  accreted elsewhere. Mutation discipline is written as the
  source PRACTICED it (freeze-first sealed predictions, blinded
  no-stake seeder, throwaway never-merged branches), not as its
  v1 text described it.
- The project itself lives in README's intake-filled phase table;
  this protocol never names it, so intake never amends it.

### Actions
Wrote and staged the enforcement core; ran the self-test suite;
this commit is made through scripts/agent_commit.sh itself - the
history demonstrates the system from commit #1, as the source's
M0 did.

### Evidence
- bash scripts/test_protocol.sh: 38 passed, 0 failed (34
  scenarios: S1-S27 ported from the source, S28-S31 proving R10,
  S32-S34 proving WARN-SEAL), run by the committing session.
- bash -n clean on all four scripts.
- grep -riE 'hardcaml|ocaml|dune|opam|iverilog|xgmii|itch|
  moldudp|nasdaq|trading|renato' over the tree: no hits outside
  the single source-program reference URL in tasks/BOARD.md.

### Outcome
The shell can enforce its own constitution. Next commits: the org
surface (charters, launchers, org chart), the pre-adopted
constitution ADRs with provenance, the lessons record, playbooks
and templates, the bootstrap walkthrough, then the handoff to the
operating orchestrator session.

### Open-questions
- The advisory journal-rotation threshold here is 800000 bytes
  against the 1000000-byte blob gate; the source program is
  adopting a tighter soft/hard pair anchored to a measured
  rehydration degradation. Whether this shell tightens to match
  is a decision for its constitution ADR (ADR-0005, next
  commits) - rotation support exists here from birth either way.

### Files-in-this-commit
- .github/workflows/journal-check.yml
- .gitignore
- CLAUDE.md
- agents/PROTOCOL.md
- scripts/agent_commit.sh
- scripts/check_journals.sh
- scripts/policy.sh
- scripts/test_protocol.sh
- tasks/BOARD.md

## [J-orchestrator-0002] 2026-08-03T18:20:00Z | task:none | C2 - the org surface: nine charters, eight launchers, the chart, the index

### Trigger
C1 green in CI (journal-check run 1, conclusion success); the org
surface authored and reviewed.

### Inputs
The source program's nine charters, eight launchers, ORG_CHART
and README at the pin, genericized against this repo's PROTOCOL
v2 (its §10 practiced mutation model, R1-R10, generic lanes,
volume-chain journals).

### Reasoning
- The 9-section charter skeleton and every generic evaluation
  criterion ported verbatim; project facts became either generic
  FPGA-engineering language or explicit intake/toolchain-ADR
  slots. Mutation text in every charter follows this repo's §10
  (freeze-first sealed campaigns), not the source v1 wording.
- rtl_lead_md's contingent-role subsection became a pointer to
  ADR-0001's contingent-role pattern; data_wrangler and formal_dv
  are DORMANT worker templates activated by dv_lead work orders.
- INDEX.md ships with a regeneration recipe in its own header so
  the drift the source recorded cannot go unrepaired; the
  orchestrator row updated to this journal's actual state before
  commit (the authoring agent worked concurrently with C1 and
  left the row as instructed; the fix is this session's).
- Known dangling link, deliberate: BOOTSTRAP.md is referenced by
  README/CLAUDE/BOARD and lands with the later bootstrap commit.

### Actions
Reviewed spot-samples and re-ran the banned-term sweep myself
(only hits: this journal's own quoted sweep command); this
commit; push; CI verify follows.

### Evidence
- Sweep over the tree excluding .git: no project-term hits
  outside quotation. Launcher frontmatter name==filename for all
  eight. Mermaid brackets balanced per the author's check.

### Outcome
The org is describable and spawnable: charters, launchers, chart,
index, and eight seeded journals. Next: the constitution ADRs and
the lessons record.

### Open-questions
None new.

### Files-in-this-commit
- .claude/agents/architect_docs_lead.md
- .claude/agents/auditor.md
- .claude/agents/data_wrangler.md
- .claude/agents/dv_lead.md
- .claude/agents/formal_dv.md
- .claude/agents/rtl_lead.md
- .claude/agents/rtl_module_dev.md
- .claude/agents/tb_writer.md
- ORG_CHART.md
- README.md
- agents/charters/architect_docs_lead.md
- agents/charters/auditor.md
- agents/charters/data_wrangler.md
- agents/charters/dv_lead.md
- agents/charters/formal_dv.md
- agents/charters/orchestrator.md
- agents/charters/rtl_lead.md
- agents/charters/rtl_module_dev.md
- agents/charters/tb_writer.md
- agents/journals/INDEX.md
- agents/journals/claude_architect_docs_lead_agent.md
- agents/journals/claude_auditor_agent.md
- agents/journals/claude_dv_lead_agent.md
- agents/journals/claude_rtl_lead_agent.md
- agents/journals/workers/claude_data_wrangler_agent.md
- agents/journals/workers/claude_formal_dv_agent.md
- agents/journals/workers/claude_rtl_module_dev_agent.md
- agents/journals/workers/claude_tb_writer_agent.md

## [J-orchestrator-0003] 2026-08-03T18:50:00Z | task:none | C3 - constitution ADRs 1-3: org design, enforcement honesty, CI authority

### Trigger
Seeding continues per the approved plan; this layer authored by the distillation round and reviewed by the committing session.

### Inputs
The authoring return, my spot-review, and the source pin 1799e10a37f19059ac3337982af4b6d035e14d0c for all cited provenance (ADR-0017 cited at its landing commit acc81458, past the pin, where noted).

### Reasoning
The first three constitution ADRs, pre-adopted: the org design with its enforcement grafts and contingent-role pattern; the machine/review honesty boundary with the bounded-override discipline; CI authority with the promotion-block, NO-VERDICT, and generic R-CI rules. Each cites the source incidents at the pin.

### Actions
Reviewed; staged exactly the set below; committed via scripts/agent_commit.sh.

### Evidence
Author verification (permalink existence checks, banned-term sweeps, link checks) plus the committing session's spot-reads, recorded in the seeding session; final whole-tree verification lands with the handoff commit.

### Outcome
Layer landed.

### Open-questions
None new.

### Files-in-this-commit
- docs/adr/ADR-0001-org-design.md
- docs/adr/ADR-0002-enforcement-honesty.md
- docs/adr/ADR-0003-ci-authority-and-evidence.md

## [J-orchestrator-0004] 2026-08-03T18:50:00Z | task:none | C4 - constitution ADRs 4-7: seal rule, volume chain, campaigns, blinding

### Trigger
Seeding continues per the approved plan; this layer authored by the distillation round and reviewed by the committing session.

### Inputs
The authoring return, my spot-review, and the source pin 1799e10a37f19059ac3337982af4b6d035e14d0c for all cited provenance (ADR-0017 cited at its landing commit acc81458, past the pin, where noted).

### Reasoning
The remaining four: R-SEAL-1 with dv's amendment quoted byte-equal to PROTOCOL Section 10; the volume chain with the source's active-volume caveat verbatim and the shell's threshold divergence stated with its rationale (rotation exists from birth; the blob gate is the ceiling); the practiced mutation-campaign model; the blinding regime with the allowlist evolution quotes.

### Actions
Reviewed; staged exactly the set below; committed via scripts/agent_commit.sh.

### Evidence
Author verification (permalink existence checks, banned-term sweeps, link checks) plus the committing session's spot-reads, recorded in the seeding session; final whole-tree verification lands with the handoff commit.

### Outcome
Layer landed.

### Open-questions
None new.

### Files-in-this-commit
- docs/adr/ADR-0004-a-seal-is-a-file-not-a-sentence.md
- docs/adr/ADR-0005-journal-volume-chain.md
- docs/adr/ADR-0006-mutation-campaign-discipline.md
- docs/adr/ADR-0007-blinding-regime.md

## [J-orchestrator-0005] 2026-08-03T18:50:00Z | task:none | C5 - the lessons record: 77 entries, provenance-verified

### Trigger
Seeding continues per the approved plan; this layer authored by the distillation round and reviewed by the committing session.

### Inputs
The authoring return, my spot-review, and the source pin 1799e10a37f19059ac3337982af4b6d035e14d0c for all cited provenance (ADR-0017 cited at its landing commit acc81458, past the pin, where noted).

### Reasoning
docs/LESSONS.md: 77 entries across the six themes, each with rule, incident, normative home, and permalinks pinned at the source SHA - 35 distinct cited paths all verified to exist (cat-file -e). Nothing in it is normative; F1 and F8 carry how-this-shell-fixes-it paragraphs. Three entries homed as narrative-only, named in the file.

### Actions
Reviewed; staged exactly the set below; committed via scripts/agent_commit.sh.

### Evidence
Author verification (permalink existence checks, banned-term sweeps, link checks) plus the committing session's spot-reads, recorded in the seeding session; final whole-tree verification lands with the handoff commit.

### Outcome
Layer landed.

### Open-questions
None new.

### Files-in-this-commit
- docs/LESSONS.md

## [J-orchestrator-0006] 2026-08-03T18:50:00Z | task:none | C6 - playbooks and packet templates

### Trigger
Seeding continues per the approved plan; this layer authored by the distillation round and reviewed by the committing session.

### Inputs
The authoring return, my spot-review, and the source pin 1799e10a37f19059ac3337982af4b6d035e14d0c for all cited provenance (ADR-0017 cited at its landing commit acc81458, past the pin, where noted).

### Reasoning
The four playbooks (mutation-campaign, review, packet-splitting, ci-evidence) as procedure distilled from practice, and the packet forms as real template files including the campaign brief and the mechanics-only sealed-predictions companion. The handoffs README carries types, relay classes, and the sole-committer numbering authority.

### Actions
Reviewed; staged exactly the set below; committed via scripts/agent_commit.sh.

### Evidence
Author verification (permalink existence checks, banned-term sweeps, link checks) plus the committing session's spot-reads, recorded in the seeding session; final whole-tree verification lands with the handoff commit.

### Outcome
Layer landed.

### Open-questions
None new.

### Files-in-this-commit
- docs/playbooks/mutation-campaign.md
- docs/playbooks/review.md
- docs/playbooks/packet-splitting.md
- docs/playbooks/ci-evidence.md
- agents/handoffs/README.md
- agents/handoffs/templates/WO-template.md
- agents/handoffs/templates/SO-template.md
- agents/handoffs/templates/BUG-template.md
- agents/handoffs/templates/RV-template.md
- agents/handoffs/templates/CAMPAIGN-template.md
- agents/handoffs/templates/SEALED-predictions-template.md

## [J-orchestrator-0007] 2026-08-03T18:50:00Z | task:none | C7 - gates, sponsor guide, spec template, audit lane

### Trigger
Seeding continues per the approved plan; this layer authored by the distillation round and reviewed by the committing session.

### Inputs
The authoring return, my spot-review, and the source pin 1799e10a37f19059ac3337982af4b6d035e14d0c for all cited provenance (ADR-0017 cited at its landing commit acc81458, past the pin, where noted).

### Reasoning
The live G0 checklist (seed-satisfied rows carrying J-orchestrator-0001/0002 with verify commands; open rows for sponsor critique, branch protection, the seed-range retro-audit, and the intake questionnaire), the three per-phase gate templates with the countersignature and carry-forward devices, the sponsor guide, the 13-section spec template with its toolchain slot, and the audit lane conventions.

### Actions
Reviewed; staged exactly the set below; committed via scripts/agent_commit.sh.

### Evidence
Author verification (permalink existence checks, banned-term sweeps, link checks) plus the committing session's spot-reads, recorded in the seeding session; final whole-tree verification lands with the handoff commit.

### Outcome
Layer landed.

### Open-questions
None new.

### Files-in-this-commit
- docs/gates/G0-checklist.md
- docs/gates/templates/spec-freeze-checklist.md
- docs/gates/templates/module-ready-checklist.md
- docs/gates/templates/phase-accept-checklist.md
- docs/SPONSOR.md
- docs/specs/SPEC-TEMPLATE.md
- docs/reports/audit/README.md

## [J-orchestrator-0008] 2026-08-03T18:50:00Z | task:none | C8 - the bootstrap walkthrough and the inert build-CI template

### Trigger
Seeding continues per the approved plan; this layer authored by the distillation round and reviewed by the committing session.

### Inputs
The authoring return, my spot-review, and the source pin 1799e10a37f19059ac3337982af4b6d035e14d0c for all cited provenance (ADR-0017 cited at its landing commit acc81458, past the pin, where noted).

### Reasoning
BOOTSTRAP.md walks sponsor and orchestrator from cloned shell to running program (G0 section A then B then the retro-audit; M1 toolchain ADR and template activation by git mv). The build workflow ships inert with slots plus the ready-made promotion-block and determinism blocks. The author dry-ran a toy intake end-to-end and fixed the two gaps it found before delivery.

### Actions
Reviewed; staged exactly the set below; committed via scripts/agent_commit.sh.

### Evidence
Author verification (permalink existence checks, banned-term sweeps, link checks) plus the committing session's spot-reads, recorded in the seeding session; final whole-tree verification lands with the handoff commit.

### Outcome
Layer landed.

### Open-questions
None new.

### Files-in-this-commit
- BOOTSTRAP.md
- .github/workflows/build.yml.template

## [J-orchestrator-0009] 2026-08-03T19:05:00Z | task:none | C9 - seeding complete: the handoff record

### Trigger
C1-C8 landed and green; the verification battery run in full.

### Inputs
Source: https://github.com/renatom11/agentic-fpga at pin
1799e10a37f19059ac3337982af4b6d035e14d0c (ADR-0017 cited at its
landing commit acc81458, past the pin, where noted). Seeded by
the source program's orchestrator session, sponsor-directed.

### Reasoning
This is the handoff commit: the board records seeding COMPLETE
with the verification tallies and the operating session's ordered
to-do; the index reflects this journal's true tail. Everything a
fresh orchestrator needs is in the tree per PROTOCOL §9 — no
dependency on access to the source program remains.

### Actions
Board and index updated; this commit; push; CI verify.

### Evidence
- test_protocol.sh in a fresh clone: 38 passed, 0 failed.
- check_journals.sh --all: 8 commits green, R10 chain verified at
  range head.
- journal-check CI: success on every seed push (latest e91f76c).
- Sweeps: toolchain terms absent outside quoted provenance and
  the single reference URL; the only SEALED-named file is the
  mechanics template; 0 broken relative links; 35/35 provenance
  permalinks return HTTP 200.
- Bootstrap dry-run (toy project through Stage 1+2 by the
  authoring round): PASS, two gaps found and fixed pre-delivery.

### Outcome
The shell is complete and self-sufficient. The operating
orchestrator session boots from CLAUDE.md, reads this board, and
opens BOOTSTRAP.md with the sponsor. The history from C1 to here
is the shell's first demonstration of its own protocol.

### Open-questions
- The five G0 open rows (A6-A9, B1-B5) — the operating session's
  first work, with the sponsor.
- Whether this shell tightens its journal soft threshold to the
  source's post-incident pair — a decision recorded as open in
  ADR-0005.

### Files-in-this-commit
- agents/journals/INDEX.md
- tasks/BOARD.md

## [J-orchestrator-0010] 2026-08-03T20:10:00Z | task:none | C10 - intake by brain dump: the sponsor's stated usage model, shipped

### Trigger
Sponsor (of the seeding program), verbatim intent: pull the shell
down, "brain dump a bunch of resources and context about a FPGA
project, and it goes and sorts everything out."

### Inputs
BOOTSTRAP.md Section B (previously questionnaire-only), CLAUDE.md
first-session pointer, the G0 checklist's B rows.

### Reasoning
The questionnaire assumed the sponsor does the sorting; the
stated usage model inverts it. Path B added as the EXPECTED
path: the sponsor dumps raw resources; the orchestrator digests
them into one proposed intake (draft phase table, toolchain
candidates, license classes, boundaries, success criteria) and
returns for a single sign-off round, asking only what the dump
underdetermines. The questionnaire remains as Path A and as the
record's shape either way — the recorded outcome is identical,
so no gate row, charter, or protocol text changes.

### Actions
Three files amended; this commit; push; CI verify.

### Evidence
The B rows' record columns are unchanged; grep confirms the
banned-term sweep still passes on the edited files.

### Outcome
The shipped shell matches its sponsor's usage model: clone, dump,
sign one proposal, and the org runs.

### Open-questions
None.

### Files-in-this-commit
- BOOTSTRAP.md
- CLAUDE.md
- docs/gates/G0-checklist.md
