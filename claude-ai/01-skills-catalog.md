# Skills catalog — 11 skills available in this Quickstart

This file lives in your claude.ai Project Knowledge. When the user asks you to "run the X skill," follow the relevant entry below.

For each skill: read the **What it does**, ask the user for **Inputs**, then produce **Output**.

**Project routing:** Each skill is tagged **Project 1 (Marketing Foundations)** or **Project 2 (Content Engine)**. If the user invokes a skill in the wrong Project, point them to the right one. See `04-multi-project-pattern.md` for the architecture.

---

## Project 1 — Marketing Foundations (research + PMM)

### company-context

**Project:** 1 — Marketing Foundations

**What it does:** Captures firmographics, traction signals, funding history, team composition, and qualification posture for a target company. Diagnostic, not strategic.

**When to invoke:** "qualify this company," "company background," "discovery prep," any URL provided for research.

**Example invocation:** `Run the company-context skill for Linear (linear.app)`

**Inputs to ask for:** Company website URL. (Optional: any internal brief or fundraising doc the user already has.)

**Output:** Structured brief with sections: Company snapshot · Traction signals · Funding · Team · Tech stack · ICP fit assessment · Red flags · Open questions. Use `[VERIFIED]` / `[INFERRED]` / `[ESTIMATED]` / `[UNAVAILABLE]` tags on every claim.

**Suggested filename:** `MMYY-company-context.md`

---

### competitor-research

**Project:** 1 — Marketing Foundations

**What it does:** Deep 13-dimension analysis of a single competitor. Produces a dossier with executive summary, dimension breakdown, comparison-matrix row, threat-level classification.

**When to invoke:** "analyze [competitor]," "competitive research on X," "battlecard prep."

**Example invocation:** `Run the competitor-research skill for Linear (linear.app)`

**Inputs to ask for:** Competitor name + website URL. Whether the user wants a single-competitor deep dive or a comparison set (run multiple, then aggregate).

**Output:** Structured dossier covering Positioning · Pricing · Product · GTM motion · Marketing · Content · Sales · Hiring · Funding · Customers · Press · Reviews · Threat level. Each dimension cites public sources.

**Suggested filename:** `MMYY-competitor-{slug}.md`

---

### icp-research

**Project:** 1 — Marketing Foundations

**What it does:** Builds Ideal Customer Profile from a company's existing customers (case studies, testimonials, solutions pages). Produces TAM analysis, segments, champion + economic-buyer personas, voice-of-customer synthesis.

**When to invoke:** "build my ICP," "who are my ideal customers," "persona research."

**Example invocation:** `Run the icp-research skill for [your company website URL]`

**Inputs to ask for:** The user's company website URL. (Optional: customer list or sample case studies.)

**Output:** Sections — TAM analysis · Firmographic segments · Champion persona · Economic buyer persona · Use case mapping · Voice of customer · Anti-ICP (who NOT to target).

**Suggested filename:** `MMYY-icp-research.md`

---

### tov-guidelines

**Project:** 1 — Marketing Foundations

**What it does:** Extracts tone-of-voice patterns from existing content (website, blog, social) and codifies them into voice rules.

**When to invoke:** "extract our tone of voice," "TOV guidelines," "voice rules."

**Example invocation:** `Run the tov-guidelines skill on these content samples: [paste 2-3 URLs from your homepage, blog, and LinkedIn]`

**Inputs to ask for:** 2-3 representative content samples (URLs or pasted text) — ideally a homepage, a blog post, a LinkedIn post.

