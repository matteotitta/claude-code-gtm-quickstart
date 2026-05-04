# Sales enablement specification

Sales assets for product launches: enablement decks, one-pagers, battle cards, and talk tracks.

## Asset overview

| Asset | Audience | Format | Purpose |
|-------|----------|--------|---------|
| **Enablement deck** | SDRs, AEs, CSMs | PPTX/PDF | Training on new feature |
| **One-pager** | Prospects | PDF | Leave-behind, email attachment |
| **Battle card update** | AEs | Markdown/PDF | Competitive positioning |
| **Talk tracks** | SDRs, AEs, CSMs | Markdown | Scripts for conversations |
| **Objection FAQs** | All sales | Markdown | Handle common pushback |

---

## Enablement deck

### Purpose

Train sales and CS teams on the new feature so they can confidently position it in customer conversations.

### Slide structure

| # | Slide | Content |
|---|-------|---------|
| 1 | Overview | Feature name, launch date, one-line description |
| 2 | Why we built this | Customer pain point, market context |
| 3 | What it does | 3 key capabilities with benefits |
| 4 | Who cares | Primary and secondary personas |
| 5 | How to position | Messaging framework summary |
| 6 | Competitive context | Where we win/lose vs. alternatives |
| 7 | Demo flow | Key screens to show, what to highlight |
| 8 | Pricing impact | Plan availability, upsell opportunity |
| 9 | Common objections | Top 5 objections with responses |
| 10 | Resources | Where to learn more, who to ask |

### Content specifications

**Slide 2: Why we built this**
```
Problem statement:
[2-3 sentences describing the pain point]

Customer evidence:
- "[Quote from customer interview]" — [Role], [Company]
- [Stat about problem prevalence]

Why now:
[1-2 sentences on market timing]
```

**Slide 3: What it does**
```
| Capability | Benefit | Feature |
|------------|---------|---------|
| [What they can do] | [Outcome achieved] | [Technical name] |
| [What they can do] | [Outcome achieved] | [Technical name] |
| [What they can do] | [Outcome achieved] | [Technical name] |
```

**Slide 6: Competitive context**
```
| Scenario | Us | [Competitor 1] | [Competitor 2] |
|----------|-----|----------------|----------------|
| [Use case] | [Our approach] | [Their approach] | [Their approach] |

When we win: [Scenario description]
When we might lose: [Scenario description]
```

**Slide 7: Demo flow**
```
1. [Screen/view] — Show [capability], highlight [feature]
2. [Screen/view] — Show [capability], highlight [feature]
3. [Screen/view] — Show [capability], highlight [feature]

Demo tips:
- [Tip 1]
- [Tip 2]
- [Tip 3]
```

---

## One-pager

### Purpose

Single-page document for prospects to understand and share the feature internally.

### Layout structure

```
[Logo]                                    [Feature Name]

[Headline: Benefit-focused value prop]

THE PROBLEM                               THE SOLUTION
[2-3 sentences on pain point]             [2-3 sentences on feature]

KEY CAPABILITIES
┌─────────────────┬─────────────────┬─────────────────┐
│ [Capability 1]  │ [Capability 2]  │ [Capability 3]  │
│ [Description]   │ [Description]   │ [Description]   │
└─────────────────┴─────────────────┴─────────────────┘

CUSTOMER PROOF
"[Quote]" — [Name], [Title], [Company]

[Stat or metric]

HOW IT WORKS
1. [Step 1]
2. [Step 2]
3. [Step 3]

AVAILABILITY                              NEXT STEPS
[Plan details]                            [CTA: Demo, trial, etc.]
                                          [Contact info]
```

### Design specifications

