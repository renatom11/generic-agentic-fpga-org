# ADR-0019: the hosting platform is a parameter, not GitHub

- **Status**: **ACCEPTED** — sponsor-directed (2026-08-18). The sponsor
  reported a company-hosted **GitLab** instance and approved Claude Code
  access for proprietary data, and asked what that means for this shell.
  The answer turned out to be small, and this record is what makes it
  small permanently rather than once.
- **Deciders**: the sponsor (direction); the maintainer orchestrator
  (adoption and application of the §5 diff at §4 below).
- **Journal**: `J-orchestrator-0050`
- **Affects**: `.gitlab-ci.yml` (**new**); `docs/PLATFORM.md` (**new**);
  `agents/PROTOCOL.md` §5's CI-re-verification and branch-protection
  sentences (**diff written here, applied by the orchestrator**);
  `docs/gates/G0-checklist.md` item A7; `BOOTSTRAP.md` Stage 0 step 1;
  `README.md`; `docs/playbooks/ci-evidence.md`. **No enforcement script
  changes** — which is the finding this record exists to state.

---

## 1. Context — the measurement that made this cheap

Before writing anything, the live tree was measured for platform coupling:

```
grep -rn -i "github\|actions/\|\.github" scripts/   # -> no matches
grep -rnE '(^|[^a-zA-Z_])(curl|wget|gh|glab|nc|ssh|scp)[[:space:]]' scripts/
                                                     # -> no matches
```

*(The second grep is written over **invocations**. An earlier draft of this
record printed `grep -rnE "curl|wget|https?://"` and claimed no matches; it
returns six, all of them `git remote add origin https://…/example/…` fixture
strings inside `test_protocol.sh`'s wedge-check scenarios — arguments to a
local `git`, not traffic. The claim was corrected before this record landed,
by running it. **A verification instruction that has not been run is a
claim.**)*

**All five enforcement scripts — `agent_commit.sh`, `check_journals.sh`,
`policy.sh`, `test_protocol.sh`, `check_requirements.sh` — contain zero
references to any hosting platform, and make no network calls of any kind.**
They call `git`, `grep`, `sed`, `awk`, `sort`, `wc`, `sha256sum`, `diff`,
`patch` and `mktemp`.

The coupling was entirely in **prose and one workflow file**: nine documents
that said *GitHub* where they meant *the hosting platform*, and
`.github/workflows/journal-check.yml`, which is a GitHub artifact by
construction.

**That is the load-bearing fact and it was luck rather than design.** Nothing
in this organization's history obliged the scripts to stay platform-neutral;
no test asserts it; a single `gh api` call in a future round would end it
silently. This record therefore does two things: it ports the shell, and it
*makes the neutrality a rule* so a later round cannot spend it without
noticing.

## 2. Decision

1. **The hosting platform is a declared parameter of a founding**, in the
   same sense **Annex A** of the process handbook uses for substrate
   parameters: measured from the adopter's own environment, recorded on the
   board, with the posture of every dependent claim stated at the value
   measured. `docs/PLATFORM.md` is its home.

2. **Both CI definitions ship.** `.github/workflows/journal-check.yml` and
   `.gitlab-ci.yml` run **the same scripts with the same arguments**; only
   the plumbing differs. A founding keeps the one its host uses and may
   delete the other. Deleting one is a legal act and changes no rule.

3. **The enforcement layer stays platform-neutral, and that is now a rule
   rather than an accident.** No script under `scripts/` may call a hosting
   platform's API or CLI, or perform any network access. A round that needs
   platform data passes it in as an argument or an environment variable set
   by the CI definition. *Enforcement*: review-enforced — no `R`-rule is
   minted and no script changes, so §11(3) owes no test case. The
   compensating instrument is the grep in §1, which any reader can run and
   which `docs/PLATFORM.md` prints for exactly that purpose.

4. **What the platform is depended on for is enumerated, and it is two
   things**: a place to run the re-check over full history on every push,
   and refusal of force pushes and branch deletion on protected branches.
   Everything else this design uses a platform for — issues as the defect
   channel, a published site — is convenience, and its absence degrades
   nothing that a gate signs.

5. **GitLab's protection model is weaker in one named way, and the honest
   sentence differs.** GitHub rulesets with an empty bypass list are
   admin-proof by default; **GitLab has no bypass-list analogue**, and a
   project Owner or instance administrator can change a protected-branch
   setting. On GitLab the true statement is therefore: *pushed history is
   protected against rewrite by the server, and that protection is protected
   by who holds Owner.* A GitLab founding records the Owner set on its board
   as the control, because that is what the guarantee reduces to.

