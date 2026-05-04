# Workflow — full 3-phase process

The ICP research runs in 3 phases: data extraction → analysis and synthesis → structured output. Read this when running the skill end-to-end.

---

## Phase 1: Data extraction

1. **Discover key pages**
   ```
   Fetch: [domain]/customers OR /case-studies OR /success-stories
   Fetch: [domain]/solutions OR /use-cases OR /industries
   Fetch: [domain]/pricing
   Fetch: [domain]/integrations OR /partners
   Search: site:[domain] case study testimonial
   Search: site:g2.com "[company]" reviews
   Search: site:linkedin.com "[company]" hiring [relevant role]
   ```

2. **Extract raw data** per source (record URL and date for each):
   - Customer names and logos
   - Job titles and roles mentioned
   - Industry and company size indicators
   - Quantified outcomes and stats
   - Verbatim quotes and pain point language
   - Use case descriptions and workflows
   - Tech stack and integrations
   - Community and content references

3. **Normalize attributes**

   | Attribute | Normalization rules |
   |-----------|---------------------|
   | Geography | Map to: US, North America, EMEA, APAC, LATAM, Global |
   | Industry | Use standard verticals: SaaS, E-commerce, Finance, Healthcare, etc. |
   | Company size | Revenue bands: <$1M, $1-10M, $10-50M, $50-100M, $100M+ |
   | Team size | Employee bands: 1-10, 11-50, 51-200, 201-500, 501-1000, 1000+ |
   | Tech stack | Category + tool name: CRM (Salesforce), CDP (Segment) |

---

## Phase 2: Analysis and synthesis

For each segment (by industry × company size):

1. **Identify patterns** across extracted data
2. **Define core use case** with steps, scenarios, alternatives, drivers, outcomes
3. **Build Champion deep-dive** with all 12 fields including Channels & influences
4. **Build Economic Buyer deep-dive** with all 13 fields including Channels & influences
5. **Map use cases** to segment-specific needs
6. **Identify negative ICP** criteria and red flags
7. **Identify intent signals** at company and persona level
8. **Collect proof points** with testimonials for personas and segments
9. **Document technographics** with required and preferred tools
10. **Calculate TAM estimate** with targeting strategy per layer
11. **Identify ICP** as highest-priority segment below SOM

---

## Phase 3: Structured output

- Generate numbered sections following the report structure (12 sections, see SKILL.md body).
- Apply sorting rules to all tables (Champion first for personas).
- Include rich descriptions with URLs and dates for all evidence.
- Include deep-dives for company segments, personas (Champion and Economic Buyer explicitly), and ICP segments.
