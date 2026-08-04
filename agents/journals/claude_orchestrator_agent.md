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

## [J-orchestrator-0011] 2026-08-03T20:40:00Z | task:none | C11 - intake resources are first-class and outlive the intake; getting-started mechanics

### Trigger
Sponsor refinement of the usage model: not only a prose brain
dump — file resources too (documentation of what is being built,
rough requirement drafts); and the practical question of what to
do after downloading.

### Inputs
BOOTSTRAP Path B (C10's text), README's Getting started section.

### Reasoning
- Path B now names two freely-mixed input forms (pasted prose;
  files in intake/) and states that intake resources OUTLIVE the
  intake: recorded with license classes, they remain the org's
  reference material — requirement drafts feed the architect's
  REQ-### work, reference designs feed the DV lead's anchor
  planning, each under its license class.
- README's Getting started now carries the concrete steps, led by
  the one warning that prevents a broken start: fork or
  clone-and-push, never GitHub's template button — a squashed
  history fails the journal-check CI by design, because the
  history is load-bearing.

### Actions
Two files amended; this commit; push; CI verify.

### Evidence
Edits verified by grep; the B rows' record shape unchanged.

### Outcome
Clone → dump prose + drop files → sign one proposal → org runs;
and the path from GitHub to a working fork is stated where a new
user will look first.

### Open-questions
None.

### Files-in-this-commit
- BOOTSTRAP.md
- README.md

## [J-orchestrator-0012] 2026-08-03T21:05:00Z | task:none | C12 - the unprompted first-boot sequence

### Trigger
Sponsor requirement: pull the repo down, attach a session, and it
knows what to do with no prompt at all.

### Inputs
CLAUDE.md's First-session block (C10's text).

### Reasoning
Two gaps stood between the existing boot file and a zero-context
attach: no instruction to re-verify the seeded state before
trusting it (the G0 rows say it, but the session reads CLAUDE.md
first), and no defined opening move when the sponsor attaches
silently. The block now sequences both: verify (stop-and-report
if red), then greet with state + the two asks. Everything else
was already in place — Claude Code auto-loads this file.

### Actions
One file amended; this commit; push; CI verify.

### Evidence
The block reads as a complete unprompted sequence; sweep
unaffected.

### Outcome
Attach-and-it-knows is true with no kickoff prompt needed.

### Open-questions
None.

### Files-in-this-commit
- CLAUDE.md

## [J-orchestrator-0013] 2026-08-03T21:45:00Z | task:none | C13 - role disciplines woven into the charters, under the sponsor's generality guard

### Trigger
Sponsor approved the charter-weave refinement, with an explicit
caution: the source program is one specific application; the
disciplines must be stated so the agents stay robust for any
FPGA task.

### Inputs
docs/LESSONS.md (the 77 entries with per-role attribution); the
sponsor's four-part generality guard (universal-binding test;
domain-noun and verification-style-assumption ban in rule
statements; conditional framing for machinery-born rules;
generalize-don't-drop).

### Reasoning
- The structural gap this closes: launchers guarantee only the
  charter and PROTOCOL §2-6 (+§10 for DV workers) as a spawn's
  first read — workers may never see the playbooks or LESSONS,
  so the charter is the one guaranteed-read surface for role
  conduct.
- One 'Standing disciplines' block at the end of each charter's
  §3: three to six one-sentence obligations with pointers to
  each rule's normative home. Growth +5 to +8 lines per charter
  against a ~20-line cap; skeletons intact; 33 distinct LESSONS
  references all resolve; banned-term sweep zero.
- The guard held under review: the borderline restatements lift
  machinery vocabulary to the universal invariant (e.g. 'what
  the check asserts' for 'what the row asserts'; the qualification
  denominator defined by appositive rather than jargon; the
  hand-authored-results-as-tool-output invariant lifted from its
  toolchain-specific incident). No discipline was dropped as
  ungeneralizable.
- One mapping refinement accepted from the round: an architect
  discipline suggestion with no owning LESSONS entry was
  replaced by two architect-attributed rules rather than
  inventing provenance.

### Actions
Reviewed the diff and the three borderline sentences; this
commit; push; CI verify.

### Evidence
git diff --stat: 9 files, +58 lines, 0 deletions; my spot-read
of the dv_lead block confirms voice and caps.

