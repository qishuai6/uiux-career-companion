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

See the full Chinese guide: [USAGE.zh-CN.md](./USAGE.zh-CN.md).

### Quick Start

After installing the skill, ask Codex a UI/UX career or design-practice question directly:

```text
用 uiux-career-companion 帮我看一下这个作品集项目
```

```text
用 UI/UX Career Companion 帮我整理这个项目的 case study 结构
```

```text
面试官问：你如何证明这个设计有效？帮我整理回答。
```

The skill is designed for questions around:

- 作品集
- 面试
- 跳槽
- UI/UX 方法论
- 交互设计
- 设计系统
- 体验度量
- 设计师如何使用 AI

### Recommended Prompts

Portfolio diagnosis:

```text
帮我看这个作品集项目的问题：
项目背景是……
我负责……
现在页面结构是……
我担心的问题是……
```

Project intro framework:

```text
我输入作品集项目大概内容，你帮我作项目介绍的框架：
项目类型：
业务背景：
目标用户：
核心问题：
我的角色：
关键动作：
结果：
```

Interview preparation:

```text
我在准备 UI/UX 面试。面试官可能会问：
你为什么这么设计？
你怎么验证方案有效？
请帮我整理回答策略。
```

Job-search judgment:

```text
我现在想投这个 UI/UX 岗位，JD 是……
我的背景是……
帮我判断匹配度和准备重点。
```

### Knowledge Base Behavior

The skill ships with a curated built-in `knowledge-base`, so it works immediately after installation.

For a stronger personalized experience, set your own Markdown knowledge base:

```bash
export UIUX_KB_ROOT="/absolute/path/to/UIUX知识库_整合版"
```

Search priority:

1. `UIUX_KB_ROOT`
2. Common local folders such as `$HOME/Desktop/UIUX知识库_整合版`
3. The bundled `knowledge-base`

Manual test:

```bash
scripts/search_kb.sh "作品集 面试"
```

Restrict search to a folder:

```bash
scripts/search_kb.sh "作品集 面试" "01_求职面试与作品集"
```

### Output Style

The skill should answer like an experienced UI/UX career advisor, not a generic design encyclopedia.

It should prioritize:

- diagnosis
- priorities
- rewrite direction
- interview answer frameworks
- portfolio structure
- decision advice

It should avoid weak advice like:

- “可以参考这些方法”
- “建议多看看资料”
- “UI/UX 很重要”
