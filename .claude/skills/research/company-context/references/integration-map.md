# Integration map — company-context

How company-context connects to other skills and which workflow sequences invoke it.

## Company-context feeds INTO these skills

| Skill | What it receives | How it uses it |
|-------|------------------|----------------|
| **client-discovery** | Company background, traction signals | Prepares tailored discovery questions |
| **competitor-research** | Company context, market position | Provides comparison baseline |
| **client-proposals** | Qualification score, ICP fit assessment | Informs scope and pricing |
| **icp-research** | Company context, customer signals | Audience research grounded in real positioning |
| **positioning** | Company strengths, traction, team composition | Positioning anchors draw from company strengths |
| **apollo-sequences** | Key people, outreach angles | Sequence enrollment for qualified prospects |

## Company-context receives FROM these skills

| Skill | What it provides | How company-context uses it |
|-------|------------------|----------------------------|
| (None — gateway / root context skill) | — | — |

## Recommended workflow sequences

### Sequence 1: New client qualification

```text
company-context → client-discovery → client-proposals
```

### Sequence 2: Competitive context

```text
company-context → competitor-research → positioning
```

### Sequence 3: Full engagement start

```text
company-context → client-discovery → [Discovery Call] → client-proposals
```

### Sequence 4: Account brief for outbound

```text
company-context (with account brief mode) → apollo-sequences
```

## Trigger phrases (auto-suggest)

Invoke when user says:
- "Research this company: [URL/name]"
- "Get traction data for [company]"
- "Prepare for discovery call with [company]"
- "Company context for [name]"
- "Qualify this prospect: [URL]"
- "What's the traction for [company]?"
- "Company research for [name]"
- "Background on [company] for our call"

Do NOT invoke when:
- User wants competitor analysis → Use `/competitor-research`
- User wants product messaging extraction → Use `/messaging` (product-messaging)
- User wants ICP research → Use `/icp-behavioural`
- User just wants to check a company's website → Answer directly

## Export destinations

- `google_docs:` `client_folder/context/`
- `notion:` `Company Context Database`
- Per-client folder routing: `marketing/docs/` or `marketing/`
