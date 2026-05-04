# Process flowchart

Visual reference for the full competitor-research execution path. Each phase
maps to a step file in `references/steps/`.

---

```text
┌──────────────────────────────────────────────────────────────┐
│                 COMPETITOR RESEARCH PROCESS                   │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 1: INPUT VALIDATION                                     │
│ □ Required: Competitor name, Website URL                      │
│ □ Optional: Market category, client context, specific Qs      │
│ → If ambiguous name: Confirm competitor identity with user    │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 2: DIMENSION RESEARCH (13 dimensions)                   │
│ Step 2.1: Company → funding, team, revenue                    │
│ Step 2.2: Product → features, differentiators                 │
│ Step 2.3: ICP → segments, personas, customers                 │
│ Step 2.4: Pricing → plans, model, value metric                │
│ Step 2.5: Reviews → G2, Capterra, sentiment                   │
│ Step 2.6: Content → blog, formats, lead magnets, events       │
│ Step 2.7: Launches → recent announcements                     │
│ Step 2.8: SEO/AEO → SERP positions (use Ahrefs MCP if avail)  │
│ Step 2.9: Technographics → integrations (limited)             │
│ Step 2.10: Openings → hiring signals                          │
│ Step 2.11: GTM → sales motion, outbound signals, messaging    │
│ Step 2.12: LinkedIn/Social → organic strategy, founder        │
│ Step 2.13: Paid advertising → LinkedIn/Meta/Google ads        │
│ ✓ Checkpoint: All dimensions researched, sources documented   │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 3: SYNTHESIS & GAPS                                     │
│ Step 3.1: Assign confidence levels (High/Med/Low)             │
│ Step 3.2: Write executive summary                             │
│ Step 3.3: Document data gaps with follow-up actions           │
│ Step 3.4: Run quality verification                            │
│ ✓ Checkpoint: No unsourced claims, gaps documented            │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 4: AGGREGATE ANALYSIS (Multi-Competitor)                │
│ Trigger: 2+ competitors researched for same client            │
│ Step 4.1: Identify cross-competitor patterns                  │
│ Step 4.2: Build threat matrix                                 │
│ Step 4.3: Analyze market positioning dynamics                 │
│ Step 4.4: Feature parity analysis                             │
│ Step 4.5: Credibility signal audit                            │
│ Step 4.6: Extract strategic recommendations                   │
│ ✓ Checkpoint: Aggregate insights documented                   │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ SELF-EVALUATION                                               │
│ □ Completeness: All 13 dimensions addressed?                  │
│ □ Evidence: Every data point has source or "Not available"?   │
│ □ Guardrails: No invented data? No unsourced claims?          │
│ → If issues found: Flag low-confidence areas                  │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ REVIEW GATE: Level 1 (Quick Review)                           │
│ Present: Executive summary, confidence breakdown              │
│ Actions: [Approve] [Dig deeper on X] [Research more]          │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ CHAIN SUGGESTIONS                                             │
│ → "Want me to research additional competitors?"               │
│ → "Ready to run positioning with this competitive context?"   │
│ → "Should I generate battlecard content from this?"           │
│ → "Ready for aggregate analysis across all competitors?"      │
│ → Save as reference example if positive feedback              │
└──────────────────────────────────────────────────────────────┘
```
