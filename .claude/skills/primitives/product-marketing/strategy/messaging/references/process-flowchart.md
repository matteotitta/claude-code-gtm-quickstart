# Process flowchart — messaging library

Visual flowchart of the full execution path from input validation through review gate.

```text
┌──────────────────────────────────────────────────────────────┐
│                  PRODUCT MESSAGING PROCESS                    │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 1: INPUT VALIDATION                                     │
│ □ Required: Website URL, Product name                         │
│ □ Optional: positioning, icp-behavioural, competitor-research │
│ → If available: Pull context from upstream skills             │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 2: DISCOVERY RESEARCH                                   │
│ Step 1.1: Fetch core pages (5+) → homepage, features, pricing│
│ Step 1.2: Search external data → G2, testimonials, vs pages  │
│ Step 1.3: Extract branded feature names first                 │
│ ✓ Checkpoint: 5+ pages fetched, features documented           │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 3: STRUCTURED EXTRACTION (10 Components)                │
│ 1. Description → core positioning                             │
│ 2. Status quo & alternatives → competitive context            │
│ 3. Pain points → with consequence chains (1st→2nd→3rd)        │
│ 4. Capabilities → linked to features                          │
│ 5. Benefits (Functional) → with customer quotes               │
│ 5.5. Benefits (Emotional & Social) → feelings + perception    │
│ 6. Features → exact branded names                             │
│ 7. Cost of inaction → quantified consequences                 │
│ 8. Common objections → with response frameworks               │
│ 9. Core messaging blocks → tagline, pitch, proof              │
│ ✓ Checkpoint: All components have content or "Not available"  │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 4: VERIFICATION & GAPS                                  │
│ Step 3.1: Source verification → URL + date for every claim    │
│ Step 3.2: Data gaps documentation (Component 10)              │
│ Step 3.3: Quality verification → run checklist                │
│ ✓ Checkpoint: No invented content, all sources cited          │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ SELF-EVALUATION                                               │
│ □ Completeness: All 10 components present?                    │
│ □ Evidence: Every claim has URL + date? Quotes verbatim?      │
│ □ Guardrails: No invented data? Consequence chains complete?  │
│ → If issues found: Flag gaps, suggest follow-up               │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ REVIEW GATE: Level 2 (Standard Review)                        │
│ Present: Full messaging library, confidence breakdown         │
│ Actions: [Approve] [Expand component] [Fill gaps]             │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ CHAIN SUGGESTIONS                                             │
│ → "Ready to create landing-page-copy from this messaging?"    │
│ → "Should I generate sales-enablement battlecards?"           │
│ → "Want me to create audience-specific messaging variants?"   │
│ → Save as reference example if positive feedback              │
└──────────────────────────────────────────────────────────────┘
```
