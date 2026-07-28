---
name: code-review-excellence
description: Code review and quality assurance based on the Charte d'Excellence methodology. Use when reviewing code, pull requests, commits, or assessing code quality before production deployment. Covers code review kindness, pre-push quality checks, production delivery checklist, and optionally Conventional Commits / atomic commits / Git workflow for internal code. Triggers on any code review request, PR review, commit message review, git workflow advice, or production readiness check.
---

# Code Review Excellence

Code review and quality assurance grounded in the Charte d'Excellence — a field-tested methodology for developers who intervene on complex, legacy, or failing projects.

## Core Principles

**Responsabilite Integrale** — When code has a bug, ask "What did I miss?" before blaming the author, framework, or requirements.

**Maitriser son ego** — Defend ideas with arguments, not ego. Admit when wrong. Listen when a junior corrects you.

**Unis pour avancer** — Cover your teammate. A code review is support, not surveillance.

**Le cadre libere** — Clear procedures free the mind for what matters. No reinventing the wheel each sprint.

**Agir plutot qu'attendre** — Review within hours, not days. A PR that sits unreviewed blocks the whole team.

## Whose code is it?

Before reviewing, determine the context. The rules differ:

| Context | Code conventions | What to enforce |
|---|---|---|
| **Internal** — collectif members | Ours | Load both files: external + internal procedures |
| **External** — client or third party | Theirs | Load external procedures only. Skip internal. |

**Rule for external code**: We do not impose our commit format, git flow, or atomic commit rules on a client who has their own conventions. We adapt to theirs. We only enforce what protects the project: review quality, pre-push checks, and production readiness.

If the client has no conventions and asks for ours, offer them as recommendations — not requirements.

## Code Review Workflow

### Step 1 — Pre-review self-check (Procedere 11)

Before requesting a review, the author verifies:
1. Code compiles / tests pass locally
2. Linter is clean (eslint, prettier, black, etc.)
3. No `console.log` left behind, no TODO without linked issue
4. PR title is clear, description added if needed
5. Author has re-read their own code

> **Rule**: Do not ask a peer to review code you have not reviewed yourself.

### Step 2 — Review the PR (Procedere 5)

1. **Read the PR as a whole** before commenting line by line
2. **Verify**: logic, tests, documentation, style, obvious security issues
3. **Comment with kindness**: on the code, not the person
4. **Approve if good**. Request changes if needed. **Do not let it sit.**
5. **Merge is done by the author** after approval, not the reviewer

**Deviation allowed**: on critical hotfix, lead can merge their own PR after quick review. Inform the team immediately.

### Step 3 — Validate commit history (INTERNAL only)

**Internal code**: Check Conventional Commits format (Procedere 8) and atomicity (Procedere 9). See [references/internal-procedures.md](references/internal-procedures.md).

**External code**: Skip this step. The client's conventions apply. Note any major red flags as a suggestion, not a blocker.

### Step 4 — Validate git workflow (INTERNAL only)

**Internal code**: Verify GitHub Flow is followed (Procedere 10). See [references/internal-procedures.md](references/internal-procedures.md).

**External code**: Skip this step. The client uses their own branching strategy. Respect it.

### Step 5 — Production readiness (Checklist de Livraison)

**Always apply** — internal or external. Before any production deployment, verify the 15-point checklist. See [references/external-procedures.md](references/external-procedures.md) for the full checklist.

## Review Comment Style

| Situation | Phrasing |
|---|---|
| Bug or error | "This could fail when X. Suggest Y." |
| Style issue | "Our convention is X here. Could you align?" |
| Missing test | "What happens when X? A test would document the edge case." |
| Architecture concern | "Have you considered X? I might be wrong — tell me if I missed the context." |
| LGTM | "Clean. Approved." |

**Never**: "This is wrong." | "You should have..." | "Why did you..."

## Quick Decision Tree

```
PR received
  → INTERNAL or EXTERNAL code?
    → EXTERNAL: Load external-procedures.md only. Enforce Proc. 5 + 11 + Checklist.
    → INTERNAL: Load both files. Full workflow below.
  → Self-reviewed by author? (Proc. 11)
    → Read PR as a whole (Proc. 5)
      → Logic OK? Tests? Doc? Style? Security?
        → Commits atomic? Format correct? (Proc. 8-9) [INTERNAL only]
          → Branch follows GitHub Flow? (Proc. 10) [INTERNAL only]
            → APPROVE or REQUEST CHANGES (within 4h)
              → Production deploy? Run Checklist (15 points)
```

## Reviewer Subagents (with superpowers)

When the review is dispatched to a subagent, keep the **superpowers:requesting-code-review** process (SHAs, reviewer template, Critical/Important/Minor verdict) and add these standards to the reviewer prompt — the reviewer agent must apply them too:

```
Review standards (Charte d'Excellence):
- Context: [INTERNAL or EXTERNAL] code.
  - INTERNAL: also check Conventional Commits format, atomic commits, GitHub Flow.
  - EXTERNAL: the client's conventions apply. Flag convention issues as
    suggestions only, never blockers.
- Comment on the code, never the person.
  Never "This is wrong" / "You should have" / "Why did you".
- Production-bound? Verify the 15-point delivery checklist.
```

**Merge rule still applies**: the author merges after approval, not the reviewer.

## References

- **Universal procedures** (all code): See [references/external-procedures.md](references/external-procedures.md) for Procedere 5 (code review), Procedere 11 (pre-push quality), and the full 15-point Production Delivery Checklist.
- **Internal procedures** (collectif only): See [references/internal-procedures.md](references/internal-procedures.md) for Procedere 8 (Conventional Commits), Procedere 9 (atomic commits), and Procedere 10 (Git workflow). Skip when reviewing external code.
