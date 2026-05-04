# Process Flowchart

Two-phase workflow with user gate between Phase 1 (Analysis) and Phase 2 (Generation).

```text
┌──────────────────────────────────────────────────────────────┐
│                  TOV GUIDELINES PROCESS                       │
│              (Two-Phase Workflow with User Gate)              │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 1: ANALYSIS                                             │
│ Step 1.1: Discover site structure → page list                 │
│ Step 1.2: Scrape 15-20 pages by priority                      │
│ Step 1.3-1.6: Extract patterns (sentence, paragraph, word,    │
│               structural)                                     │
│ Step 1.7: Score frequency (High 80%+ / Med 40-79% / Low <40%)│
│ Step 1.8: Build content-type voice mapping                    │
│ Step 1.9: Generate voice-in-action examples                   │
│ Step 1.10: Identify inconsistencies                           │
│ Step 1.11: Document gaps                                      │
│ ✓ Output: tov-analysis.md                                     │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ REVIEW GATE: Level 2 (User Review Required)                   │
│ Present: Pattern findings, inconsistencies, gaps              │
│ User Actions: [Confirm] [Correct patterns] [Answer gap Qs]    │
│ → MUST have user review before proceeding to Phase 2          │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 2: GENERATION                                           │
│ Step 2.1: Incorporate user feedback                           │
│ Step 2.2: Generate guidelines (reader, tone, patterns,        │
│           vocabulary, structure, anti-patterns)               │
│ Step 2.3: Add source attribution to every guideline           │
│ ✓ Output: tov-guidelines.md                                   │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ SELF-EVALUATION                                               │
│ □ Completeness: All 6 questions answered?                     │
│ □ Evidence: Every guideline has source URL?                   │
│ □ Guardrails: No invented examples? Gaps marked?              │
│ → If issues found: Flag ungrounded guidelines                 │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ CHAIN SUGGESTIONS                                             │
│ → "Want me to create content using these guidelines?"         │
│ → "Should I apply TOV to landing-page-copy?"                  │
│ → "Ready to generate linkedin-content with this voice?"       │
│ → Save as reference example if positive feedback              │
└──────────────────────────────────────────────────────────────┘
```
