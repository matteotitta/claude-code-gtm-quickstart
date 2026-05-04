# Anti-examples + gotchas

What to avoid, and the recurring failure modes that have been caught in production.

## Anti-examples

| Bad pattern | Why it's bad | Better approach |
|-------------|--------------|-----------------|
| "Revenue: ~$10M" (no source) | Invented estimate | Cite source or mark "Not available" |
| "Team: 50 people" (guess) | No source for claim | Use LinkedIn count with "Medium confidence" |
| Skipping red flags section | Incomplete analysis | Always check red flags, even if none found |
| No qualification score | Missing key output | Calculate score for every company |
| "I couldn't find much" | Unhelpful gap documentation | Specify what was searched and suggest alternatives |

## Gotchas

- **Invented funding/revenue.** When Exa returns sparse data, Claude generates plausible-sounding but fabricated financial figures. Use `[UNAVAILABLE]` notation. Never estimate revenue without sourced evidence.
- **Wrong company matched.** Common names (e.g., "Atlas", "Beam") match multiple companies. Verify domain URL matches before using any MCP data. Cross-reference with LinkedIn company page.
- **Missing qualification score.** Producing context without the required `qualification_score` and `icp_fit_assessment` violates the ontology entity schema (`.claude/rules/ontology.md`). Don't skip them.
- **Outdated traction signals.** Press releases from 2+ years ago presented as current traction. Flag recency of every signal. Prefer signals from last 12 months.
- **Tech stack speculation.** Guessing technology stack without evidence. Only report tech stack from BuiltWith / Wappalyzer data, job postings, or explicit mentions. Mark as `[INFERRED]` when combining signals.

## Example: high-quality output (Lovable)

**Input context:**
```
Company: Lovable (lovable.dev)
Goal: Qualify for GTM consulting
```

**Expected output excerpt:**
```markdown
# Company context: Lovable

**Website**: https://lovable.dev
**LinkedIn**: https://linkedin.com/company/lovable-dev
**One-liner**: AI-powered full-stack app builder that turns ideas into production apps
**Research date**: 2026-01-16

## Traction Signals

| Metric | Finding | Confidence | Source | Date |
|--------|---------|------------|--------|------|
| Revenue | $17M ARR (estimate) | Medium | Sacra | 2025-08 |
| Customers | 500K+ users | High | Website | 2026-01 |
| Funding | $75M total | High | Crunchbase | 2025-11 |
| Team size | 50-100 | Medium | LinkedIn | 2026-01 |

## Funding Details

- **Total raised**: $75M
- **Latest round**: Series B, $60M, Nov 2025, Spark Capital
- **Valuation**: $6.6B (reported)
- **Key investors**: Spark Capital, a16z, Y Combinator

## Quick Qualification Score

| Criteria | Score (0-5) | Notes |
|----------|-------------|-------|
| Stage fit (Series A+) | 5 | Series B |
| Revenue fit ($1M+ ARR) | 5 | $17M ARR estimated |
| Industry fit (B2B SaaS/AI/DevTools) | 5 | AI DevTools, perfect fit |
| Marketing leader present | 3 | Head of Marketing hired Q4 2025 |
| ICP signals | 4 | Fast growth, positioning complexity |
| **Total** | 22/25 | Strong fit |
```

**Why this is good:**
- All traction signals have confidence levels
- Sources cited with dates
- Qualification score is calculated
- Specific and actionable

Full worked examples in `references/example-*.md` files (Lovable, Cursor, Vercel, Perplexity, Sierra, Gamma, OpenAI).
