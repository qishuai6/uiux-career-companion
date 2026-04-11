# UI/UX Career Companion

Codex skill for UI/UX career, portfolio, interview, and design-method guidance grounded in a local UI/UX knowledge base.

## What It Does

- Routes UI/UX questions to the most relevant part of the local knowledge base.
- Helps with portfolio reviews, case-study framing, interview answers, job-search judgment, research methods, interaction design, visual design systems, metrics, and AI-for-design workflows.
- Uses `scripts/search_kb.sh` to search local Markdown notes before synthesizing an answer.

## Files

- `SKILL.md`: the skill instructions used by Codex.
- `scripts/search_kb.sh`: helper script for searching the local UI/UX knowledge base.

## Local Setup

The current skill expects the knowledge base at:

```bash
/Users/qishuai/Desktop/UIUX知识库_整合版
```

To reuse it on another machine, update `KB_ROOT` in `scripts/search_kb.sh` and the matching path in `SKILL.md`.

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
