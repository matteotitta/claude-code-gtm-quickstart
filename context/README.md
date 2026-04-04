# Context — foundational research outputs

This folder holds outputs from the context engineering loop. These files are your persistent knowledge base — every skill you run draws from them.

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
