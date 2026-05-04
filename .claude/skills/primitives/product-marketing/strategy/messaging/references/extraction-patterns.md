# Extraction patterns

Search and scraping patterns for each messaging component.

---

## Critical extraction rules

**Before extracting ANY data, understand these rules:**

1. **Record source URL and access date for EVERY extraction**
2. **Copy text verbatim — never paraphrase or "improve"**
3. **If information isn't found, mark "Not available" — never invent**
4. **Extract branded feature names EXACTLY as the company writes them**
5. **Capture full attribution for all quotes (name, title, company)**

---

## Initial discovery

### Core pages to fetch (with access date logging)

```
[Log access date: YYYY-MM-DD for each fetch]

Fetch: [domain]/                     → Homepage messaging, hero, positioning
Fetch: [domain]/features             → Branded feature names (CRITICAL)
Fetch: [domain]/product              → Capabilities, how it works
Fetch: [domain]/pricing              → Feature tiers, value metrics
Fetch: [domain]/customers            → Case studies, testimonials, quotes
Fetch: [domain]/case-studies         → Customer quotes with attribution
Fetch: [domain]/about                → Company positioning, mission
Fetch: [domain]/solutions            → Use cases, pain points
Fetch: [domain]/use-cases            → Workflow descriptions
Fetch: [domain]/vs/[competitor]      → Competitive positioning, alternatives
```

### Search patterns for quotes and reviews

```
Search: site:[domain] testimonial
Search: site:[domain] "case study"
Search: site:[domain] customer story
Search: site:g2.com "[product name]" reviews
Search: site:capterra.com "[product name]"
Search: site:trustradius.com "[product name]"
```

---

## Component-specific extraction

### 1. Description

**Primary sources:**
- Homepage hero section (H1, subheadline)
- About page opening paragraph
- Meta description tags

**Extraction pattern:**
```
Fetch: [domain]/
Extract:
  - H1 headline (verbatim)
  - Hero subheadline (verbatim)
  - Source URL: [domain]/
  - Access date: [YYYY-MM-DD]

Fetch: [domain]/about
Extract:
  - Opening paragraph (verbatim)
  - Source URL: [domain]/about
  - Access date: [YYYY-MM-DD]
```

---

### 2. Status quo and alternatives

**Required categories to find:**
1. Manual/DIY approach (always include)
2. Legacy/incumbent tools
3. Direct competitors
4. Adjacent alternatives

**Sources:**
- Homepage problem sections
- Competitor comparison pages ([domain]/vs/[competitor])
- Case study "before" states
- G2/Capterra reviews mentioning alternatives

**Extraction pattern for Manual/DIY:**
```
Search: site:[domain] "spreadsheet" OR "manual" OR "email" OR "before"
Extract:
  - How teams handle problem without tools
  - Limitations mentioned
  - Source URL
  - Access date
```

**Extraction pattern for Competitors:**
```
Fetch: [domain]/vs/[competitor-name]
Extract:
  - Competitor name (exact)
  - How positioned against
  - Limitations highlighted
  - Source URL
  - Access date

Search: site:[domain] "switch from" OR "migrate from" OR "alternative to"
```

**Extraction pattern from reviews:**
```
Search: site:g2.com "[product]" "switched from"
Extract:
  - Alternative mentioned
  - Reason for switching (verbatim)
  - Review URL
  - Access date
```

---

### 3. Pain points

**Purpose:** Problems that mirror capabilities negatively.

**Sources:**
- Homepage problem/pain sections
- Case study challenge sections
- G2/Capterra "problems solved" sections
- Solutions pages

**Extraction pattern:**
```
Fetch: [domain]/
Look for: Sections with negative framing ("tired of", "struggling with", "stop")
Extract:
  - Pain point as stated (verbatim)
  - Business impact if mentioned
  - Source URL
  - Access date

Fetch: [domain]/case-studies/[customer]
Look for: "Challenge" or "Problem" or "Before" sections
Extract:
  - Challenge description (verbatim)
  - Source URL
  - Access date
```

**Mapping requirement:**
For each pain point, identify which capability addresses it:
```
Pain point: [Extracted pain]
Maps to capability: [Capability that solves it]
Source for mapping: [URL showing connection]
```

---

### 4. Capabilities

**CRITICAL: Extract branded feature names FIRST, then map capabilities to them.**

**Step 1: Extract all branded feature names**
```
Fetch: [domain]/features
Extract ALL feature names EXACTLY as written:
  - Feature name 1: "[Exact name]"
  - Feature name 2: "[Exact name]"
  - ...
  - Source URL: [domain]/features
  - Access date: [YYYY-MM-DD]
```

