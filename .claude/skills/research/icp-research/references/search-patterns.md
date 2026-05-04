# Search patterns

Research queries organized by output dimension for ICP research.

---

## Initial discovery

### Find key pages

```
Fetch: [domain]/customers
Fetch: [domain]/case-studies
Fetch: [domain]/success-stories
Fetch: [domain]/solutions
Fetch: [domain]/use-cases
Fetch: [domain]/industries
Fetch: [domain]/pricing
Fetch: [domain]/integrations
```

### Third-party sources

```
Search: site:g2.com "[company]" reviews
Search: site:capterra.com "[company]" reviews
Search: site:trustpilot.com "[company]"
Search: site:linkedin.com/company "[company]"
Search: "[company]" case study customer
```

---

## Persona extraction searches

### Job titles and roles

```
Analyze: Case studies for quoted person titles
Analyze: G2 reviews for reviewer titles
Search: site:[domain] "for [role]" OR "[role]s love"
Search: site:linkedin.com "[company]" "[role]" testimonial
```

### Responsibilities

```
Search: site:linkedin.com/jobs "[role]" responsibilities
Search: site:indeed.com "[role]" "[industry]" job
Analyze: Case studies for what personas do day-to-day
```

### Pain points

```
Search: site:g2.com "[company]" "what problems"
Extract: G2 "What problems is [product] solving?" responses
Analyze: Case study "before" states
Analyze: Testimonials for problem language
```

### Objectives and KPIs

```
Analyze: Case study results (what they measured)
Extract: G2 "What do you like best?" for outcomes
Search: site:[domain] ROI results metrics
```

---

## Use case extraction searches

### Workflows and processes

```
Fetch: [domain]/use-cases
Fetch: [domain]/solutions
Fetch: [domain]/features
Search: site:[domain] "how to" OR "workflow" OR "process"
Analyze: Case studies for implementation steps
```

### Scenarios

```
Analyze: Case studies for triggering events
Extract: G2 "How did you use [product]?" patterns
Search: site:[domain] "when you need" OR "if you"
```

### Outcomes

```
Search: site:[domain] "results" OR "outcome" OR "impact"
Extract: Case study quantified results
Analyze: Testimonials for success metrics
```

---

## Segment extraction searches

### Firmographics

**Geography:**

```
Analyze: Case studies for customer HQ locations
Check: Pricing page for currency options
Analyze: Website language options
Check: G2 reviews for reviewer location
```

**Industry:**

```
Fetch: [domain]/solutions
Fetch: [domain]/industries
Search: site:[domain] "[industry name]"
Analyze: Customer logos for industry patterns
```

**Company size:**

```
Search: site:[domain] enterprise startup SMB
Analyze: Pricing tiers for size indicators
Check: Case studies for employee/revenue mentions
Check: G2 reviews filtered by company size
```

**Tech stack:**

```
Fetch: [domain]/integrations
Search: site:[domain] integrates connects
Analyze: Case studies for tool mentions
Check: G2 integrations section
```

---

## Testimonial and proof point searches

### Customer identification

```
Fetch: [domain]/customers
Fetch: [domain]/case-studies
Search: site:[domain] "trusted by" OR "customers include"
Search: "[company]" customer logo
```

### Quantified outcomes

```
Search: site:[domain] "%" "$" "hours" "saved" "increased"
Analyze: Case studies for quantified outcomes
Extract: Specific numbers from testimonials
```

### Verbatim quotes

```
Analyze: Case studies for direct quotes
Analyze: Homepage testimonial sections
Search: site:g2.com "[company]" review quote
Search: site:linkedin.com "[company]" testimonial
```

---

## Intent signal searches

### Company-level signals

```
Search: site:linkedin.com/jobs "[company]" "[relevant role]"
Search: site:crunchbase.com "[company]" funding
Search: site:builtwith.com "[company]" technology
Search: "[company]" "digital transformation" OR "modernization"
```

### Persona-level signals

```
Search: site:linkedin.com "[role]" "[industry]" "joined"
Search: site:linkedin.com "[role]" "[challenge keyword]" post
Analyze: Event speaker lists for target personas
```

---

## Normalization and verification

### Geography verification

```
Search: "[customer name]" headquarters location
Search: site:linkedin.com/company "[customer]" about
Check: Customer website for HQ address
```

### Revenue/size verification

```
Search: "[customer name]" funding revenue employees
Search: site:crunchbase.com "[customer]"
Search: site:linkedin.com/company "[customer]" size
```

### Industry verification

```
Search: "[customer name]" industry sector
Analyze: Customer website for industry indicators
Check: LinkedIn company page for industry tag
```

---

## Cross-validation patterns

### Verify claims

```
1. Find primary source (company website)
2. Check third-party source (G2, Crunchbase)
3. Look for corroboration (press, LinkedIn)
4. Note if single source only
```

### Date sensitivity

```
Check: Publication date on case studies
Note: Review dates on G2/Capterra
Flag: Content older than 18 months
Prefer: Most recent sources for stats
```

---

## Source quality signals

**Higher quality sources:**
- Company's official case study pages
- G2 reviews with verified badges
- Press releases with direct quotes
- LinkedIn posts from named customers

**Lower quality sources:**
- Generic aggregator sites
- Old forum posts (>2 years)
- Anonymous reviews
- Unverified claims

---

## Missing data handling

When data cannot be found:

1. Document what was searched
2. Mark as "Not available — searched [sources]"
3. Suggest alternative research methods
4. Note in data gaps section

**Never invent or estimate without explicit labeling.**
