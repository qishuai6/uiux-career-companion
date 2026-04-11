#!/usr/bin/env bash
set -euo pipefail

KB_ROOT="/Users/qishuai/Desktop/UIUX知识库_整合版"
QUERY="${1:-}"
SUBDIR="${2:-}"

if [[ -z "$QUERY" ]]; then
  echo "Usage: search_kb.sh <query> [subdir]" >&2
  exit 1
fi

if [[ -n "$SUBDIR" ]]; then
  SEARCH_ROOT="$KB_ROOT/$SUBDIR"
else
  SEARCH_ROOT="$KB_ROOT"
fi

if [[ ! -d "$SEARCH_ROOT" ]]; then
  echo "Search root not found: $SEARCH_ROOT" >&2
  exit 1
fi

rg -n --glob '*.md' --glob '!README.md' --glob '!废弃/**' --glob '!_assets/**' -S "$QUERY" "$SEARCH_ROOT"