**Step 2: For each feature, extract capability**
```
For feature "[Exact name]":
  - What it enables users to do
  - How it fits workflow
  - Source URL
  - Access date
```

**Extraction pattern:**
```
Fetch: [domain]/features
Fetch: [domain]/product
Fetch: [domain]/features/[specific-feature]

For each feature section:
Extract:
  - Feature name (EXACT branded name)
  - Feature description (verbatim)
  - Capability it enables (what users can do)
  - Source URL
  - Access date
```

---

### 5. Benefits (with customer quotes)

**Two-part extraction: Benefits + matching quotes**

**Part 1: Extract benefits/outcomes**
```
Fetch: [domain]/customers
Fetch: [domain]/case-studies
Look for: Metrics, outcomes, results

Extract:
  - Outcome description
  - Quantified impact (if stated — DO NOT ESTIMATE)
  - Source URL
  - Access date
```

**Part 2: Extract customer quotes and match to benefits**
```
For each case study/testimonial:
Extract:
  - Quote text (VERBATIM — copy exact characters)
  - Customer name (as shown)
  - Customer title (as shown, or "Not provided")
  - Company name (as shown)
  - Context (what the quote is about)
  - Source URL
  - Access date

Then match: Which benefit does this quote support?
```

**Quote extraction from review sites:**
```
Search: site:g2.com "[product]" reviews
For relevant reviews:
Extract:
  - Quote text (verbatim)
  - Reviewer name (or "Anonymous" if not shown)
  - Reviewer title (if shown)
  - Company (if shown)
  - Review URL (specific review link if available)
  - Access date
```

**NEVER do this with quotes:**
- Paraphrase or summarize
- Combine multiple quotes
- Add punctuation or formatting not in original
- Attribute to unnamed sources
- Invent attribution details

---

### 6. Features

**Purpose:** Document branded features with exact naming.

**Primary source:** Features page, pricing page feature lists

**Extraction pattern:**
```
Fetch: [domain]/features
Fetch: [domain]/pricing

For each feature:
Extract:
  - Feature name (EXACT as branded — case-sensitive)
  - Feature description (verbatim from source)
  - Which capability it powers
  - Source URL
  - Access date
```

**Feature naming rules:**
- Use exact capitalization from source
- Use exact spacing and punctuation
- If feature has trademark symbol, include it
- If feature name varies across pages, use the features page version

---

## Source documentation

### For every extraction, record:

```markdown
| Data point | Verbatim text | Source URL | Access date |
|------------|---------------|------------|-------------|
| [Type] | "[Exact text]" | [URL] | [YYYY-MM-DD] |
```

### Source quality hierarchy

1. **Primary** (High confidence): Official website pages
2. **Secondary** (Medium confidence): Official case studies, press releases
3. **Tertiary** (Low confidence): Review sites, third-party articles

---

## Common extraction challenges

### Challenge: Quote has no attribution

**Problem**: Testimonial on website shows quote but no name/title.

**Solution:**
```markdown
> "[Exact quote]"

- **Customer**: Not provided
- **Company**: Not provided
- **Quote source**: [URL] | **Accessed**: [YYYY-MM-DD]
```

### Challenge: Feature name varies across pages

**Problem**: Feature called "Smart Inbox" on features page but "Intelligent Inbox" on homepage.

**Solution:**
- Use the features page name as canonical
- Note variation in source appendix:
  ```
  Note: Feature "Smart Inbox" also referred to as "Intelligent Inbox" on homepage
  ```

### Challenge: Pain point not explicitly stated

**Problem**: Pain points are implied but not directly stated on website.

**Solution:**
- Mark as Medium or Low confidence
- Note it's inferred:
  ```markdown
  - **Confidence**: Medium (inferred from solution positioning, not explicitly stated)
  - **Source**: [URL] | **Accessed**: [YYYY-MM-DD]
  ```

### Challenge: Metric appears without source

**Problem**: Website claims "50% faster" but no case study backs it up.

**Solution:**
- Extract the claim as stated
- Note the confidence level:
  ```markdown
  - **Proof point**: "50% faster" (as claimed on website, no case study source)
  - **Confidence**: Medium
  - **Source**: [URL] | **Accessed**: [YYYY-MM-DD]
  ```

### Challenge: No quotes available for a benefit

**Solution:**
```markdown
**Customer proof**: Not available — no testimonial found for this specific benefit. 
Searched: [list URLs searched]
Recommend: Customer interviews to gather proof for this benefit.
```
