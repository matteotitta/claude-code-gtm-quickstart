# Frameworks — messaging library

Core frameworks the messaging skill applies. The 10-component schema is the spine of every output; consequence chains are the analytical move that turns pain points into strategic narratives; confidence scoring keeps every claim sourced.

---

## 10-Component Messaging Library

| # | Component | Purpose | Descriptor Count |
|---|-----------|---------|------------------|
| 1 | **Description** | Core product positioning statement | 1 rich paragraph |
| 2 | **Status quo and alternatives** | Current state, DIY approaches, competitive alternatives | 3-5 descriptors |
| 3 | **Pain points** | Problems with consequence chains (1st→2nd→3rd order) | 3-5 descriptors |
| 4 | **Capabilities** | What product enables, linked to features | 3-5 descriptors |
| 5 | **Benefits (Functional)** | Outcomes with customer quotes as proof | 3-5 descriptors |
| 5.5 | **Benefits (Emotional & Social)** | How users feel and are perceived | 2 emotional + 2 social |
| 6 | **Features** | Branded feature names with descriptions | 3-5 descriptors |
| 7 | **Cost of inaction** | Consequences of not solving | 2-3 descriptors |
| 8 | **Common objections** | Typical pushback with response frameworks | 3-5 objections |
| 9 | **Core messaging blocks** | Tagline, elevator pitch, proof points | Distilled messages |
| 10 | **Data gaps** | Missing information and recommendations | As needed |

---

## JTBD statement (optional Component 0)

When available, frame the core value proposition using Jobs-to-be-Done:

**Formula:** When [situation], I want to [motivation], so I can [expected outcome].

**Example:** "When our sales team is preparing for quarterly reviews, we want to automatically pull pipeline data from multiple sources, so we can spend time on strategy instead of spreadsheet wrangling."

Include as "Component 0" when the JTBD framing adds clarity to the messaging foundation.

---

## Consequence Chain Framework

For every pain point, trace impact through three orders:

```
1st Order (Direct) → 2nd Order (Operational) → 3rd Order (Strategic)

Example:
"Manual scheduling takes 30 min/candidate" →
"Less time for outreach → fewer candidates in pipeline" →
"Longer time-to-hire → higher costs → decreased profit"
```

Each chain should:

- Start with the immediate, tangible problem (1st order — direct).
- Trace to the operational downstream impact (2nd order — what breaks because of the 1st order).
- Land on the business-level / strategic consequence (3rd order — competitive, financial, or strategic risk).
- Link backward to the status quo that creates it, and forward to the capability that solves it.

---

## Confidence Scoring

| Level | Definition | Required Evidence |
|-------|------------|-------------------|
| **High** | Direct statement from official source | URL + exact text |
| **Medium** | Inferred from multiple official signals | 2+ URLs + reasoning |
| **Low** | Single indirect source or interpretation | URL + explicit caveat |

Map to ontology confidence (per `.claude/rules/ontology.md`): High → `[VERIFIED]`, Medium → `[INFERRED]`, Low → `[ESTIMATED]`. Missing entirely → `[UNAVAILABLE]`.

---

## Component descriptor counts

The descriptor counts in the 10-component table aren't suggestions — they're caps. Going above the cap is dilution; going below is incomplete coverage. If you can't hit the floor (e.g., only 2 pain points found), document the gap explicitly in Component 10 rather than padding.

---

## Component-link discipline

The components are not independent — they form a graph:

- **Status quo** → causes → **Pain point**
- **Pain point** → addressed by → **Capability**
- **Capability** → powered by → **Feature**
- **Feature** → drives → **Benefit (functional)**
- **Benefit** → proven by → **Customer quote**
- **Pain point** → if unsolved → **Cost of inaction**
- **Capability/Benefit** → triggers → **Objection** → handled by → **Response framework**

Output every link explicitly. Unlinked components are a quality gap (see `quality-gates.md`).
