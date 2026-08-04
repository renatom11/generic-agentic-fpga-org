# Domain Packs

A domain pack is a tier-2 lessons file: rules portable across projects
that share a technical domain, and unstatable without that domain's
vocabulary. The three-tier taxonomy is defined at PROTOCOL §7.1 and in
[`docs/FEDERATION.md`](../FEDERATION.md) §1; the tier-1 core — rules with
no project or domain vocabulary at all — is
[`docs/LESSONS.md`](../LESSONS.md). Packs hold what falls between: a
lesson a stranger who knows the domain but not the project could use.

## The vocabulary bar (LH2-d)

A pack entry's rule statement may use **domain nouns** — protocol names,
interface standards, algorithm families (Ethernet, CRC, lane encoding) —
and may not use **project nouns** — module ids, requirement ids, signal
names, repo file paths. The test is run with provenance hidden: restore
only the domain nouns and ask whether the rule still teaches a stranger
who knows the domain but not the project. Pack entries clear the same full
bar as core entries — LH1 provenance-pinned, LH2 at grade, LH3 stated
failure (FEDERATION §2).

## How packs are loaded

A project declares its relevant packs automatically at intake: the org
reads the brain dump and the resource files and names the packs in the
day-one proposal it already produces. The sponsor does not choose packs
and configures nothing — a pack is loaded because the project's own
material says its domain is in play, and an irrelevant pack is simply
never loaded.

## How packs grow

Packs accrete only through the federation pipeline
([`docs/FEDERATION.md`](../FEDERATION.md)): tier-2 candidates arrive in a
gate's export packet under local `LD-` ids with the target pack named, are
staged on a branch, screened by the reviewer agent (the LH bars,
teach-don't-instruct, leak screening), and merged by a human maintainer —
**the merge is never automated**, because packs, like the core, are
constitution-adjacent text that future agents read and obey at boot.
Pack-local entry ids are allocated at merge; nobody edits a pack directly.
This shell's own origin program contributes through the same pipeline as
any other organization (FEDERATION §10).

## Pack file naming

One pack per file, `docs/domains/<pack>.md`, the pack name a lowercase
hyphenated description of the domain (e.g. `ethernet-networking.md`). The
name states a domain, never a project. A new pack is created the first
time a screened tier-2 candidate names a domain no existing pack covers.
An empty pack is legitimate: it states its domain and waits.

## Pack entry format

Each pack declares an **id prefix** in its header (e.g. `EN` for
`ethernet-networking`); entries carry ids `<PREFIX>-nn`, numbered in file
order, allocated at merge (FEDERATION §8.1 — a candidate never
self-assigns). An entry uses the same skeleton as the core:

```markdown
### <PREFIX>-nn — <short title>
**Rule.** <the lesson, stated at LH2-d — domain nouns yes, project nouns no>
**Incident.** <self-contained description sufficient to judge LH2/LH3>
**Now lives in.** <normative home, or "narrative only">
**Provenance.** <source org · parent record id · packet path or permalink>
```

## Packs

| Pack | Domain |
|---|---|
| [`ethernet-networking.md`](ethernet-networking.md) | Ethernet / IP / UDP networking on FPGA — lane-encoded interfaces, CRC datapaths |
