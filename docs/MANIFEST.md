# The Manifest

Why this project exists, and what it is.

## Why this exists

AI agents can already write hardware description language. That was never
the hard part. The hard part is the same thing it has always been in
hardware: **trust**. A testbench that passes while checking nothing. A
review that skims. A design decision whose reasoning evaporated with the
session that made it. When the engineers are AI agents — fast, tireless,
plausible, and stateless — every one of those failure modes gets cheaper
to commit and harder to catch.

This project is a bet that the answer is not better prompting. It is
**organization**: the same machinery human engineering cultures invented
to make individually-fallible engineers collectively trustworthy —
separation of duties, adversarial review, sign-off gates, audit trails —
rebuilt so that machines enforce it instead of custom, and git remembers
everything instead of no one.

And one bet on top of that: an organization that **compounds**. Every
gate it passes, it mines its own journals for rules that would have
prevented real incidents — and writes them into a file a stranger could
learn from, so the next project can start where this one left off.

It was not designed on a whiteboard. It was distilled from a real
operating program — the
[agentic-fpga program](https://github.com/renatom11/agentic-fpga) — where
the machinery earned its rules the honest way, through incidents.
Seventy-seven of those lessons ship inside it
([LESSONS.md](LESSONS.md)).

## The shape: an installer, not a program

This repository runs nothing. Like an executable that installs software
onto a machine, the **canonical shell** exists to be copied — except what
it installs is an engineering organization onto a git repository. One
copy per project. Every copy knows which of the two roles it is
(canonical shell, or project) from a single line on its board, and boots
accordingly — no questions asked. A process question at boot is, by
written rule, a defect to be filed ([CLAUDE.md](../CLAUDE.md);
ADR-0011, as amended by ADR-0018).

## What a project fork contains

**A staffed organization** ([ORG_CHART.md](../ORG_CHART.md)). An
orchestrator that runs everything and is the human's only interface. An
architect who owns specs. RTL and verification leads who never grade
their own work. Worker templates spawned per work order. And an
independent auditor that audits *the agents, not the electrons* — writes
only to its own lane, fixes nothing it finds, and reports to the human
verbatim.

**A constitution with teeth** ([agents/PROTOCOL.md](../agents/PROTOCOL.md)).
Every commit must couple one agent's work to that agent's append-only
journal entry explaining the reasoning — so `git diff` between any two
commits shows what changed *and why*, side by side, forever. This is not
a convention; it is ten machine-enforced rules (a 43-scenario self-test
proves each one refuses what it should), re-verified over the *entire
history* on every push, so a rewritten past turns CI permanently red.
Attribution rides commit trailers: `git log --grep 'Agent: rtl_lead'`
reconstructs any agent's entire career.

**Trust machinery that assumes bad tests until proven otherwise**
(PROTOCOL §10). No design is signed off on a test suite that has not
itself been qualified: the auditor plants defects *blind*, against
predictions sealed in files before any defect existed, and the suite must
catch them in the named places with the named messages. A green suite
that checks nothing is the enemy the whole edifice is built against.
Evidence carries provenance classes (measured, derived, relayed); CI is
the only build authority; and the human sponsor holds a standing right to
plant **canaries** — deliberate process violations that test whether the
auditor is awake ([SPONSOR.md](SPONSOR.md)).

**A ruthlessly small human contract** ([SPONSOR.md](SPONSOR.md)).
One-time setup of four items, then **one touchpoint per gate**: the
signature you would give anyway (ADR-0018). Only seven classes of
contact may ever reach you, and anything else is a process violation
you are entitled to call out. The org decides everything else
internally — and writes it down.

**Honesty as a design rule** (ADR-0002). Where enforcement is mechanical,
the docs say so. Where it is only convention or audit, the docs say
*that* — by constitutional requirement. Warnings are never verdicts; a
rule the scripts do not check never gets to dress like one. The org even
keeps its own historical drift visible: three old journal entries trip a
permanent advisory rather than being rewritten or excused.

## The experiment: an organization that learns on the record

At **every gate**, every agent mines its own journal for lessons
(PROTOCOL §7.1) — spans stated as entry-id intervals that tile exactly,
so a skipped harvest is a visible arithmetic gap. Candidates pass three
bars (provenance-pinned, general at grade, stated failure) and a
classifier sorts them into three tiers: universal rules and domain rules
land in [LESSONS.md](LESSONS.md), project-local rules land in the
project's own protocol and charters.

Everything stays local, and the loop still closes (ADR-0012). Landed
lessons reach working agents through **work orders** (every packet
carries its "standing lessons in force") and through **promotion** —
lessons that name a constitutional home open recorded obligations to
amend it, dispositioned before the gate that opened them may close. The
system even detects its own meta-lessons: when the same rule is
re-derived independently, the landing dedup notices the recurrence and
pushes the lesson toward law (ADR-0010); at every phase gate, the
auditor runs a second-altitude retrospective over the whole phase's
harvest record, asking the one question no single miner can: *what
recurs?*

And when a project ends, its LESSONS.md is a **travel copy** (ADR-0018):
a file written so a stranger can learn from it, carried by hand to the
next project, the next team, or back to this shell — where a *human*
maintainer lands chosen entries through ordinary reviewed commits,
always, because lessons become instructions future agents follow, and
that makes them a prompt-injection surface worth a permanent human
fence. Nothing transmits automatically; a person decides what travels.
That is the sentence the whole architecture serves.

## The state of the experiment

The shell is complete and self-audited: a three-lens adversarial pass
found six loop-breaking defects, and the fixes landed as six
constitutional amendments (ADR-0008..0013); field trials and an
independent claims audit added more (ADR-0014..0017, [adr/](adr/)).
Its most instructive decision is a retraction: the original design
federated lessons between repositories automatically, grew a 544-line
contract with fences, races, and ledgers — and was retired untested by
its own sponsor in favor of the hand-carried file you are reading about
(ADR-0018, which records what died and what survived). The machinery
that remains is the machinery that ran. Found a defect yourself? File
it as an issue on the canonical shell — defects travel as issues;
lessons stay in the file.

Start here: [the User Guide](GUIDE.md) · [your job, if you are the
human](SPONSOR.md) · [how to fork and found](../README.md#getting-started).
