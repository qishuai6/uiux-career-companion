# UI/UX Career Companion Built-in Knowledge Base

这是一份为 skill 分发准备的精选知识库，不是原始资料仓库。

使用原则：

- 优先作为判断框架和输出模板使用，不把它当百科。
- 回答用户时要结合用户给出的具体上下文，不要机械套模板。
- 如果用户配置了自己的 `UIUX_KB_ROOT`，优先使用用户自己的知识库。
- 如果没有外部知识库，就用这里的内置卡片作为默认知识来源。

## 文件索引

- `01_portfolio_case_study.md`：作品集、case study、项目介绍、设计验证。
- `02_interview_job_search.md`：面试表达、反问、跳槽判断、岗位匹配。
- `03_ux_research.md`：用户访谈、问卷、用户分层、洞察提炼。
- `04_interaction_ia.md`：需求判断、流程、信息架构、交互文档、页面类型。
- `05_visual_design_system.md`：UI 视觉、设计系统、Design Token、组件库。
- `06_strategy_metrics.md`：设计策略、问题定义、GSM、HEART、体验度量。
- `07_growth_communication.md`：述职、复盘、沟通、成长。
- `08_ai_for_designers.md`：AIGC 展示、AI coding、设计师效率。

## 路由提示

作品集问题优先搜：

```bash
scripts/search_kb.sh "作品集|case study|项目背景|设计验证|面试"
```

研究方法优先搜：

```bash
scripts/search_kb.sh "用户访谈|问卷|用户分层|洞察"
```

交互和策略优先搜：

```bash
scripts/search_kb.sh "需求|流程|信息架构|交互文档|GSM|HEART"
```

设计系统和 AI 优先搜：

```bash
scripts/search_kb.sh "设计系统|Design Token|组件库|AI coding|AIGC"
```
