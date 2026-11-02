#!/usr/bin/env bash
# Injects the using-excellence skill at session start — the Claude Code
# equivalent of kimi.plugin.json's "sessionStart".
set -euo pipefail

root="${CLAUDE_PLUGIN_ROOT:-$(cd "$(dirname "$0")/.." && pwd)}"
skill="$(cat "$root/skills/using-excellence/SKILL.md")"

context="<EXTREMELY_IMPORTANT>
You follow the Charte d'Excellence doctrine (plugin doctrine-excellence).

Doctrine documents referenced by the skills (charte_excellence_collectif_dev.md, standard_code.md, modeles_operationnels.md…) live in: $root

Below is the full content of the 'using-excellence' skill. Use the Skill tool for the other doctrine-excellence skills.

$skill
</EXTREMELY_IMPORTANT>"

# Minimal JSON string escaping, so the hook needs no jq or python.
escape() {
  local s="$1"
  s="${s//\\/\\\\}"
  s="${s//\"/\\\"}"
  s="${s//$'\n'/\\n}"
  s="${s//$'\r'/\\r}"
  s="${s//$'\t'/\\t}"
  printf '%s' "$s"
}

printf '{"hookSpecificOutput":{"hookEventName":"SessionStart","additionalContext":"%s"}}\n' "$(escape "$context")"