### Outcome
A fresh spawn of any role now meets its hard-won disciplines in
its first read, stated at the level where they bind any FPGA
project. The shell returns to untouched.

### Open-questions
- The second-harvest round at source-program completion revises
  these blocks with the full program's evidence.

### Files-in-this-commit
- agents/charters/architect_docs_lead.md
- agents/charters/auditor.md
- agents/charters/data_wrangler.md
- agents/charters/dv_lead.md
- agents/charters/formal_dv.md
- agents/charters/orchestrator.md
- agents/charters/rtl_lead.md
- agents/charters/rtl_module_dev.md
- agents/charters/tb_writer.md

## [J-orchestrator-0014] 2026-08-08T12:20Z

### Context
The sponsor's mandate, verbatim: "You have full permission from me to
build this whole infastrucutre" — the three-tier lessons taxonomy, the
per-gate harvest, and the federation share-back, built so that "a futurue
person using the generic doesnt have to worry about knowing most of this
infrastucture... it does the lesson stuff automatically, like most other
things." The origin program had already landed the law on its own side
(its ADR-0018 + Amendment A1); this commit lands the machinery here.

### Actions
Authored via a 4-writer parallel build, then two adversarial verification
rounds (3 lenses, then 2 re-verify lenses over the repaired tree), every
blocking and minor finding applied before this commit. The pieces:
- PROTOCOL §7.1: the harvest as gate precondition — span tiling,
  declared nil, three tiers with the sponsor's numbering, the
  descend-and-stop classifier, LH1/LH2-g/LH2-d/LH3, LC-/LD- local ids,
  war stories, no counting metric; §7's gate table now names the sponsor
  signature at spec-freeze (a re-verify catch: the deferral chain
  depends on it).
- Five charters: the harvest-note standing duty; orchestrator gains
  collation/export/pack-loading duties; auditor's gate-audit DoD gains
  harvest sampling.
