# Example: Linear Git Sync launch

Complete worked example of a product launch using this skill. Feature: Linear Git Sync (automatic issue-code synchronization).

---

## Strategy brief

### Product feature brief

| Field | Value |
|-------|-------|
| **Feature name** | Git Sync |
| **Category** | Major feature |
| **Release date** | March 15, 2024 |
| **Availability** | All plans (Free, Pro, Business, Enterprise) |

**Description:**
Git Sync automatically connects Linear issues to GitHub and GitLab repositories, enabling bi-directional synchronization between codebase activity and issue status. When PRs merge, linked issues close automatically. When commits reference issues, they link automatically.

**Target personas:**

| Persona | Role | Why they care |
|---------|------|---------------|
| **Primary** | Engineering Manager | Needs accurate boards without manual updates |
| **Secondary** | Software Engineer | Hates updating ticket status, wants to stay in flow |

**Key capabilities:**

| Capability | Benefit | Feature |
|------------|---------|---------|
| Automatic issue closing | Boards stay accurate without manual work | PR-to-Issue Linking |
| Bi-directional sync | Create issues from commits, link PRs automatically | Git Integration |
| Real-time updates | Status reflects reality, not yesterday | Live Sync |

**Differentiation:**

| Differentiator | vs. Jira | Evidence |
|----------------|----------|----------|
| Real-time sync | Jira requires webhooks, delayed updates | Sub-second updates in testing |
| Zero configuration | Jira requires extensive setup | One-click connect |
| Bi-directional | Jira sync is mostly one-way | Feature demo |

---

### Narrative angle

**Big idea:**
"Your issue tracker should be invisible — updating itself while you ship."

**Story arc:**

| Stage | Message | Supporting point |
|-------|---------|------------------|
| **Problem** | Developers hate updating tickets, and the data is always wrong | 4+ hours/week on status meetings per team |
| **Insight** | The truth about project status already exists in your codebase | Commits, PRs, and merges tell the story |
| **Solution** | Git Sync reads your codebase and keeps issues current automatically | One-click setup, real-time sync |
| **Proof** | Early access teams eliminated status meetings | Vercel case study |
| **Future** | AI-powered issue creation from commits | Roadmap hint |

**Hook variations:**

| Type | Copy |
|------|------|
| **Contrarian** | "Your project management tool shouldn't need you to manage it." |
| **Curiosity** | "What if your issues updated themselves?" |
| **Proof-first** | "Vercel eliminated 4 hours of weekly status meetings. Here's how." |
| **Problem** | "Developers spend 4+ hours/week updating tickets. That ends today." |
| **News** | "Git Sync is here: automatic issue updates, zero configuration." |

**Message hierarchy:**

| Level | Message |
|-------|---------|
| **Primary** | Automatic issue updates that keep your boards accurate |
| **Secondary** | Bi-directional sync between your code and your issues |
| **Supporting** | One-click setup, real-time updates, works with GitHub and GitLab |

---

### Business objectives

**Pipeline and revenue:**

| Metric | Target | Measurement |
|--------|--------|-------------|
| Qualified pipeline | $500K in 30 days | Salesforce attribution |
| Demo requests | 200 | Form submissions |
| Trial-to-paid conversion | +5% lift | Product analytics |

**Adoption:**

| Metric | Target | Measurement |
|--------|--------|-------------|
| Feature activation (new) | 40% in 30 days | Product analytics |
| Feature activation (existing) | 25% in 30 days | Product analytics |

**Awareness:**

| Metric | Target | Measurement |
|--------|--------|-------------|
| Total impressions | 500K | Social + paid |
| Blog post views | 20K | Analytics |
| Video views | 10K | Platform analytics |

---

## Selected assets

### LinkedIn launch day post (Founder)

```
Today we're launching Git Sync.

For the past 6 months, the #1 request from engineering teams has been: "Let my issues update themselves."

Developers hate updating ticket status. PMs hate chasing updates. And the data is never accurate anyway.

Git Sync fixes this:

→ Issues close automatically when PRs merge
→ PRs link to issues automatically from commits
→ Your boards always reflect what's actually happening

No setup. No webhooks. Just connect GitHub or GitLab and it works.

Vercel's team eliminated 4 hours of weekly status meetings after turning this on.

Try it: linear.app/sync

Link in comments 👇
```

### Email announcement (Prospects)

```
Subject: Stop manually updating ticket status
Preview: Auto-sync is here. Finally.

Hi [First Name],

Every engineering leader I talk to has the same complaint: developers hate updating tickets, and the data is always wrong.

Today we're launching Git Sync — automatic bi-directional sync between Linear and your codebase.

Here's what changes:

→ Issues close automatically when PRs merge
→ Status updates happen in real-time
→ Your boards finally reflect reality

"We eliminated 4 hours of weekly status meetings." — VP Engineering, Vercel

[Try Git Sync free →]

Not ready? [Watch the 2-min demo]

Best,
Karri Saarinen
CEO, Linear

P.S. Works with GitHub and GitLab. No setup required.
```

### Email announcement (Customers)

