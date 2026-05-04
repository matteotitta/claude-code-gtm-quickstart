---
name: product-launch
version: '2.0'
last_updated: 2026-01-16
author: marketing-team
description: Plans cross-functional product launches with timeline, channel mix, asset checklist, and team coordination across
  marketing, sales, and product. Produces launch brief, deployment calendar, and post-launch measurement plan. Triggers on
  "product launch", "feature release", "launch strategy", "launch plan", "go-to-market launch", or "release coordination".
  Requires positioning and product-messaging as upstream inputs.
goal: Plans cross-functional product launches with timeline, channel mix, asset checklist, and team coordination across marketing,
  sales, and product.
outcome: Plans cross-functional product launches with timeline, channel mix, asset checklist, and team coordination across
  marketing, sales, and product. Produces launch brief, deployment calendar, and post-launch measurement plan. Triggers on
  "product launch", "feature release", "launch strategy",...
primitive: product-marketing
sub_primitive: strategy
ontology_type: launch-plan
review_gate: 2
inputs:
  required:
  - product-messaging
  - positioning
  recommended: []
outputs:
- type: launch-plan
  feeds_into: []
depends_on:
- product-messaging
- positioning
feeds_into: []
owned_by_agent: growth
mcps_used: []
push_targets:
- gdrive
- notion
triggers:
  slash_commands:
  - /product-launch
  natural_language: []
status: draft
locked_by: null
locked_date: null
lock_version: null
sources_count: 0
effort: high
---

# Product launch

Architect and execute cross-functional B2B SaaS product launches that drive sustained pipeline through systematic strategy, asset development, and coordinated deployment. Launches are systems, not events.

---

## Claude Code triggers

**Invoke when user says:**
- "Product launch for [feature/product]"
- "Feature launch plan"
- "Launch strategy for [company]"
- "GTM launch plan"
- "New feature announcement"
- "Create launch assets"
- "Launch timeline for [feature]"
- "Launch checklist"
- "Plan a launch for [feature]"
- "Launch playbook"

**Do NOT invoke when:**
- User wants landing page copy only → use `landing-page-copy`
- User wants product messaging only → use `product-messaging`
- User wants LinkedIn content only → use `linkedin-content`
- User wants email copy only → answer directly or use email templates

---

## Input requirements

### Required

| Input | Description | Source |
|-------|-------------|--------|
| **Product feature brief** | What's launching, target release date | User provides |
| **Product messaging** | Capabilities, benefits, differentiators | `product-messaging` skill or existing |
| **ICP research** | Target personas, pain points, proof points | `icp-behavioural` skill or existing |

### Optional (improve quality)

| Input | How it helps |
|-------|--------------|
| TOV guidelines | Brand voice for all copy assets |
| Competitor launches | Differentiation framing |
| Sales objections | FAQ and enablement content |
| Customer feedback | Proof points and testimonials |
| Launch date | Timeline anchoring |

### Validation

Before proceeding, verify the feature brief includes name, category, description, target personas, key capabilities; product messaging available or generated; ICP research available or generated; launch date confirmed (or flexible window).

If inputs are missing: offer to run `product-messaging` and/or `icp-behavioural` first, or ask the user to provide the brief.

---

## Core frameworks

### Launch philosophy

Most product launches fail because they treat launch as an event rather than a system. A successful launch:

- Builds momentum before launch day (not just on T-0)
- Sustains attention for 2+ weeks post-launch
- Converts awareness into pipeline through multi-touch orchestration
- Enables sales and CS teams to capitalize on momentum
- Creates reusable assets that compound over time

**T-0 is the midpoint, not the destination.**

### Three-phase architecture

| Phase | Purpose | Duration | Deliverables |
|-------|---------|----------|--------------|
| **Strategy** | Define narrative, objectives, positioning | T-14 to T-10 | Strategy brief, narrative angle, success metrics |
| **Development** | Create all launch assets | T-10 to T-1 | 18+ assets across channels |
| **Deployment** | Orchestrate timeline and amplification | T-14 to T+14 | Timeline, coordination playbook |

### Launch tiers

| Tier | Description | Assets required |
|------|-------------|-----------------|
| **Major** | New product, category entry, platform shift | All 18 assets + webinar + paid |
| **Significant** | Major feature, integration, pricing change | 12-15 assets, selective paid |
| **Standard** | Feature improvement, capability expansion | 8-10 core assets |
| **Minor** | Bug fix, UX improvement | Blog post, email, in-app |

