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

## [J-orchestrator-0021] 2026-08-04T20:50:00Z | task:none | C21 - founding surfaces aligned: B6, board conventions, PENDING cells, the inbox perimeter

### Trigger
The round continues: C18-C20 defined conventions (landing key,
sent-ledger, fork-point baseline, repo role, staging namespace)
that the founding surfaces - G0 checklist, BOOTSTRAP Section B,
the board, the harvest block, the playbook - still referenced in
their old forms or not at all.

### Inputs
docs/gates/G0-checklist.md (B6, Section C comment, A7 click-path);
BOOTSTRAP.md Section B item 6; tasks/BOARD.md (Decisions on
record, the operating to-do list); docs/gates/templates/
lessons-harvest-block.md (span comment, export cell, transmission
bullets, preconditions); docs/playbooks/lessons-harvest.md (1,
5-7, Hygiene); FEDERATION 5.1/5.2/7 as landed at C18-C20; the
concurrency report's F11-F13 and F19 (the nonexistent ledger, the
undefined paths, the G0-era contention window).

### Reasoning
- B6 grows from an upstream-line row into the federation founding
  record because every landing-key ingredient (slug, baseline,
  role, read-only-verified access) is settled at the same moment
  under the same intake signature - one row, one signature, four
  facts that every later landing depends on.
- Push verification is read-only by law now: a probe commit
  outside agent_commit.sh would land trailer-less on the org
  generic's main and permanently red its CI (F19.1) - the exact
  catastrophe the round exists to prevent, triggered by a
  verification step.
- The sent-ledger, slug, and baseline bullets are seeded on the
  board with placeholder values so a fork's G0 fills cells that
  exist rather than inventing structures (F19.2: the maximal
  contention window is founding, the least-defended moment).
- PENDING (attempt n) cells keep the gate honest during 5.2
  retries: the alternative - a gate that closes on an unrecorded
  landing - would trade the race for a silent-loss window.
- The inbox README makes the perimeter self-documenting at the
  place a first-time contributor actually arrives.

