# PLATFORM — the hosting platform is a parameter, not an assumption

**The enforcement layer is platform-neutral, and that is checkable rather than
claimed.** The five scripts under `scripts/` call `git`, `grep`, `sed`, `awk`,
`sort`, `wc`, `sha256sum`, `diff`, `patch` and `mktemp`, and nothing else. They
make **no network calls** — no `curl`, no `wget`, no URL, no telemetry, no
package fetch. Verify it yourself before you believe it, which is this
organization's standing instruction about every claim of this kind:

```
grep -rnE '(^|[^a-zA-Z_])(curl|wget|gh|glab|nc|ssh|scp)[[:space:]]' scripts/
# expect: no matches — no network command is invoked anywhere
```

*The check greps for **invocations**, not for URL-shaped text, and the
distinction is not pedantry — it is the difference between a check that is
true and one that merely looks strict. A bare `https?://` grep returns six
hits, every one a **test fixture**: `scripts/test_protocol.sh` builds
throwaway repositories with `git remote add origin https://…/example/…` to
construct the role-line wedge-check scenarios. Those are string arguments to
a local `git` command, not traffic. The first version of this file printed
the bare grep and asserted "no matches"; running it disproved the assertion
on the file's own first reader. Print a check you have run.*

What the platform supplies is exactly two things, and both are named in the
constitution as an out-of-repository dependency:

1. **A place to run the re-check** on every push, over the whole history.
2. **Protection of already-pushed history** — no force push, no branch
   deletion — because the append-only property that everything else rests on
   is a *convention* until the server refuses a rewrite.

Everything else — the agents, the journals, the gate, the scope table, the
self-test — is files and POSIX tools.

---

## Supported platforms

Both CI definitions ship, and both run the **same scripts with the same
arguments**. Keep the one your host uses; deleting the other is a legal act
and changes nothing about enforcement.

| | GitHub | GitLab |
|---|---|---|
| CI definition | `.github/workflows/journal-check.yml` | `.gitlab-ci.yml` |
| Full-history clone | `fetch-depth: 0` | `GIT_DEPTH: 0` |
| Range variables | `github.event.before` / `github.sha` | `CI_COMMIT_BEFORE_SHA` / `CI_COMMIT_SHA` |
| History protection | Rulesets (preferred) or classic branch protection | Protected branches |
| Required check | Required status check on the protected branch | *Pipelines must succeed* on merge requests |
| Defect channel | Issues | Issues |
| Published site (optional) | GitHub Pages | GitLab Pages |

---

## GitLab — the settings that matter, and what each buys

Run these once, at G0 item A7, on **`main` and the working branch** if you
chose PR-flow mode, or on `main` alone in single-branch mode (G0 item A8).

**Settings → Repository → Protected branches**, per protected branch:

| Setting | Value | What it buys |
|---|---|---|
| **Allowed to force push** | **OFF** | The no-rewrite guarantee. Without it, `R9` is convention and the whole append-only chain is advisory. |
| **Allowed to push and merge** | *No one* (PR-flow) or the smallest set that can work (single-branch) | Keeps a rewrite from arriving by a route the check never sees. |
| **Allowed to merge** | Maintainers, or a named set | Who may land a milestone. |
| **Code owner approval** | optional | Not relied on by anything here. |

**Settings → General → Merge requests**, if you chose PR-flow mode:

- **Pipelines must succeed** — **ON**. This is GitLab's equivalent of a
  required status check, and it is what makes the re-check *blocking* rather
  than informational.
- **All threads must be resolved** — optional; the gate discipline is carried
  by committed checklists here, not by MR threads.

**Branch deletion.** GitLab protects the default branch from deletion once it
is protected. Confirm it rather than assume it — the live-fire step below is
how.

### The two GitLab facts worth knowing before you start

**There is no "empty bypass list" concept.** On GitHub, a ruleset with an
empty bypass list is admin-proof by default, and this organization's own
founding relied on that. GitLab's model is different: **project owners and
instance administrators can change a protected-branch setting**, and changing
a setting is not something a check can refuse. So the honest posture on GitLab
is: *history is protected against force push by the server, and the protection
itself is protected only by who holds Owner on the project.* State that in
your own board rather than inheriting GitHub's stronger sentence. Narrow the
Owner set; that is the control.

**The required-check ordering problem does not arise.** On GitHub, a required
status check cannot be selected until the platform has seen it run once, which
is why the adoption order puts continuous integration before the protection
step. GitLab's *Pipelines must succeed* is a boolean and needs no prior run.
The ordering constraint is a GitHub property, not a law of this design — but
running CI green once before you rely on it is still the right sequence, for
the reason that has nothing to do with pickers: an unverified protective
setting is a belief.

### Live fire — the step that turns a setting into evidence

An unverified protective setting is a belief. After configuring, **attack it**
and cite the bounce by journal entry on the G0 row:

```
# from a clone, on a protected branch, with something already pushed:
git commit --allow-empty -m "live-fire: this push must be refused"
git push --force origin main          # expect: rejected by the remote
git push origin --delete <a protected branch>   # expect: rejected
```

Record the exact refusal text. *The strongest available evidence for a control
is an attempt that bounced* — an artifact you can only have if somebody
deliberately tried.

---

## Self-hosted runners, and why they matter more here than usual

If your work is proprietary, the runner is where a checkout of it lands. Use
**project- or group-scoped self-hosted runners** rather than shared ones, and
say so on the board. Two properties this design depends on:

- The re-check must run on **every push**, so the runner has to be reliably
  available. A queue that silently drops pipelines converts the adjudicator
  into nothing.
- The re-check needs **the whole history** (`GIT_DEPTH: 0`). A runner
  configured for shallow clones weakens the check without failing it, which is
  the worst failure mode available.

The shipped `.gitlab-ci.yml` uses `debian:stable-slim` and installs `git`,
`coreutils`, `diffutils` and `patch`. On an air-gapped instance, point `image:`
at your internal registry mirror and drop the `apt-get` line if your base image
already carries those tools.

---

## If there is no reachable platform at all

Some environments have neither. The design still runs, and the honest posture
drops accordingly — this is stated so nobody substitutes a stand-in and then
cites it as the real thing:

- A **bare remote with a `pre-receive` hook** refusing non-fast-forward pushes
  and deletions reproduces the *bounce*, and is worth building for the
  live-fire evidence. Two material differences must be declared on the board:
  there is no bypass-list analogue, and anyone with filesystem access can
  remove the hook. **A guarantee whose enforcement anyone in the room can
  delete is a convention wearing a refusal's clothes.**
- A re-check **run by hand after each push** is not continuous integration: it
  converts the adjudicator into the committing seat's self-report, which is
  precisely the failure the re-check exists to prevent. Say so on the board and
  in every claim that rests on it.

---

## What to record on the board at founding

Whichever platform you are on, the board's founding block carries the answer,
because a later reader cannot tell which world they are in from the scripts:

- the platform and instance (`gitlab.example.internal`, `github.com`, none);
- which branches are protected, and with which settings;
- the live-fire refusal, cited by journal entry;
- whether the runner is self-hosted and scoped;
- for GitLab: **who holds Owner**, since that is what the protection's own
  protection reduces to.