**Output:** Two-phase doc — Phase 1 (analysis: voice spectrum, vocabulary, sentence patterns, frequency scores) + Phase 2 (codified do/don't rules for content production). Always cite the source samples.

**Suggested filename:** `MMYY-tov-guidelines.md`

---

### brand-kit

**Project:** 1 — Marketing Foundations

**What it does:** Captures visual identity (colors, typography, layout, components) into a brand system file. Best with screenshots; falls back to URL extraction.

**When to invoke:** "extract our brand," "brand guidelines," "design tokens," "brand kit."

**Example invocation:** `Run the brand-kit skill on these screenshots: [drag homepage + product page + CTA close-up screenshots in]`

**Inputs to ask for:** Screenshots of homepage, key product pages, and a CTA close-up — OR a website URL. (Note: claude.ai can analyze screenshots if uploaded to the chat.)

**Output:** YAML token block (colors, typography, rounded, spacing, components) + 8-section prose doc (Overview, Colors, Typography, Layout, Elevation, Shapes, Components, Do's and Don'ts).

**Suggested filename:** `MMYY-brand-kit.md`

---

### positioning

**Project:** 1 — Marketing Foundations

**What it does:** Synthesizes ICP + competitor + brand inputs into a positioning strategy. Produces primary anchor, differentiators, positioning statement, and one-liners.

**When to invoke:** "what's our positioning," "differentiation," "category definition," "strategic foundation for messaging."

**Example invocation:** `Run the positioning skill for [your company name]`

**Inputs to ask for:** Pointers to (or pasted contents of) ICP research, competitor research, and brand work if they exist. If they don't, ask the user to run those first OR proceed with a draft and flag the dependency.

**Output:** Binary strategy framing · Primary anchor · Secondary anchor · 3-5 differentiators · Positioning statement · One-liners for hero / campaign / cold opener.

**Suggested filename:** `MMYY-positioning.md`

---

### messaging

**Project:** 1 — Marketing Foundations

**What it does:** Builds a 10-component messaging library from positioning. Produces value props, key differentiators, taglines, CTA variants, proof points, status-quo alternatives.

**When to invoke:** "messaging library," "value props," "messaging framework," "what should we say on the homepage."

**Example invocation:** `Run the messaging skill for [your company name]`

**Inputs to ask for:** Locked positioning doc (or its key claims). Optional: ICP voice samples, competitor messaging.

**Output:** 10-component library — Value propositions · Differentiators · Taglines · Headlines · CTAs · Proof points · Status-quo alternatives · Persona variants · Channel variants · Messaging hierarchy.

**Suggested filename:** `MMYY-messaging.md`

---

### product-launch

**Project:** 1 — Marketing Foundations

**What it does:** Plans a cross-functional product launch with timeline, channel mix, asset checklist, post-launch measurement plan.

**When to invoke:** "launch plan for [feature]," "go-to-market for [product]," "release coordination."

**Example invocation:** `Run the product-launch skill for the [feature name] launch on [target date]`

**Inputs to ask for:** Launch product/feature name + scope, target launch date, locked positioning + messaging, internal stakeholders.

**Output:** Launch brief · Timeline (T-30 / T-7 / T-0 / T+7 / T+30) · Channel mix · Asset checklist · Stakeholder coordination plan · Measurement plan.

**Suggested filename:** `MMYY-launch-{product}.md`

---

## Project 2 — Content Engine (content production)

> **Before running these:** confirm Project 2's Knowledge contains the user's locked PMM outputs from Project 1 (positioning, messaging, ICP, brand-kit, tov-guidelines). If not, ask them to drag those in first.

### content-strategy

**Project:** 2 — Content Engine

**What it does:** Develops a 90-day content strategy with pillars, channel mix, cadence, calendar framework. Maps messaging to a publishing roadmap.

**When to invoke:** "content strategy," "content pillars," "90-day content plan," "what should we publish."

**Example invocation:** `Run the content-strategy skill for [your company name]`

**Inputs to ask for:** Locked messaging + positioning (should be in Project 2's Knowledge — confirm before proceeding). Optional: content audit (if available), ICP, brand voice.

**Output:** Strategic pillars (3-5) · Channel mix · Volume targets · Cadence · 90-day calendar framework · Topic cluster framework.

**Suggested filename:** `MMYY-content-strategy.md`

---

### content-audit

**Project:** 2 — Content Engine

**What it does:** Audits existing content across channels to establish a baseline before strategic planning. Diagnostic, not creative.

**When to invoke:** "audit our content," "content gap analysis," "what's working and what's not."

**Example invocation:** `Run the content-audit skill on these channels: [your blog URL, LinkedIn page URL, YouTube channel URL]`

**Inputs to ask for:** List of channels to audit (blog, LinkedIn, YouTube, newsletter) + URLs / sample content for each.

**Output:** Content inventory · Per-channel quality scores · Gap analysis · Consistency assessment · Prioritized recommendations (kill / keep / fix / new).

**Suggested filename:** `MMYY-content-audit.md`

---

### thought-leadership

**Project:** 2 — Content Engine

**What it does:** Creates a long-form thought-leadership article through a 3-phase process (outline → draft → polish). Produces a publication-ready piece.

**When to invoke:** "write an article on X," "thought leadership piece," "long-form content," "expand this insight."

**Example invocation:** `Run the thought-leadership skill on the topic "[your topic]" with a contrarian angle`

**Inputs to ask for:** Topic + angle (contrarian preferred) · Target audience · Source material (transcripts, customer quotes, founder POV) · Target length (1500 / 2500 / 4000 words).

**Output:** Phase 1 outline (with headers + key claims) → Phase 2 draft → Phase 3 polished publication-ready piece. Always cite sources for any claim.

**Suggested filename:** `MMYY-thought-leadership-{topic}.md`

---

## Suggested first-30-minutes chain (Project 1)

If the user is just getting started, run these in order in Project 1:

1. `Run the company-context skill for [your company]` — capture firmographics + posture
2. `Run the competitor-research skill for [Competitor 1]` — top 2-3 competitors, one at a time
3. `Run the icp-research skill for [your company URL]` — define ideal customer
4. `Run the tov-guidelines skill on [2-3 content sample URLs]` — extract voice
5. `Run the brand-kit skill on [screenshots]` — capture visual identity
6. `Run the positioning skill for [your company]` — synthesize 1-5
7. `Run the messaging skill for [your company]` — turn positioning into a library

Each one feeds the next. Don't skip foundations.

After step 7, set up Project 2 and copy the locked outputs over. Then in Project 2:

8. `Run the content-strategy skill for [your company]`
9. `Run the thought-leadership skill on [your first topic]`
