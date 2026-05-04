# Pipeline and team playbook

Reference file for `content-operations` Phase 3: Production Pipeline & Team.

---

## Kanban pipeline template

### Stage definitions

| Stage | Definition | Owner | Entry Criteria | Exit Criteria |
|-------|-----------|-------|---------------|---------------|
| **Idea Backlog** | Raw ideas: questions, research inputs, team brainstorms, audience signals | Anyone | Idea captured with source | Approved by Content Lead, angle defined |
| **Briefed** | Idea assigned with full context: angle, series link, target channel, format, reference material | Content Lead | Approved idea with angle | Brief complete with all fields, creator assigned |
| **Draft** | First version written/designed | Writer or Designer | Brief received, creator confirmed | Draft complete, meets brief requirements, source material linked |
| **Review** | QA/editing in progress: voice check, format check, fact check | QA/Editor | Draft submitted for review | All checklist items passed, edits incorporated |
| **Approved** | Content Lead sign-off, ready to schedule | Content Lead | Review passed | Final approval granted, no outstanding issues |
| **Scheduled** | Date/time locked, queued in publishing tool | Content Lead | Approved, publishing slot available | Publishing tool configured, preview confirmed |
| **Published** | Live on channel | Automated/Manual | Scheduled time reached | Confirmed live, no errors |
| **Analyzed** | Performance reviewed, learnings captured | Content Lead | 72h+ after publishing (LinkedIn), 1 week (other channels) | TWE logged, series tracker updated, learnings captured |

### Card fields

Every content card in the pipeline includes:

| Field | Required? | Description | Example Values |
|-------|-----------|-------------|---------------|
| **Title** | Yes | Working title or topic | "GTM Debt Part 3: Launch Debt" |
| **Pillar** | Yes | Content pillar from strategy | "Positioning & messaging" |
| **Funnel stage** | Yes | TOFU / MOFU / BOFU | "TOFU" |
| **Channel** | Yes | Target publication channel | "LinkedIn" |
| **Format** | Yes | Content format | "Text post", "Carousel", "Video clip" |
| **Series** | If applicable | Series name and installment | "GTM Debt (3 of 5)" |
| **Owner** | Yes | Current assignee by role | "Writer: Alex" |
| **Due date** | Yes | Deadline for current stage | "2026-02-15" |
| **Source** | Recommended | Where the idea originated | "Customer call 2/3", "Competitor post", "Team brainstorm" |
| **Derivative parent** | If applicable | Anchor content this derives from | "Newsletter #12: Context Engineering" |
| **Brief link** | From Briefed stage | Link to full brief | Notion/Google Doc URL |
| **Asset links** | From Draft stage | Links to drafts, designs, clips | Figma/Canva/Google Doc URLs |
| **Performance** | After Analyzed | TWE score, engagement notes | "TWE: 2.3, 45 comments, 12 saves" |

---

## Team role definitions

### Content Lead

**Purpose:** Strategic alignment, quality control, and pipeline management.

| Responsibility | Frequency | Time |
|---------------|-----------|------|
| Backlog triage and prioritization | Weekly (Sunday review) | 30-45 min |
| Brief creation for new content | Per content piece | 15-30 min each |
| Review and approval of drafts | Per content piece | 10-20 min each |
| Performance review and series tracking | Weekly | 20-30 min |
| Team coordination and blocker resolution | As needed | Varies |
| Pillar mix and funnel ratio monitoring | Weekly | 10 min |

**Time commitment by team size:**
- Solo: 3-5 hrs/week (combined with Writer)
- Small (2-3): 5-8 hrs/week
- Full (4+): 8-12 hrs/week

### Writer/Creator

**Purpose:** Content creation — drafting posts, scripts, copy, and briefs for designers.

| Responsibility | Frequency | Time |
|---------------|-----------|------|
| Draft LinkedIn posts | Per assignment | 30-60 min each |
| Draft newsletter editions | Weekly or biweekly | 2-4 hrs each |
| Write video scripts | Per assignment | 1-2 hrs each |
| Create copy briefs for designers | Per assignment | 15-30 min each |
| Research and source material prep | Per content piece | 15-30 min each |
| Incorporate review feedback | Per content piece | 10-20 min each |

**Time commitment by team size:**
- Solo: 8-12 hrs/week (combined with Content Lead)
- Small (2-3): 10-15 hrs/week
- Full (4+): 15-20 hrs/week

### Designer

**Purpose:** Visual content creation — carousels, infographics, thumbnails, graphics.

| Responsibility | Frequency | Time |
|---------------|-----------|------|
| Create LinkedIn carousels | Per assignment | 1-2 hrs each |
| Create infographics | Per assignment | 2-3 hrs each |
| Design YouTube thumbnails | Per video | 30-60 min each |
| Create quote graphics | Per assignment | 15-30 min each |
| Video clipping and editing | Per episode/recording | 1-3 hrs each |
| Brand consistency maintenance | Ongoing | 1 hr/week |

**Time commitment by team size:**
- Solo: 3-5 hrs/week (freelance or AI-assisted with Canva/Figma templates)
- Small (2-3): 5-8 hrs/week
- Full (4+): 8-12 hrs/week

### QA/Editor

**Purpose:** Quality assurance — voice checks, format checks, fact checks, link verification.

