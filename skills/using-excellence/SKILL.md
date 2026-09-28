---
name: using-excellence
description: Use when starting any conversation - establishes the Charte d'Excellence doctrine and routes to the right skill or procedure before ANY response
---

<SUBAGENT-STOP>
If you were dispatched as a subagent to execute a specific task, ignore this skill.
</SUBAGENT-STOP>

<EXTREMELY-IMPORTANT>
The Charte d'Excellence governs ALL mission work in this collectif: **on assume, on s'ameliore, on livre.**

If a skill or procedure below applies to the task, you MUST apply it. Generic good practice is not a substitute for the doctrine.
</EXTREMELY-IMPORTANT>

## The Rule

**Before any response or action on mission work** — including clarifying questions and exploration — check the routing table. If a row matches, invoke that skill or read that doc section first. If it turns out wrong for the situation, you don't have to follow it.

Then announce "Using [skill/doc] to [purpose]" and follow it.

## Routing

| Situation | Apply |
|-----------|-------|
| Code review, PR, commits, pre-push, deploy readiness | `code-review-excellence` for the standards — combined with `superpowers:requesting-code-review` for the dispatch process when a reviewer subagent is used |
| Finishing implementation, preparing a PR, or about to hand work to a human reviewer — including mid-plan or end of plan execution (executing-plans, subagent-driven-development, dispatching-parallel-agents) | `code-review-excellence` (author self-check, Procedere 11) — combined with `superpowers:requesting-code-review` for the dispatch before the human review |
| Any mission judgment — incident, delay, client communication, legacy project, overload, disagreement | `excellence-principles` skill |
| Full doctrine, rituals (debrief, post-mortem), the 17 procedures | `charte_excellence_collectif_dev.md` |
| Operational templates (CR, checklists, post-mortem, ADR) | `modeles_operationnels.md` |

## Red Flags

These thoughts mean STOP — you're rationalizing:

| Thought | Reality |
|---------|---------|
| "Generic good practice covers this" | The charte is our baseline. Check the routing table first. |
| "This is just a small task" | Small tasks still carry the doctrine: no blame, no silence, no unsupported promises. |
| "The client does it differently" | Adapt our internal conventions; never drop what protects the project. |
| "No time for the procedure" | Procedures are baselines you deviate from intelligently — not skip silently. |
| "It's not my fault, it's the legacy/client/framework" | Responsabilite Integrale: what did *you* let through? |
| "I'm implementing, not reviewing — the standards don't apply yet" | Finishing work IS the trigger. The standards apply before the handoff, not after the reviewer finds the issues. |
| "Task's done, no need to look back" | "On s'améliore": the closing retro runs before mission work is declared done |

## Closing Retrospective — "On s'améliore"

Before declaring mission work done, answer 3 questions — one line each, in the final message or the PR:

1. **What did I miss?** Responsabilité Intégrale, even when everything went fine.
2. **What was harder or riskier than it should have been?**
3. **What changes next time — and where is it written?** A lesson not documented is a lesson lost.

Route the lesson by type:

| Lesson | Route |
|--------|-------|
| Project defect or risk (bug, missing test, flaky CI) | Issue in the project tracker, or a note in the PR |
| Project knowledge the agent lacked (convention, gotcha, command) | The project's `AGENTS.md` — create it if absent. Durable knowledge only, never session noise |
| Workflow or doctrine gap (a skill, procedure, or prompt that failed us) | Surface it to the collectif: issue or PR on the doctrine-excellence repo. The doctrine improves like everything else |

**Scale to mission size**: trivial task, nothing went wrong → the 3 answers inline, no artifact. Any lesson worth keeping → the routed artifact exists before closing. No artifact, no close.

## User Instructions

Direct user instructions take precedence over this skill. Only skip doctrine workflows when your human partner has explicitly told you to.
