# AI医疗视频号内容审核 Skill

A portable Agent Skill for auditing and reviewing WeChat Video Account (视频号) content for AI medical and healthcare brands, especially those without medical certification.

It covers the full content compliance workflow:

- medical-content determination (8 official categories)
- title and cover review
- script and narrative-structure review
- post-production audit (footage, subtitles, voiceover, cover)
- prohibited-word scanning (10 categories)
- structured audit reports with must-fix / should-fix grading
- pre-publish checklist execution
- violation post-mortem (map platform violation notices back to content triggers)

## Core Principle

The platform does not read disclaimers — it judges the content itself. Without medical certification, any content touching disease principles, diagnosis, treatment, relief, prevention, rehabilitation, diet therapy, or first aid is a violation trigger.

## Compatibility

This repository uses the standard Agent Skill shape:

- `SKILL.md` with YAML frontmatter
- supporting `references/` files

It can be installed in tools that support Agent Skills or `SKILL.md`-based skill folders. The `agents/openai.yaml` file is optional OpenAI/Codex interface metadata; other tools can ignore it.

For tools that do not have a native skill system, you can still use this repository as a prompt/reference pack by attaching or importing `SKILL.md` plus the relevant files in `references/`.

## Universal Install

Install to the cross-runtime skills directory:

```bash
git clone https://github.com/tiana9888/ai-medical-video-account-audit.git
mkdir -p ~/.agents/skills
cp -R ai-medical-video-account-audit ~/.agents/skills/
```

Or use the install script:

```bash
git clone https://github.com/tiana9888/ai-medical-video-account-audit.git
cd ai-medical-video-account-audit
./install.sh
```

## App-Specific Install Paths

Use one of these paths if your AI tool requires an app-specific skills directory:

| Tool | Install path |
| --- | --- |
| Cross-runtime default | `~/.agents/skills/ai-medical-video-account-audit` |
| Codex | `~/.codex/skills/ai-medical-video-account-audit` |
| Claude Code | `~/.claude/skills/ai-medical-video-account-audit` |
| Copilot CLI / compatible agents | `~/.agents/skills/ai-medical-video-account-audit` |
| Gemini CLI / compatible agents | `~/.agents/skills/ai-medical-video-account-audit` |

## Invoke

```text
Use $ai-medical-video-account-audit to audit this Video Account script before publishing.
```

Chinese prompt example:

```text
用 $ai-medical-video-account-audit 帮我审核这条视频号脚本、标题和封面，发布前逐项检查。
```

## Structure

```text
ai-medical-video-account-audit/
├── SKILL.md
├── agents/
│   └── openai.yaml
└── references/
    ├── checklist.md
    ├── post-production-guide.md
    ├── prohibited-words.md
    ├── script-writing-guide.md
    └── violation-rules.md
```

## Reference Map

| File | Content |
| --- | --- |
| `references/violation-rules.md` | 8 medical-content categories, 3 violation types, 17 prohibitions, penalty ladder, appeal mechanism, certification paths |
| `references/script-writing-guide.md` | 9 title word-category bans, narrative-structure compliance table, title rewrite examples, safe content directions |
| `references/post-production-guide.md` | Footage / subtitle / voiceover / cover audit rules, comment-section management |
| `references/prohibited-words.md` | Full quick-reference word list across 10 categories (absolute terms, medical claims, diseases, symptoms, drugs, diversion, etc.) |
| `references/checklist.md` | Pre-publish checklist: 10 must-check + 5 should-check + 5 supplementary items, with audit report template |

## Note

This skill is a content-compliance planning aid, not legal, regulatory, or medical advice. Regulated campaigns should still be reviewed by qualified brand, legal, medical, or compliance reviewers. Platform rules are updated dynamically — re-verify against the latest official guidelines each month.
