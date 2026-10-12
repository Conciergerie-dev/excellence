# Procedures universelles — Code Review Excellence

> Apply these to **all** code: internal (collectif) and external (client / third party).

## Table of Contents

1. [Procedure 5 — Revue de code](#procedure-5)
2. [Procedure 11 — Qualite de code pre-push](#procedure-11)
3. [Checklist de livraison en production](#checklist-livraison)
4. [Live verification (lancement réel)](#live-verification)

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
   - Coding-standard conformity for code **we** wrote (comments, guards, i18n, test discipline — `standard_code.md`); never judge the client's pre-existing code against our standard
   - Obvious security issues (SQL injection, XSS, exposed secrets, unsafe deserialization)
   - **Live verification**: the app launched, the flows touched by the PR exercised in real conditions — browser for UI changes, real HTTP requests against the running server for API/back-end changes — evidence attached to the PR. Tests and static analysis verify logic, not behavior in real conditions. See [Live verification](#live-verification).
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
2. **Linter and static analysis are clean** (eslint, prettier, black, type-check per project — plus unused-code detection where the stack allows: `vue/no-unused-properties`, `noUnusedLocals`, `knip`. On a client project without these gates, run them locally before pushing: dead code caught in review is dead code the machine saw first)
3. **No `console.log` left behind**, no TODO without linked issue
4. **PR has a clear title** and description if needed
5. **You have re-read your own code as a cold diff pass**, not a skim:
   - every function is meaningfully reachable — not just syntactically wired
   - every prop/emit earns its place — no leftovers from an earlier design iteration after a mid-PR refactor
   - no shape duplicated across files that should be one named type
   - nothing removed by the last refactor that nothing replaces; comments, names, test titles, and snapshots say what the code actually does now
6. **External API assumptions verified live**: when the code depends on an external API's parsing or semantics, verify with one real request before documenting the behavior in a comment or pinning it in a test.
7. **You have launched the app and exercised the flows this change touches** — browser for UI changes, real HTTP requests against the running server for API/back-end changes — evidence attached to the PR. N/A only when there is genuinely nothing to run (docs-only, config-only), and the reason is stated. See [Live verification](#live-verification).
8. **Code written by us conforms to the coding standard** (`standard_code.md` / `coder-excellence`): comment hygiene, project conformity, input guards, security-class coverage, i18n, test discipline, CI hygiene. On external projects the standard applies to code we write — never a rewrite of the client's existing code.

**Rule**: Do not ask a peer to review code you have not reviewed yourself.
A unit test that only pins your own expected output stays green while being wrong — pin behavior (round-trip: simulate the consumer's decode), not output strings.

### Deviation

On hotfix, you can push with an explicit TODO and an issue created immediately.

---

<a name="checklist-livraison"></a>
## Checklist de livraison en production

**Complete and sign before any production deployment.** Applies to internal and external projects.

### Pre-livraison (7 points)

| # | Check | Status |
|---|-------|--------|
| 1 | Automated tests pass (CI green) | Yes / No |
| 2 | Code review validated by at least 1 peer | Yes / No |
| 3 | Documentation is up to date (README, API, runbook) | Yes / No |
| 4 | Environment variables configured in prod | Yes / No |
| 5 | Database is compatible (migrations tested) | Yes / No |
| 6 | External dependencies are operational | Yes / No |
| 7 | App launched, critical flows exercised in real conditions (browser for UI, real HTTP requests against the running server for API/back-end) — any behavior change, evidence attached. N/A only when nothing to run, reason stated | Yes / No / N/A |

### Plan de secours / Rollback (5 points)

| # | Check | Status |
|---|-------|--------|
| 8 | Previous version is identified and tagged | Yes / No |
| 9 | Rollback procedure is documented and tested | Yes / No |
| 10 | Database can be restored if migration fails | Yes / No |
| 11 | Restore point (snapshot) created before delivery | Yes / No |
| 12 | Incident communication plan is known | Yes / No |

### Suivi post-livraison (4 points)

| # | Check | Status |
|---|-------|--------|
| 13 | Monitoring alerts are active and configured | Yes / No |
| 14 | Dashboards are accessible | Yes / No |
| 15 | Someone is available for 2h post-delivery | Yes / No |
| 16 | Alert channel is monitored | Yes / No |

### Declaration

"I certify this delivery was prepared according to the collective's standards. I fully assume responsibility. In case of incident, I commit to immediately trigger the rollback plan and convene a post-mortem within 24h."

**Responsible**: ________________ **Date**: ________________
**Reviewer**: ________________ **Date**: ________________

**Rule**: No production delivery is authorized without this complete and validated checklist.

---

<a name="live-verification"></a>
## Live verification (lancement réel)

**Rule**: Tests and static analysis verify logic, not behavior in real conditions. For any behavior change in an app that can be launched, the app is launched and the flows touched by the change are exercised for real — by the author before asking for review (Proc 11) and independently re-verified by the reviewer before approving (Proc 5). A failure in the live run is a finding with the same weight as a failing test.

### Scope

- **Applies to**: any PR on an app that can be launched — UI/front-end changes (pages, components, styles, user flows) and API/back-end changes (endpoints, jobs, CLI commands) alike.
- **N/A is the exception, not the default**: it applies only when there is genuinely nothing to run — docs-only, config-only, dependency bumps, pure refactors with no behavior change. The reason must be stated in the PR or review. A silent N/A counts as not done.

### What to exercise

- The app boots clean: no startup errors, no errors logged on the touched path.
- **At minimum the flows touched by the PR.** This is not a full regression walk — depth follows risk.

### Execution paths

Pick per context, not per preference:

1. **UI changes — Playwright via Bash (default)**: write and run a Playwright script against the locally running app. Zero extra infrastructure, and the script is a durable artifact — commit it as an e2e spec when the flow is a keeper.
2. **UI changes — Playwright MCP (interactive)**: when available in the environment, drive a persistent browser session (navigate, click, read console, screenshot). Best for exploratory review, where you discover what to check by looking at the page.
3. **API/back-end changes — real requests against the running server**: boot the server locally and exercise the changed endpoints with real HTTP requests (Playwright request context, curl, or a scripted client). Check status codes, payload shape, and error paths — not just the happy path. Unit tests with in-process or mocked transports do not count: the point is the real wiring (ports, serialization, headers, startup).

### Evidence

- Attach proof to the PR: screenshots, page snapshots, the e2e spec plus its run output, or the request/response transcript for API checks.
- Same standard as re-running the linter: a live check you did not run this round is not a verification. "Tests are green" is not evidence of a live run — the tests were green for every bug that only surfaced at runtime.
