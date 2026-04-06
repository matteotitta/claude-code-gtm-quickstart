---
name: context-loop
description: Run the full context engineering loop — company context, competitor research (parallel), ICP, positioning, messaging
---

# Context engineering loop

You are running the full context engineering loop for a marketing operator. This loop builds their foundational knowledge base — everything downstream depends on these outputs.

**Read the CLAUDE.md first** to get the company name, website, and competitor list.

---

## Phase 0: Verify inputs

Before starting any research, confirm you have everything needed. Read CLAUDE.md and check:

1. **Company name and website** — Is the `## Who I am` section personalized (not the starter placeholder)?
2. **Competitors** — Does `## Competitive landscape` list actual competitor names?
3. **Voice and audiences** — Is `## Voice and style` populated with real adjectives and preferences?

If ANY of these are still placeholder/generic:
- Tell the user: "Your CLAUDE.md hasn't been personalized yet. Run `/quickstart` first to set up your company context, then come back to `/context-loop`."
- Stop here. Do not proceed.

If CLAUDE.md is personalized, confirm the inputs with the user:

"Before I start, let me confirm what I'm working with:

- **Company:** [name] ([website])
- **Competitors:** [list from CLAUDE.md]

I'll research your company first, then all competitors in parallel, then build your ICP, positioning, and messaging — each step feeding the next.

Anything you'd like to add or change before I begin? (e.g., add a competitor, update the website URL)"

Wait for confirmation before proceeding.

---

## Overview

After confirmation, present this:

"Starting the context engineering loop for [Company Name].

This will generate 5 outputs in sequence:

1. **Company context** — your market position, traction data, team, funding (~5 min)
2. **Competitor research** — deep profiles for [list competitors] (~10 min)
   (these run in parallel — one agent per competitor)
3. **ICP research** — who buys from you and why (~5 min)
4. **Positioning** — how you differentiate from alternatives (~3 min)
5. **Product messaging** — your messaging library (~3 min)

Each step feeds the next. Everything saves to the right folder automatically.
Let's begin."

---

## Phase 1: Company context

Run the `/company-context` skill on the user's company.

- Read `.claude/skills/company-context/SKILL.md` and follow its process
- Use the company URL from CLAUDE.md
- Show key findings as they emerge (traction signals, team size, funding, customers)
- Save output to `context/MMYY-company-context.md` (where MMYY is current month/year)

After saving, show a brief summary:
"Done. Key findings: [2-3 bullet highlights]. Saved to context/MMYY-company-context.md"

---

## Phase 2: Competitor research (parallel)

Dispatch one competitor-researcher agent per competitor listed in CLAUDE.md. Run them in parallel.

For each competitor:
- Launch an agent with subagent_type "competitor-researcher"
- The agent should read `.claude/skills/competitor-research/SKILL.md` and run the full analysis
- Each agent saves its output to `context/MMYY-competitor-[name].md`

Show progress as agents complete:
"Dispatching research agents...
→ Agent 1: Researching [Competitor A]...
→ Agent 2: Researching [Competitor B]...
→ Agent 3: Researching [Competitor C]..."

As each completes:
"✓ [Competitor A] complete → context/MMYY-competitor-[name].md"

Wait for ALL agents to complete before moving to Phase 3.

After all complete, show: "All competitor research complete."

---

## Phase 3: ICP research

Run the `/icp-research` skill.

- Read `.claude/skills/icp-research/SKILL.md` and follow its process
- Use the company context AND competitor research outputs as input (read them from context/)
- Save output to `context/MMYY-icp-research.md`

After saving, show a brief summary:
"Done. Key segments identified: [2-3 segment summaries]. Saved to context/MMYY-icp-research.md"

---

## Phase 4: Positioning

Run the `/positioning` skill.

- Read `.claude/skills/positioning/SKILL.md` and follow its process
- Use company context + competitor research + ICP research as input
- Save output to `marketing/product-marketing/MMYY-positioning.md`

After saving, show a brief summary:
"Done. Positioning summary:
- Category: [category]
- Primary alternative: [what they'd use instead]
- Key differentiators: [2-3 bullets]
- Statement: '[one-line positioning statement]'

Saved to marketing/product-marketing/MMYY-positioning.md"

---

## Phase 5: Product messaging

Run the `/product-messaging` skill.

- Read `.claude/skills/product-messaging/SKILL.md` and follow its process
- Use positioning + ICP research as primary input
- Save output to `marketing/product-marketing/MMYY-product-messaging.md`

After saving, show a brief summary:
"Done. Messaging library includes:
- Positioning statement
- Value propositions
- Key differentiators
- Proof points
- Core messaging blocks

Saved to marketing/product-marketing/MMYY-product-messaging.md"

---

## Phase 6: Summary + commit

After all 5 phases complete, show the summary table:

"--- Context engineering loop complete ---

| # | Output | File | Status |
|---|--------|------|--------|
| 1 | Company context | context/MMYY-company-context.md | ✓ |
| 2 | Competitor: [A] | context/MMYY-competitor-[a].md | ✓ |
| 3 | Competitor: [B] | context/MMYY-competitor-[b].md | ✓ |
| ... | ... | ... | ... |
| N | ICP research | context/MMYY-icp-research.md | ✓ |
| N+1 | Positioning | marketing/product-marketing/MMYY-positioning.md | ✓ |
| N+2 | Product messaging | marketing/product-marketing/MMYY-product-messaging.md | ✓ |

These files are now your persistent context. Every future skill you run draws from this foundation."

Then commit all outputs:

```bash
git add context/ marketing/
git commit -m "Add context engineering loop outputs — [Company Name]"
```

"Committed all outputs to git. Your work is saved.

Run `/next-steps` to see what to build next."
