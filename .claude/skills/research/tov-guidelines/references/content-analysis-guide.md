# Content Analysis Guide

Framework for extracting voice patterns from scraped website content.

## Site discovery

### Step 1: Map the domain

From the homepage, extract all internal links:

```
1. Fetch homepage HTML
2. Extract all <a href="..."> links
3. Filter by domain rules (below)
4. Deduplicate and prioritize
```

### Domain filtering rules

**Include:**
- Exact domain match: `example.com/anything`
- www variant: `www.example.com/anything`  
- Subdomains: `blog.example.com`, `docs.example.com`
- Defined prefixes: `app.example.com` (if user confirms it's owned)

**Exclude:**
- Social media: `twitter.com`, `linkedin.com`, `facebook.com`, `instagram.com`
- Video platforms: `youtube.com`, `vimeo.com`, `wistia.com`
- Scheduling: `calendly.com`, `cal.com`, `hubspot.com/meetings`
- Analytics/tracking: `google.com`, `amplitude.com`
- Payment: `stripe.com`, `lemonsqueezy.com`
- Third-party tools: `notion.so`, `airtable.com`, `typeform.com`
- CDN/assets: `cloudfront.net`, `amazonaws.com`, `framer.com` (media only)

### Step 2: Prioritize pages

Scrape in this order until patterns stabilize (~15-20 pages):

| Priority | URL patterns | Why important |
|----------|--------------|---------------|
| 1 | `/`, `/home` | Core positioning |
| 2 | `/about`, `/about-us`, `/team`, `/manifesto`, `/values`, `/mission` | Origin, beliefs, personality |
| 3 | `/blog/*`, `/articles/*`, `/posts/*` (3-5 recent) | Long-form voice |
| 4 | `/case-studies/*`, `/customers/*`, `/success-stories/*` (2-3) | Proof presentation |
| 5 | `/pricing`, `/plans`, `/services` | Commercial tone |
| 6 | `/faq`, `/faqs`, `/help` | Conversational, objection handling |
| 7 | `/contact`, `/get-started` | CTA patterns |
| 8 | Landing pages, product pages | Persuasion, audience targeting |

### Step 3: Recognize pattern stability

Stop scraping when:
- Person usage (I/we/they) consistent across 5+ pages
- CTA phrasing repeats 3+ times
- No new vocabulary terms in last 3 pages
- Structural patterns confirmed across page types

---

## Extraction framework

For each scraped page, extract the following:

### Sentence-level analysis

**Person usage:**
```
Count occurrences of:
- "I" / "I'm" / "I've" / "my" (first-person singular)
- "We" / "We're" / "We've" / "our" (first-person plural)
- Company name as subject (third-person)
- "You" / "your" (second-person, addressing reader)
```

**Sentence length:**
```
- Count sentences (split by . ! ?)
- Calculate average word count per sentence
- Note outliers (very short punchy sentences, very long complex ones)
```

**Question usage:**
```
- Count questions asked
- Categorize: rhetorical, engaging, or literal
- Note placement (headlines, body, CTAs)
```

**Command/imperative usage:**
```
- "Book a call" / "Download now" / "Try it free"
- Where do imperatives appear?
- How direct vs. softened ("Consider booking..." vs "Book now")
```

### Paragraph-level analysis

**Length:**
```
- Count sentences per paragraph
- Note maximum paragraph length
- Flag any walls of text (5+ sentences)
```

**Opening patterns:**
```
For first paragraph of each page/section:
- Does it lead with benefit or feature?
- Does it lead with problem or solution?
- Does it use a question hook?
- Does it make a claim then back it up?
```

**Transition patterns:**
```
- How do paragraphs connect?
- Explicit transitions ("However," "Additionally,") or implicit?
- Section breaks or continuous flow?
```

**Evidence placement:**
```
- Where do proof points appear? (inline, after claims, separate sections)
- How are metrics formatted? ("$3M" vs "three million dollars")
- How are testimonials introduced?
```

### Word-level analysis

**Recurring terms (potential company vocabulary):**
```
Track terms appearing 3+ times that aren't generic:
- Product/service names
- Methodology names
- Philosophy terms ("Day One", "founder mode")
- Coined phrases
```

**Industry terms (customer vocabulary):**
```
Note which industry terms they use vs. avoid:
- "Pipeline" vs "leads" vs "prospects"
- "GTM" vs "go-to-market" vs "marketing strategy"
- Technical terms explained or assumed known?
```

**Modifier frequency:**
```
Count intensifiers that may indicate voice:
- "Very" / "really" / "extremely" / "incredibly"
- "Simply" / "just" / "easily"
- Superlatives: "best" / "fastest" / "most"
```

**Contraction usage:**
```
- "Don't" vs "do not"
- "We're" vs "we are"
- "It's" vs "it is"
Consistency matters more than choice.
```

### Structural analysis

**Header style:**
```
Categorize all headers:
- Sentence case: "How we work with clients"
- Title Case: "How We Work With Clients"
- ALL CAPS: "HOW WE WORK WITH CLIENTS"
- Mixed (flag as inconsistency)
```

**CTA patterns:**
```
Capture exact CTA text and placement:
- Primary CTA (most prominent)
- Secondary CTAs
- Note what's NOT used (generic "Learn more" absent?)
```

**List formatting:**
```
- Bullet points vs numbered lists
- Punctuation: periods, no periods, semicolons
- Parallel structure maintained?
```

**Proof stacking:**
```
How is social proof structured?
- Metric + company + outcome
- Quote + attribution
- Logo walls
- Embedded throughout vs. dedicated sections
```

---

## Tonal principles extraction

Beyond labeling tone with adjectives, extract grounding principles that content creators can apply.

### From adjectives to principles

Don't just say "confident" — describe what confident sounds like and provide an actionable directive.

**Weak:** "The tone is confident."  
**Strong:** 

> #### Confident conviction — not hedged caution
> 
> The voice makes bold, direct claims without qualifiers. Statements are assertions, not possibilities. This creates authority and reduces cognitive load for the reader.
> 
> **Tonal principle:** State positions directly. Avoid "might", "could", "potentially". If something is true, say it is true.
> 
> **Evidence:**
> > "I can get you from 0 to 1 in 3 months"
> > — /homepage
> 
> **Frequency:** Zero instances of hedging language found across 6 pages.

### Common dimensions to explore

For each brand, identify which poles they lean toward:

| Dimension | Pole A | Pole B |
|-----------|--------|--------|
| Action | Operator/doer | Advisor/consultant |
| Certainty | Confident/assertive | Hedged/cautious |
| Warmth | Warm/personal | Neutral/professional |
| Pace | Fast/urgent | Measured/deliberate |
| Expertise | Curious/learning | Expert/authoritative |
| Directness | Direct/blunt | Diplomatic/softened |
| Polish | Scrappy/raw | Polished/refined |
| Accessibility | Plain language | Technical/specialized |

### Extracting principles from evidence

1. **Identify the pattern:** What do multiple quotes have in common?
2. **Name the dimension:** Which pole does it sit on?
3. **Articulate the opposite:** What does this voice avoid?
4. **Write the directive:** One sentence a content creator can follow
5. **Quantify frequency:** How consistently does this appear?

### Example extraction workflow

**Evidence collected:**
- "I stay scrappy, creative, and motivated — ready to get my hands dirty"
- "Get a GTM consultant on founder mode"  
- "Don't worry — this is not my first rodeo"
- "I can get you from 0 to 1 in 3 months"

**Pattern identified:** Action language, execution emphasis, personal involvement

**Dimension:** Operator/doer vs. Advisor/consultant

**Principle name:** "Operator authority — not consultant distance"

**Directive:** "Speak as someone in the trenches, not on the sidelines. Use language of doing, building, and shipping — not recommending, suggesting, or advising."

**Frequency:** "Action verbs outnumber advisory verbs 8:1 across all pages."

---

## Frequency scoring

### High frequency (80%+)

Pattern appears consistently across most content:
```
Example: "First-person 'I' used on 5 of 6 pages (83%). 
No instances of 'we' found anywhere."
```

Assign HIGH when:
- Pattern appears on 80%+ of relevant pages
- No contradicting instances found
- Pattern is explicit, not inferred

### Medium frequency (40-79%)

Pattern appears but not consistently:
```
Example: "'I' used on homepage and about page (40%), 
but blog posts use third-person company name."
```

Assign MEDIUM when:
- Pattern appears on 40-79% of pages OR
- Pattern appears consistently within one content type but not others
- May indicate intentional variation by content type

### Low frequency (<40%)

Pattern appears rarely:
```
Example: "Pricing page uses 'we' once (17% of pages), 
all other pages use 'I'."
```

Assign LOW when:
- Less than 40% occurrence
- Could be anomaly or oversight
- Needs validation — likely not intentional

### Conflict

Contradictory patterns at similar frequency:
```
Example: "Homepage uses 'I deliver' but pricing page uses 
'We offer'. Both are prominent placements (50/50 split)."
```

Assign CONFLICT when:
- Direct contradiction between sources
- Both instances seem intentional (not typos)
- Requires resolution before guidelines

---

## Inconsistency detection

Flag these as issues:

### Person conflicts
- "I" on some pages, "we" on others
- Company name sometimes personified, sometimes not

### Tense conflicts  
- Present tense claims vs. past tense results
- Inconsistent timeline references

### Formality conflicts
- Contractions on some pages, formal on others
- Technical jargon mixed with plain language inconsistently

### Structural conflicts
- Different header case styles across pages
- CTA phrasing varies without clear reason
- Punctuation rules change (bullets with/without periods)

### Vocabulary conflicts
- Same concept, different terms ("clients" vs "customers")
- Acronyms sometimes expanded, sometimes not

---

## Gap identification

Document what can't be determined:

### Common gaps

| Gap type | What to look for | Resolution |
|----------|------------------|------------|
| Social voice | No Twitter/LinkedIn scraped | Request examples or scrape if public |
| Email voice | Not visible on website | Request email samples |
| Sales voice | Different from marketing? | Request sales deck or call recordings |
| Support voice | Not visible on website | Request support ticket examples |
| Negative scenarios | No "we can't help with X" content | Founder interview |
| Audience variations | One audience or many? | Founder interview |
| Historical context | Why certain choices made? | Founder interview |

### Documenting gaps

For each gap:
1. What couldn't be determined?
2. Why does it matter for guidelines?
3. How can it be filled? (more scraping, founder Q, user input)

---

## Output requirements

After analysis, produce:

1. **Evidence table** for each finding with:
   - Source URL
   - Exact quote
   - Pattern classification
   - Frequency score (percentage where applicable)

2. **Inconsistency list** with:
   - The conflict
   - Both sources
   - Recommended resolution

3. **Gap list** with:
   - What's missing
   - Why it matters
   - How to fill

4. **Frequency summary**:
   - Overall readiness for Phase 2
   - What would increase pattern confidence
