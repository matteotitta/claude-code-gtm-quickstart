# Blog post specification

Changelog-style blog post structure for product launch announcements. Includes founder video and UI screenshots.

## Blog post structure

| Section | Purpose | Length |
|---------|---------|--------|
| **Title** | SEO + click-worthy | 6-12 words |
| **Meta description** | Search snippet | 150-160 chars |
| **Hero** | Visual + video embed | 1 element |
| **Intro** | Hook + context | 2-3 paragraphs |
| **What's new** | Feature explanation | 3-5 sections |
| **How it works** | Usage guidance | 2-3 sections |
| **Availability** | Access details | 1 section |
| **CTA** | Next steps | 1 section |

Total length: 800-1,500 words

---

## Section specifications

### Title

**Formula options:**

| Formula | Example |
|---------|---------|
| Introducing [Feature]: [Benefit] | "Introducing Git Sync: Automatic issue updates" |
| [Feature] is here: [What you can do] | "Git Sync is here: Connect your code to your issues" |
| Announcing [Feature] | "Announcing Linear AI" |
| New: [Feature] for [Audience] | "New: Workflows for enterprise teams" |

**SEO considerations:**
- Include primary keyword in first 4 words
- Keep under 60 characters
- Match search intent

### Meta description

**Template:**
```
[Feature name] [verb] [benefit]. [How it works in 1 sentence]. Available [now/date] for [audience].
```

**Example:**
```
Git Sync automatically connects your issues to your codebase. When PRs merge, issues close. Available now for all plans.
```

### Hero section

**Components:**
- Feature name (H1)
- One-line description
- Founder video embed (2-3 min) OR product screenshot
- Publication date and author

**Video requirements:**
- 2-3 minutes max
- Founder or product lead on camera
- Mix of talking head + product demo
- Captions required
- Thumbnail: custom, not auto-generated

### Intro section

**Structure:**
```
[Opening hook — why this matters — 1-2 sentences]

[Context — what problem this solves — 1-2 sentences]

[Brief description — what we're launching — 1-2 sentences]

[Reading roadmap — optional — 1 sentence]
```

**Opening hook patterns:**

| Pattern | Example |
|---------|---------|
| Problem-first | "Developers hate updating ticket status. And honestly, they shouldn't have to." |
| Customer-first | "Since we launched, the #1 request from engineering teams has been..." |
| Vision-first | "We believe project management should be invisible." |
| News-first | "Today we're launching the feature we've been working on for 8 months." |

### What's new section

**Structure per capability:**
```
## [Capability headline — benefit-focused]

[2-3 sentences explaining what this capability does]

[Screenshot or GIF showing the capability]

[Technical detail or use case example — 1-2 sentences]
```

**Section count:**
- Major launch: 4-5 capability sections
- Significant launch: 3-4 capability sections
- Standard launch: 2-3 capability sections
- Minor launch: 1-2 capability sections

**Screenshot requirements:**
- Annotated to highlight feature
- Current UI (not outdated)
- Light mode default (dark mode optional secondary)
- Alt text for accessibility
- 1200px width max

### How it works section

**Structure:**
```
## Getting started

[Brief intro — 1 sentence]

### Step 1: [Action]

[1-2 sentences explaining step]

[Screenshot if helpful]

### Step 2: [Action]

[1-2 sentences explaining step]

### Step 3: [Action]

[1-2 sentences explaining step]

[Link to detailed documentation]
```

### Availability section

**Template:**
```
## Availability

[Feature name] is available [now/date] for [audience].

| Plan | Access |
|------|--------|
| Free | [Yes/No/Limited] |
| Pro | [Yes/No/Limited] |
| Business | [Yes/No/Limited] |
| Enterprise | [Yes/No/Limited] |

[Pricing changes if applicable]

[Beta/early access details if applicable]
```

### CTA section

**Structure:**
```
## Try it now

[One sentence invitation]

[Primary CTA button: "Try [Feature]" or "Get started"]

[Secondary CTA: "Read the docs" or "Watch the demo"]

[Feedback invitation — 1 sentence]
```

---

## Founder video script structure

See youtube-scripts skill for detailed script framework. Summary:

