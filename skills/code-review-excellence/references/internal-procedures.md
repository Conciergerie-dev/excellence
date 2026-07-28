# Procedures internes — Code Review Excellence

> **Apply these only to code written by collectif members.**
>
> Do not enforce Conventional Commits, atomic commits, or GitHub Flow on client or third-party code. When reviewing external code, skip this file. Load [external-procedures.md](external-procedures.md) instead.

## Table of Contents

1. [Procedure 8 — Conventional Commits](#procedure-8)
2. [Procedure 9 — Commits atomiques](#procedure-9)
3. [Procedure 10 — Branches et flux Git](#procedure-10)

---

<a name="procedure-8"></a>
## Procedure 8 — Messages de commit (Conventional Commits)

**Format**: `[type](scope): description`

### Types

| Type | Use for |
|------|---------|
| `feat` | New feature |
| `fix` | Bug fix |
| `refactor` | Restructuring without behavior change |
| `docs` | Documentation only |
| `test` | Tests only |
| `chore` | Technical tasks, dependencies, tooling |

### Scope

Optional. The domain concerned: `auth`, `api`, `ui`, `db`, etc.

### Description

- Imperative present tense, no final period
- **In French or English** — match the project convention

### Examples

```
feat(auth): ajoute la connexion OAuth2
fix(api): corrige le timeout sur les gros payloads
refactor(ui): simplifie le composant DatePicker
docs(readme): met a jour les instructions d'installation
test(payment): ajoute les tests du cas limite montant negatif
chore(deps): met a jour lodash 4.17.20 -> 4.17.21
```

### Deviation

On urgent project (< 1 week), use simplified format: `[type]: description`. No scope.

---

<a name="procedure-9"></a>
## Procedure 9 — Commits atomiques

**One commit = one logical change.**

### Rules

- A commit contains a single logical modification
- Do not mix feature, fix, and refactor in the same commit
- Push 5 small clean commits rather than 1 big confusing commit
- Each commit must be revertable without breaking something else

### Test

If the commit message contains "et" or "+", it is probably two commits.

### Examples

**Bad** (one commit, 3 changes):
```
feat(auth): ajoute OAuth2 et corrige le bug de timeout et refactor la page login
```

**Good** (3 atomic commits):
```
feat(auth): ajoute la connexion OAuth2
fix(api): corrige le timeout sur les gros payloads
refactor(ui): simplifie le composant LoginPage
```

### Deviation

At end of urgent project, small polish commits can be grouped. But never commits of different nature (feat + fix).

---

<a name="procedure-10"></a>
## Procedure 10 — Branches et flux Git

**Default**: GitHub Flow

### GitHub Flow (default on all projects)

- `main` is protected
- Feature branch -> PR -> review -> merge
- No `develop` branch, no release branch

### GitFlow (projects with planned releases)

- `main`, `develop`, `feature/*`, `release/*`, `hotfix/*`
- For projects where releases are ceremonial (semver, changelog)

### GitLab Flow (projects with multiple environments)

- Branches per environment: `production`, `staging`
- Simpler than GitFlow, more structured than GitHub Flow

### Common rules (all flows)

- `main` is always deployable
- Every PR is reviewed by at least 1 peer
- Branches are deleted after merge
- Branch name reflects content: `feat/123-oauth`, `fix/timeout-api`, `docs/api-endpoints`

### Deviation

On solo project (< 1 week), commit directly to main is allowed. Inform the team.
