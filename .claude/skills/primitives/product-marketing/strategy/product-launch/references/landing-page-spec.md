# Landing page specification

Product landing page structure for feature launches. Integrates with landing-page-copy skill.

## Page structure

| Section | Purpose | Required |
|---------|---------|:--------:|
| **Hero** | Hook and position the feature | ✓ |
| **Social proof banner** | Build credibility | Major/Significant |
| **Problem** | Agitate the pain | ✓ |
| **Capabilities** | What the feature does | ✓ |
| **How it works** | Reduce complexity | ✓ |
| **Differentiation** | Why us vs. alternatives | Major/Significant |
| **Use cases** | Who this is for | Optional |
| **Pricing/Availability** | Access details | ✓ |
| **CTA** | Conversion | ✓ |
| **FAQs** | Handle objections | ✓ |

---

## Section specifications

### Hero section

**Components:**
- Feature name (H1)
- One-line value prop (sub-headline)
- 2-3 sentence description
- Primary CTA button
- Secondary CTA (optional)
- Hero visual (screenshot, video, or animation)

**Copy structure:**
```markdown
# [Feature name]

[Benefit-focused headline — what they can now do]

[2-3 sentences explaining the feature and why it matters]

[Primary CTA: Try it / Start free / Book demo]
[Secondary CTA: Watch demo / Learn more]
```

**Headline formulas:**

| Pattern | Example |
|---------|---------|
| [Capability] + [Benefit] | "Automatic issue updates that keep your boards accurate" |
| [Problem] → [Solution] | "Stop manually updating tickets. Let Git do it." |
| [Feature] for [Audience] | "Real-time sync for engineering teams" |
| [Verb] + [Object] + [Outcome] | "Connect your code to your issues automatically" |

### Social proof banner

**Components:**
- Trust statement
- Customer logos (4-6)
- Optional: key metric

**Copy structure:**
```markdown
Trusted by [X,000+] teams at companies like [Customer 1], [Customer 2], [Customer 3]

[Logo bar]
```

### Problem section

**Components:**
- Section headline
- 3 problem blocks, each with:
  - Problem headline
  - 2-3 sentence description
  - Impact statement

**Copy structure:**
```markdown
## [Problem-framing headline]

### [Problem 1 headline]
[Description of problem and its consequences]

### [Problem 2 headline]
[Description of problem and its consequences]

### [Problem 3 headline]
[Description of problem and its consequences]
```

### Capabilities section

**Components:**
- Section headline
- 3 capability blocks, each with:
  - Capability headline (benefit-focused)
  - Feature name (if branded)
  - 2-3 sentence description
  - Screenshot or visual

**Copy structure:**
```markdown
## What you can do with [Feature name]

### [Capability 1 — benefit-focused]
**[Feature name]**

[Description of what users can do and why it matters]

[Screenshot]
```

### How it works section

**Components:**
- Section headline
- 3 steps, each with:
  - Step number
  - Action headline
  - 1-2 sentence description
  - Time estimate (optional)

**Copy structure:**
```markdown
## Get started in minutes

### 1. [Action]
[Description of step]
[Time estimate: X minutes]

### 2. [Action]
[Description of step]

### 3. [Action]
[Description of step]
```

### Pricing/Availability section

**Components:**
- Section headline
- Plan availability table
- Pricing changes (if applicable)
- Trial/free tier information

**Copy structure:**
```markdown
## Availability

[Feature name] is available [now/date].

| Plan | Access |
|------|--------|
| Free | [Yes/Limited/No] |
| Pro | [Yes/Limited/No] |
| Business | [Yes/Limited/No] |
| Enterprise | [Yes/Limited/No] |
```

### CTA section

**Components:**
- Headline (benefit or action-focused)
- Sub-headline
- Primary CTA button
- Secondary option

### FAQ section

**Components:**
- Section headline
- 5 Q&A pairs addressing common objections

**Sources for questions:**
- Sales objections from win-loss analysis
- Customer support tickets
- Competitor comparison questions
- Technical requirements questions
- Pricing/availability questions

---

## SEO requirements

### On-page optimization

| Element | Requirement |
|---------|-------------|
| Title tag | [Feature name] — [Benefit] | [Product name] |
| Meta description | 150-160 chars, benefit-focused |
| H1 | Feature name + benefit |
| URL | /features/[feature-slug] |

### Internal linking

| Link type | Placement |
|-----------|-----------|
| Related features | Capabilities section |
| Pricing page | Availability section |
| Documentation | How it works section |
| Blog announcement | Footer or FAQ |

---

## Design requirements

### Layout specifications

| Element | Specification |
|---------|---------------|
| Max width | 1200px content area |
| Section spacing | 80-120px between sections |
| Hero height | Above-fold, ~600-800px |
| Mobile | Single column, stacked CTAs |

### Visual assets needed

| Asset | Specification | Quantity |
|-------|---------------|----------|
| Hero visual | 1200x800px | 1 |
| Capability screenshots | 800x600px, annotated | 3 |
| Customer logos | SVG, consistent height | 4-6 |
| Icons | Consistent style, 48-64px | 3-6 |

---

## Quality checklist

- [ ] Hero has benefit-focused headline
- [ ] Problem section agitates pain effectively
- [ ] Each capability links to feature
- [ ] How it works shows 3 clear steps
- [ ] Availability section is complete
- [ ] CTAs are consistent and clear
- [ ] FAQs address top 5 objections
- [ ] All images have alt text
- [ ] Mobile responsive
- [ ] SEO optimized