```
Subject: Git Sync is live in your workspace
Preview: Your issues now update automatically

Hi [First Name],

Great news — Git Sync is now available in your Linear workspace.

You told us manual status updates were your biggest friction point. We listened.

Here's what's new:

→ Connect GitHub or GitLab in Settings > Integrations
→ Issues auto-close when PRs merge
→ Commits automatically link to issues

To set it up: Settings → Integrations → Git Sync

Takes about 2 minutes.

[Set up Git Sync →]

Questions? Reply to this email or check out our setup guide.

Best,
The Linear Team

P.S. This works for all plans — including Free.
```

### Blog post outline

```markdown
# Git Sync: Your issues now update automatically

*Published March 15, 2024*

[Founder video embed — 2:30]

## The end of manual status updates

[Hook: Problem of manual updates]

[What we're launching]

[Why now]

## What's new

### Automatic issue closing

[Description + screenshot]

### Bi-directional linking

[Description + screenshot]

### Real-time sync

[Description + screenshot]

## Getting started

### Step 1: Connect your repository

[Instructions + screenshot]

### Step 2: Configure sync rules

[Instructions]

### Step 3: Start shipping

[Link to docs]

## Availability

Git Sync is available now for all plans.

| Plan | Access |
|------|--------|
| Free | ✓ Full access |
| Pro | ✓ Full access |
| Business | ✓ Full access |
| Enterprise | ✓ Full access |

## Try it now

[CTA section]
```

### Sales enablement one-pager

```
LINEAR GIT SYNC
Your issues now update automatically

THE PROBLEM
→ Developers spend 4+ hours/week on status updates
→ Boards are always out of date
→ PMs waste time chasing updates

THE SOLUTION
Git Sync: automatic bi-directional sync between Linear and your codebase

KEY CAPABILITIES
┌─────────────────────┬─────────────────────┬─────────────────────┐
│ Auto-Close          │ Bi-Directional      │ Real-Time           │
│ Issues close when   │ Create issues from  │ Status updates      │
│ PRs merge           │ commits, link PRs   │ instantly           │
└─────────────────────┴─────────────────────┴─────────────────────┘

PROOF
"We eliminated 4 hours of weekly status meetings."
— VP Engineering, Vercel

HOW IT WORKS
1. Connect GitHub or GitLab (1 click)
2. Configure sync rules (optional)
3. Start shipping

AVAILABILITY                              NEXT STEPS
All plans — including Free                [Try Git Sync →]
No setup fee, no add-on cost              linear.app/sync
```

---

## Deployment timeline

### Pre-launch (T-14 to T-1)

| Date | Activity | Owner | Status |
|------|----------|-------|--------|
| Mar 1 | Lock creator/partner timelines | PMM | ✓ |
| Mar 5 | QA Git Sync in production | Product | ✓ |
| Mar 8 | LinkedIn teaser #1 (problem) | Karri | ✓ |
| Mar 10 | LinkedIn teaser #2 (webinar) | Karri | ✓ |
| Mar 12 | LinkedIn teaser #3 (BTS) | Karri | ✓ |
| Mar 14 | Landing page live | Content | ✓ |
| Mar 14 | In-app banner live | Product | ✓ |

### Launch day (Mar 15)

| Time | Activity | Owner |
|------|----------|-------|
| 9:00 AM PT | Blog post live | Content |
| 9:00 AM PT | Karri LinkedIn post | Karri |
| 9:15 AM PT | Pin comment with link | Karri |
| 9:30 AM PT | Team amplification | All |
| 10:00 AM PT | Email to prospects | Email |
| 10:00 AM PT | Email to customers | Email |
| 12:00 PM PT | AMA webinar | Karri + Jori |

### Post-launch (Mar 16-29)

| Date | Activity | Owner |
|------|----------|-------|
| Mar 16 | Webinar recap post | Social |
| Mar 16-20 | Creator amplification | Partnerships |
| Mar 18 | Customer proof post | Social |
| Mar 20 | Deep dive post | Social |
| Mar 22 | Newsletter feature | Email |
| Mar 15-29 | Paid campaigns | Paid |
| Mar 15-29 | Sales outbound | Sales |

---

## Results (hypothetical)

| Metric | Target | Actual | Delta |
|--------|--------|--------|-------|
| Pipeline created | $500K | $620K | +24% |
| Demo requests | 200 | 245 | +22% |
| Feature activation | 40% | 38% | -5% |
| Total impressions | 500K | 720K | +44% |
| Blog post views | 20K | 28K | +40% |
| Video views | 10K | 15K | +50% |

**Key learnings:**
- Founder video drove 3x engagement vs. static posts
- Webinar converted at 12% to demo request
- Email to customers had 52% open rate
- Community posts drove unexpected virality

---

## Source attribution

| Asset | Input source |
|-------|--------------|
| Messaging | product-messaging skill output |
| Persona targeting | icp-research skill output |
| Voice and tone | tov-guidelines skill output |
| Competitive framing | competitor-research skill output |
| Sales objections | win-loss-analysis patterns |
