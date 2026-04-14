# UI/UX Career Companion

Codex skill for UI/UX career, portfolio, interview, and design-method guidance. It can use a local UI/UX knowledge base when configured, but still works with built-in diagnostic frameworks when no knowledge base is available.

## What It Does

- Routes UI/UX questions to the most relevant local knowledge-base section when available.
- Helps with portfolio reviews, case-study framing, interview answers, job-search judgment, research methods, interaction design, visual design systems, metrics, and AI-for-design workflows.
- Uses `scripts/search_kb.sh` to search local Markdown notes before synthesizing an answer.
- Falls back to framework-based advice if no local knowledge base is configured.

## Files

- `SKILL.md`: the skill instructions used by Codex.
- `scripts/search_kb.sh`: helper script for searching the local UI/UX knowledge base.

## Optional Knowledge Base Setup

The recommended setup is to point `UIUX_KB_ROOT` to your Markdown knowledge base:

```bash
export UIUX_KB_ROOT="/absolute/path/to/UIUX知识库_整合版"
```

This skill also ships with a curated `knowledge-base` folder, so it works immediately after installation.

The search script checks paths in this order:

1. `UIUX_KB_ROOT`
2. Common local folders such as `$HOME/Desktop/UIUX知识库_整合版`
3. The bundled `knowledge-base` inside this skill folder

If no knowledge base is found, the skill should still answer the user and clearly say that it is using the built-in framework rather than retrieved local notes.

## Usage

Trigger it with UI/UX career and practice questions, especially around:

- 作品集
- 面试
- 跳槽
- UI/UX 方法论
- 交互设计
- 设计系统
- 体验度量
- 设计师如何使用 AI
