#!/usr/bin/env bash
set -euo pipefail

QUERY="${1:-}"
SUBDIR="${2:-}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

if [[ -z "$QUERY" ]]; then
  echo "Usage: search_kb.sh <query> [subdir]" >&2
  exit 1
fi

resolve_kb_root() {
  local candidates=()

  if [[ -n "${UIUX_KB_ROOT:-}" ]]; then
    candidates+=("$UIUX_KB_ROOT")
  fi

  candidates+=(
    "$HOME/Desktop/UIUX知识库_整合版"
    "$HOME/Desktop/notion 笔记/UIUX知识库_整合版"
    "$HOME/Documents/UIUX知识库_整合版"
    "$HOME/UIUX知识库_整合版"
    "$SKILL_DIR/knowledge-base"
  )

  local candidate
  for candidate in "${candidates[@]}"; do
    if [[ -d "$candidate" ]]; then
      printf '%s\n' "$candidate"
      return 0
    fi
  done

  return 1
}

if ! KB_ROOT="$(resolve_kb_root)"; then
  cat >&2 <<'MSG'
No UI/UX knowledge base found.
Set UIUX_KB_ROOT to your Markdown knowledge base path, or add a knowledge-base folder beside SKILL.md.
MSG
  exit 2
fi

if [[ -n "$SUBDIR" ]]; then
  SEARCH_ROOT="$KB_ROOT/$SUBDIR"
else
  SEARCH_ROOT="$KB_ROOT"
fi

if [[ ! -d "$SEARCH_ROOT" ]]; then
  echo "Search root not found: $SEARCH_ROOT" >&2
  exit 2
fi

rg -n --glob '*.md' --glob '!README.md' --glob '!废弃/**' --glob '!_assets/**' -S "$QUERY" "$SEARCH_ROOT"