### Seasonal alignment

Every launch happens in a cultural context. Check for adjacent cultural moments (±14 days from launch), score alignment fit (Strong/Medium/Weak/Negative), choose strategy (ride the wave, counter-program, ignore, or avoid), and adapt messaging (hooks, imagery, CTAs). See [`references/seasonal-calendar.md`](references/seasonal-calendar.md).

---

## Process

The launch runs in three phases. Read [`references/process.md`](references/process.md) for the full step-by-step (4 strategy steps, 8 development steps, 4 deployment steps, plus per-phase checkpoints and the process flowchart).

Phase summary:

1. **Strategy (T-14 to T-10)** — feature brief, narrative angle, business objectives, kick-off agenda
2. **Development (T-10 to T-1)** — pick tier, then generate website, content, social, email, paid, sales-enablement, and event assets
3. **Deployment (T-14 to T+14)** — pre-launch / launch-day / post-launch timelines + coordination playbook with RACI

---

## Anti-hallucination guardrails

1. **Ground all claims in inputs.** Feature benefits must come from product brief or messaging.
2. **No invented metrics.** Use provided proof points or mark as `[PLACEHOLDER: metric]`.
3. **Quote verbatim.** Customer quotes from ICP research only.
4. **Mark placeholders clearly.** Use `[PLACEHOLDER: description]` for unconfirmed details.
5. **Cite sources.** Link each asset to its input source.

---

## Output

Produce a single launch-package markdown file. Template + iteration prompts library: [`references/output-format.md`](references/output-format.md).

Pre-delivery quality checklist + worked example + anti-examples: [`references/quality.md`](references/quality.md).

Auto-update protocol (feedback signals, pattern detection, skill-update template): [`references/auto-update.md`](references/auto-update.md).

---

## Reference files

| File | Purpose |
|------|---------|
| [`references/process.md`](references/process.md) | Full step-by-step across 3 phases + flowchart |
| [`references/output-format.md`](references/output-format.md) | Launch package template + iteration prompts |
| [`references/quality.md`](references/quality.md) | Pre-delivery checklist + worked example + anti-examples |
| [`references/auto-update.md`](references/auto-update.md) | Feedback signal detection + pattern rules |
| [`references/strategy-template.md`](references/strategy-template.md) | Complete strategy brief structure |
| [`references/seasonal-calendar.md`](references/seasonal-calendar.md) | Cultural moments and alignment |
| [`references/landing-page-spec.md`](references/landing-page-spec.md) | Landing page requirements |
| [`references/linkedin-series-spec.md`](references/linkedin-series-spec.md) | Pre/launch/post LinkedIn templates |
| [`references/email-announcement-spec.md`](references/email-announcement-spec.md) | Email templates |
| [`references/sales-enablement-spec.md`](references/sales-enablement-spec.md) | Enablement templates |
| [`references/coordination-playbook.md`](references/coordination-playbook.md) | RACI matrix and protocols |
| [`references/blog-post-spec.md`](references/blog-post-spec.md) | Blog post requirements |
| [`references/founder-video-spec.md`](references/founder-video-spec.md) | Founder video script spec |
| [`examples/`](examples/) | Worked example launches |

---

## Integration with other skills

| Skill | Relationship | Usage |
|-------|--------------|-------|
| **product-messaging** | Required input | Capabilities, benefits, differentiators for all copy |
| **icp-behavioural** | Required input | Persona targeting, pain points, proof points |
| **tov-guidelines** | Optional input | Voice and tone for all copy assets |
| **landing-page-copy** | Asset generation | Landing page development |
| **sales-enablement** | Asset generation | Battle cards, decks, one-pagers |
| **linkedin-content** | Asset generation | LinkedIn series |

---

## MCP data integration

**Level:** 2 — PM Execution (inherits strategy, operational pulls)

**Inherits from:** product-messaging

### Pulls fresh

| Source | What to pull | Tool | When |
|--------|-------------|------|------|
| **Slack** | Launch coordination threads | `slack_search_public` | Always |

### Fallback (no MCP)

- Use product-messaging output directly
- Manual launch coordination via shared docs
- User-provided timeline and stakeholder info

---

## Changelog

| Version | Date | Changes |
|---------|------|---------|
| 2.0 | 2026-01-16 | Refactored to v2.0 template: structured phases, Inter font output, iteration prompts, auto-update rules |
| 1.0 | Previous | Initial skill creation with three-phase architecture |
