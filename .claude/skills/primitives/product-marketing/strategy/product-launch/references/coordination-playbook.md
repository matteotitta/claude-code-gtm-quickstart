# Coordination playbook

RACI matrix, handoff protocols, and contingency plans for cross-functional launch coordination.

## RACI matrix

### Pre-launch phase (T-14 to T-1)

| Activity | PMM | Product | Content | Design | Sales | Social | Email | Paid | Partners |
|----------|:---:|:-------:|:-------:|:------:|:-----:|:------:|:-----:|:----:|:--------:|
| Lock timelines/logistics | **R** | I | I | I | I | I | I | I | C |
| QA new feature | C | **R** | I | I | I | - | - | - | - |
| Pre-launch LinkedIn teasers | A | C | C | **R** | I | **R** | - | - | I |
| Team sharing templates | **R** | C | C | **R** | I | I | - | - | - |
| Product landing page | A | C | **R** | **R** | I | - | - | - | - |
| Website banner | A | C | C | **R** | I | - | - | - | - |
| In-app touchpoints | A | **R** | C | C | I | - | - | - | - |

### Launch day (T-0)

| Activity | PMM | Product | Content | Design | Sales | Social | Email | Paid | Partners |
|----------|:---:|:-------:|:-------:|:------:|:-----:|:------:|:-----:|:----:|:--------:|
| Blog post publish | A | C | **R** | C | I | I | I | - | - |
| Email announcement | A | C | C | C | I | - | **R** | - | - |
| LinkedIn announcement | A | C | C | C | I | **R** | - | - | - |
| Team amplification | **R** | I | I | I | I | I | - | - | - |
| AMA webinar | A | **R** | C | C | I | C | - | - | - |

### Post-launch phase (T+1 to T+14)

| Activity | PMM | Product | Content | Design | Sales | Social | Email | Paid | Partners |
|----------|:---:|:-------:|:-------:|:------:|:-----:|:------:|:-----:|:----:|:--------:|
| Creator/partner amplification | A | - | C | - | - | C | - | - | **R** |
| Paid campaigns | A | - | C | **R** | - | - | - | **R** | - |
| Post-launch LinkedIn series | A | C | C | - | I | **R** | - | - | - |
| Community announcements | A | C | C | - | I | **R** | - | - | - |
| Newsletter placement | A | - | C | - | I | - | **R** | - | - |
| Sales enablement rollout | A | C | - | - | **R** | - | - | - | - |

**Legend:** R = Responsible | A = Accountable | C = Consulted | I = Informed | - = Not involved

---

## Owner definitions

| Role | Responsibilities |
|------|------------------|
| **PMM (Product Marketing)** | Strategy, messaging, coordination, accountability |
| **Product** | Feature readiness, in-app touchpoints, technical accuracy |
| **Content** | Blog post, landing page copy, documentation |
| **Design** | Visual assets, media kit, ad creatives |
| **Sales** | Enablement adoption, customer conversations |
| **Social** | LinkedIn execution, community management |
| **Email** | Email campaigns, newsletter placement |
| **Paid** | Ad campaign setup and optimization |
| **Partners** | Creator and partner amplification coordination |

---

## Handoff protocols

### Content → Design handoff

**When:** T-7 (landing page), T-5 (blog post), T-3 (ad creatives)

**Deliverables from Content:**
- [ ] Final copy approved by PMM
- [ ] Image/screenshot requirements specified
- [ ] Alt text for all images
- [ ] CTA button text and links

**Deliverables to Design:**
- [ ] Copy document with all text
- [ ] Reference examples or style guidance
- [ ] Deadline and review schedule
- [ ] Stakeholder for approvals

**Handoff format:**
```
Subject: [Launch name] — [Asset] copy handoff

Copy document: [Link]
Reference: [Link or description]
Screenshots needed: [List with descriptions]
Deadline: [Date and time]
Approver: [Name]
Notes: [Any special requirements]
```

### PMM → Sales handoff

**When:** T-3 (preview), T-1 (full distribution)

**Deliverables:**
- [ ] Enablement deck (PPTX)
- [ ] One-pager (PDF)
- [ ] Battle card updates (Markdown or PDF)
- [ ] Talk tracks (Markdown)
- [ ] Objection FAQs (Markdown)
- [ ] Demo recording (video link)