| Responsibility | Frequency | Time |
|---------------|-----------|------|
| Voice check against TOV guidelines | Per content piece | 5-10 min each |
| Format check (character count, structure) | Per content piece | 5 min each |
| Fact check (claims, data, links) | Per content piece | 5-10 min each |
| Proofread (spelling, grammar, punctuation) | Per content piece | 5 min each |
| Brand consistency check (visuals) | Per design piece | 5 min each |

**Time commitment by team size:**
- Solo: Combined with Content Lead role
- Small (2-3): 3-5 hrs/week
- Full (4+): 5-8 hrs/week

### Solo operator adaptation

When one person handles all roles:

| Combined Role | Activities | Time |
|--------------|-----------|------|
| Content Lead + Writer + QA | Strategy, writing, self-editing, pipeline management | 12-18 hrs/week |
| Designer (outsourced) | Carousels, infographics, thumbnails — freelance or AI-assisted | 3-5 hrs/week (external) |

**Tips for solo operators:**
- Batch content creation: dedicate 2-3 blocks per week to writing
- Use templates aggressively — don't design from scratch
- Self-QA checklist (below) replaces dedicated QA role
- Automate scheduling with Scripe, Buffer, or Typefully

---

## Handoff workflows

### Text content workflow

```
Writer                    QA/Editor                Content Lead
  │                          │                        │
  ├─ Create draft            │                        │
  ├─ Link source material    │                        │
  ├─ Self-check (see below)  │                        │
  ├─ Move to Review ────────▶│                        │
  │                          ├─ Voice check            │
  │                          ├─ Format check           │
  │                          ├─ Fact check             │
  │                          ├─ Return with edits ────▶│ (if issues)
  │  ◀── Incorporate edits ──┤                        │
  │                          ├─ Pass ────────────────▶│
  │                          │                        ├─ Final review
  │                          │                        ├─ Approve
  │                          │                        └─ Schedule
```

### Video content workflow

```
SME/Founder              Designer                 Writer                  QA                    Content Lead
  │                        │                        │                      │                       │
  ├─ Record session        │                        │                      │                       │
  ├─ Upload to Riverside ─▶│                        │                      │                       │
  │                        ├─ Clip best moments     │                      │                       │
  │                        ├─ Add subtitles         │                      │                       │
  │                        ├─ Create thumbnail      │                      │                       │
  │                        ├─ Pass clips ──────────▶│                      │                       │
  │                        │                        ├─ Write post copy     │                       │
  │                        │                        ├─ Write captions      │                       │
  │                        │                        ├─ Pass to Review ────▶│                       │
  │                        │                        │                      ├─ Caption check        │
  │                        │                        │                      ├─ Thumbnail check      │
  │                        │                        │                      ├─ Brand check          │
  │                        │                        │                      ├─ Pass ───────────────▶│
  │                        │                        │                      │                       ├─ Approve
  │                        │                        │                      │                       └─ Schedule
```

### Graphics content workflow

```
Writer                    Designer                 QA/Editor              Content Lead
  │                        │                        │                       │
  ├─ Create copy brief     │                        │                       │
  ├─ Link brand guidelines │                        │                       │
  ├─ Pass to Designer ────▶│                        │                       │
  │                        ├─ Create visual          │                       │
  │                        ├─ Apply brand            │                       │
  │                        ├─ Pass to Review ───────▶│                       │
  │                        │                        ├─ Brand consistency     │
  │                        │                        ├─ Readability           │
  │                        │                        ├─ Copy accuracy         │
  │                        │                        ├─ Return edits ──────▶│ (if issues)
  │                        │  ◀── Incorporate ──────┤                       │
  │                        │                        ├─ Pass ───────────────▶│
  ├─ Add post copy         │                        │                       ├─ Final review
  │                        │                        │                       ├─ Approve
  │                        │                        │                       └─ Schedule
```

---

## QA checklists

### Voice check (all content types)

- [ ] Sounds like the author, not generic AI
- [ ] No corporate buzzwords ("innovative", "leverage", "synergy", "solutions")
- [ ] Operator-first tone — direct, active voice
- [ ] Contractions used naturally ("I'm", "you're", "it's")
- [ ] Would pass the 100 Posts Test — feels authentic at scale

### Format check (by channel)

**LinkedIn text post:**
- [ ] Hook in first 2 lines (before "see more")
- [ ] Whitespace between paragraphs (scannable)
- [ ] Under 3,000 characters (check with character counter)
- [ ] No external links in post body (link in first comment if needed)
- [ ] CTA is clear and specific

**LinkedIn carousel:**
- [ ] Cover slide has a clear hook
- [ ] 8-10 slides maximum
- [ ] One concept per slide
- [ ] Brand-consistent design
- [ ] Final slide has CTA

**Newsletter:**
- [ ] Subject line under 50 characters
- [ ] Preview text is intentional (not auto-generated)
- [ ] All links have UTM parameters
- [ ] Images have alt text
- [ ] CTA is clear

**YouTube:**
- [ ] Title is SEO-optimized and under 60 characters
- [ ] Thumbnail is high-contrast with readable text
- [ ] Description includes timestamps and links
- [ ] Tags include relevant keywords
- [ ] End screen configured

### Fact check (all content types)

- [ ] Claims are traceable to source material
- [ ] No invented metrics, quotes, or testimonials
- [ ] Client names used only with permission
- [ ] External data cited with source
- [ ] Financial figures verified against source files
