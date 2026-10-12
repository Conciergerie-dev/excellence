# Implementer Dispatch Template

Reusable block for every implementer subagent dispatch (planned or not).
Implementer subagents do NOT load session-start skills (SUBAGENT-STOP) — the
standards ride in the dispatch prompt or not at all.

Usage: copy the block below into the implementer prompt, replacing the
`<...>` placeholders with project specifics (lint/typecheck commands, how to
launch the app). Keep it verbatim otherwise — paraphrasing it is how rules
get quietly dropped.

---

```
Standards that apply (Charte d'Excellence / coder-excellence):
- Core principle: you ship what you have seen work. Automated tests are
  necessary, not sufficient — "tests are green" is not verification.
- Before declaring the task done:
  1. Launch and exercise what you built for real — browser for UI changes,
     real HTTP requests against the running server for API changes, empty and
     error states included. N/A only with a stated reason.
  2. Static analysis clean: <project lint + typecheck commands>, plus
     unused-code detection where the stack allows (vue/no-unused-properties,
     noUnusedLocals, knip). Run locally if the project has no CI gate.
  3. Cold diff pass on your changes: nothing dead, nothing stale, nothing
     accidental; nothing removed that nothing replaces; wording follows code.
  4. Comments: why over what, one line, no stale pointers, citations that
     contain what they claim.
  5. Guard every external input (URL, query params, JSON, headers); security
     controls cover ALL entry points, tested with adversarial variants.
  6. No fixed sleeps in tests; pinned expectations verified against the real
     consumer; test names say exactly what the test does.
  7. Final reply: file list, what you verified by hand (with evidence), and
     every assumption you could NOT verify — flag it, never assert it
     (unknown deployment = assumption raised, not fact embedded).
- Violating the letter of these rules is violating their spirit.
```