**Handoff format:**
```
Subject: [Feature name] launch — Sales enablement package

Launch date: [Date]
Training session: [Date/time/link]

Assets:
- Enablement deck: [Link]
- One-pager: [Link]
- Battle card update: [Link]
- Talk tracks: [Link]
- Objection FAQs: [Link]
- Demo recording: [Link]

Questions? Reply to this email or ping [PMM name].
```

### Social → Team for amplification

**When:** T-0 (launch morning)

**Deliverables:**
- [ ] Sharing templates (3-4 variations)
- [ ] Link to founder post to amplify
- [ ] Timing guidance
- [ ] Sample comments to leave

**Handoff format:**
```
Subject: 🚀 [Feature name] launch day — Amplification templates

We're live! Here's how to help amplify:

1. Like and comment on [Founder]'s post: [Link]
2. Share using one of these templates: [Link]
3. Post within the next 2-4 hours for best reach

Templates:
---
[Template 1]
---
[Template 2]
---
[Template 3]

Questions? Ping [Social lead] in #launch-[feature] Slack channel.
```

---

## Review and approval workflow

### Approval matrix

| Asset | First review | Final approval | Turnaround |
|-------|--------------|----------------|------------|
| Strategy brief | Product | PMM | 48 hours |
| Landing page copy | PMM | PMM + Product | 48 hours |
| Blog post | PMM | PMM + Product | 48 hours |
| LinkedIn posts | PMM | Founder (for founder posts) | 24 hours |
| Email copy | PMM | Email lead | 24 hours |
| Sales enablement | PMM | Sales lead | 48 hours |
| Ad creatives | PMM | PMM + Design | 24 hours |
| Founder video script | PMM | Founder | 24 hours |

### Review process

**Round 1: Content review**
- Focus: Accuracy, messaging alignment, completeness
- Reviewer: PMM
- Turnaround: 24 hours

**Round 2: Stakeholder review**
- Focus: Technical accuracy, brand alignment
- Reviewer: Product, Design, Legal (if needed)
- Turnaround: 24 hours

**Round 3: Final approval**
- Focus: Ready to publish
- Approver: Per approval matrix
- Turnaround: Same day

### Feedback format

```
[Asset name] — Review feedback

Overall: ✅ Approved | ⚠️ Needs changes | ❌ Not ready

Changes required:
1. [Section/line] — [Issue] — [Suggested fix]
2. [Section/line] — [Issue] — [Suggested fix]

Questions:
1. [Question]

Approved by: [Name]
Date: [Date]
```

---

## Communication cadence

### Slack channel structure

| Channel | Purpose | Members |
|---------|---------|---------|
| #launch-[feature] | Real-time coordination | All stakeholders |
| #launch-[feature]-content | Content review and feedback | Content, PMM, Design |
| #launch-[feature]-sales | Sales enablement coordination | Sales, PMM |

### Standing meetings

| Meeting | Frequency | Duration | Attendees |
|---------|-----------|----------|-----------|
| Launch kickoff | Once (T-14) | 60 min | All stakeholders |
| Daily standup | Daily (T-7 to T+3) | 15 min | Core team |
| Asset review | As needed | 30 min | Relevant stakeholders |
| Post-launch retro | Once (T+14) | 45 min | All stakeholders |

### Daily standup format

```
1. What shipped yesterday?
2. What's shipping today?
3. Any blockers?
4. Timeline changes?
```

---

## Contingency plans

### Feature delay

**Trigger:** Product confirms feature won't be ready by T-0

**Response:**
1. PMM assesses delay length (1-3 days vs. 1+ week)
2. If 1-3 days: Slide timeline, update all stakeholders
3. If 1+ week: Pause pre-launch activities, reassess strategy

**Communication template:**
```
Subject: [Feature name] launch — Timeline update

Team,

[Feature name] launch is moving from [original date] to [new date].

Reason: [Brief explanation]

Updated timeline:
- Pre-launch teasers: [New dates]
- Launch day: [New date]
- Post-launch: [New dates]

Action required:
- [Action 1]
- [Action 2]

Questions? Reply here or ping me.

[PMM name]
```

### Negative customer feedback

**Trigger:** Significant negative feedback in first 24-48 hours

