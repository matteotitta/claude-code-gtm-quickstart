# Email announcement specification

Email templates for product launch announcements. Separate templates for prospects and existing customers.

## Email structure overview

| Audience | Goal | Tone | Primary CTA |
|----------|------|------|-------------|
| **Prospects** | Drive demo requests, trial signups | Benefit-focused, educational | Try it / Book demo |
| **Customers** | Drive adoption, highlight value | Relationship-focused, helpful | Try it now / Learn more |

---

## Prospect announcement email

### Template structure

```
Subject: [Benefit-driven subject line]
Preview text: [Expand on subject, create curiosity]

---

Hi [First Name],

[Opening hook — problem statement or benefit — 1-2 sentences]

[What we launched — brief description — 1-2 sentences]

[Why it matters to them — specific to persona — 2-3 sentences]

Here's what you can now do:

→ [Capability 1 + benefit]
→ [Capability 2 + benefit]
→ [Capability 3 + benefit]

[Social proof — quote or metric — 1-2 sentences]

[Primary CTA button]

[Soft CTA — alternative action — 1 sentence]

Best,
[Sender name]
[Title]

---

P.S. [Urgency driver or additional hook]
```

### Subject line formulas

| Formula | Example |
|---------|---------|
| **Benefit + new** | "Now you can [benefit] — [Feature] is here" |
| **Problem → solution** | "Tired of [problem]? We fixed it." |
| **News angle** | "Introducing [Feature]: [one-line benefit]" |
| **Curiosity** | "We've been working on something..." |
| **Social proof** | "How [Customer] now [achieves outcome]" |

### Subject line A/B test pairs

| Version A | Version B |
|-----------|-----------|
| Introducing [Feature Name] | [Problem]? Not anymore. |
| New: [Capability] for [Persona] | We just shipped [Feature] |
| [Benefit] is now possible | You asked, we built it |

### Preview text guidelines

| Rule | Example |
|------|---------|
| Complement, don't repeat subject | Subject: "New feature" → Preview: "See how it works" |
| Create curiosity gap | "Here's what changed..." |
| Include benefit | "Save 5 hours/week on [task]" |
| Max 90 characters | For mobile visibility |

### Body copy guidelines

**Opening hooks (choose one pattern):**

| Pattern | Example |
|---------|---------|
| Problem-first | "Every [persona] I talk to struggles with [problem]." |
| News-first | "Today we're launching [Feature] — and here's why it matters." |
| Question-first | "What if you could [benefit] without [pain]?" |
| Direct announcement | "[Feature] is live. Here's what you need to know." |

**Benefit formatting:**

Use arrows (→) not bullets for benefits in email:

```
→ [Capability] so you can [benefit]
→ [Capability] so you can [benefit]
→ [Capability] so you can [benefit]
```

Keep each line under 60 characters for readability.

**CTA buttons:**

| CTA type | Button text | Use when |
|----------|-------------|----------|
| Trial | "Try it free" / "Start for free" | Self-serve product |
| Demo | "Book a demo" / "See it in action" | Sales-led motion |
| Learn | "Learn more" / "See how it works" | Complex feature |
| Hybrid | "Try it free" + "or book a demo" | Both motions |

---

## Customer announcement email

### Template structure

```
Subject: [Feature Name] is here — [benefit for them]
Preview text: [What they can now do]

---

Hi [First Name],

Great news — [Feature Name] is now live in your account.

[What it does — 1-2 sentences tailored to their use case]

[Why we built it — reference to customer feedback if applicable — 1 sentence]

Here's what's new:

→ [Capability 1] — [how it helps their workflow]
→ [Capability 2] — [how it helps their workflow]
→ [Capability 3] — [how it helps their workflow]

[How to access — specific path in product — 1 sentence]

[Primary CTA button: "Try it now"]

Questions? Reply to this email or [reach out to CSM].

[Signature]

---

P.S. [Link to help docs or video walkthrough]
```

### Customer-specific modifications

