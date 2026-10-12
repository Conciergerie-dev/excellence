---
name: coder-excellence
description: Use when writing, editing, or finishing code, tests, or CI config — deciding whether a comment earns its place, hardening input validation or security controls, writing browser or e2e tests, after a mid-PR refactor, or about to commit or push implementation work
---

# Coder Excellence

Coding-phase standards — the companion to `planner-excellence` (planning) and
`code-review-excellence` (review). Core principle: **you ship what you have
seen work.** Automated tests are necessary, not sufficient — a test verifies
logic, not behavior in real conditions.

REQUIRED REFERENCE: the coding standard (`standard_code.md`, doctrine repo
root, shipped with the plugin mirror) — the normative rules with before/after
evidence. This skill is the trigger and the discipline layer; the standard is
the content. Read it when any rule below is in question.

## Implementer Dispatch Template

Implementer subagents do NOT load session-start skills (SUBAGENT-STOP) — the
standards ride in the dispatch prompt or not at all. When dispatching any
subagent to implement a task (planned or not), adapt and include the block
from [references/implementer-dispatch-template.md](references/implementer-dispatch-template.md)
in the prompt. Skipping it is not a shortcut — it is how verbose comments,
dead chains, and unverified claims end up back in review.

## The Eleven Rules, Condensed

1. **Manual verification first.** The app is launched and the touched flows are exercised for real — browser for UI, real HTTP for APIs — including empty states and error paths, before review is requested. (Standard §1)
2. **Comments earn their place.** Why over what, one line, no stale pointers, no duplicated truth, citations that actually contain what they claim. (§2)
3. **Follow the project.** Existing patterns and maintained libraries before bespoke code; reuse existing components and helpers. (§3)
4. **One owner per behavior; write before you destroy; fix at the layer that owns the responsibility.** (§4)
5. **Guard every external value; make read-modify-write atomic; honor feature flags at every entry point; fail loudly on unknown input; check what the system already derives before adding a mechanism.** (§5)
6. **Security controls close the whole vulnerability class on all entry points, tested with adversarial variants — against the real deployment, not a convention.** (§6)
7. **i18n: every user-visible string goes through gettext/`$t`, validation errors included; locale plumbing reaches every host.** (§7)
8. **Tests: no fixed sleeps, no green-lying pins, test names that say exactly what happens, owned fixtures, regenerated snapshots, parser round-trips.** (§8)
9. **UI follows the conventions of the area touched; empty and absent data are test cases.** (§9)
10. **CI: serialized deploys, pinned versions, native tool mechanisms, no orphaned deps, no accidental artifacts in the diff.** (§10)
11. **Post-refactor sweep: nothing removed that nothing replaces, wording follows code, diff contains only what it should.** (§11)

## Pre-Commit Checklist

- [ ] Launched and exercised the touched flows for real — evidence noted (§1)
- [ ] Every new comment passes §2; no comment narrates the code
- [ ] No bespoke path where the project already has one (§3)
- [ ] External inputs guarded; flags checked at every entry (§5)
- [ ] Security control covers every entry point, adversarial variants tested (§6)
- [ ] No sleeps in tests; pinned values verified against the real consumer (§8)
- [ ] Static analysis ran clean — linter, type check, unused-code detection where the stack allows (§11.5)
- [ ] Cold diff: nothing dead, nothing stale, nothing accidental (§11)

## Rationalizations — STOP

| Excuse | Reality |
|--------|---------|
| "Tests are green, so it works" | Tests verify logic, not behavior. « The filters don't work » passed all tests (cdata#1161). Launch it. |
| "The reviewer will catch it" | The reviewer catching it means the process failed upstream. Review is a net, not a test suite. |
| "I'll spot unused code in my cold read" | `vue/no-unused-properties` catches what eyes skip — run the machine first; the cold pass is for judgment calls the machine can't make. |
| "This comment explains my reasoning" | Reasoning belongs in the commit message. The code keeps only the non-obvious why, one line. |
| "It's just a small script/config" | CI config is code. Races and unpinned versions deploy broken prod too (explore#226). |
| "The sleep makes the test stable" | It makes the test slower and still racy — poll on an observable condition (§8). |
| "I'll clean up the refactor leftovers later" | Later is never. The sweep happens in the same commit as the refactor (§11). |
| "This hardening covers the main field" | A vulnerability class is closed on ALL entry points or it is not closed (§6). |

## Red Flags

- About to push without having launched the thing → §1
- Writing a comment longer than one line → §2 — move it to the commit/PR
- Implementing a special path without checking the existing equivalent → §3
- Choosing trust semantics (proxy, headers) from convention → §6.3 — check the deployment
- A test named for more than it asserts → §8.3
- A diff containing files you didn't intend → §11.3

Internal code: these standards + internal procedures both apply.
External code: the standard applies to code WE write; the client's existing
conventions and code are never rewritten to fit it (adapt, don't impose).
