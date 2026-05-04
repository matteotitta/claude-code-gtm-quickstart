# Content audit — worked snippets

Output snippets from real audit work showing what "good" looks like for cadence analysis, topic analysis, and cross-channel cascade assessment. Hoisted from pre-slim SKILL.md (`What Good Looks Like` section, lines 921–991). Full worked examples live in `examples/example-audit-b2b-saas.md`.

---

## Example 1: Newsletter Audit Finding

**Input context:**
```
Company: Example B2B SaaS
Newsletter: Substack with 50+ posts
```

**Expected output:**
```markdown
### Publishing Cadence

| Metric | Finding | Benchmark | Assessment |
|--------|---------|-----------|------------|
| Posts per month | 3.2 | 4/month | Slightly below |
| Consistency | Every Tuesday | Regular | Strong |
| Longest gap | 21 days (August) | <14 days | One holiday gap |

### Topic Analysis

| Topic Cluster | Post Count | % of Total | Pillar |
|---------------|------------|------------|--------|
| Product tutorials | 18 | 36% | Educational |
| Industry trends | 12 | 24% | Educational |
| Founder journey | 8 | 16% | Personal |
| Case studies | 6 | 12% | Promotional |
| Product updates | 4 | 8% | Promotional |
| Team news | 2 | 4% | Organizational |
```

**Why this is good:**
- Specific numbers with calculations
- Benchmarked against standards
- Clear pillar categorization
- Actionable assessment

---

## Example 2: Cross-Channel Synthesis

**Expected output:**
```markdown
### Content Cascade Assessment

**Current state:**
- Newsletter posts are not being repurposed to LinkedIn
- YouTube videos exist but no clips created for social
- Events recordings not being converted to blog content
- Cross-promotion between channels is minimal

**Cascade opportunity:**
- Each newsletter issue could generate 3-5 LinkedIn posts (currently 0)
- YouTube interviews could provide 10+ short clips per episode
- Event recordings could become 2-3 blog posts each
- Estimated additional content: 25+ pieces/month from existing assets
```

**Why this is good:**
- Identifies specific cascade gaps
- Quantifies the opportunity
- Actionable recommendations

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | 2026-01-16 | Initial skill creation |
| 1.1 | 2026-04-29 | Phase 2 merge: absorbed content-check (BOFU pre-production validator). Body preserved at `references/content-check-merged-2026-04-29.md`. |
| 1.2 | 2026-04-29 | Phase 3 slim: SKILL.md reduced from 1171 → ≤300 lines via lossless hoist to `references/`. Pre-slim archived at `.claude/skills/_archive/content-audit/SKILL-pre-slim-20260429.md`. |