| Section | Duration | Content |
|---------|----------|---------|
| Hook | 0:00-0:15 | Problem statement or bold claim |
| Context | 0:15-0:45 | Why we built this, what problem it solves |
| Demo | 0:45-2:00 | Walk through feature, show key workflows |
| Benefits | 2:00-2:30 | Summary of what this enables |
| CTA | 2:30-3:00 | Where to try, what to do next |

**Script template:**
```
HOOK [0:00-0:15]
"[Problem statement]. Today, we're fixing that."

CONTEXT [0:15-0:45]
"For the past [X months], we've heard from customers that [pain point].
So we built [Feature name]."

DEMO [0:45-2:00]
"Let me show you how it works.
[Walk through primary use case]
[Show secondary capability]
[Highlight key differentiator]"

BENEFITS [2:00-2:30]
"With [Feature], you can now:
[Benefit 1]
[Benefit 2]
[Benefit 3]"

CTA [2:30-3:00]
"[Feature] is available now for [audience].
Go to [URL] to try it.
Let us know what you think — I read every response."
```

---

## SEO optimization

### Keyword strategy

| Keyword type | Placement | Example |
|--------------|-----------|---------|
| Primary | Title, H1, intro, meta | "git sync" |
| Secondary | H2s, body copy | "automatic issue updates" |
| Long-tail | FAQ, how-to section | "how to connect github to project management" |

### Internal linking

| Link type | Minimum | Placement |
|-----------|---------|-----------|
| Related features | 2-3 | Body copy |
| Documentation | 1-2 | How it works section |
| Pricing | 1 | Availability section |
| Other blog posts | 1-2 | Intro or conclusion |

### Schema markup

```json
{
  "@context": "https://schema.org",
  "@type": "BlogPosting",
  "headline": "[Title]",
  "description": "[Meta description]",
  "author": {
    "@type": "Person",
    "name": "[Author name]"
  },
  "publisher": {
    "@type": "Organization",
    "name": "[Company name]"
  },
  "datePublished": "[ISO date]",
  "image": "[Hero image URL]"
}
```

---

## Copy guidelines

### Voice application

| Element | Guideline |
|---------|-----------|
| Person | Match company standard (we/our) |
| Tone | Confident but not boastful |
| Technical depth | Match audience expertise |
| Length | Concise, scannable |

### Formatting rules

| Rule | Specification |
|------|---------------|
| Paragraphs | Max 3-4 sentences |
| Headers | Benefit-focused, not feature-focused |
| Lists | Bullets for features, numbers for steps |
| Links | Descriptive text, not "click here" |
| Images | One per major section minimum |

---

## Distribution integration

### Cross-channel promotion

| Channel | How blog post integrates |
|---------|-------------------------|
| Email | Link as primary CTA or "learn more" |
| LinkedIn | Teaser + link in comments |
| Twitter/X | Thread with link to full post |
| Newsletter | Featured placement with excerpt |
| Community | Share with context |

### Newsletter placement template

```
## [Feature Name] is here

[2-3 sentence summary — benefit-focused]

[Key capability bullet 1]
[Key capability bullet 2]

[Read the full announcement →]
```

---

## Example: Blog post outline

```markdown
# Introducing Git Sync: Your issues now update automatically

*Published [Date] by [Author]*

[Founder video embed]

## Every developer's least favorite task

[Opening hook about manual status updates]

[Context about customer requests]

[What we're launching]

## What's new

### Automatic issue closing

[Explanation + screenshot]

### Bi-directional linking

[Explanation + screenshot]

### Branch-based workflows

[Explanation + screenshot]

## Getting started

### Step 1: Connect your repository

[Instructions + screenshot]

### Step 2: Configure sync settings

[Instructions]

### Step 3: Start building

[Instructions]

[Link to full documentation]

## Availability

[Plan details table]

## Try Git Sync today

[CTA + buttons]

---

Related: [Link 1] | [Link 2] | [Link 3]
```

---

## Quality checklist

- [ ] Title includes primary keyword in first 4 words
- [ ] Meta description is 150-160 characters
- [ ] Founder video is embedded and has captions
- [ ] Each capability section has screenshot
- [ ] How-to section includes numbered steps
- [ ] Availability section specifies all plan access
- [ ] CTA includes primary and secondary options
- [ ] All images have alt text
- [ ] Internal links: 4+ minimum
- [ ] Mobile-responsive images
- [ ] Schema markup implemented
