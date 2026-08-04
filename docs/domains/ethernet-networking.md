# Domain pack: ethernet-networking

**Domain.** Ethernet / IP / UDP networking on FPGA: MAC-layer framing,
lane-encoded interfaces, CRC/FCS datapaths, checksum and header-parsing
logic, and the verification of all of these. An entry belongs here when
its rule cannot be stated without this vocabulary and clears **LH2-d** —
domain nouns admissible, project nouns barred ([`README.md`](README.md);
PROTOCOL §7.1).

**Id prefix.** `EN` — entries are `EN-nn`, numbered in file order,
allocated at merge (README, "Pack entry format").

**Nothing here is normative.** Each entry names its normative home
(PROTOCOL §, ADR-000N of this shell, or a playbook) or says "narrative
only" — the same rule as the core [`docs/LESSONS.md`](../LESSONS.md).

## Entries

None yet. This pack is seeded empty: it declares its domain so intake can
load it, and it expects its first entries from the origin program's first
module sign-off harvest — the
[agentic-fpga program](https://github.com/renatom11/agentic-fpga), whose
contributions arrive through the same pipeline as any other
organization's ([`docs/FEDERATION.md`](../FEDERATION.md) §10): export
packet, staged branch, reviewer-agent screening, human-maintainer merge.
Pack-local entry ids are allocated at merge.
