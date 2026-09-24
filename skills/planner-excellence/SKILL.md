---
name: planner-excellence
description: Use when writing or reviewing implementation plans before dispatching implementers — prescribing framework or library behavior in plan tasks (attributes, callbacks, options, version-specific APIs), feeling doubt about a plan's correctness or a cross-task interaction, facing a spec too large for one coherent plan, or planning UI features whose behavior automated tests cannot fully capture (keyboard shortcuts, uploads, browser-only interactions).
---

# Planner Excellence

Planning-phase discipline for the conception step — the companion to `code-review-excellence` (review phase). Core principle: **a plan prescribes reality, not assumptions. Verify before you mandate, doubt before you dispatch, split before you drown, and never let a plan end where human eyes are still needed.**

REQUIRED BACKGROUND: this layers on top of `superpowers:writing-plans` (the process); it adds the judgment calls that process leaves open.

## The Four Rules

### 1. Verify before you mandate

Any plan text that asserts a framework/library behavior — attribute semantics, callback contracts, option effects, version-specific APIs — is verified against the official docs or the vendored dependency source **before** being written as prescribed code.

- Unverifiable in the moment? Write it as an explicit adapt-point: "verify X against `deps/<lib>/…`; fallback Y" — never as silent certainty.
- The 30-second check: grep the vendored dep for the attribute/option. Absent or ambiguous → docs, then decide.
- Real incident: a plan prescribed `phx-key="ctrl+?"` for a modifier shortcut. LiveView's `phx-key` compares only `e.key` — the combo could never fire. What followed: an improvised JS workaround, an Important finding, a fix round, and the client pasting the framework docs. The official mechanism (`metadata.keydown`) existed the whole time. One grep at plan time would have replaced all of it.

### 2. Doubt → dispatch a plan reviewer

Uncertainty about a plan's correctness — a cross-task interaction you can't fully trace, a security boundary, a workaround an explorer or implementer just reported — is resolved by dispatching a reviewer/explorer subagent against the actual code. It is NOT resolved by proceeding and hoping the task reviews catch it: an implementer burning two hours on a broken task costs more than any review.

### 3. One plan, one breath

A spec spanning multiple independent subsystems, or a task list past ~10 tasks, becomes ordered sub-plans — each independently testable, each with its own spec → plan → implementation cycle. When hesitating between "one big plan" and "split": split. A plan nobody can hold in their head cannot be reviewed, and an unreviewable plan will not be followed.

### 4. Plans end where humans begin

For anything a user does with their hands — UI flows, keyboard shortcuts, file uploads, drag-and-drop, anything LiveViewTest/protractor-style tests cannot express — the final task of the plan is manual verification instructions: a Playwright scenario or numbered steps (URL → actions → expected outcome). Automated tests prove the pipeline; they do not prove the experience. "Tests green + browser check recommended in a review note" is a failure of planning, not of testing.

## Red Flags — STOP

- "I'm confident this attribute/API works like X" (confidence is not verification)
- "The task review will catch it if the plan is wrong"
- "It's one big plan, but the tasks are simple"
- "The automated tests cover it" (for behavior only a browser shows)
- "I'll document the workaround, it's fine" (the framework has an official mechanism — find it first)

| Excuse | Reality |
|--------|---------|
| "Everyone knows this API works this way" | Transferring assumptions across APIs is exactly how `phx-key` shipped broken. Grep the dep. |
| "Dispatching a reviewer slows the plan down" | A broken plan dispatches every implementer into a wall. Review is cheapest before the first task. |
| "Splitting adds ceremony" | Ten tasks nobody can hold is the ceremony. Two five-task plans are clarity. |
| "QA will do the manual pass" | QA tests what the plan says. If the plan says nothing, nothing is tested. |

## Quick Reference

| Situation | Action |
|---|---|
| Plan task prescribes framework behavior | Grep vendored dep / read docs first; else explicit adapt-point |
| Cross-task interaction unclear, or workaround reported | Dispatch explorer/reviewer subagent before implementers |
| Spec = several subsystems or >10 tasks | Ordered sub-plans, each independently testable |
| UI/keyboard/upload/browser-only behavior | Final task = Playwright scenario or numbered manual steps |