6. **One GitHub-specific constraint is retired on GitLab and kept as a
   sequence.** GitHub cannot bind a required status check the platform has
   never seen run, which is why the adoption order places continuous
   integration before the protection step. GitLab's *Pipelines must succeed*
   is a boolean with no such precondition. **The ordering stays recommended
   anyway**, for the reason that survives the platform difference: an
   unverified protective setting is a belief, so run it green once before
   anything rests on it.

## 3. Alternatives considered

- **A GitLab fork of the shell.** Rejected. Two shells drift, and the
  drift is invisible from inside either one — the same hazard this
  organization convicted itself of between its handbook and its machinery.
  One shell with a parameter has one law.
- **Abstract the CI behind a script** (`scripts/ci.sh`, called by a thin
  workflow on either platform). Rejected for now: it moves platform
  branching *into* `scripts/`, which is exactly what decision 3 forbids, and
  it buys little — the two definitions are twenty lines each and share
  every command that matters.
- **Say nothing and let adopters port it.** Rejected on the record's own
  evidence: an executed adoption run in a world with no platform at all
  reported the absence as one of its most expensive halts, and improvised a
  stand-in whose material differences it had to derive itself. A parameter
  nobody documents is a parameter every adopter re-derives.
- **Treat GitLab's weaker protection as equivalent.** Rejected — see
  decision 5. Inheriting GitHub's sentence on GitLab would be exactly the
  class of false inherited guarantee this organization exists to prevent.

## 4. The `agents/PROTOCOL.md` §5 diff — source text; applied by the orchestrator

Authored here, applied to the constitution by the **orchestrator** in its own
commit citing this record: an instrument does not edit the file it governs.

**Replacing**, in §5's CI-re-verification paragraph:

> **CI re-verification**: `.github/workflows/journal-check.yml` runs
> `scripts/check_journals.sh` over the entire pushed range …
> A locally bypassed check (`git commit --no-verify` outside the script)
> still fails on GitHub before merge. **One out-of-repo dependency**: branch
> protection on `main` **and the working branch** (no force push, no
> deletion, `journal-check` required, no admin bypass) must be configured
> once by the sponsor — G0 checklist item.

**With:**

> **CI re-verification**: the journal-check pipeline — defined at
> `.github/workflows/journal-check.yml` on GitHub and `.gitlab-ci.yml` on
> GitLab, both running the same scripts with the same arguments — runs
> `scripts/check_journals.sh` over the entire pushed range and re-checks
> R1–R9 and R10 for every commit (append-only across the range, monotonic
> IDs across volume chains, files-list equality, trailer well-formedness,
> path isolation, serialized-history rules, per-commit volume-chain
> integrity). Tree-wide at the range head it additionally verifies every
> chain is complete (no gaps), every back-link hash matches the actual bytes
> of the predecessor volume in that tree, and entry IDs are contiguous
> across each concatenated chain. A locally bypassed check
> (`git commit --no-verify` outside the script) still fails in the platform
> pipeline before merge. **One out-of-repo dependency**: protection of
> already-pushed history on `main` **and the working branch** (no force
> push, no deletion, the journal-check pipeline required to pass) must be
> configured once by the sponsor — G0 checklist item A7. **The hosting
> platform is a declared parameter** (ADR-0019): what each platform's
> settings buy, what GitLab's model does *not* buy, and what degrades to
> convention where no platform is reachable, are stated in
> [`docs/PLATFORM.md`](../docs/PLATFORM.md) and recorded per founding on the
> board. **No script under `scripts/` may call a platform API or CLI, or
> perform network access** — the enforcement layer stays platform-neutral,
> and the check is the grep printed in `docs/PLATFORM.md`.

## 5. Consequences, and the failure modes this leaves open

- An adopter on GitLab now founds without inventing anything. The path an
  adopter with neither platform takes is documented rather than improvised,
  and its degraded postures are named instead of assumed.
- **Decision 3 is review-enforced and thin.** Nothing refuses a future
  `scripts/ci_helper.sh` that shells out to `glab` or `gh`. The grep is the
  instrument, and a grep nobody runs is not one. A test-suite scenario
  asserting the scripts contain no network verb is the obvious hardening and
  is **not built here**; recorded as owed rather than implied.
- **Neither CI definition has been executed on GitLab by this program.**
  `.gitlab-ci.yml` is written from the platform's documented variables and
  reviewed, not run. The first GitLab founding is its first test, and should
  treat it that way: check the pipeline goes green and the range check
  resolves a real range before relying on either.
- The two definitions can drift. They are twenty lines each and share every
  command that matters, so the drift surface is small — but it is real, and
  no check compares them.

## 6. What this record does not decide

Anything about **what a program may put in a repository**. Secret handling,
classification, export control and license boundaries are program policy,
not platform configuration, and this record does not address them. In
particular: the commit gate checks *scope and structure*, never *content* —
it has never scanned for a credential and does not begin to here.