| Segment | Modifications |
|---------|---------------|
| **Enterprise** | Reference their specific use case, mention CSM availability |
| **Mid-market** | Balance self-serve with support availability |
| **SMB** | Focus on self-serve, link to help resources |
| **At-risk** | Frame as value-add, address potential concerns |
| **Champions** | Early access framing, request feedback |

### Segmentation recommendations

| Segment | Subject line approach | CTA |
|---------|----------------------|-----|
| Power users | "You asked, we built: [Feature]" | "Try it now" |
| Light users | "[Feature] makes [task] easier" | "See how it works" |
| Inactive | "New reason to come back: [Feature]" | "Explore [Feature]" |

---

## Email specifications

### Design requirements

| Element | Specification |
|---------|---------------|
| Width | 600px max |
| Font | System fonts (Arial, Helvetica) for email clients |
| CTA button | 44px height min, 200px width, contrasting color |
| Images | Alt text required, not essential for message |
| Mobile | Single column, 16px min font |

### Send timing

| Audience | Best times | Worst times |
|----------|------------|-------------|
| Prospects | Tue-Thu 10am-2pm | Monday 9am, Friday PM |
| Customers | Tue-Wed 10am-12pm | Launch day if buggy |

### Technical requirements

| Element | Requirement |
|---------|-------------|
| UTM parameters | Required on all links |
| Unsubscribe | Required, prominent |
| Plain text | Required alternative |
| Preview test | Desktop + mobile + Outlook |

---

## Sequence integration

### Launch day sequence (prospects)

| Email | Timing | Subject | Goal |
|-------|--------|---------|------|
| 1 | T-0 | Launch announcement | Awareness |
| 2 | T+3 | "Did you see [Feature]?" | Remind non-openers |
| 3 | T+7 | Customer proof / case study | Social proof |
| 4 | T+14 | Last chance / offer expires | Urgency |

### Launch day sequence (customers)

| Email | Timing | Subject | Goal |
|-------|--------|---------|------|
| 1 | T-0 | Launch announcement | Awareness + adoption |
| 2 | T+5 | "Getting started with [Feature]" | Enable adoption |
| 3 | T+10 | "Tips for [Feature]" | Deepen usage |

---

## Performance benchmarks

### Target metrics by segment

| Metric | Prospects | Customers |
|--------|-----------|-----------|
| Open rate | 25-35% | 40-50% |
| Click rate | 3-5% | 8-12% |
| CTA clicks | 2-4% | 5-8% |
| Unsubscribe | <0.5% | <0.2% |

### A/B testing priority

| Test | Impact | Effort |
|------|--------|--------|
| Subject line | High | Low |
| CTA button text | High | Low |
| Send time | Medium | Low |
| Opening hook | Medium | Medium |
| Email length | Low | Medium |

---

## Example: Prospect email

```
Subject: Stop manually updating ticket status
Preview: Auto-sync is here. Finally.

---

Hi Sarah,

Every engineering leader I talk to has the same complaint: developers hate updating tickets manually, and the data is never accurate anyway.

Today we're launching Git Sync — automatic two-way sync between your codebase and your issues.

Here's what changes:

→ Issues auto-close when PRs merge — no more stale tickets
→ Status updates happen automatically — developers stay in flow
→ Real-time accuracy — boards reflect reality, not yesterday

"We eliminated 4 hours of weekly status meetings." — VP Eng, Scale AI

[Try Git Sync free →]

Not ready to try? [Watch the 2-min demo]

Best,
Alex
Head of Product Marketing

---

P.S. Free for all plans. No setup required.
```

## Example: Customer email

```
Subject: Git Sync is live in your account
Preview: Your issues now update automatically

---

Hi Marcus,

Great news — Git Sync is now live in your workspace.

You told us manual status updates were your team's biggest friction point. We listened.

Here's what's new:

→ Connect GitHub/GitLab — one-click setup in Settings > Integrations
→ Auto-close on merge — issues close when PRs are merged
→ Bi-directional sync — create issues from commits, link PRs automatically

To get started: Settings → Integrations → Git Sync → Connect

[Set up Git Sync →]

Questions? Reply to this email or ping your CSM, Jamie.

Best,
The [Product] Team

---

P.S. [Watch the 90-second setup walkthrough →]
```
