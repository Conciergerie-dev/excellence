# Procedures universelles — Code Review Excellence

> Apply these to **all** code: internal (collectif) and external (client / third party).

## Table of Contents

1. [Procedure 5 — Revue de code](#procedure-5)
2. [Procedure 11 — Qualite de code pre-push](#procedure-11)
3. [Checklist de livraison en production](#checklist-livraison)

---

<a name="procedure-5"></a>
## Procedure 5 — Revue de code

**Rule**: Every PR must be reviewed by at least 1 peer before merge.

### Steps

1. **Read the PR as a whole** before commenting line by line. Understand the intent before judging the implementation.
2. **Verify**:
   - Logic correctness
   - Tests coverage (new code has tests, existing tests still pass)
   - Documentation (README, API docs, inline comments if needed)
   - Style consistency with **project conventions** (not ours — theirs if external)
   - Obvious security issues (SQL injection, XSS, exposed secrets, unsafe deserialization)
3. **Comment with kindness**: on the code, not the person. Suggest, don't command. Ask questions before asserting.
4. **Approve if good**. Request changes if necessary. **Do not let it sit.** A PR unreviewed for 24h is a blocker.
5. **Merge is done by the author** after approval, not the reviewer.

### Deviation

On critical hotfix, the lead can merge their own PR after quick review. But they inform the team immediately in the shared channel.

### 7 Equilibres in review

| Equilibre | In review |
|---|---|
| Confiant / Arrogant | Defend your point with arguments, drop it when wrong |
| Prudent / Paralyse | Evaluate risks, but don't block for a week over a style choice |
| Disponible / Envahissant | Follow blockages without micromanaging each line |
| Humble / Passif | Accept your PR being rejected, but don't accept bad decisions silently |

---

<a name="procedure-11"></a>
## Procedure 11 — Qualite de code pre-push

**Before every push, verify**:

1. **Code compiles** / tests pass locally
2. **Linter is clean** (eslint, prettier, black, etc. per project)
3. **No `console.log` left behind**, no TODO without linked issue
4. **PR has a clear title** and description if needed
5. **You have re-read your own code as a cold diff pass**, not a skim:
   - every function is meaningfully reachable — not just syntactically wired
   - every prop/emit earns its place — no leftovers from an earlier design iteration after a mid-PR refactor
   - no shape duplicated across files that should be one named type
6. **External API assumptions verified live**: when the code depends on an external API's parsing or semantics, verify with one real request before documenting the behavior in a comment or pinning it in a test.

**Rule**: Do not ask a peer to review code you have not reviewed yourself.
A unit test that only pins your own expected output stays green while being wrong — pin behavior (round-trip: simulate the consumer's decode), not output strings.

### Deviation

On hotfix, you can push with an explicit TODO and an issue created immediately.

---

<a name="checklist-livraison"></a>
## Checklist de livraison en production

**Complete and sign before any production deployment.** Applies to internal and external projects.

### Pre-livraison (6 points)

| # | Check | Status |
|---|-------|--------|
| 1 | Automated tests pass (CI green) | Yes / No |
| 2 | Code review validated by at least 1 peer | Yes / No |
| 3 | Documentation is up to date (README, API, runbook) | Yes / No |
| 4 | Environment variables configured in prod | Yes / No |
| 5 | Database is compatible (migrations tested) | Yes / No |
| 6 | External dependencies are operational | Yes / No |

### Plan de secours / Rollback (5 points)

| # | Check | Status |
|---|-------|--------|
| 7 | Previous version is identified and tagged | Yes / No |
| 8 | Rollback procedure is documented and tested | Yes / No |
| 9 | Database can be restored if migration fails | Yes / No |
| 10 | Restore point (snapshot) created before delivery | Yes / No |
| 11 | Incident communication plan is known | Yes / No |

### Suivi post-livraison (4 points)

| # | Check | Status |
|---|-------|--------|
| 12 | Monitoring alerts are active and configured | Yes / No |
| 13 | Dashboards are accessible | Yes / No |
| 14 | Someone is available for 2h post-delivery | Yes / No |
| 15 | Alert channel is monitored | Yes / No |

### Declaration

"I certify this delivery was prepared according to the collective's standards. I fully assume responsibility. In case of incident, I commit to immediately trigger the rollback plan and convene a post-mortem within 24h."

**Responsible**: ________________ **Date**: ________________
**Reviewer**: ________________ **Date**: ________________

**Rule**: No production delivery is authorized without this complete and validated checklist.