- docs/FEDERATION.md (new): the whole share-back contract — two sponsor
  touchpoints only; transmission scoped to sponsor-signed gates with
  DEFERRED carry-forward from SO-/module-ready; one PR per packet into
  docs/federation/inbox/; the foreign PR as delivery vehicle never
  merged (re-verify catch: a merged foreign commit would break
  journal-check over full history — the maintainer re-lands through
  protocol commits, §8.1); reviewer screening (LH bars,
  teach-don't-instruct, leak); human-maintainer merge, never automated,
  prompt-injection reasoning stated; foreign-provenance rule; origin
  honesty (§10: the origin program predates this shell).
- docs/gates/templates/lessons-harvest-block.md (new): the instantiable
  block — span/yield/war-story tables, preconditions, transmission
  scoping with the NONE-vs-deferred discharge rule.
- docs/playbooks/lessons-harvest.md (new): the end-to-end procedure,
  refusable-bar dispatch language included.
- docs/domains/ (new): pack law, EN prefix + entry skeleton, the
  ethernet-networking pack seeded honestly empty.
- Gate templates + SO-template + G0: each physically carries its harvest
  section (G0 carries the program's first — no warm-up gate exempt);
  Exits amended.
- SPONSOR.md: the yes/no rider documented so "anything else is a
  process violation" stays true. BOOTSTRAP/CLAUDE/README: the automatic
  path described accurately; BOARD seeds the declared-packs line and
  the federation-upstream URL (the clone case's rescue).
- LESSONS.md header: stale "planned playbooks" paragraph corrected.

### Evidence
protocol self-test 38/38 in this tree; zero broken relative links across
all 22 changed files (scripted sweep); the two verification rounds'
findings (5+10, then 2+6) each applied and the fix re-checked by the
following round or by direct re-read.

### Outcome
The shell now does the lesson stuff automatically. A future sponsor
touches exactly two things: gate signatures they were already giving, and
one default-yes yes/no at sponsor-signed gates. The federation pipeline is
executable end to end under the shell's own CI, including by a maintainer
who has never seen this session.

### Open-questions
- Federation governance before the first outside contributor — parked by
  the sponsor's decision, recorded origin-side (its ADR-0018 A1.7(4));
  becomes live when the first foreign inbox PR arrives.
- The ethernet-networking pack awaits the origin program's first module
  sign-off harvest.

### Files-in-this-commit
- BOOTSTRAP.md
- CLAUDE.md
- README.md
- agents/PROTOCOL.md
- agents/charters/architect_docs_lead.md
- agents/charters/auditor.md
- agents/charters/dv_lead.md
- agents/charters/orchestrator.md
- agents/charters/rtl_lead.md
- agents/handoffs/templates/SO-template.md
- docs/FEDERATION.md
- docs/LESSONS.md
- docs/SPONSOR.md
- docs/domains/README.md
- docs/domains/ethernet-networking.md
- docs/gates/G0-checklist.md
- docs/gates/templates/lessons-harvest-block.md
- docs/gates/templates/module-ready-checklist.md
- docs/gates/templates/phase-accept-checklist.md
- docs/gates/templates/spec-freeze-checklist.md
- docs/playbooks/lessons-harvest.md
- tasks/BOARD.md

## [J-orchestrator-0015] 2026-08-08T13:50Z

### Context
The sponsor refined the federation architecture from two levels to
three, in his words: the generic is "a whole local ecosystem for the
team that pulls it down"; they "pull down a copy again and start
working"; the project "automatically update[s] using the tier 1 tier 2
and tier 3 lesson structure of their own local generic"; and "the own
local generic will generate an output file, that can be sent to Me
(Renato), to update my own model, if the local user chooses." He then
approved my recommendation to keep the one default-yes question at the
org boundary: "Do what you recommended."

### Actions
The three-level restructure, verified by a 2-lens adversarial round
(consistency + three walked user journeys) whose 3 blocking and 12
minor findings are all applied in this same commit:
- FEDERATION §0 (the three levels: canonical shell / org generic /
  project; two fences, two hops), §5 inner hop (mandatory, automatic,
  runs only after the gate signature is journaled — a bounced gate
  lands nothing), §5.1 the org-fence procedure (clone, stage, screen,
  transcribe, merge; the per-repository orchestrator identity rule so
  cross-repo landings stay protocol-green), §7 the outer hop (one
  default-yes question riding sponsor-signed gates; backlog flush on a
  later yes), §8/§10 fence-parameterized.
- G0 gains row B6 (federation upstream re-recorded and push access
  verified — proposed by the orchestrator, covered by the intake
  signature); BOOTSTRAP gains the matching intake step; the board's
  upstream line points at B6.
- README splits "found your organization (once)" from "start each
  project", with the solo-collapse rule stated honestly (the solo copy
  holds the org-generic role; graduation procedure named; fork-point
  inheritance declared fixed, mid-flight refresh out of scope by
  design).
- Destination and id-allocation cells fence-qualified everywhere the
  old one-hop wording survived (PROTOCOL §7.1 tier table and id
  sentence; FEDERATION §1/§4; the harvest block's classifier, id note,
  yield-table cells, transmission bullet and precondition; the
  playbook; the three checklist-template comments; the orchestrator
  charter's export-packet bullet — the round's first blocking find).
- Ordering circularity resolved: the outer-hop question rides the
  signature; the landing executes after the signature exists; landing
  commits are the block's final cells before the gate-passed
  declaration.

### Evidence
protocol self-test 38/38; zero broken relative links across the 15
changed files (scripted sweep); the verification round's findings
enumerated in the workflow result and each fix re-read in place.

### Outcome
A stranger can fork the canonical shell into an org generic, fork that
into projects, and their organization compounds automatically —
lessons land at home with no consent question, and reach the canonical
shell only by their sponsor's one default-yes choice. The sponsor's
two-touchpoint bar holds at every level.

### Open-questions
- Mid-project refresh from the org generic is declared out of scope; if
  a real org wants it, that is a future amendment with its own
  verification round.
- Federation governance before the first outside contributor — still
  parked, unchanged.

### Files-in-this-commit
- BOOTSTRAP.md
- CLAUDE.md
- README.md
- agents/PROTOCOL.md
- agents/charters/orchestrator.md
- docs/FEDERATION.md
- docs/SPONSOR.md
- docs/domains/README.md
- docs/gates/G0-checklist.md
- docs/gates/templates/lessons-harvest-block.md
- docs/gates/templates/module-ready-checklist.md
- docs/gates/templates/phase-accept-checklist.md
- docs/gates/templates/spec-freeze-checklist.md
- docs/playbooks/lessons-harvest.md
- tasks/BOARD.md

## [J-orchestrator-0016] 2026-08-08T14:40Z

### Context
The sponsor: "I think a comprehensive user guide would be super good to
have. This should be baked into the instructions shipped with the
product, maybe the readme... make the readme understandable for a wide
audience."

### Actions
- docs/GUIDE.md (new): the user guide for a first-time reader with no
  FPGA or AI background — what this is (the nine-agent roster in plain
  one-liners), the sponsor's deliberately tiny job, the three levels,
  the first session step by step, phases and gates, the four trust
  mechanisms stated at their honest strength, the lessons system, a
  common-situations section, and a map naming which document governs
  what ("this guide explains; the protocol governs").
- README.md: intro rewritten as the wide-audience front door (what you
  get, in plain terms, with the guide and SPONSOR.md linked before
  anything else); acronyms expanded at first use; the solo-run
  parenthetical de-jargoned; the worker-journal path corrected; the
  reports/dv and rtl/test/tools map lines annotated honestly.
- Verified by a two-lens round (a cold reader role-playing a non-hardware
  PM + an accuracy checker against the tree): 3 blocking + 14 minor, all
  applied. The blocking three were mine to own: the roster table said
  the auditor "plants nothing" while §6 said it plants defects (now: it
  fixes nothing — the true invariant); and §6 claimed all four trust
  mechanisms are mechanical when the read-side separation is
  audit-enforced and the history guarantee is conditional on the
  sponsor's branch-protection duty — both now stated at the strength
  the repository actually enforces.

### Evidence
protocol self-test 38/38; zero broken relative links in both files
(scripted sweep); the verification findings enumerated in the workflow
result, each fix re-read in place.

### Outcome
The shipped product now explains itself to a stranger at every depth:
README (what and why, one screen) → GUIDE (how, for anyone) → SPONSOR
(your one page) → the governing documents. Per the sponsor's
convolution concern, the shell is feature-frozen after this commit:
no new law until the first harvest transits at the origin program's
first module sign-off; a deletion-only simplification pass follows that
transit.

### Open-questions
- The deletion-only pass (rules merged, echoes collapsed to citations)
  is queued behind the first harvest transit, deliberately.

### Files-in-this-commit
- README.md
- docs/GUIDE.md

## [J-orchestrator-0017] 2026-08-04T19:55:25Z | task:none | C17 - ADR-0008: the federation era ratified retroactively; the documentary law; the freeze override

### Trigger
Sponsor directive opening the federation-hardening round: fix the
concurrent-landing race by serialize-with-redo, fix everything a
three-lens adversarial pass found, and commit the shell fully to
its installer identity. This commit lands the round's legal
foundation; nothing later in the round is lawful before it.

### Inputs
agents/PROTOCOL.md S11 (the amendment law as written);
docs/adr/ADR-0001..0007 (house style and numbering);
agents/journals/claude_orchestrator_agent.md entries 0014-0016
(the un-ADR'd amendments and the freeze declaration);
tasks/BOARD.md (Decisions on record); the three pass reports
(end-to-end/loop-quality, concurrency F1-F20, consistency 23
findings), whose finding this commit cures: C14/C15 amended the
protocol and charters with no ADR, docs/FEDERATION.md has no
amendment vehicle at all, and the C16 freeze exists only in
journal narrative, invisible to S9 rehydration.

### Reasoning
- Ratify-retroactively over pretend-it-was-fine or rewrite-history:
  the gap is recorded as a defect and cured, because an operating
  constitution that visibly violated its own amendment law teaches
  every later agent that S11 is advisory; history rewrite is
  refused by R3/R9 and would be dishonest anyway.
- S11's scope extension makes FEDERATION.md, the gate templates,
  the playbooks, and the domains law amendable only by ADR: the
  pass showed agents execute these documents as law, and ungoverned
  law is exactly ADR-0002's defect class.
- The freeze override is scoped and self-terminating: sponsor
  directed the round; the override ends at the round's closing
  commit, which re-engages the freeze on the board in the same
  commit. Freeze and override both live on the BOARD now so the
  rehydration path meets them at its first read.
- Grammar drift recorded here per the pass: entries 0014-0016 use
  bare headers (no task:/title fields) and Context-form bodies
  (no Inputs, no Reasoning). They are frozen under R3 and stay as
  they are; the cause was compressed entry-writing in the
  federation-sprint session; the prospective remedy is the
  WARN-GRAMMAR advisory queued for this round's consistency
  commit, which will fire on those three commits forever - the
  honest alternative to rewriting or exempting them.

### Actions
Authored ADR-0008; extended PROTOCOL S11's first sentence to the
documentary law; recorded freeze + override on the BOARD; this
commit.

### Evidence
Corpus backtest recorded in ADR-0008: the extended S11 run
backwards over the 16-commit history flags exactly C14/C15 (cured
by ratification) and nothing else; C16 touched only README.md and
docs/GUIDE.md, outside S11 before and after. Reproducible:
git log --name-only C13..C16 against the extended scope list.

### Outcome
The round's legal foundation is in place: later commits in this
round cite ADR-0009..0013 lawfully under the extended S11, and
the freeze question is answered on the board rather than buried
in narrative. DoD: this commit's slice of the sponsor directive
met; the round continues at C18.

### Open-questions
- The freeze re-engages at the round's closing commit; the
  deletion-only simplification pass C16 queued remains queued
  behind the first harvest transit.

### Files-in-this-commit
- docs/adr/ADR-0008-retroactive-ratification-and-documentary-law.md
- agents/PROTOCOL.md
- tasks/BOARD.md

## [J-orchestrator-0018] 2026-08-04T20:10:00Z | task:none | C18 - ADR-0009: the serialization law; FEDERATION 5.1/5.2; the R9 ancestry hardening

### Trigger
The sponsor's serialize-by-redo mandate - the round's founding
directive - plus the concurrency lens of the adversarial pass
(twenty enumerated failure modes, F1-F20).

### Inputs
docs/FEDERATION.md 5/5.1/6/7/8/8.1 (the text being amended);
agents/PROTOCOL.md 5 R9; scripts/check_journals.sh merge block;
scripts/test_protocol.sh S22/S24 (the merge-scenario idioms S35/S36
follow) and its entry()/expect_fail helpers; the concurrency
report's consolidated 12-clause law and its re-derive/reuse
partition (F17); the live precedent: this repo's own 0014-0016
dual-session journal collision, git merge-base 295f268.

### Reasoning
- The remote's fast-forward acceptance is the arbiter because it is
  the one serialization mechanism that already exists, cannot
  deadlock, and needs no shared lock state; a lock file was
  rejected as shared mutable state with a liveness problem.
- Redo is unconditional (no operator-judgment clause) because the
  cost asymmetry is extreme: a lost race costs one re-clone; a
  merged bad landing makes the org generic permanently red for
  every project - full-history CI plus R9 plus branch protection
  leave no legal repair.
- The reuse/re-derive partition keeps retries cheap enough to
  prevent convoy stalls (F18): packets and the three content-based
  screening verdicts carry across attempts verbatim; everything
  head-derived (journal id, lesson ids AND their section/pack
  assignment, rollover fields, SHAs) re-derives per attempt; the
  fourth screen (redundancy) re-runs by construction, which is
  exactly what makes reuse of the other three safe.
- The ancestry hardening is directional, not either-way: at a plain
  -s ours discard the branch point is always an ancestor of the
  surviving tip, so the naive symmetric test passes the very shape
  it exists to refuse. The parent whose tree the merge does NOT
  match must be contained in the parent it DOES match. S35/S36
  prove the asymmetry; the naive form was caught at plan review
  and recorded in ADR-0009.
- Landing paths and staging branches are keyed by
  project-slug + parent-record-id because ten projects' first
  landings all carry parent id G0: without the slug, one filename
  and silent overwrite (F13); with it, collision is a hard stop.

### Actions
Rewrote FEDERATION 5.1 (seven steps) and added 5.2 (twelve
clauses); pinned the outbox path (6) and slugged the inbox
filename (7); fence-qualified 8's merge-authority clause and added
the fourth screen; extended 8.1's PR close with the id-mapping
table; hardened R9's text (PROTOCOL 5) and check_journals.sh;
added S35/S36; authored ADR-0009; this commit.

### Evidence
bash scripts/test_protocol.sh at this tree: "protocol self-test:
40 passed, 0 failed" - S35 rejects the -s ours discard with the R9
message, S36 accepts the contained-ancestor shape, S22 unchanged.
git log --merges over the full history: zero merge commits, so the
hardened check flags nothing historical (corpus verdict recorded
in ADR-0009). Re-runnable at this SHA.

### Outcome
The sponsor's serialize-by-redo mandate is law: FEDERATION 5.2,
enforced at its one mechanical point by the hardened R9 check and
proven by two scenarios. Blocking findings F1-F5, F7, F10, F13 (in
part), F16, F17 closed; the ledger/slug/PENDING conventions the
law references are seeded at C21. Round continues at C19.

### Open-questions
- The sent-ledger line, project-slug field, and PENDING cells the
  new 5.1/5.2 cite are seeded on the board and templates at C21;
  until that commit the references point at conventions defined
  but not yet instantiated.

### Files-in-this-commit
- docs/FEDERATION.md
- docs/adr/ADR-0009-federation-serialization-and-landing-law.md
- agents/PROTOCOL.md
- scripts/check_journals.sh
- scripts/test_protocol.sh

## [J-orchestrator-0019] 2026-08-04T20:22:00Z | task:none | C19 - ADR-0010: dedup, precedence, the growth law, and the meta-lesson mechanisms

### Trigger
The round continues: the loop-quality lens found no dedup or
growth law at either fence, and the sponsor asked the cadence
question directly - too-frequent harvesting misses big meta
lessons, too-sparse misses small ones - then approved both
mechanisms this commit lands.

### Inputs
agents/PROTOCOL.md 7.1 (war-stories paragraph, the insertion
point); docs/FEDERATION.md 5 (harvest-law bullets) and 8 (the
fourth screen landed at C18); docs/LESSONS.md header;
docs/domains/README.md entry-format section; tasks/BOARD.md
Decisions on record; the loop-quality report's dedup analysis
(ten forks re-mine an identical inherited prefix) and its
growth-law comparison against the journals' volume chains.

### Reasoning
- The dedup law rides the redundancy screen rather than adding a
  fifth: the screen already reads the head per attempt, which is
  the one place duplicates are visible; a similarity metric was
  rejected as a counting metric in disguise.
- Recurrence tracking converts collision waste into signal: a
  dropped duplicate is independent re-derivation, the strongest
  load-bearing evidence a lesson can have, so the third arrival
  auto-opens a promotion obligation. The ledger is seeded on the
  board now; the promotion channel's discharge law is the
  read-path ADR later in this round.
- The retrospective answers the sponsor's dilemma structurally:
  span tiling mines each entry once at one altitude, so recurrence
  across spans/agents/projects is invisible to every individual
  miner. Two altitudes, two materials: per-gate mining stays on
  raw spans; the auditor's phase retrospective mines the harvest
  record itself. Auditor-owned because the orchestrator would
  otherwise grade its own collation.
- Growth law as documented convention, not machine enforcement:
  55 KB against a 1 MB ceiling, a script-heavy round already, and
  a one-line upgrade path later - the tradeoff is stated in the
  ADR so convention is never mistaken for a check.
- Fork-point baseline at B6 kills the duplicate factory at its
  source instead of asking recurrence tracking to suppress it.

### Actions
Added the second-altitude clause and recurrence note to PROTOCOL
7.1; the recurrence/supersede mechanics to FEDERATION 8 and the
retrospective bullet to FEDERATION 5; optional fields and growth
law to the LESSONS header and the pack skeleton; the
amendment-obligations ledger to the board; authored ADR-0010;
this commit.

### Evidence
No enforcement-semantics change (corpus verdict in ADR-0010):
bash scripts/test_protocol.sh unchanged at "40 passed, 0 failed"
at this tree. The seeding corpus holds 77 distinct entries with
no duplicate pair to adjudicate - reproducible by reading
docs/LESSONS.md section indices at this SHA.

### Outcome
The loop now has a dedup law, a contradiction adjudicator, a
growth remedy, and both meta-lesson passes - the fine-grained
per-gate harvest and the coarse-grained retrospective - plus the
cross-project recurrence detector. Blocking finding 2 (dedup) and
the sponsor's cadence question closed; findings on growth and
first-harvest tiling closed. Round continues at C20.

### Open-questions
- The promotion obligation's discharge law (amendment ADR or
  re-mark narrative-only) lands with the read-path ADR at C22;
  until then the ledger exists with its discharge column defined
  but no discharge yet possible.

### Files-in-this-commit
- agents/PROTOCOL.md
- docs/FEDERATION.md
- docs/LESSONS.md
- docs/adr/ADR-0010-dedup-precedence-and-growth-law.md
- docs/domains/README.md
- tasks/BOARD.md

## [J-orchestrator-0020] 2026-08-04T20:35:00Z | task:none | C20 - ADR-0011: the repo-role discriminator; the shell as installer

### Trigger
The sponsor's identity decision: the repository fully commits to
fork-me-to-start - "its an executable ... it installs this agentic
fpga on a local ecosystem" - plus the pass's blocking finding that
an org generic had no defined boot behavior and CLAUDE.md would
make one run a project.

### Inputs
CLAUDE.md First-session block (the milestone-keyed trigger being
replaced); tasks/BOARD.md Decisions on record; README.md intro and
Getting started; BOOTSTRAP.md Stage 1 head (Stage 0's insertion
point); docs/FEDERATION.md 0 (three bullets), 5.1 (identity rule),
10 (origin coincidence); docs/GUIDE.md 3-4; the consistency
report's finding 4 and the end-to-end report's findings 1.1-1.3
and 7.1-7.3.

### Reasoning
- Role line over URL detection: origin-URL inspection cannot tell
  an org generic from a project (both are forks), and a mirror or
  rename misclassifies; an explicit line in the first file every
  session reads is diffable state, with URL mismatch reserved for
  detecting an unrecorded fresh fork.
- The shell keeps its M0/G0 template state rather than stripping
  it: the seeded state is the installer's payload, and deleting it
  reconstructs the use-this-template failure by hand. The fix is
  the maintainer-mode branch declaring those rows inert here and
  live in forks.
- Stage 0 exists because forks ship with Actions disabled - the
  org generic is the one repo every project depends on, and it was
  previously the only repo whose enforcement was never verified.
- Solo collapse omits exactly the steps that presume a second repo
  (clone, staging, push) and nothing else; the reviewer stays
  fresh and mandatory because the miner screening its own candidates
  breaches PROTOCOL 1 independence. Graduation is a landing, not a
  file copy, so it inherits screening for free.
- Coincidence precedence: stricter fence wins at the canonical
  shell (human merge even for the origin's inner hop), while the
  solo case stays automatic because both roles belong to the same
  team - the fence exists between trust domains, and a solo copy
  contains one.

### Actions
Added the Repo role line to the board; replaced CLAUDE.md's
first-session block with the role branch; reframed README's intro
and founding steps; inserted BOOTSTRAP Stage 0; added the
solo-collapsed bullet to FEDERATION 0, the solo-collapse and
graduation clauses to 5.1, and the precedence + deferred-sign-off
fix to 10; updated GUIDE 3-4; authored ADR-0011; this commit.

### Evidence
No enforcement-semantics change (corpus verdict in ADR-0011): bash
scripts/test_protocol.sh unchanged at "40 passed, 0 failed" at
this tree. The discriminator's live self-check is reproducible
here: git remote get-url origin resolves to this repository while
the board's upstream line names the same URL - the
canonical-shell case.

### Outcome
The identity tension the sponsor named is resolved in the tree:
installer and installations are distinguishable by any session in
its first read, the org generic has a founding path and a defined
boot, the solo and origin coincidences are executable, and the
shell's own board now tells the truth about itself. Blocking
finding 4 (consistency) and findings 1.1-1.3/7.1-7.2 (end-to-end)
closed. Round continues at C21.

### Open-questions
- B6's role-line completion for project forks is written into the
  checklist at C21; until then ADR-0011's "signed at G0 row B6"
  points at the row this round is about to extend.

### Files-in-this-commit
- BOOTSTRAP.md
- CLAUDE.md
- README.md
- docs/FEDERATION.md
- docs/GUIDE.md
- docs/adr/ADR-0011-repo-role-discriminator.md
- tasks/BOARD.md