### Actions
Rewrote G0 B6 and the Section C tiling comment; added the
solo-collapsed fed/** note to the A7 click-path; matched BOOTSTRAP
B6; seeded slug/baseline/sent-ledger bullets and fixed the
operating to-do list on the board; updated the harvest block's
span comment, outbox path, PENDING cells, and preconditions;
rewrote the playbook's tiling, packet-path, landing, transmission,
and day-zero passages; created docs/federation/inbox/README.md;
this commit.

### Evidence
Convention consistency is grep-checkable at this tree: the outbox
path docs/federation/outbox/ appears in FEDERATION 6, the harvest
block, and the playbook with identical spelling; the inbox
filename grammar source-org-project-slug-parent-record-id appears
identically in FEDERATION 7, the playbook 7, and the inbox README;
"fork-point baseline" appears in G0 B6, the board, the block, and
the playbook. bash scripts/test_protocol.sh unchanged at "40
passed, 0 failed".

### Outcome
Every convention C18-C20 legislated now exists at the surfaces
where founding actually happens; a fork's G0 fills seeded cells
instead of inventing structure during the highest-contention
window. Blocking findings 4.3/5.1 (sent-ledger) and F13 (paths),
majors F11/F19, 2.2/2.3/3.1 closed. Round continues at C22.

### Open-questions
- None.

### Files-in-this-commit
- BOOTSTRAP.md
- docs/federation/inbox/README.md
- docs/gates/G0-checklist.md
- docs/gates/templates/lessons-harvest-block.md
- docs/playbooks/lessons-harvest.md
- tasks/BOARD.md

## [J-orchestrator-0022] 2026-08-04T21:00:00Z | task:none | C22 - ADR-0012: the read path - standing lessons in force, and the promotion obligation

### Trigger
The round continues at the pass's most important finding: the
self-improvement loop had no output - nothing read what the
harvest landed. The sponsor chose the channel design: work orders
plus promotion.

### Inputs
agents/handoffs/templates/WO-template.md (Context-provided bullet,
the insertion point); all eight .claude/agents/*.md launchers
(mandatory-first-actions blocks); docs/FEDERATION.md 5.1 step 4
and 8.1 step 4; docs/LESSONS.md header; docs/GUIDE.md 7;
docs/domains/README.md; docs/playbooks/lessons-harvest.md 7; the
loop-quality report's C section, and the corpus's own L-F01/L-F02
(which predicted this failure and shaped the fix).

### Reasoning
- The routine channel implements L-F02 literally: a worker reads
  its work order, so the work order is where lessons bind. The
  issuing lead selects which entries bear on the task - bounded
  context per spawn, and selection by the role that knows the
  work, versus the rejected read-at-boot channel whose cost grows
  with the corpus forever.
- The structural channel closes L-F01: an entry naming a normative
  home is a claim that some document should change; the promotion
  obligation converts that claim into recorded board state that
  either discharges through an S11 amendment or is honestly
  re-marked narrative-only. Auto-editing charters at landing was
  rejected as ungoverned law - the ADR-0008 defect class.
- The obligation writes in the same commit as the transcription
  for the same reason the sent-ledger does (C18): "landed" and
  "recorded" must be atomic under the serialization law.
- The three obey-at-boot claims are corrected, not deleted: the
  prompt-injection rationale for the human fence gets stronger
  once the read path is real, and saying the true mechanism keeps
  ADR-0002's honesty discipline.

### Actions
Added the Standing-lessons section to the WO template; step 4 to
all eight launchers and the WO-drafting duty to the three lead
launchers; step 4b to FEDERATION 5.1 and 8.1; rewrote the LESSONS
non-normativity paragraph as the two-channel statement; corrected
GUIDE 7, domains README, and the playbook; authored ADR-0012;
this commit.

### Evidence
grep -l "Standing lessons in force" over .claude/agents/ returns
all eight launchers at this tree; the same phrase appears in the
WO template and ADR-0012. grep "obey at boot" over docs/ returns
only ADR-0008's unrelated phrase "agents obey it as law" and
historical journal text - the three claim sites are corrected.
bash scripts/test_protocol.sh unchanged at "40 passed, 0 failed".

### Outcome
The loop has an output: routine lessons reach workers in the
packet that binds them, structural lessons graduate into the
documents agents already must read, and recurrence evidence
drives promotion through the same ledger. Blocking finding 1
(loop-quality) closed. Round continues at C23.

### Open-questions
- The first real WO- issued by a fork will be the first live test
  of the standing-lessons section; the pilot expectation is
  recorded in the pass reports rather than here.

### Files-in-this-commit
- .claude/agents/architect_docs_lead.md
- .claude/agents/auditor.md
- .claude/agents/data_wrangler.md
- .claude/agents/dv_lead.md
- .claude/agents/formal_dv.md
- .claude/agents/rtl_lead.md
- .claude/agents/rtl_module_dev.md
- .claude/agents/tb_writer.md
- agents/handoffs/templates/WO-template.md
- docs/FEDERATION.md
- docs/GUIDE.md
- docs/LESSONS.md
- docs/adr/ADR-0012-the-read-path.md
- docs/domains/README.md
- docs/playbooks/lessons-harvest.md

## [J-orchestrator-0023] 2026-08-04T21:15:00Z | task:none | C23 - ADR-0013: consistency law - write-scope truth, WARN-GRAMMAR, E0, the gate table

### Trigger
The round continues into the consistency lens's findings with
enforcement or classification teeth: claims stronger than the
scripts, a contact taxonomy the seeded board violated, and grammar
drift invisible to the parsers.

### Inputs
agents/PROTOCOL.md 6 (write-scope table), 7 (gate table and
transcription paragraph), 7.1 (touchpoint sentence, tier table,
collation line), 8 (E-classes); scripts/policy.sh agent_may_write
(architect case) and its file tail (helper insertion);
scripts/agent_commit.sh and scripts/check_journals.sh R5 blocks
(advisory call sites); scripts/test_protocol.sh S19 (the
architect-scenario idiom S37 follows) and S32-S34 (the
ok-with-warning idiom S38 follows); the consistency report
findings 1, 3, 5, 8-11, 15, 16.

### Reasoning
- The script moves up to the claim, not the claim down to the
  script: "signers cannot stage docs/gates/**" is load-bearing (a
  signer editing its own gate row is a real conflict), so the
  architect deny-list gains docs/gates/* rather than five
  documents gaining honesty notes. S37 proves the deny.
- WARN-GRAMMAR is advisory by design, not by timidity: gating on
  section presence would invite empty sections - converting honest
  drift into dishonest compliance - so the machine surfaces and
  the auditor judges, the WARN-SEAL contract. It fires on frozen
  C14-C16 in every full-history run forever; exempting them by SHA
  was rejected as dishonest, and the standing noise is recorded in
  ADR-0013 so it is never mistaken for a new failure.
- E0 exists so SPONSOR.md's "anything else is a process violation"
  sentence is true: the seeded board's three escalations fit no
  E1-E6 class - founding contacts are real, so they get a class
  rather than an exemption.
- The sponsor-signature exception states the real authority chain
  (relayed, per 10's provenance classes) instead of pretending the
  sponsor journals; the gate table now carries every precondition
  the templates enforce, so the table an agent actually reads is
  not weaker than the checklists.

### Actions
Amended PROTOCOL 6/7/7.1/8; tightened policy.sh's architect case
and added the warn_grammar helper; wired the advisory into both
scripts; added S37/S38; authored ADR-0013; this commit.

### Evidence
bash scripts/test_protocol.sh at this tree: "protocol self-test:
43 passed, 0 failed" (S37 refuses architect/gates with R7; S38
accepts-with-warning and stays silent on full grammar). bash
scripts/check_journals.sh --all: 22 commits green with exactly 6
WARN-GRAMMAR advisory lines - two per drifted commit, C14-C16
only - matching ADR-0013's corpus prediction. Re-runnable at this
SHA.

### Outcome
The constitution's claims and the scripts' checks agree again:
the transcription rule is machine-true, grammar drift is visible
without being gateable, founding contacts have a class, and the
gate table carries the whole precondition truth. Consistency
blockers 1 (vehicle - closed at C17), 3 (write scope), 5 (contact
classes) and majors 8-11/15/16 closed. Round continues at C24.

### Open-questions
- None.

### Files-in-this-commit
- agents/PROTOCOL.md
- docs/adr/ADR-0013-consistency-and-honesty-sweep.md
- scripts/agent_commit.sh
- scripts/check_journals.sh
- scripts/policy.sh
- scripts/test_protocol.sh

## [J-orchestrator-0024] 2026-08-04T21:30:00Z | task:none | C24 - charters and packet templates aligned with the round's law

### Trigger
The round continues: the law landed at C18-C23 (serialization,
meta-lessons, read path, ownership split, retrospective) still
needed its restatements in the surfaces agents actually read at
spawn - charters, packet templates, the harvest block, the
gate-checklist templates, the playbook.

### Inputs
agents/charters/{orchestrator,architect_docs_lead,rtl_lead,
auditor,dv_lead}.md (the two-hops bullet and the five identical
harvest-discipline bullets); agents/handoffs/templates/
SO-template.md; docs/gates/templates/{lessons-harvest-block,
module-ready-checklist,phase-accept-checklist}.md;
docs/playbooks/lessons-harvest.md 1/4/6; ADR-0010/0012/0013 (the
law being restated); the consistency report findings 12 and 17
and the end-to-end report findings 3.2-3.4.

### Reasoning
- The charter harvest bullet forked by truth: dv_lead keeps "or
  module sign-off you issue" because it alone issues SO- packets;
  the other four claimed a duty they could never discharge - the
  restatement now matches each role's reality, and all five cite
  7.1 where the law actually lives.
- The auditor charter gains the retrospective as a standing duty
  because a duty that exists only in the protocol is exactly the
  L-F01 pattern this round closes: the charter is the guaranteed
  first read at spawn.
- SO- instantiation moves to dv_lead in every surface that said
  otherwise: the orchestrator editing an in-flight dv packet was
  both an L-A01 staging hazard and a contradiction of PROTOCOL 3's
  participants-update-their-own-packets rule.
- Module-ready S1 becomes a board record with no sponsor contact,
  and its "unless the phase plan says otherwise" escape hatch is
  deleted: the harvest block's sponsor-signed enumeration is
  closed, and an open hatch would let a phase plan silently mint
  a fourth sponsor-signed gate the federation law never counted.
- The idle-chain convention lands in the block and the playbook
  because span tiling must stay pure arithmetic - an idle row that
  tiles is checkable; an omitted row is a gap someone has to
  explain.

### Actions
Rewrote the orchestrator charter's two-hops bullet and harvest
discipline; fixed the four lead/auditor harvest bullets and added
the WO-drafting and retrospective duties; moved SO- instantiation
to dv_lead in its charter, the SO- template, and the block's
ownership comment; recorded the idle convention in block and
playbook; rewrote module-ready S1 and its Exit; added the
retrospective to the phase-accept template and playbook 4b;
scoped the playbook's touchpoint sentence; this commit.

### Evidence
grep "PROTOCOL §7)" agents/charters/ returns no harvest-cite hits
at this tree (all five bullets now cite 7.1); grep -l
"Standing lessons in force" agents/charters/ returns the four
WO-drafting charters; grep "phase retrospective" returns the
auditor charter, the phase-accept template, PROTOCOL 7.1, and the
playbook. bash scripts/test_protocol.sh unchanged at "43 passed,
0 failed".

### Outcome
Every role now meets the round's law in its guaranteed first
read; the packet templates agree with the charters about who
instantiates what; the retrospective is a duty, a template row,
and a procedure rather than only a protocol clause. Findings
12/17 (consistency) and 3.2-3.4 (end-to-end) closed. Round
continues at C25.

### Open-questions
- None.

### Files-in-this-commit
- agents/charters/architect_docs_lead.md
- agents/charters/auditor.md
- agents/charters/dv_lead.md
- agents/charters/orchestrator.md
- agents/charters/rtl_lead.md
- agents/handoffs/templates/SO-template.md
- docs/gates/templates/lessons-harvest-block.md
- docs/gates/templates/module-ready-checklist.md
- docs/gates/templates/phase-accept-checklist.md
- docs/playbooks/lessons-harvest.md

## [J-orchestrator-0025] 2026-08-04T21:45:00Z | task:none | C25 - reader surfaces: the E0 setup formula, and the dangling-reference sweep

### Trigger
The round continues into its editorial tail: the five reader
surfaces still carried five mutually inconsistent sponsor-effort
counts, and the consistency lens's dangling references - a quote
of deleted text, stale section cites, unfenced destination cells,
three naming variants of one bar - were still live.

### Inputs
README.md 83/128; docs/GUIDE.md 52/57/128; docs/SPONSOR.md
contact table and setup section; BOOTSTRAP.md 243/247;
docs/FEDERATION.md 13/84/111/tier-2 bullet/439;
agents/PROTOCOL.md 7.1 bar list; docs/domains/
ethernet-networking.md 11/13/21/26; tasks/BOARD.md pending
escalations; ORG_CHART.md roster tail; consistency findings 6, 7
(closed at C20), 11, 18-21, 23.

### Reasoning
- One formula everywhere: a one-time four-item E0 setup (A6, A7,
  A8, the intake signature), then two touchpoints per gate. The
  five old counts each dropped a different item; under ADR-0002 an
  overclaim about sponsor effort is a defect like any other
  overclaim, and GUIDE contradicting itself 65 lines apart was the
  worst instance.
- The board's three seeded escalations get their E0 label plus the
  ADR-0011 note that under canonical-shell they are template
  state - a rehydrating maintainer session should not read them as
  its own to-do list.
- BOOTSTRAP's SO-instantiation sentence contradicted C24's
  ownership split - a site the pass reports missed, found while
  editing the adjacent line; fixed in the same sweep.
- LH2 is one bar with one name now (generality at grade) in
  FEDERATION and PROTOCOL; the block's per-grade row labels stay,
  since they name the grades, not the bar.
- The ethernet pack aligns with the round: landing-fence
  allocation, deferred-sign-off arrival, and the two-channel
  normativity statement - the pack is the first thing a foreign
  contributor reads, so it must not teach the old law.

### Actions
Applied the setup formula to README, GUIDE, SPONSOR, BOOTSTRAP,
and FEDERATION; added E0 to SPONSOR's contact table; labeled the
board's escalations; fixed FEDERATION's stale 7-cite, deleted-text
quote, and tier-2 destination cell; unified LH2 naming in
FEDERATION and PROTOCOL; swept the ethernet pack; added
ORG_CHART's federation-duty note; fixed BOOTSTRAP's
SO-instantiation sentence; this commit.

### Evidence
grep sweeps at this tree: "exactly two" survives only inside the
rescoped per-gate sentences; "the shell allocates" appears nowhere
outside frozen journal history; "allocated at merge" gone from
live docs; "(the gates law, PROTOCOL §7)" gone. bash
scripts/test_protocol.sh unchanged at "43 passed, 0 failed".

### Outcome
Every reader surface now states the same sponsor contract, every
cross-reference resolves to text that exists, and the first
documents a stranger or contributor reads teach the round's law
rather than its predecessors. Consistency findings 6, 11, 18-21,
23 closed. The round closes at C26.

### Open-questions
- None.

### Files-in-this-commit
- BOOTSTRAP.md
- ORG_CHART.md
- README.md
- agents/PROTOCOL.md
- docs/FEDERATION.md
- docs/GUIDE.md
- docs/SPONSOR.md
- docs/domains/ethernet-networking.md
- tasks/BOARD.md

## [J-orchestrator-0026] 2026-08-04T21:55:00Z | task:none | C26 - round closed: verification record, index refresh, freeze re-engaged

### Trigger
The federation-hardening round's closing commit: every planned
commit C17-C25 has landed, and ADR-0008's override end condition
- the freeze re-engaging in the round's final commit - comes due
here.

### Inputs
agents/journals/INDEX.md (stale at 0009, its own regeneration
recipe); tasks/BOARD.md freeze bullet; docs/LESSONS.md line 20
(the one sweep straggler the closing verification caught);
the full verification run recorded under Evidence.

### Reasoning
- INDEX refreshes at a boundary as its header prescribes, and the
  boundary is this round's close; its orchestrator row now states
  the repo's operating truth (canonical shell, maintainer mode)
  so a rehydrating session's best-effort aid agrees with the role
  line it will read first.
- The freeze re-engages exactly as ADR-0008 promised - in the
  round's closing commit - so the override was scoped in fact,
  not only in text. The deletion-only pass C16 queued stays
  queued behind the first harvest transit.
- The LESSONS header straggler is fixed in this commit rather
  than left for a follow-up: the closing verification exists to
  catch exactly this, and a round that ships its own sweep
  failure would be the pattern the round was called to end.

### Actions
Refreshed INDEX's orchestrator row; re-engaged the freeze on the
board; fixed the LESSONS landing-fence phrase; this commit; push
and CI verification follow immediately.

### Evidence
Closing verification at C25's tree (re-runnable at this SHA minus
this commit's three files): bash scripts/test_protocol.sh -
"protocol self-test: 43 passed, 0 failed"; bash
scripts/check_journals.sh --all - "OK: 25 commit(s) satisfy the
journal/commit protocol" with exactly 6 WARN-GRAMMAR advisory
lines (two each on C14-C16, per ADR-0013's corpus prediction);
relative-link sweep over every .md in the tree - 0 broken;
grep sweeps - "allocated at merge" and "obey at boot" survive
only as the LESSONS straggler fixed here and ADR-0012's
quotation of the removed claims; charter harvest-cites to bare
"§7": none. Post-commit, the same suite re-runs in CI on the
push.

### Outcome
The round is closed: ADR-0008..0013 adopted, six loop-breaking
defects fixed, the serialize-by-redo law enforced and proven, the
installer identity mechanical, the read path real, both
meta-lesson passes law, 43 self-test asserts green, and the
freeze back in force. The shell returns to waiting - for a fork's
G0, a foreign inbox PR, or the origin program's first harvest
transit.

### Open-questions
- The deletion-only simplification pass remains queued behind the
  first harvest transit (C16's plan, unchanged).

### Files-in-this-commit
- agents/journals/INDEX.md
- docs/LESSONS.md
- tasks/BOARD.md

## [J-orchestrator-0027] 2026-08-04T22:40:00Z | task:none | C27 - zero-question founding: the boot path answers its own questions

### Trigger
Sponsor directive after the first live fork: the founding session
in their org generic came back with two process questions - how
defect feedback reaches the shell, and what to do with the
inherited freeze whose end condition a fork cannot observe. The
sponsor's requirement: a fork given any vague prompt knows exactly
what to do; process questions at boot are themselves defects.

### Inputs
The fork session's two questions verbatim (relayed by the
sponsor); CLAUDE.md iron rules; BOOTSTRAP Stage 0; tasks/BOARD.md
freeze bullet; docs/gates/G0-checklist.md rows A8 and B6;
README.md Getting started; docs/GUIDE.md 8; PROTOCOL 11's law
list (for the freeze-legality analysis below).

### Reasoning
- Both questions existed because the tree left decisions
  unanswered; the fix answers them in the tree rather than
  training sponsors to answer them per fork. Defects: GitHub
  issues on the federation upstream, outside the pipeline -
  LH2's vocabulary bars are load-bearing for lessons and exactly
  wrong for defect reports, so the channels must never mix.
  Freeze: re-scoped at founding to the role-independent observable
  form (no new law until this repository's first lessons landing
  completes) - which preserves the freeze's intent for the fork's
  own highest-risk window instead of discarding it as n/a, and
  prevents local law patches diverging a fork from the shell
  mid-trial.
- The no-process-questions rule is stated as an iron rule with a
  self-referential enforcement: needing to ask is itself a shell
  defect to file. The two legitimate asks (intake material, E0
  actions) are enumerated so the rule is checkable.
- A8 gains a default (single-branch) because an open-ended
  either/or at founding was the last optional decision on the
  boot path; the sponsor's signature still covers it, so
  authority is unchanged - only the question is gone.
- Freeze legality: all six touched files sit outside 11's law
  list (protocol, charters, scripts, FEDERATION.md,
  docs/gates/templates, playbooks, domains law) - this is
  maintainer documentation-and-state work under the sponsor's
  direction, not new law. Promoting the defect channel into
  FEDERATION proper is queued behind the freeze lift.

### Actions
Added the boot-determinism and defect-channel iron rules to
CLAUDE.md; inserted Stage 0 steps 5-6 (freeze re-scope, defect
channel) and the solo B6 routing; added the fork clause to the
board's freeze bullet and the upstream-defect-channel bullet;
defaulted A8 and extended B6 in the G0 checklist; added the
channel one-liner to README and two common-situations entries to
GUIDE 8; this commit.

### Evidence
bash scripts/test_protocol.sh at this tree: "protocol self-test:
43 passed, 0 failed" (no script changes). Boot walk at this tree:
for each role line value, CLAUDE.md's branch names one
deterministic sequence, Stage 0 and B6 leave no unanswered
decision, and the two asks the rule permits are the only asks any
document makes of the sponsor. Link targets in all six files
resolve.

### Outcome
A fork's first session now finds every process answer in the
tree: defects have a channel, the inherited freeze re-scopes
itself at founding, A8 has a default, and asking a process
question is itself classified as a defect to file. The sponsor's
zero-question requirement is recorded law-adjacent doctrine ready
to promote into FEDERATION when the freeze lifts.

### Open-questions
- Promotion of the defect-channel doctrine into FEDERATION proper
  is queued behind the freeze lift (first landing transit).

### Files-in-this-commit
- BOOTSTRAP.md
- CLAUDE.md
- README.md
- docs/GUIDE.md
- docs/gates/G0-checklist.md
- tasks/BOARD.md

## [J-orchestrator-0028] 2026-08-04T23:05:00Z | task:none | C28 - the Manifest: why this exists, shipped and linked

### Trigger
Sponsor request: a full manifest of the project's purpose - why it
exists and what it does - committed as docs/MANIFEST.md and linked
from the README.

### Inputs
The manifest text drafted with the sponsor in-session; README.md
intro (link placement); the documents the manifest cites
(GUIDE, SPONSOR, FEDERATION, LESSONS, PROTOCOL, ORG_CHART,
CLAUDE.md, adr/, domains/) - each verified present.

### Reasoning
- The manifest answers the question the README's one-screen intro
  cannot afford to: why the design is shaped this way - trust as
  the hard problem, organization over prompting, compounding as
  the experiment. It explains; GUIDE instructs; PROTOCOL governs -
  the map of documents keeps one clear division of labor.
- Written evergreen: it states the shell's own audited-and-frozen
  state and the defects-are-issues channel, but carries no
  session-specific or dated claims that would rot.
- Freeze legality: a new docs/ file plus a README link line -
  neither in S11's law list; maintainer documentation work under
  sponsor direction.

### Actions
Authored docs/MANIFEST.md; added the README link line above the
User Guide pointer; verified every relative link resolves; this
commit; push.

### Evidence
Link check at this tree: every relative target in MANIFEST.md and
README.md exists (script in the round's verification style,
output all OK). bash scripts/test_protocol.sh unchanged at "43
passed, 0 failed".

### Outcome
The product now explains its purpose at full depth one link from
the front door: README (what, one screen) -> MANIFEST (why) ->
GUIDE (how) -> SPONSOR (your job) -> the governing documents.

### Open-questions
- None.

### Files-in-this-commit
- README.md
- docs/MANIFEST.md

## [J-orchestrator-0029] 2026-08-04T23:55:00Z | task:none | C29 - ADR-0014 adopted: obligation discharge at the landing fence

### Trigger
The first-trial absorption round: the sponsor's first org generic,
during its founding, found a real seam in ADR-0012's promotion
mechanism and legislated the fix as its own ADR-0014; the sponsor
relayed the finding by hand (the defect-relay path working as
designed), delegated the disposition call verbatim ("you know
best. make a judgement call"), and the retired copy is about to be
deleted - its findings land here or nowhere.

### Inputs
The first org generic's ADR-0014 and its C30 FEDERATION diff
(read from its history at 86e5d5a before retirement); this
shell's FEDERATION 5.1 steps 4b/5 and 8.1 step 4;
tasks/BOARD.md sent-ledger and amendment-obligations bullets;
ADR-0008 (the scoped-override pattern reused); ADR-0012 (the
mechanism being extended, not amended).

### Reasoning
- The seam is real and three-fold: 4b's "not fully landed"
  contradicted step 5's atomic "landed"; the obligations ledger
  was written from four places and read from none; and an org
  generic has no gates, so no cadence ever forces discharge. An
  obligation could open at every landing forever with no moment
  at which anyone must act - ADR-0012's own "loop had no output"
  defect, one level up, invisible until a second project exists.
- Adopted on the ADR-0008 override pattern because it is law and
  the freeze holds; the sponsor's delegation is the direction,
  quoted in the ADR's Status per the sponsor-signature relay
  rule. End condition: this round's closing commit.
- Adopted as ADR-0014 here too - same number, same substance as
  the org generic's own - restated self-contained because the
  source repo retires; provenance names its commit SHA.
- Landings as the only clock is the load-bearing insight: a
  periodic sweep would be a duty assigned to nobody. DEFERRED
  stays a real state (blocking a sibling project's gate on
  another repo's constitutional work would fail a landing for
  reasons its sponsor cannot act on) but must be re-asserted at
  every landing, never silently inherited.

### Actions
Authored this shell's ADR-0014; added FEDERATION 5.1 step 4c,
the step-5 disposition field, and 8.1's parallel clause; extended
the board's sent-ledger and amendment-obligations formats and
recorded override #2 on the freeze bullet; this commit.

### Evidence
The seam's writers-without-readers claim is grep-reproducible at
the parent tree: "amendment obligation" appears in FEDERATION
5.1/8/8.1, ADR-0010, ADR-0012, LESSONS.md, and the board - and in
no gate template. bash scripts/test_protocol.sh unchanged at "43
passed, 0 failed" (no script change in this commit).

### Outcome
The read path's structural channel now closes: every landing
dispositions its obligations before claiming "landed", the board
tells complete landings from debt-carrying ones in one line, and
the DEFERRED backlog cannot go stale silently. Round continues
at C30 (the role-line wedge check).

### Open-questions
- None.

### Files-in-this-commit
- docs/FEDERATION.md
- docs/adr/ADR-0014-obligation-discharge-at-the-landing-fence.md
- tasks/BOARD.md

## [J-orchestrator-0030] 2026-08-05T00:15:00Z | task:none | C30 - ADR-0015: R-ROLE-1, the unrecorded-fork wedge becomes a red build

### Trigger
The absorption round continues at SD-0001, the highest-severity
finding in the first org generic's shell-defect log: a fresh
fork's lying role line wedges the repository silently -
maintainer mode correctly refuses to run a program, and nothing
anywhere says why. It happened live to the first fork.

### Inputs
SD-0001's full text and proposed fix (read from the retired org
generic at 86e5d5a); scripts/check_journals.sh tail (the
range-head check region); scripts/test_protocol.sh S19/S32
idioms and the sandbox's existing orchestrator journal (S1);
ADR-0002 (the R-series closure and namespaced-id rule);
ADR-0011 (the role-recording law this check enforces).

### Reasoning
- The finding's own proposed fix is implemented as proposed: a
  head-state check in check_journals, so CI turns the silent
  wedge into a red build naming ADR-0011's first act. Refusal,
  not advisory: an unrecorded fork has one correct next act and
  zero legitimate alternative states - the WARN contract is for
  qualities a machine cannot judge, and this is a two-grep
  equality test.
- Comparison is by owner/repo URL tail so https, ssh, and proxy
  remotes of the same repository all match; the check skips with
  no board, no role line, a non-canonical role, or no origin -
  which keeps the sandbox's other scenarios and detached analysis
  clones out of scope by construction.
- Named R-ROLE-1, not R11: the R-series is closed (ADR-0002) and
  the namespaced id carries its enforcement class - machine-
  refused in CI - in its ADR.
- S39's first draft re-seeded the sandbox orchestrator journal
  and was refused by R3 (the enforcement catching its own test's
  bug); the committed version appends at the computed next entry,
  which is itself a small proof the scripts guard the suite too.

### Actions
Added the R-ROLE-1 block to check_journals.sh; added S39 (2
asserts, refuse + pass); authored ADR-0015; this commit.

### Evidence
bash scripts/test_protocol.sh: "protocol self-test: 45 passed, 0
failed" - S39 refuses the mismatched-origin canonical-shell claim
with the R-ROLE-1 message and passes the corrected origin. bash
scripts/check_journals.sh --all on this repository: green with
"OK: repo-role line consistent with origin (R-ROLE-1)" - this
repo's proxy-origin tail matches its upstream line. Corpus
verdicts recorded in ADR-0015, including that the retired first
fork's pre-founding state is exactly the condition refused.

### Outcome
The wedge that cost the first trial its first move is now a red
build with a named cause on every future fork's first push. Round
closes at C31 (SD-0004 docs + freeze re-engagement).

### Open-questions
- None.

### Files-in-this-commit
- docs/adr/ADR-0015-role-line-wedge-check.md
- scripts/check_journals.sh
- scripts/test_protocol.sh

## [J-orchestrator-0031] 2026-08-05T00:30:00Z | task:none | C31 - absorption round closed: clone-and-push leads the docs, freeze re-engaged

### Trigger
The absorption round's closing commit: SD-0004 is the last
unabsorbed first-trial finding, and ADR-0014/0015's override
needs its recorded end condition met.

### Inputs
SD-0004's text (the fork button cannot target the owning account,
so the sanctioned single-account path was a parenthetical);
README.md founding section; docs/GUIDE.md 3; tasks/BOARD.md
freeze and decisions bullets; the override end condition recorded
at C29.

### Reasoning
- The docs now lead with the path every solo operator must
  actually take - clone-and-push with the three commands inline -
  and define "fork" as the relationship once, early, so the word
  stays correct everywhere else it appears. The Fork button
  demotes to the org-account variant, which is what it truly is.
- The absorption record lands on the board as one bullet mapping
  each SD-id to its fix, because the source repo retires: a
  future reader must be able to trace what the first trial
  taught the shell without that repo existing.
- The freeze re-engages in this commit per the override's
  recorded end condition - the same self-terminating pattern as
  ADR-0008's round, now used twice, which is itself becoming the
  shell's standard shape for sponsor-directed law under freeze.

### Actions
Rewrote README's founding paragraph (clone-and-push leads, fork
defined as relationship, commands inline) and the per-project
step; added GUIDE 3's relationship sentence; recorded the
absorption map and closed override #2 on the board; this commit.

### Evidence
bash scripts/test_protocol.sh: "protocol self-test: 45 passed, 0
failed". Link and phrase sweeps at this tree: the three founding
commands appear once, in README; "Use this template" warnings
retained in both reader surfaces; no live doc still presents the
Fork button as the primary single-account path.

### Outcome
The absorption round is closed: everything the first trial
produced - four defects and one ADR - is either fixed, adopted,
or recorded in this shell, and the freeze is back in force. The
sponsor can now retire the first org generic and re-found from a
shell that contains all of it.

### Open-questions
- None.

### Files-in-this-commit
- README.md
- docs/GUIDE.md
- tasks/BOARD.md

## [J-orchestrator-0032] 2026-08-05T01:00:00Z | task:none | C32 - the This-repository line: fresh-copy detection at every level

### Trigger
Walking the sponsor's two-clone founding sequence against the
boot logic, command by command, exposed a second-level wedge: a
fresh clone of an org generic inherits Repo role: org-generic,
and no board line records the org generic's own URL - so a
session in the fresh project copy would read org-generic and
"wait to be forked from," doing nothing. SD-0001's wedge, one
level down; R-ROLE-1 covers only the canonical-shell claim.

### Inputs
tasks/BOARD.md Decisions on record (the identity lines);
CLAUDE.md First-session mismatch paragraph (C20/C27 text);
BOOTSTRAP.md Stage 0 step 4; docs/gates/G0-checklist.md B6;
ADR-0011 (the discriminator this completes); ADR-0015 and
SD-0001 (the wedge class); PROTOCOL 11's law list (freeze
legality of the four touched files).

### Reasoning
- The root cause is that the board recorded the parent's URL
  (federation upstream) but never the copy's own, so
  fresh-copy detection only worked at the one level where parent
  and self coincide - the canonical shell. A This-repository
  line, re-recorded at every founding, makes origin-vs-board
  mismatch detectable at every level with one comparison.
- The founding path on mismatch follows from what the role line
  claims the PARENT was: copy of a canonical-shell founds an org
  generic (solo-collapsed only by explicit sponsor material);
  copy of an org-generic is a new project and runs G0; copy of a
  project is unsanctioned and stops. This keeps the
  zero-question rule intact - the tree still answers everything,
  now including "which founding am I?".
- Freeze legality: CLAUDE.md, BOOTSTRAP, the board, and the G0
  checklist are all outside 11's law list. The matching CI
  generalization of R-ROLE-1 IS law and is recorded on the board
  as queued debt behind the freeze rather than smuggled in - the
  boot logic carries the rule; only the machine backstop waits.

### Actions
Added the This-repository bullet and the law-debt bullet to the
board; generalized CLAUDE.md's mismatch rule with the three
founding mappings; extended Stage 0 step 4 to record identity
(role + self-URL); extended B6 to re-record the self-URL; this
commit; push; CI verify.

### Evidence
bash scripts/test_protocol.sh: "protocol self-test: 45 passed, 0
failed" (no script change). Boot walk over the sponsor's five
states at this tree: shell (lines agree, canonical-shell ->
maintainer mode); fresh my-fpga-org (mismatch, parent
canonical-shell -> Stage 0); founded my-fpga-org (agree,
org-generic -> wait); fresh my-project (mismatch, parent
org-generic -> project M0 + B6); founded my-project (agree,
project -> M0/rehydrate). Every state resolves to exactly one
action; none waits wrongly.

### Outcome
The linkage question is answered in the tree at every level:
each copy carries its own URL, its role, and its parent, and a
fresh copy of anything knows what founding it owes. The sponsor
can run the two-part clone sequence with deterministic boots at
both hops.

### Open-questions
- The R-ROLE-1 generalization (all roles, keyed on the
  This-repository line) is queued law-debt behind the freeze,
  recorded on the board.

### Files-in-this-commit
- BOOTSTRAP.md
- CLAUDE.md
- docs/gates/G0-checklist.md
- tasks/BOARD.md

## [J-orchestrator-0033] 2026-08-05T00:04:12Z | task:none | C33 - ADR-0016: audit corrections, and the standing pre-answer

### Trigger
The sponsor ordered an independent audit of the orchestrator's
architecture claims, then directed: fix it and re-verify. The
audit refuted three things in or about the tree: the 8.1
three-screens contradiction, the harvest block's stale
informational-sponsor-row phrase, and the orchestrator's claim of
a standing-NO capability that existed only in the retired first
org generic's local law.

### Inputs
The independent audit report (verdict table, misleading-
impressions list, and recommendation); docs/FEDERATION.md 7,
8.1, preamble; docs/gates/templates/lessons-harvest-block.md
transmission section; CLAUDE.md iron rules; tasks/BOARD.md;
docs/adr/ADR-0008 (the override pattern, third use); the retired
first org generic's C29 (the standing-closure design being
adopted, from its history at 52d8846).

### Reasoning
- The two contradictions are corrected at their only instances
  (grep verdicts below) - both were introduced by this round's
  own commits and survived two verification passes, which is
  itself evidence for the audit's systemic finding.
- The standing pre-answer becomes law on its merits: the trial
  needed it, invented it correctly, and per-gate NO-every-time is
  the distracted-sponsor trap its designer named. Adopting it
  also converts the orchestrator's false claim into a true one by
  the only honest route - making the capability exist with its
  real provenance, not pretending it always had.
- The MACHINE/PROSE tagging rule and the execution-honesty
  preamble land the audit's systemic recommendation where it
  binds: the reporting surface (CLAUDE.md) and the contract
  itself (FEDERATION), so uniform-confidence reporting becomes a
  named violation rather than a habit.
- No new tests: prose cannot be unit-tested into truth, and the
  audit's own recommendation is that the first real landing is
  the designated first test. The coverage gap is recorded on the
  board as a standing finding instead.

### Actions
Corrected the two contradictions; added the standing-pre-answer
clause to FEDERATION 7 and its reference to the harvest block;
added the execution-honesty preamble; added the MACHINE/PROSE
iron rule; recorded the audit and override #3 on the board;
authored ADR-0016; this commit closes the override and re-engages
the freeze per its own end condition.

### Evidence
grep "three screens" over docs/ excluding journals: 0 hits at
this tree; grep "informational sponsor row": 0 hits. bash
scripts/test_protocol.sh: "protocol self-test: 45 passed, 0
failed" (no script change). The audit report itself is preserved
in the session transcript and summarized on the board; its
refuted-claims list maps one-to-one to this commit's corrections.

### Outcome
The tree no longer contradicts itself where the audit looked, the
capability the sponsor was told about now exists as law with
honest provenance, and future enforcement reporting carries its
class by iron rule. A second independent audit verifies this
commit next; the freeze is back in force.

### Open-questions
- The verification audit's findings, if any, are the next
  entry's trigger.

### Files-in-this-commit
- CLAUDE.md
- docs/FEDERATION.md
- docs/adr/ADR-0016-audit-corrections-and-the-standing-preanswer.md
- docs/gates/templates/lessons-harvest-block.md
- tasks/BOARD.md

## [J-orchestrator-0034] 2026-08-05T05:53:37Z | task:none | C34 - completion sweep: the standing pre-answer becomes operable law (ADR-0016 Amendment A1)

### Trigger
The sponsor-ordered verification audit of C33 returned
FIXED-WITH-GAPS: the three corrections held and the mechanical
state was exactly as claimed, but the standing pre-answer existed
in only two places while seventeen other surfaces still described
the outer-hop question as unconditional - including the harvest
block's own Preconditions box, which demanded a fresh yes/no and
so blocked the new law at the one place that gates a gate. Its
verdict: "I would require a completing sweep commit before
treating the standing pre-answer as operable law."

### Inputs
The verification audit report (verdicts V1-V6, the 18-item
inconsistency list, the sponsor-addressed verdict); the first
audit's per-claim verdict table, re-read from the session record
to settle the 13-claim arithmetic (9 confirmed or with-caveat;
C4 MIXED, C7, C11, C13 OVERCLAIM = 4 refuted in part);
docs/FEDERATION.md preamble, 0, 7; agents/PROTOCOL.md 7.1;
docs/playbooks/lessons-harvest.md 6; the four gate checklists;
CLAUDE.md, BOOTSTRAP.md, README.md, docs/SPONSOR.md,
docs/GUIDE.md, docs/MANIFEST.md, agents/charters/orchestrator.md;
tasks/BOARD.md; ADR-0013 Decision 6 (the formula sweep this
round re-runs); the origin program's ADR+A1 precedent.

### Reasoning
- The verification audit's systemic point is the same one the
  first audit made: a fix that lands in two files while fourteen
  restatements contradict it repeats the failure it corrects.
  The sweep is therefore total: every surface the auditor listed,
  plus the formula instances it traced to ADR-0013 Decision 6.
- "Exactly two touchpoints" is falsified by the standing line
  (one touchpoint, when it stands), so the formula becomes "at
  most two" everywhere it appears - the honest count under both
  regimes.
- Reopening the hop fits no escalation class by design: making
  the line sponsor-only (no session proposes or escalates it)
  closes the gap without minting a new E-class for a decision
  that is not the org's to raise.
- A standing YES is made explicitly legal: the clause's rationale
  (remove the question rather than trust its answer) cuts both
  ways, and the NO-only example had left the YES direction
  ambiguous.
- The tally correction names the four partly-refuted claims from
  the first audit's own verdict table rather than leaving a
  silent 13th; the three tree corrections were caveat findings,
  not the refuted claims themselves, and the board now says so.
- ADR-0016 is amended by appendix, never edited - Amendment A1
  records its own backtest's overclaim and extends override #3's
  end condition to this commit, which re-engages the freeze.

### Actions
Fixed the harvest block's Preconditions box to accept the
standing line's board reference; swept the standing-pre-answer
conditional and the at-most-two formula across FEDERATION
(preamble, 0, 7), PROTOCOL 7.1, the harvest playbook, CLAUDE.md,
SPONSOR.md, GUIDE.md, README.md, MANIFEST.md, BOOTSTRAP.md, the
orchestrator charter, and all four gate checklists; made the
standing YES explicit and reopening sponsor-only in FEDERATION 7;
seeded the board's Outer-hop standing pre-answer slot and added
its confirmation to G0 row B6; recorded override #3 on the
board's freeze line and the corrected 9+4=13 tally on its audit
line; added the execution-honesty note to GUIDE 6; extended
MANIFEST's amendment range to ADR-0016; rewrapped the block lines
C33 mangled; authored ADR-0016 Amendment A1. This commit is the
sweep commit Amendment A1 names: the override closes here and the
freeze re-engages.

### Evidence
grep "exactly two" outside journals: survivors are ADR records
only (ADR-0013's decision text, A1's narrative). grep
"touchpoints are": both instances read at-most-two phrasing. The
standing pre-answer or its plain-language equivalent present on
all seventeen audited surfaces (README and phase-accept carry it
across line wraps; grep -l misses split matches - checked by
direct read). bash scripts/test_protocol.sh: "protocol self-test:
45 passed, 0 failed" (no script change; run recorded below in
this entry's commit). The first audit's verdict table (C1-C13)
re-read from the preserved session record settles the tally.

### Outcome
The standing pre-answer is operable law: the box that gates a
gate accepts it, the playbook the orchestrator executes from
reads it first, the sponsor-facing pages tell the sponsor it
exists, and the board carries its slot. The freeze is back in
force with all three overrides on its line. The federation
pipeline itself remains PROSE with zero mechanical coverage - the
first real landing is still its designated first test.

### Open-questions
- The first end-to-end landing (the pipeline's designated first
  test) remains the next substantive event; the queued law-debt
  (R-ROLE-1 generalization) and the deletion-only simplification
  pass stay behind the freeze.

### Files-in-this-commit
- BOOTSTRAP.md
- CLAUDE.md
- README.md
- agents/PROTOCOL.md
- agents/charters/orchestrator.md
- docs/FEDERATION.md
- docs/GUIDE.md
- docs/MANIFEST.md
- docs/SPONSOR.md
- docs/adr/ADR-0016-audit-corrections-and-the-standing-preanswer.md
- docs/gates/G0-checklist.md
- docs/gates/templates/lessons-harvest-block.md
- docs/gates/templates/module-ready-checklist.md
- docs/gates/templates/phase-accept-checklist.md
- docs/gates/templates/spec-freeze-checklist.md
- docs/playbooks/lessons-harvest.md
- tasks/BOARD.md

## [J-orchestrator-0035] 2026-08-05T12:58:14Z | task:none | C35 - R-ROLE-1 false positive: the value is the claim, not the line (ADR-0015 A1)

### Trigger
The second field trial - the sponsor founding my-fpga-org from this
shell at C34 - hit the first R-ROLE-1 defect report from an
operating copy: after correctly re-recording its role to
org-generic, the founded copy's CI stayed permanently red with the
unrecorded-fork accusation. The sponsor relayed the trial session's
diagnosis; the founding session is filing the upstream issue per
the defect channel.

### Inputs
scripts/check_journals.sh R-ROLE-1 block (the substring match at
the ROLE_LINE test); tasks/BOARD.md's shipped role line (backticked
value plus plain-text enumeration on one physical line);
scripts/test_protocol.sh S39 (whose sandbox board omits the
enumeration - why the suite never caught it); ADR-0015 (whose
Decision already promises a founded copy is out of scope "by
construction"); the trial session's report as relayed by the
sponsor.

### Reasoning
- Reproduced the failure by reading the code against the shipped
  line: grep -q 'canonical-shell' over the role line matches the
  enumeration text, so a founded org-generic/project line still
  claims the shell. The defect is implementation-only: ADR-0015's
  words are correct and unchanged.
- The false red is not cosmetic: the project M0 path stops on a
  red Actions tab, so a red org generic wedges the next founding -
  the defect blocks the live experiment.
- Fix at the root: extract the first backticked token (the
  recorded value) and compare exactly. Enumeration text is prose,
  not a claim.
- S39's miss is its own lesson: the proving scenario simplified
  the board line and so proved the check against a shape the shell
  never ships. S40 reproduces the shipped shape both ways - the
  false positive (must pass) and the true positive (must still
  fail) - so the fix cannot silently neuter the check.
- Freeze: repair of ratified machinery to match its own ADR's
  Decision is not new law; ADR-0015 Amendment A1 is the record
  keeping the repair inside existing authority. The R-ROLE-1
  generalization stays queued behind the freeze.

### Actions
Replaced the substring match with exact backticked-value
comparison in check_journals.sh (comment updated); added S40 with
two assertions (founded-fork-with-enumeration passes; backticked
canonical-shell claim still fails); appended ADR-0015 Amendment
A1; recorded the second-trial defect and the new counts (47
assertions, 41 scenarios) on the board.

### Evidence
bash scripts/test_protocol.sh: "protocol self-test: 47 passed, 0
failed" including "PASS: founded fork with enumeration on the role
line passes (R-ROLE-1)" and "PASS: backticked canonical-shell
claim still rejected (R-ROLE-1)". bash scripts/check_journals.sh
--all at this tree: green over all commits, R-ROLE-1 OK (this
repo's role is canonical-shell with matching origin - the true
scope).

### Outcome
A founded copy's CI goes green as the law always said it should;
the trial can proceed past the wedge. The defect channel worked on
its first live use: found in the field, diagnosed by the operating
session, remedied locally as state, filed upstream, fixed at the
root same-day. The upstream issue closes against this commit when
it lands.

### Open-questions
- The founding session's upstream issue had not yet appeared at
  commit time; close it against this commit on arrival.

### Files-in-this-commit
- docs/adr/ADR-0015-role-line-wedge-check.md
- scripts/check_journals.sh
- scripts/test_protocol.sh
- tasks/BOARD.md

## [J-orchestrator-0036] 2026-08-05T13:32:47Z | task:none | C36 - founding lands on the default branch: the side-branch trap (third field defect)

### Trigger
Third field defect, relayed by the sponsor with the mis-founded
session's own output: my-fpga-org's Stage 0 founding commit was
parked on a working branch pending a merge decision, so its default
branch still carried the pre-founding board; my-project, cloned
from that default branch, inherited the shell's identity and
mis-founded as an org generic. The mis-founding session's boot
logic was correct on the state it was given.

### Inputs
The sponsor's screenshot of the mis-founded session's report
("main is red right now... it still carries the pre-founding
board"); BOOTSTRAP.md Stage 0 (step 4 names no branch; step 7
declares no completion condition); README.md's start-each-project
step (no green-source rule); CLAUDE.md's fresh-copy founding
branch line; the C35 defect-record pattern on the board.

### Reasoning
- Root cause is boot-determinism, not boot logic: the tree let the
  founding session choose a branch, and the conservative choice
  (do not touch main before rulesets) silently poisons every child
  cloned before the merge. The tree must determine the branch.
- Stage 0 predates any branch-flow decision by construction - A8
  is a project-G0 row - so there is no legitimate reading under
  which the founding belongs on a side branch.
- The R-ROLE-1 red on the unfounded default branch was already the
  correct signal; the fix upgrades it from an explainable state to
  a stop condition (Stage 0 incomplete; fork-only-from-green).
- Docs-only and freeze-legal: BOOTSTRAP, README, CLAUDE.md, BOARD
  are founding surfaces, not §11 law (C32 precedent). No script
  change: the mis-founding is unreachable once the source branch
  rule holds, and R-ROLE-1 already reddens the trap state.

### Actions
Stage 0 step 4 now mandates the founding commit lands on the
default branch directly, with the child-poisoning failure mode
stated; step 7 becomes "Stop - green before fork" gating Stage 0
completion on a green default branch; README's start-each-project
step adds fork-only-from-green; CLAUDE.md's copy-of-canonical-shell
line carries the branch mandate; the board records the defect on
the C35 pattern.

### Evidence
The mis-founded session's quoted state matches the diagnosis
exactly (pre-founding board on main, R-ROLE-1 red called "correct,
not broken", founding offered as a milestone-boundary merge). bash
scripts/test_protocol.sh: 47 passed, 0 failed (no script change).
bash scripts/check_journals.sh --all green at this tree.

### Outcome
The branch choice that produced the trap no longer exists: the
tree determines the founding branch, completion is observable
(default branch green), and the human-facing rule is one sentence
- never fork from red. Recovery path for the live trial: land
my-fpga-org's founding on main, confirm green, re-clone
my-project.

### Open-questions
- The mis-founded my-project repo is unrecoverable by re-record
  (its history lacks the parent's founding commit); deletion and
  re-clone from the founded default branch is the sanctioned path.

### Files-in-this-commit
- BOOTSTRAP.md
- CLAUDE.md
- README.md
- tasks/BOARD.md

## [J-orchestrator-0037] 2026-08-05T13:36:03Z | task:none | C37 - queue the founding-branch MACHINE guard as law-debt

### Trigger
The sponsor asked whether the third field defect is prevented for
the future, not merely fixed. Answering honestly under the
MACHINE/PROSE iron rule exposed that C36's prevention is PROSE -
the tree now determines the founding branch, but no script refuses
a violation - and the strongest guard is a law change the freeze
currently bars.

### Inputs
C36 (the Stage 0 branch mandate and fork-only-from-green rule);
the board's queued-law-debt bullet (the R-ROLE-1 generalization
pattern); scripts/agent_commit.sh (the natural home for a
commit-time refusal); the freeze bullet and its three closed
sponsor-directed overrides.

### Reasoning
- The trap has two halves: the agent side (founding parked off the
  default branch) and the human side (cloning a red repo). The
  human side can never be machine-refused by the source repo; the
  agent side can - a commit that sets the role line to org-generic
  off the default branch has no legitimate reading (Stage 0
  predates every branch-flow decision), so a refusal in
  agent_commit.sh is safe to make unconditional.
- Scoped to the org-generic transition only: a project's B6 role
  record may legitimately land on a working branch under its A8
  decision, and no copy is sanctioned to clone from a project, so
  the trap does not propagate there.
- The guard is a script change plus scenario - law under §11 - and
  the freeze bars it without sponsor direction. Queuing it on the
  existing law-debt bullet keeps the design on the record without
  self-directing a fourth override; the sponsor's one word lands
  it early.

### Actions
Appended the founding-branch MACHINE guard to the board's
queued-law-debt bullet with its scope, mechanism, and the two ways
it can land. No other change; this commit is board state only.

### Evidence
bash scripts/test_protocol.sh: 47 passed, 0 failed. bash
scripts/check_journals.sh --all: green at this tree (no script
change in this commit).

### Outcome
The prevention story is honestly stratified on the record: the
choice that caused the defect no longer exists (PROSE, C36), and
the mechanical impossibility is designed, scoped, and queued
awaiting either the freeze's end or sponsor direction.

### Open-questions
- Sponsor's call: land the guard now under an override, or leave
  it queued behind the freeze.

### Files-in-this-commit
- tasks/BOARD.md

## [J-orchestrator-0038] 2026-08-05T14:02:46Z | task:none | C38 - role decided never asked; the branch authorization is an E0 action (fourth field findings)

### Trigger
The sponsor's third field founding (fresh my-fpga-org from the
shell at C37) surfaced two questions the sponsor had hoped never to
see: (1) an AskUserQuestion round on which role to found as; (2) a
permission round on landing the founding commit on main against the
session's harness branch-pin. The sibling my-project session
behaved exactly per design (greeting, material ask, A6/A7, A8
folded into the proposal, nothing committed pre-intake).

### Inputs
The sponsor's screenshots of both question rounds and the
my-project greeting; CLAUDE.md's boot-determinism bullet (whose
"intake material (project role, at G0)" parenthetical licensed the
role question) and first-session mapping (whose "or
solo-collapsed, only if..." stated an alternative without naming
the decider); BOOTSTRAP Stage 0 step 4; README's founding
paragraph; the C36/C37 defect-record pattern.

### Reasoning
- Gap 1 is boot-determinism: the tree held the answer (no project
  material supplied at founding → org generic) but never said the
  choice is decided rather than asked. The condition is observable
  (material in the founding message or intake/, or not), the
  default is safe (an org generic forks its one project; nothing
  is lost), so the rule can be made ask-free.
- Gap 2 is a real harness-law conflict, not a tree ambiguity: a
  branch-pinned harness forbids the exact push Stage 0 step 4
  mandates, and no document can override a platform rail. The
  session did right to surface it; the shell's failure was leaving
  it unframed. Classifying the authorization as an E0 founding
  action makes it legitimate under the boot-determinism rule,
  bundling it into the greeting caps it at one round, and the
  README grant sentence lets the sponsor pre-empt it to zero.
- Docs-only and freeze-legal: CLAUDE.md, BOOTSTRAP, README, BOARD
  are founding surfaces (C32/C36 precedent).

### Actions
CLAUDE.md boot bullet: role never asked, decided by the founding
rules; the E0 ask-list now names the branch authorization with the
bundle-and-honor-pre-grant discipline. CLAUDE.md first-session
mapping: the org-generic/solo-collapsed choice is decided by
material presence, never asked, with the no-loss default stated.
BOOTSTRAP Stage 0 step 4: the harness-pin case and its one-time
say-so. README founding paragraph: the pre-grant sentence for
branch-pinned environments. Board records the fourth-trial
findings on the standing pattern.

### Evidence
bash scripts/test_protocol.sh: 47 passed, 0 failed. bash
scripts/check_journals.sh --all: green (no script change). The
my-project greeting in the same trial matches the designed
behavior point for point - the project path needed no fix.

### Outcome
A founding session now has zero decidable questions: the role is
computed from material presence, and the only permitted
interaction is the E0 bundle - which the sponsor can pre-answer in
one sentence. The harness conflict is named in the tree, so
surfacing it is procedure now, not improvisation.

### Open-questions
- Whether the founding-greeting bundle should carry a suggested
  sponsor reply verbatim (a copy-paste "go" line) - deferred;
  watch the next founding.

### Files-in-this-commit
- BOOTSTRAP.md
- CLAUDE.md
- README.md
- tasks/BOARD.md

## [J-orchestrator-0039] 2026-08-05T14:49:45Z | task:none | C39 - record sponsor proposal P1: role-keyed self-rewriting README

### Trigger
The sponsor, mid-trial on the third founding round, proposed that
the README rewrite itself by role and phase: installer framing on
the shell, founded home-base state on an org generic, the
program's own face on a project, refreshed each phase.

### Inputs
The sponsor's proposal message; README.md (whose phase table is
already org-owned at G0 - the existing seam); the freeze bullet;
the C32/C36/C38 founding-surface precedent; the board's
record-keeping patterns.

### Reasoning
- The proposal extends existing machinery rather than adding an
  organ: G0 already writes the phase table into README, and gate
  commits already carry state refreshes.
- A bounded marked identity block beats a free per-phase rewrite:
  the README's lower sections are shared doctrine, and unbounded
  rewrites by gate-closing sessions would reintroduce exactly the
  reader-surface drift the audit rounds purged. A marked block is
  mechanical, diffable, and role-keyed.
- Freeze split, tagged honestly: founding-time rendering (Stage 0
  step, B6 row, the block) is founding-surface work and
  freeze-legal; the per-phase refresh is a new phase-accept
  checklist row - law, behind the freeze.
- Not landed now: the sponsor's live copies cannot receive it
  (inheritance fixed at fork), more trial ideas are announced as
  incoming, and batching keeps the trial's feedback clean. The
  board record preserves the proposal across sessions.

### Actions
Recorded proposal P1 on the board under a new "Sponsor proposals
(recorded, pending direction)" bullet with the design sketch, the
freeze split, and the landing condition (sponsor direction or the
round's batch).

### Evidence
bash scripts/test_protocol.sh: 47 passed, 0 failed. bash
scripts/check_journals.sh --all: green (board-state commit only).

### Outcome
The proposal survives any session death and carries its design and
freeze classification with it; nothing churns under the sponsor's
live trial.

### Open-questions
- Await the sponsor's further ideas; batch-design the round when
  the list settles.

### Files-in-this-commit
- tasks/BOARD.md

## [J-orchestrator-0040] 2026-08-05T14:51:01Z | task:none | C40 - record sponsor proposals P2 and P3: founding process brief, next-copy commands

### Trigger
Two further sponsor proposals arrived mid-trial, minutes after P1:
(P2) a fresh project's founding greeting should brief the full arc
of what the org will do and the sponsor's complete touchpoint
contract; (P3) a completed founding should end by printing the
ready-to-paste git commands for the next hop, URLs filled in.

### Inputs
The sponsor's two messages; CLAUDE.md's project-M0 greeting spec
(state + ask today, no arc); BOOTSTRAP Stage 0 step 7 (Stop -
green before fork, no onward commands); README's clone-and-push
blocks; the P1 board record and its batching rationale.

### Reasoning
- P2's value is trust through the map: a sponsor briefed once on
  every future touchpoint trusts the silences between them. The
  brief must render from the tree's own gate/escalation law so
  every founding briefs identically - improvised summaries are how
  overclaims happen (audit round, on the record).
- P3 closes the hop loop: the founding session knows its own URL
  from the board, so the next-copy commands can be emitted
  concrete, with the create-empty reminder, the pre-grant
  sentence, and the red-then-green expectation - the exact three
  things the field trials showed humans trip on.
- Both are founding-surface only (CLAUDE.md greeting spec, Stage 0
  step 7): freeze-legal in full, unlike P1's gate-row half. Still
  batched: the sponsor's live copies cannot receive them, and the
  proposal list is visibly still growing.

### Actions
Appended P2 and P3 to the board's sponsor-proposals bullet with
design sketches, freeze classification, and the shared landing
condition.

### Evidence
bash scripts/check_journals.sh --all: green (board-state commit
only; no script change).

### Outcome
Three proposals on the record, each carrying enough design to land
without re-litigating; the batch waits for the sponsor's word or
the trial round's close.

### Open-questions
- Batch-land P1-P3 (and any further Pn) on sponsor direction.

### Files-in-this-commit
- tasks/BOARD.md

## [J-orchestrator-0041] 2026-08-05T15:23:29Z | task:none | C41 - record the fifth field finding: outer-hop access is a sponsor touchpoint

### Trigger
The sponsor relayed the project session's report from the first
live G0 passage: the inner-hop landing is in progress, the yes was
honestly framed as authorizing only the outer hop, a
staging-before-journaling ordering deviation was logged rather
than tidied, and the outer-hop PR plus two carried shell-defect
filings are blocked because the canonical shell is outside the
session's authorized repository set.

### Inputs
The relayed report text; the C38 branch-authorization precedent
(the same session-scoped-environment class); FEDERATION §7 and the
harvest playbook §7 (which assume the upstream PR can be opened);
the board's finding-record patterns.

### Reasoning
- The blocker is not a law defect in substance - the law's
  assumption (the org can open a PR upstream) holds in ordinary
  git; it fails only where a harness scopes repo access per
  session. The fix is the C38 move: name the access grant an
  expected sponsor touchpoint bundled with the outer-hop ask, so
  sessions request it instead of hitting a wall.
- FEDERATION §7 and the playbook are law - behind the freeze, so
  the fix queues (batch round or freeze end); the board record
  preserves the interim path (approve the add-repo prompt, or
  hand-relay).
- The report's other two notes need no fix: the honesty note
  matches the orchestrator's own independent reading of the same
  law (evidence of determinism), and the ordering deviation is
  correctly a journal record for the A9 retro-audit.

### Actions
Recorded the fifth field finding on the board with its class, the
queued fix, and the interim path.

### Evidence
bash scripts/check_journals.sh --all: green (board-state commit
only). The project session's report as relayed by the sponsor is
the finding's source; its ordering deviation lives in that
repository's own journal, not this one.

### Outcome
The finding survives sessions; the first landing proceeds
unblocked on the inner hop while the outer hop waits on one
sponsor permission grant, exactly as recorded.

### Open-questions
- Service the inbox PR at the canonical fence when it arrives;
  receive the two carried defect filings by issue or hand-relay.

### Files-in-this-commit
- tasks/BOARD.md

## [J-orchestrator-0042] 2026-08-05T21:59:19Z | task:none | C42 - receive Shell feedback 0001 / AUD-0003: two defects verified and filed, fixes queued

### Trigger
The sponsor hand-relayed two documents from a descendant program
(CHIP-8 SystemVerilog): "Shell feedback 0001" - the orchestrator's
report to the shell maintainer, written after the sponsor rejected
its derived requirements list - and AUD-0003, the independent audit
that returned FAIL (2 CRITICAL, 8 MAJOR, 5 MINOR, 5 NO-VERDICT) and
corrected the feedback's own first draft twice. The reporting
session's shell-defect filings were blocked on repo access (fifth
field finding), so the sponsor carried them here by hand.

### Inputs
Both documents in full; this tree's own surfaces, re-verified by
hand rather than trusted: agents/PROTOCOL.md:329 (spec-freeze row),
agents/charters/architect_docs_lead.md:21,
docs/specs/SPEC-TEMPLATE.md section 10 and its nine normative
references to a requirements.md the shell never templates,
agents/charters/auditor.md:10 (spawned by orchestrator), the
ORG_CHART roster; the board's defect-log and queue patterns.

### Reasoning
- The findings are about the inherited constitution, and this
  shell ships the same constitution: every citation the audit made
  against its tree reproduces against this one, so F6 (no
  artefact-form standard anywhere - the certifier without the
  criterion) and F8 (the gate obtains testability because that is
  all it asks) are this shell's defects, filed as issues per the
  defect channel's own law.
- The F4 class (no review lane over sponsor-facing artefacts; the
  only independent control invoked at the audited party's
  discretion) holds identically here, and this session's own
  history is the local evidence: every substantive check on the
  maintainer's work has been sponsor-ordered. Filed as the second
  issue rather than softened.
- Channel discipline holds: the two defects travel as issues; the
  feedback's tier-1 lesson candidates (LC-06/07/08) are staged in
  the descendant program's own harvest chain and reach this shell
  only through the pipeline - hand-absorbing them here would relay
  lessons through the defect channel, which the law forbids in
  both directions.
- The recommendations (5.1-5.7) are law changes and queue behind
  the freeze, joining P1-P3 and the two law-debt items as one
  post-freeze hardening batch, ordered per the feedback's own
  postscript: the review lane (5.3) and the event-triggered audit
  (5.4) first, because both of the feedback's own draft defects
  were caught only by an independent reader.

### Actions
Verified F6/F8/F4-class against this tree; filed issues #1 (F6+F8)
and #2 (F4-class) on this repository with tree-verified citations
and MACHINE/PROSE-tagged fix sketches; recorded both in the board's
local defect log; recorded receipt of the feedback and the queued
5.1-5.7 batch on the board; left LC-06/07/08 to the pipeline.

### Evidence
Issues:
https://github.com/renatom11/generic-agentic-fpga-org/issues/1 and
/issues/2. Tree citations as listed in Inputs, each re-read this
session. bash scripts/check_journals.sh --all: green (board-state
commit; no script change).

### Outcome
The experiment produced its first cross-project structural finding
- a fork inherits how to work but not what good looks like - and
both of its shell defects are now on this repository's record with
verified citations and queued remedies. The post-freeze hardening
batch now holds: 5.1-5.7, P1-P3, R-ROLE-1 generalization, the
founding-branch MACHINE guard, and the fifth finding's FEDERATION
7 fix.

### Open-questions
- Service the descendant lineage's inbox PR when the outer hop
  unblocks; the first landing (freeze end condition) is in flight.
- Batch-design the hardening round when the freeze lifts or the
  sponsor directs.

### Files-in-this-commit
- tasks/BOARD.md

## [J-orchestrator-0043] 2026-08-05T22:15:17Z | task:none | C43 - ADR-0017: the artefact standard, and the review lane over what the sponsor sees

### Trigger
Sponsor direction, verbatim in substance: the work products were
terrible even though the charters and gates all held, and the shell
must take that class of failure into account. Read as override #4
on the ADR-0008 pattern: land the artefact-quality round (Shell
feedback 0001 recommendations 5.1-5.7) now, not behind the freeze.
The sponsor then extended the round: pull my-project itself into
the session and fan out mining agents to confirm nothing of its
failure class survives in the shell.

### Inputs
Shell feedback 0001 and AUD-0003 (issues #1/#2, verified against
this tree at C42); the origin standard quoted in the audit ("every
row stands alone", "one REQ states one testable fact", the Kind
taxonomy); this tree's PROTOCOL 7 gate rows, four charters, two
gate templates, CI workflow, test harness.

### Reasoning
- The audit's root cause was the certifier without the criterion:
  every prior fix round hardened process, and the gates kept
  passing while the product failed. The remedy ships the criterion
  as law (template + gate clause) and the referee as machinery
  (checker in CI) - MACHINE where form is checkable, PROSE where
  judgement is required, tagged per ADR-0002.
- The review lane and the event-bound audit land in the same round
  because the feedback's own postscript proved their priority:
  both of its draft defects were caught only by an independent
  reader.
- The checker skips cleanly with no corpus: the shell and an org
  generic run no project, so the shell's own CI stays green while
  every project fork inherits a live check.
- LC-06/07/08 stay out of docs/LESSONS.md: channel discipline -
  lessons travel the pipeline, which is in flight.

### Actions
Shipped docs/specs/REQUIREMENTS-TEMPLATE.md (the standard, with the
WO-0003 index-trap named), scripts/check_requirements.sh (MACHINE,
wired into journal-check CI, S41 scenarios), docs/STYLE.md;
amended PROTOCOL 7 spec-freeze and phase-accept rows (atomicity as
a named dv_lead criterion, fidelity/derivability signatures);
extended the architect, dv_lead, auditor, and orchestrator
charters (ownership of requirements.md, the second question, the
event-bound audit, read-back/stop-signal/style disciplines); added
the Artefact-standard sections to both gate templates; authored
ADR-0017; recorded override #4 OPEN on the board (closes at the
round's closing commit, after the mining sweep).

### Evidence
bash scripts/check_requirements.sh at this tree: "OK: no
requirements corpus ... nothing to check" (the shell's steady
state). bash scripts/test_protocol.sh: "protocol self-test: 50
passed, 0 failed" including S41's three assertions (well-formed
passes; bad Kind/missing SHALL/empty Verification rejected; absent
corpus skips). bash scripts/check_journals.sh --all: green.

### Outcome
The criterion now travels with the certifier: a fork inherits what
good looks like, a machine refuses malformed form at first commit,
the gate asks the stands-alone question by name, nothing derived
reaches the sponsor self-certified, and the audit runs on events
rather than the audited party's discretion. Override #4 stays open
for the my-project mining sweep the sponsor directed.

### Open-questions
- The mining sweep's findings: any failure class in my-project not
  yet covered by this round lands as the round's remaining commits.
- Issues #1/#2 close when the sweep confirms coverage.

### Files-in-this-commit
- .github/workflows/journal-check.yml
- agents/PROTOCOL.md
- agents/charters/architect_docs_lead.md
- agents/charters/auditor.md
- agents/charters/dv_lead.md
- agents/charters/orchestrator.md
- docs/STYLE.md
- docs/adr/ADR-0017-the-artefact-standard.md
- docs/gates/templates/phase-accept-checklist.md
- docs/gates/templates/spec-freeze-checklist.md
- docs/specs/REQUIREMENTS-TEMPLATE.md
- scripts/check_requirements.sh
- scripts/test_protocol.sh
- tasks/BOARD.md

## [J-orchestrator-0044] 2026-08-05T22:39:12Z | task:none | C44 - the mining sweep lands: ADR-0017 A1 closes override #4

### Trigger
Sponsor direction: fan out agents over my-project and make sure the
shell cannot repeat its mistakes. Four independent miners returned:
failure catalogue (45 modes), journal mine, adversarial coverage
audit (3 PREVENTED / 24 PARTIAL / 7 UNCOVERED against C43, four
checker bypasses demonstrated by execution, six contradictions in
the C43 round itself), red-team simulation (10 findings).

### Inputs
The four agent reports (preserved in the session task outputs); the
field program at /workspace/renatom11/my-project chip8 tip 67d46d5;
this tree's law surfaces as enumerated in ADR-0017 A1.

### Reasoning
- Deduplicated the four reports into one batch: every fix is the
  smallest change that closes its finding, MACHINE where form is
  checkable (checker hardening, Session trailer), PROSE where
  judgement is required, each tagged in place.
- The checker bypasses were fixed against the exact demonstrated
  inputs and re-proven by scenario (S41 extended, S42 added).
- The six contradictions my own C43 round introduced are repaired
  in the same commit that extends it - the auditor-charter
  per-gate overclaim was an L-F03-class defect in law I wrote
  hours earlier, corrected rather than defended.
- Website review class and the post-freeze REQ diff-guard stay
  carried (NV-3's cost question is the sponsor's; the diff-guard
  is queued law-debt) - carrying is declared, not silent.

### Actions
Landed ADR-0017 Amendment A1 and the full sweep it enumerates
across PROTOCOL (§2 operator record, §3 referral law, §4.1
evidence law, §7 gate rows, §7.1 closing harvest, §11 enumeration),
four charters, three gate templates, the harvest block, WO
template, FEDERATION (repo-qualified citations, hand-relay),
CLAUDE.md, G0 checklist, BOOTSTRAP, board, both scripts, CI
workflow comment, and the test suite. Closed override #4 on the
board; issues #1 and #2 close against this commit.

### Evidence
bash scripts/test_protocol.sh: "protocol self-test: 52 passed, 0
failed" including the orphan-id rejection and the Session-trailer
scenario. bash scripts/check_requirements.sh at this tree: clean
skip (no corpus, no citing specs). bash scripts/check_journals.sh
--all: green. The four agent reports are quoted in the session
record; the coverage verdict table maps finding-to-surface.

### Outcome
Every field failure mode now has a named owner surface in the
shell, the two CRITICAL classes (misleading sponsor-facing
artefacts; unreviewed sponsor-facing surface) are closed at both
the artefact and the channel, and the freeze is back in force with
four overrides on the record.

### Open-questions
- Carried: website review class (NV-3), post-freeze REQ
  diff-guard, and the first landing still in flight.

### Files-in-this-commit
- .github/workflows/journal-check.yml
- BOOTSTRAP.md
- CLAUDE.md
- agents/PROTOCOL.md
- agents/charters/auditor.md
- agents/charters/orchestrator.md
- agents/handoffs/templates/WO-template.md
- docs/FEDERATION.md
- docs/adr/ADR-0017-the-artefact-standard.md
- docs/gates/G0-checklist.md
- docs/gates/templates/lessons-harvest-block.md
- docs/gates/templates/phase-accept-checklist.md
- docs/gates/templates/spec-freeze-checklist.md
- scripts/agent_commit.sh
- scripts/check_requirements.sh
- scripts/test_protocol.sh
- tasks/BOARD.md

---
## [J-orchestrator-0045] 2026-08-17T00:00:00Z | task:none | C45 - ADR-0018: the federation retraction - lessons are local, and they travel by hand

### Trigger
Sponsor direction (2026-08-17), after two days away, reversing the
federation premise in his own words: "It was designed to be an
installer that you fork and then forked versions would generate
rules based on their journal that could flow to the originally
installed version but I dont love that anymore. Harvesting rules
from journal is cool, but it should only be for a local project.
Maybe it would be cool to have a file that has rules its learned
since starting that project that you could give another session so
it could learn but it shouldnt be like it currently is."

### Inputs
The full tree at C44 (2ad82c3); the board's freeze/override record,
queued law-debt, sponsor proposals P1-P3, and standing audit
findings; docs/FEDERATION.md as the contract being retired; the
coupling survey run this session (federation vocabulary appears in
~30 non-journal files; R-ROLE-1 keys on the federation-upstream
board line).

### Reasoning
- The retraction is sponsor authority over scope, exercised on a
  design that never executed: the standing audit finding records the
  pipeline had zero mechanical test coverage and no landing ever
  transited either hop. Retiring it deletes only untested law.
- What survives is chosen by the sponsor's own sentence: gate-time
  journal harvesting (unchanged in discipline - spans, bars, nil,
  war stories, retrospective), local accretion into docs/LESSONS.md,
  and the file itself as the hand-carried travel copy. The LH bars
  survive because they are what make an entry teachable outside the
  session that wrote it - the property the hand-off depends on.
- The topology collapses to canonical-shell/project: the org-generic
  level existed solely as a federation fence, and solo-collapsed
  existed solely to name a copy holding both roles. With no fences
  there is nothing for either to be.
- R-ROLE-1 re-keys to the This-repository line, which discharges the
  first queued law-debt item in the same stroke that deletes the line
  it used to key on. The second law-debt item guards a role that no
  longer exists: retired, with its surviving default-branch rule
  staying PROSE.
- The freeze closes and retires with this round: its end condition
  (the first landing) is unsatisfiable by construction after the
  retraction, and the deletion-only simplification pass the board
  queued behind it is exactly what this round performs.
- ADRs and journals are history and are not rewritten: each affected
  ADR takes an appended status-change note, and ADR-0018 carries the
  supersession table a reader needs to know what still binds.

### Actions
Wrote docs/adr/ADR-0018-the-federation-retraction.md (decision,
supersession/amendment table over ADR-0009..0017, queued-item
dispositions). Appended status-change notes to ADR-0009, -0010,
-0011, -0012, -0014, -0015, -0016. Rewrote the board: role line to
the two-value world; federation upstream / project slug / fork-point
baseline / sent-ledger / standing pre-answer lines deleted; lessons
baseline + seed-provenance lines added; amendment obligations
re-cadenced to gates; freeze closed and retired under override #5;
law-debt dispositioned; P1-P3 re-scoped; fifth field finding
retired; defect-channel wording localized; the retired standing
finding annotated as history.

### Outcome
The law of the retraction is on the record. The tree still carries
the retired machinery and its references - the retraction sweep
(C46) deletes and rewrites them; until it lands, ADR-0018's table is
the authority on what binds.

### Open-questions
- C46 executes the sweep: delete FEDERATION.md, docs/federation/,
  docs/domains/; rewrite PROTOCOL §7.1 and every living surface;
  re-key R-ROLE-1 and rewrite S39/S40; self-test green before push.

### Files-in-this-commit
- docs/adr/ADR-0018-the-federation-retraction.md
- docs/adr/ADR-0009-federation-serialization-and-landing-law.md
- docs/adr/ADR-0010-dedup-precedence-and-growth-law.md
- docs/adr/ADR-0011-repo-role-discriminator.md
- docs/adr/ADR-0012-the-read-path.md
- docs/adr/ADR-0014-obligation-discharge-at-the-landing-fence.md
- docs/adr/ADR-0015-role-line-wedge-check.md
- docs/adr/ADR-0016-audit-corrections-and-the-standing-preanswer.md
- tasks/BOARD.md

---
## [J-orchestrator-0046] 2026-08-17T00:40:00Z | task:none | C46 - the retraction sweep: the federation machinery leaves the tree, and the travel copy replaces it everywhere

### Trigger
ADR-0018 (C45) directs the sweep: delete the retired machinery, rewrite
every living surface to the local-plus-hand-carry design, re-key
R-ROLE-1, and prove the result.

### Inputs
ADR-0018's decision list and supersession table; the coupling survey
(C45's journal entry); every living surface read in full before edit
this session: FEDERATION.md, the board, PROTOCOL §7.1/§8/§11, CLAUDE.md,
README, BOOTSTRAP, GUIDE, MANIFEST, SPONSOR, ORG_CHART, the orchestrator
charter, the G0 checklist, the three gate templates, the harvest block
and playbook, the LESSONS header, both scripts and scenarios S39/S40.

### Reasoning
- Deletions only where nothing survives: FEDERATION.md (the contract),
  docs/federation/ (the inbox), docs/domains/ (tier-2 packs fold into
  domain-titled sections of LESSONS.md - one project needs one file,
  and the travel copy is stronger for being single).
- The harvest block and playbook were rewritten whole rather than
  patched: transmission was their spine, and a patched version would
  have read as a federation document with holes. The span discipline,
  bars, classifier, war stories, nil declarations, retrospective, and
  no-counting rule are carried verbatim - ADR-0018 moves destinations,
  not discipline.
- The obligation trichotomy (DISCHARGED / NARRATIVE-ONLY / DEFERRED)
  and the backlog sweep moved from FEDERATION §5.1 4c into the block,
  the playbook, and PROTOCOL §7.1 at gate cadence - gates are the only
  moment a project orchestrator is reliably awake, the same argument
  ADR-0014 made for landings when landings existed.
- R-ROLE-1 re-keyed to the This-repository line and generalized to
  every role claim, discharging the queued law-debt in the same stroke
  that deletes the federation-upstream line it formerly keyed on. S39
  rewritten to the new key; S40 keeps its field-regression teeth (the
  enumeration-on-the-line false positive) and adds the founded-claim
  mismatch case the generalization newly covers.
- Historical records stay written as they were: ADR bodies, journals,
  and the board's trial/audit/override records keep their federation
  vocabulary as history, each live-law straggler annotated rather than
  rewritten. What binds is ADR-0018's table.

### Actions
Deleted docs/FEDERATION.md, docs/federation/**, docs/domains/**.
Rewrote the harvest block and harvest playbook whole. Edited PROTOCOL
(§7.1 destinations, touchpoint, collation-and-landing, recurrence,
candidate ids; §8 E0; §11 enumeration), LESSONS header (the travel-copy
contract), CLAUDE.md (rehydration list, iron rules, two-role first
session), README (one-hop getting started), BOOTSTRAP (Stage 0 founds a
project; B6; the closing loop), GUIDE (two kinds of copy; §7 rewritten;
common situations), MANIFEST (the experiment restated, the retraction
owned in the state section), SPONSOR (no riders), ORG_CHART, the
orchestrator charter, INDEX, REQUIREMENTS-TEMPLATE, the G0 checklist
(B6, Section C, A7), the three gate templates, and both scripts.

### Evidence
- `bash scripts/test_protocol.sh` → **52 passed, 0 failed**, including
  the rewritten S39/S40 exercising the re-keyed R-ROLE-1 in both
  directions (founded-copy pass; mismatched-origin fail for a project
  claim - the case the old check could not see).
- `bash scripts/check_journals.sh --all` → 45 commits green, R10 chain
  verified, R-ROLE-1 green live on this repo (origin matches the
  This-repository line).
- Link integrity: a full-tree relative-link walk returns zero broken
  links after the deletions.
- Residue: a tree-wide sweep for federation vocabulary over living
  surfaces (journals and ADR bodies excluded as history) returns only
  the board's historical records, each annotated in C45.

### Outcome
The tree now says one thing everywhere: lessons are harvested at gates
under the same bars as before, land in this repository's own LESSONS.md,
and leave it only in a human's hands. Two roles, one founding hop, one
sponsor touchpoint per gate.

### Open-questions
- P1-P3 remain queued for sponsor direction, re-scoped to two roles.
- The process-document rewrite the sponsor queued runs next, in the
  program repository.

### Files-in-this-commit
- BOOTSTRAP.md
- CLAUDE.md
- ORG_CHART.md
- README.md
- agents/PROTOCOL.md
- agents/charters/orchestrator.md
- agents/journals/INDEX.md
- docs/FEDERATION.md
- docs/GUIDE.md
- docs/LESSONS.md
- docs/MANIFEST.md
- docs/SPONSOR.md
- docs/domains/README.md
- docs/domains/ethernet-networking.md
- docs/federation/inbox/README.md
- docs/gates/G0-checklist.md
- docs/gates/templates/lessons-harvest-block.md
- docs/gates/templates/module-ready-checklist.md
- docs/gates/templates/phase-accept-checklist.md
- docs/gates/templates/spec-freeze-checklist.md
- docs/playbooks/lessons-harvest.md
- docs/specs/REQUIREMENTS-TEMPLATE.md
- scripts/check_journals.sh
- scripts/test_protocol.sh

## [J-orchestrator-0047] 2026-08-18T02:55:00Z | task:none | A stale step number from the retraction sweep's renumbering, found by the first founding run through the new path

### Trigger
Maintainer mode. A local smoke test of the post-retraction founding path
(a fresh copy pushed to a stand-in remote, Stage 0 executed literally)
completed green - 52/52 self-test, the designed R-ROLE-1 red before the
founding commit, 47 commits green after it - and returned one defect:
the board's This-repository bullet cites "BOOTSTRAP Stage 0 step 4" for
the URL re-record, while the rewritten BOOTSTRAP performs it at step 3.
The retraction sweep renumbered Stage 0 and missed this cross-reference.

### Inputs
- tasks/BOARD.md lines 65-70 and 145-150; BOOTSTRAP.md Stage 0 steps 1-6.

### Reasoning
Line 67 is live template text and takes the fix. Line 147's "step 4 /
step 7" sits inside a dated historical bullet describing the pre-sweep
BOOTSTRAP truthfully at its own time - annotated records are never
rewritten, and no annotation is needed because the bullet is already
dated. The smoke test itself was run outside this repository and lands
no artifact here; its result (the new one-hop founding path executes
clean, first try, with the platform-dependent steps declared) is
recorded in this entry as the fix's provenance.

### Actions
- tasks/BOARD.md line 67: "Stage 0 step 4" -> "Stage 0 step 3".

### Evidence
- grep -rn "Stage 0 step" tasks/BOARD.md -> exactly two hits before the
  fix; one after (the dated historical bullet).
- The smoke test: test_protocol.sh "52 passed, 0 failed" in the fresh
  copy; check_journals.sh --all red on R-ROLE-1 pre-founding (exit 1),
  "OK: 47 commit(s) satisfy the journal/commit protocol" post-founding.

### Outcome
The founding path's one stale cross-reference is fixed. First execution
of the post-retraction Stage 0 on record: clean.

### Open-questions
- none

### Files-in-this-commit
- tasks/BOARD.md

## [J-orchestrator-0048] 2026-08-18T03:20:00Z | task:none | The shell carries its reasons: the origin's handbook lands as a pinned copy, so a deployed copy explains itself anywhere

### Trigger
Maintainer mode, sponsor direction in-session: a deployable copy should
arrive knowing how to set itself up - and the handbook's own SS6.3 rules
that shipping the machine without the reasons ships the half that reads
as ceremony. Until this commit a shell clone in a world that cannot reach
the origin repository had the machinery and none of the explanation.

### Inputs
- The origin's three volumes at its commit 9ba1138: docs/PROCESS.md
  (eighth edition, post cold-probe repairs), docs/PROCESS-MEMOIR.md,
  docs/PROCESS-STE.md.
- README.md repository map; docs/MANIFEST.md "What a project fork
  contains".

### Reasoning
Carried copy, not a move and not a fork. The volumes stay written and
maintained at the origin because their evidence apparatus measures the
origin's machinery - the handbook's own fork contract says those marks
are false-by-inheritance anywhere else, so the carried set is labelled
reference-not-law with the pin, the staleness contract, and the
whose-record-this-measures warning in a directory README that a reader
meets before any volume. Byte-identical copies, so the origin's
falsifiers still hold over them: a reader can diff the carried file
against the origin's commit and expect empty.

### Actions
- docs/handbook/: README.md (new, the carrying contract) + byte-identical
  copies of the three volumes at origin commit 9ba1138.
- README.md: handbook row in the repository map + a why-pointer beside
  the Manifest line.
- docs/MANIFEST.md: "The reasons, carried" bullet in the fork-contents
  list.

### Evidence
- diff of each carried volume against the origin file at 9ba1138: empty
  (verified before staging).
- Each carried file under the 1,000,000-byte blob gate (largest 407,753).
- bash scripts/test_protocol.sh -> 52 passed, 0 failed at this tree.

### Outcome
The export unit ships whole: machine and reasons in one clone. The
staleness contract binds future editions - re-carry or the copy is
stale, and the origin governs either way.

### Open-questions
- none

### Files-in-this-commit
- docs/handbook/README.md
- docs/handbook/PROCESS.md
- docs/handbook/PROCESS-MEMOIR.md
- docs/handbook/PROCESS-STE.md
- README.md
- docs/MANIFEST.md

## [J-orchestrator-0049] 2026-08-18T04:05:00Z | task:none | The front door still said fork: vestigial vocabulary from the retracted design, and the one sentence that invited the reading it was retracted to prevent

### Trigger
The sponsor read README's installer paragraph and asked whether the
scrub had missed it. It had not - that paragraph is C46's own rewrite
(the diff shows forked -> copied, community's shared lessons -> starter
lessons every copy inherits, FEDERATION.md -> ADR-0018, three levels ->
one copy per project). But the reading was reasonable, and chasing it
found what C46 did miss: the surface prose still leads with the verb
FORK, in eight live sites, including README's opening sentence.

### Inputs
- git show cb8a9f3 -- README.md (what C46 actually changed).
- grep -rn -i "fork" over live docs, excluding journals, ADRs, reports,
  the carried handbook, and BOARD's dated historical bullets.
- README.md, docs/GUIDE.md, docs/MANIFEST.md, docs/gates/G0-checklist.md,
  docs/specs/REQUIREMENTS-TEMPLATE.md,
  agents/handoffs/templates/WO-template.md.

### Reasoning
Two defects, one class. First, VOCABULARY: the retraction made
clone-and-push the mechanism, and BOARD records SD-0004 (fork-button
impossibility) as answered by it - yet the docs still said "fork" and
then spent three separate paragraphs apologising for the word ("fork
names the relationship, not the button"). Apologetics that exist only
because a retracted design forked from forks. The repair is to lead with
the real mechanism and demote the button to one parenthetical. Second,
FRAMING: the installer paragraph was accurate and still invited the
recursive reading, because it said what a shell does and never said what
a project does NOT do. A correct sentence that reliably produces a wrong
inference is a defect of the sentence. The repair states the negative
space directly - the copying stops at the project - which is the
sponsor's own retraction in one clause.

Not touched: BOARD's dated historical bullets (annotated records are
never rewritten), the ADRs and journals (history), the carried handbook
(pinned copy of another repository's file), and README's one surviving
"Fork button" mention, which names a real GitHub feature rather than
this design's vocabulary.

### Actions
- README.md: opening verb fork -> copy; installer paragraph gains the
  copying-stops-here clause; getting-started leads with clone-and-push
  and drops the fork-relationship apologetics; button demoted to an
  aside.
- docs/GUIDE.md: same three repairs at its own sites, including "the
  reusable base copy your organization forks" -> "every project starts
  from" (the org-ecosystem framing the retraction removed).
- docs/MANIFEST.md: section title and the closing pointer.
- docs/gates/G0-checklist.md, docs/specs/REQUIREMENTS-TEMPLATE.md,
  agents/handoffs/templates/WO-template.md: fork -> copy in live
  template text, with WO-template's citation clause restated so it says
  what it means (a copy cannot resolve bare ids into commits its origin
  made after the copy).

### Evidence
- git show cb8a9f3 -- README.md: the quoted paragraph is C46's rewrite,
  not residue.
- grep -rn -i "fork" over live docs: 11 hits before, 1 after (the
  GitHub button aside).
- Every substitution asserted single-site before writing.
- bash scripts/test_protocol.sh -> "protocol self-test: 52 passed, 0 failed".

### Outcome
The front door describes the mechanism that exists. The topology is
stated in the negative as well as the positive, which is what the
sponsor's question showed was missing.

### Open-questions
- none

### Files-in-this-commit
- README.md
- docs/GUIDE.md
- docs/MANIFEST.md
- docs/gates/G0-checklist.md
- docs/specs/REQUIREMENTS-TEMPLATE.md
- agents/handoffs/templates/WO-template.md

## [J-orchestrator-0050] 2026-08-18T21:30:00Z | task:none | The platform becomes a parameter: GitLab ships beside GitHub, and the neutrality that made it cheap is turned from luck into a rule

### Trigger
Sponsor direction, 2026-08-18: a company-hosted GitLab instance and
approved Claude Code access for proprietary data, and the question of what
that means for this shell. Maintainer mode.

### Inputs
- scripts/*.sh (all five, measured for platform coupling before anything
  was written); .github/workflows/journal-check.yml; agents/PROTOCOL.md
  SS5; docs/gates/G0-checklist.md A7; BOOTSTRAP.md Stage 0; README.md.
- GitLab's protected-branch and merge-request settings, and its CI
  predefined variables, as the platform documents them.

### Reasoning
The measurement came first and decided the shape of the answer: all five
enforcement scripts contain zero references to any hosting platform and
invoke no network command. The coupling was entirely prose plus one
workflow file. So the work is a parameter, not a port - one shell with a
declared platform rather than two shells that drift.

The part worth recording is that the neutrality was LUCK. Nothing obliged
it, no test asserts it, and one `gh api` call in a future round would end
it silently. ADR-0019 decision 3 therefore makes it a rule, with the grep
as its named (thin, review-enforced) instrument.

Two honest asymmetries refused rather than smoothed. GitLab has no
empty-bypass-list analogue, so an Owner can change a protected-branch
setting: the true GitLab sentence is that history is protected by the
server and that protection is protected by who holds Owner, and the board
records the Owner set as the control. And GitHub's required-check picker
ordering is a GitHub property, not a law here - retired on GitLab, with
the SEQUENCE kept for the reason that survives the platform difference.

### Actions
- docs/adr/ADR-0019-the-hosting-platform-is-a-parameter.md (new).
- .gitlab-ci.yml (new): the GitLab twin, same scripts, same arguments.
- docs/PLATFORM.md (new): both platforms' settings, what each buys, the
  live-fire step, self-hosted-runner notes, and the no-platform fallback.
- agents/PROTOCOL.md SS5: amended per ADR-0019 SS4, applied by this seat
  citing the record.
- docs/gates/G0-checklist.md A7, BOOTSTRAP.md Stage 0 step 1, README.md:
  platform-parametric.

### Evidence
- grep -rn -i "github|actions/|.github" scripts/ -> no matches.
- grep -rnE '(^|[^a-zA-Z_])(curl|wget|gh|glab|nc|ssh|scp)[[:space:]]'
  scripts/ -> no matches.
- bash scripts/test_protocol.sh -> 52 passed, 0 failed.
- bash scripts/check_journals.sh --all -> OK, 49 commits.
- .gitlab-ci.yml parses as YAML.

### Outcome
The shell founds on GitLab without inventing anything, and the enforcement
layer's platform-neutrality is a rule with a printed check rather than an
accident nobody was protecting.

### Open-questions
- I printed a verification instruction in the first draft that came back
  FALSE when I ran it: a bare https?:// grep returns six hits, all
  test_protocol.sh fixture strings passed to a local `git remote add`.
  Corrected before landing, and the correction is recorded in both the ADR
  and PLATFORM.md rather than quietly fixed - a verification instruction
  that has not been run is a claim.
- .gitlab-ci.yml is REVIEWED, NOT RUN: this program has no GitLab instance.
  The first GitLab founding is its first execution and should treat it as
  such. Named in ADR-0019 SS5 rather than implied.
- Decision 3's instrument is a grep nobody is obliged to run. A self-test
  scenario asserting the scripts invoke no network command is the obvious
  hardening; owed, not built.

### Files-in-this-commit
- docs/adr/ADR-0019-the-hosting-platform-is-a-parameter.md
- .gitlab-ci.yml
- docs/PLATFORM.md
- agents/PROTOCOL.md
- docs/gates/G0-checklist.md
- BOOTSTRAP.md
- README.md