**Response:**
1. PMM + Product assess severity (bug vs. design vs. expectations)
2. Determine response: Fix, communicate, or both
3. Coordinate response across channels

**Communication options:**
- Bug: "We're aware and fixing it. ETA: [time]"
- Design: "We're listening — here's why we made this choice..."
- Expectations: "Here's what [Feature] is designed for..."

### Competitive response

**Trigger:** Competitor announces similar feature same day/week

**Response:**
1. Assess overlap and differentiation
2. Update battle cards if needed
3. Brief sales team on positioning
4. Optional: Social response if appropriate

---

## Asset tracking

### Master checklist

```markdown
## [Feature name] launch — Asset tracker

### Strategy phase
- [ ] Product feature brief — Owner: [Name] — Due: T-14 — Status: [🟡 In progress]
- [ ] Narrative angle — Owner: [Name] — Due: T-12 — Status: [🟡 In progress]
- [ ] Business objectives — Owner: [Name] — Due: T-12 — Status: [🟡 In progress]
- [ ] Kick-off meeting — Owner: [Name] — Due: T-10 — Status: [🟡 In progress]

### Development phase
- [ ] Product landing page — Owner: [Name] — Due: T-3 — Status: [⚪ Not started]
- [ ] Product media kit — Owner: [Name] — Due: T-3 — Status: [⚪ Not started]
- [ ] Website banner — Owner: [Name] — Due: T-1 — Status: [⚪ Not started]
- [ ] In-app touchpoints — Owner: [Name] — Due: T-1 — Status: [⚪ Not started]
- [ ] Blog post — Owner: [Name] — Due: T-0 — Status: [⚪ Not started]
- [ ] Founder video — Owner: [Name] — Due: T-0 — Status: [⚪ Not started]
- [ ] LinkedIn series — Owner: [Name] — Due: T-7 to T+5 — Status: [⚪ Not started]
- [ ] Team sharing templates — Owner: [Name] — Due: T-1 — Status: [⚪ Not started]
- [ ] Email announcement — Owner: [Name] — Due: T-0 — Status: [⚪ Not started]
- [ ] Newsletter placement — Owner: [Name] — Due: T+7 — Status: [⚪ Not started]
- [ ] Ad creatives — Owner: [Name] — Due: T-1 — Status: [⚪ Not started]
- [ ] Sales enablement — Owner: [Name] — Due: T-3 — Status: [⚪ Not started]
- [ ] Talk tracks — Owner: [Name] — Due: T-3 — Status: [⚪ Not started]

### Deployment phase
- [ ] Timeline finalized — Owner: [Name] — Due: T-10 — Status: [⚪ Not started]
- [ ] All owners confirmed — Owner: [Name] — Due: T-10 — Status: [⚪ Not started]
- [ ] Contingency plan reviewed — Owner: [Name] — Due: T-7 — Status: [⚪ Not started]

Status key: 🟢 Complete | 🟡 In progress | 🔴 Blocked | ⚪ Not started
```

---

## Post-launch retro template

**When:** T+14

**Attendees:** All launch stakeholders

**Agenda:**

| Time | Topic | Lead |
|------|-------|------|
| 0:00-0:10 | Results review | PMM |
| 0:10-0:20 | What went well | All |
| 0:20-0:30 | What could improve | All |
| 0:30-0:40 | Process improvements | All |
| 0:40-0:45 | Action items | PMM |

**Results template:**

| Metric | Target | Actual | Delta |
|--------|--------|--------|-------|
| Pipeline created | $[X] | $[Y] | [%] |
| Demo requests | [X] | [Y] | [%] |
| Feature adoption | [X]% | [Y]% | [%] |
| Impressions | [X] | [Y] | [%] |
| Engagement rate | [X]% | [Y]% | [%] |

**Retro notes template:**

```markdown
## [Feature name] launch retro

Date: [Date]
Attendees: [Names]

### Results summary
[2-3 sentences on overall performance vs. targets]

### What went well
- [Item 1]
- [Item 2]
- [Item 3]

### What could improve
- [Item 1]
- [Item 2]
- [Item 3]

### Process improvements for next launch
- [Improvement 1] — Owner: [Name]
- [Improvement 2] — Owner: [Name]
- [Improvement 3] — Owner: [Name]

### Open questions
- [Question 1]
- [Question 2]
```
