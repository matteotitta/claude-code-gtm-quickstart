# marketing/ folder convention — for claude.ai users

In Claude Code, this Quickstart organizes work in a `marketing/` folder. claude.ai can't write files, so this is a **mental model** — the user mirrors this structure manually by saving outputs locally with the right names, and optionally re-uploads finished outputs into Project Knowledge so future chats can reference them.

## The structure

```
marketing/
├── icp/                ← /icp-research output
├── positioning/        ← /positioning output
├── messaging/          ← /messaging output
├── competitors/        ← /competitor-research output (one per competitor)
├── brand/              ← /brand-kit + /tov-guidelines
├── goals/              ← KPIs (the user authors manually)
├── docs/               ← briefs, transcripts, source material
└── content/
    ├── audit/          ← /content-audit output
    ├── strategy/       ← /content-strategy output
    └── execution/      ← /thought-leadership output
```

## Naming convention

All skill outputs use `MMYY-topic.md`:

- `MM` = two-digit month (01-12)
- `YY` = two-digit year (26 = 2026)
- `topic` = lowercase, kebab-case

Examples:
- `0526-icp-research.md`
- `0526-positioning.md`
- `0526-competitor-linear.md`
- `0526-thought-leadership-zero-outbound.md`

When iterating within the same month, append `-v2`, `-v3`: `0526-positioning-v2.md`. New month = new MMYY prefix.

## How to use this in claude.ai

Each time you finish a skill run:
1. Copy the output Claude produces.
2. Save it locally using the suggested filename (`MMYY-topic.md`).
3. (Optional) Drag the finished file into your claude.ai Project Knowledge so future chats can reference it.
4. (Optional) Mirror the folder structure on your local disk so you have a navigable archive.

## Why naming matters

When future you (or your team) opens this Project a year from now, the names tell the whole story: "what did we do in May?" → grep for `0526-`. "What was the May positioning?" → `0526-positioning.md`. "Has positioning evolved since then?" → look for later MMYY prefixes.

The folder structure + naming is the index. Use it.

## What the AI should do when producing output

When you finish a skill run, end with:
1. The deliverable
2. The suggested filename per this convention
3. Where in the folder structure it would live (`marketing/icp/`, etc.)
4. One-line note on what to run next

Example closing:

> **Filename:** `0526-icp-research.md`
> **Lives at:** `marketing/icp/`
> **Next:** Run positioning once you have at least 1-2 competitor briefs alongside this ICP.
