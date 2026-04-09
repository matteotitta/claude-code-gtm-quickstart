# Context — foundational research outputs

This folder holds outputs from the context engineering loop. These files are your persistent knowledge base — every skill you run draws from them.

## Why this folder matters

Every skill in the system compresses the layer below it. 15 sales calls compress into 1 ICP brief. 3 competitor profiles compress into 1 positioning doc. 1 positioning framework generates messaging for every persona. The `context/` folder is where that raw material lives — the foundation everything else distills from.

Think of `context/` as your hard drive and `marketing/` as your RAM. Context is foundational research you built once and reference when needed. Marketing is the operational outputs you work from daily. Your positioning doc doesn't re-read 50 competitor pages — it synthesizes the patterns. Keep the layers separate so the system stays navigable.

This is also why context engineering beats prompt engineering. The best prompt in the world can't compress 15 sales calls into patterns. But if you've already compressed them into an ICP brief sitting here, even a simple prompt gets great output.

## What goes here

| Skill | Output | Example filename |
|-------|--------|-----------------|
| /company-context | Your company's market position, traction, team, funding | `0426-company-context.md` |
| /competitor-research | Deep competitor profiles (one per competitor) | `0426-competitor-acme.md` |
| /icp-research | Ideal customer profiles, personas, segments | `0426-icp-research.md` |

## File naming convention

All files use the `MMYY-topic.md` format:
- `MM` = two-digit month (01-12)
- `YY` = two-digit year (26 = 2026)
- `topic` = lowercase, hyphenated description

## How context flows

```
context/                    marketing/
├── company-context    ──→  product-marketing/ (positioning, messaging)
├── competitor-*       ──→  product-marketing/ (positioning, messaging)
├── icp-research       ──→  demand-gen/ (targeting, lifecycle)
└── (all of the above) ──→  content/ (strategy, social, newsletter)
```

Context is foundational. Marketing is execution. Keep them separate.
