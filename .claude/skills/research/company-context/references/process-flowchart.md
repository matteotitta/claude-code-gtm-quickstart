# Process flowchart

Visual map of company-context phases, checkpoints, review gate, and chain suggestions.

```text
┌──────────────────────────────────────────────────────────────┐
│                  COMPANY CONTEXT PROCESS                      │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 1: INPUT VALIDATION                                     │
│ □ Required: Company identifier (URL, LinkedIn, or name)       │
│ □ Optional: LinkedIn URL, specific questions, call date       │
│ → If ambiguous name: Confirm with user before proceeding      │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 2: INITIAL RESEARCH                                     │
│ Step 1.1: Fetch website → homepage, about, careers            │
│ Step 1.2: Search funding → Crunchbase, TechCrunch             │
│ Step 1.3: Search revenue/team → GetLatka, LinkedIn            │
│ Step 1.4: Extract customer signals → logos, case studies      │
│ ✓ Checkpoint: 4 target questions researched                   │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 3: CONFIDENCE ASSESSMENT                                │
│ Step 2.1: Assign confidence levels (High/Med/Low)             │
│ Step 2.2: Identify conflicting data                           │
│ Step 2.3: Document data gaps                                  │
│ ✓ Checkpoint: All data points have confidence levels          │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ PHASE 4: QUALIFICATION ASSESSMENT                             │
│ Step 3.1: Calculate qualification score (0-25)                │
│ Step 3.2: Assess ICP fit signals                              │
│ Step 3.3: Check red flags                                     │
│ Step 3.4: Generate key observations                           │
│ ✓ Checkpoint: Score calculated, red flags checked             │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ SELF-EVALUATION                                               │
│ □ Completeness: All 4 target questions answered?              │
│ □ Evidence: Every data point has source or "Not available"?   │
│ □ Guardrails: No invented data? Gaps documented?              │
│ → If issues found: Flag low-confidence areas                  │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ REVIEW GATE: Level 1 (Quick Review)                           │
│ Present: Traction signals, qualification score                │
│ Actions: [Approve] [Dig deeper] [Fill gap]                    │
└──────────────────────────────────────────────────────────────┘
                              │
                              ▼
┌──────────────────────────────────────────────────────────────┐
│ CHAIN SUGGESTIONS                                             │
│ → "Want me to research their competitors?"                    │
│ → "Should I prepare discovery call questions?"                │
│ → "Ready to run client-discovery with this context?"          │
│ → "Want me to add the account brief? (job postings + key     │
│    people + outreach angles — uses ~2 Apollo credits)"        │
│ → "Want to add contacts to an Apollo sequence?"               │
│ → Save as reference example if positive feedback              │
└──────────────────────────────────────────────────────────────┘
```

## Phase checkpoints (detail)

### Phase 1 (Initial research) checkpoint
- [ ] Website fetched and analyzed
- [ ] Funding data searched
- [ ] Revenue/team data searched
- [ ] Customer signals extracted

### Phase 2 (Confidence assessment) checkpoint
- [ ] All data points have confidence levels
- [ ] Conflicts identified
- [ ] Gaps documented

### Phase 3 (Qualification assessment) checkpoint
- [ ] Qualification score calculated
- [ ] ICP fit assessed
- [ ] Red flags checked
- [ ] Key observations documented