| Element | Specification |
|---------|---------------|
| Size | Letter (8.5x11") or A4 |
| Margins | 0.5" minimum |
| Columns | 2-column layout |
| Font sizes | Headline 24pt, subheads 14pt, body 10-11pt |
| Color | Brand colors, high contrast |
| Logo | Top left or header |
| CTA | Bottom right, prominent |

---

## Battle card update

### Purpose

Update existing battle cards with new feature positioning for competitive deals.

### Update structure

```markdown
## [Feature Name] — Competitive positioning

### Quick take

[2-3 sentences on how this feature affects competitive positioning]

### Where this wins us deals

| Competitor | Their gap | Our advantage | Proof point |
|------------|-----------|---------------|-------------|
| [Competitor 1] | [What they lack] | [What we have] | [Evidence] |
| [Competitor 2] | [What they lack] | [What we have] | [Evidence] |

### New competitive claims

**We can now say:**
- [Claim 1 — with proof]
- [Claim 2 — with proof]
- [Claim 3 — with proof]

**Be careful with:**
- [Claim to avoid or caveat]

### Updated objection handling

**When they say:** "[Competitor feature]"
**We say:** "[Response with new feature context]"

### Demo moments to highlight

- [Screen/feature] when competing with [Competitor 1]
- [Screen/feature] when competing with [Competitor 2]

### Resources

- [Link to landing page]
- [Link to documentation]
- [Link to demo recording]
```

---

## Talk tracks

### Purpose

Scripted messaging for different conversation contexts and personas.

### Talk track categories

| Category | When to use | Key elements |
|----------|-------------|--------------|
| **Discovery** | Initial calls | Questions to qualify for feature |
| **Positioning** | Mid-funnel | How to introduce the feature |
| **Demo setup** | Before demo | How to frame what they'll see |
| **Objection handling** | Throughout | Responses to pushback |
| **Upsell/cross-sell** | Existing customers | How to expand |

### Discovery questions

```markdown
## Qualifying for [Feature Name]

### Signal questions

"How are you currently handling [problem the feature solves]?"

"What happens when [pain point scenario]?"

"How much time does your team spend on [related task]?"

"Who else is involved in [workflow the feature addresses]?"

### Disqualifying signals

- [Signal 1 — they don't have this problem]
- [Signal 2 — too early/too late stage]
- [Signal 3 — wrong persona]
```

### Positioning scripts

```markdown
## Introducing [Feature Name]

### For [Persona 1 — e.g., Engineering Leaders]

"You mentioned [pain point they shared]. We just launched [Feature Name] specifically for this.

What it does is [one sentence capability].

The teams using it are seeing [benefit with proof point].

Would you like me to show you how it works?"

### For [Persona 2 — e.g., Product Managers]

"Based on what you've told me about [their situation], [Feature Name] would help you [specific benefit].

It connects [capability A] to [capability B], so you can [outcome].

[Customer name] is using it for exactly this — they said [quote or result]."

### For [Persona 3 — e.g., ICs/Users]

"This might be relevant for your day-to-day — we just shipped [Feature Name].

It basically [simple explanation of what it does].

The thing people love is [key benefit for this persona]."
```

### Demo setup script

```markdown
## Setting up the [Feature Name] demo

"Before I show you [Feature Name], let me give you some context.

[1 sentence on why we built it]

What I'll show you:
1. [First thing — 1 sentence]
2. [Second thing — 1 sentence]
3. [Third thing — 1 sentence]

As I go through, think about [question to keep them engaged].

Ready?"
```

---

## Objection FAQs

### Purpose

Documented responses to common objections about the new feature.

### FAQ structure

```markdown
## [Feature Name] — Objection handling

### Pricing and value

**"Why should I pay more for this?"**

[Response — frame value, not cost]

**"Is this included in my current plan?"**

[Response — clear plan breakdown]

**"We don't have budget for this right now."**

[Response — ROI framing or trial option]

### Competition

**"[Competitor] has this too."**

[Response — differentiate on specifics]

**"We're already using [alternative tool] for this."**

[Response — integration or replacement argument]

### Technical concerns

**"How does this integrate with [tool]?"**

[Response — specific integration details]

**"What about security/compliance?"**

[Response — certifications and controls]

**"We've tried similar tools before and they didn't work."**

[Response — acknowledge and differentiate]

### Timing and adoption

**"We don't have time to implement something new."**

[Response — ease of adoption, quick time-to-value]

**"Let's wait for it to mature."**

[Response — current state, roadmap if applicable]

**"We need to get buy-in from [stakeholder]."**

[Response — resources to help them sell internally]
```

### Response format

For each objection, structure response as:

```
**Objection:** "[Exact words they use]"

**Acknowledge:** [1 sentence validating their concern]

**Reframe:** [1-2 sentences shifting perspective]

**Proof:** [Evidence — quote, stat, or example]

**Redirect:** [Question or next step to move forward]
```

---

## Training schedule

### Enablement rollout

| Day | Activity | Audience | Duration |
|-----|----------|----------|----------|
| T-3 | Preview deck shared | Sales leadership | Async |
| T-1 | Live training session | All sales | 30 min |
| T-0 | Assets distributed | All sales | Email |
| T+3 | Q&A office hours | Optional | 30 min |
| T+7 | Feedback collection | All sales | Survey |

### Training session agenda

| Time | Topic | Lead |
|------|-------|------|
| 0:00-0:05 | Overview and context | PMM |
| 0:05-0:15 | Demo walkthrough | Product or SE |
| 0:15-0:20 | Positioning and talk tracks | PMM |
| 0:20-0:25 | Competitive context | PMM |
| 0:25-0:30 | Q&A | All |

---

## Quality checklist

- [ ] Enablement deck is 10 slides or fewer
- [ ] One-pager fits on single page
- [ ] Battle card update integrates with existing cards
- [ ] Talk tracks cover all primary personas
- [ ] Objection FAQs include top 5 concerns
- [ ] All assets use consistent messaging from launch strategy
- [ ] Proof points are sourced and accurate
- [ ] Demo flow is tested and validated
- [ ] Training scheduled before launch day
