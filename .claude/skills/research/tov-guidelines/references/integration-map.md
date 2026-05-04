# Integration Map

How tov-guidelines connects to other skills in the chain.

## Feeds INTO

| Skill | What it receives | How it uses it |
|-------|------------------|----------------|
| **landing-page-copy** | Voice patterns, vocabulary, anti-patterns | Applies TOV to landing page generation |
| **linkedin-content** | Tone attributes, sentence patterns | Applies TOV to LinkedIn posts |
| **product-messaging** | Voice guidelines, vocabulary | Applies TOV to messaging framework |
| **sales-enablement** | Communication style, vocabulary | Applies TOV to sales materials |
| **outreach-emails** | Tone, formality level, CTAs | Applies TOV to email copy |
| **aeo-content** | Voice patterns, banned words | Applies TOV to AI-optimized content |
| **thought-leadership** | Tone attributes, anti-patterns | Applies TOV to long-form founder content |
| **newsletter** | Voice patterns | Applies TOV to weekly synthesis |

## Receives FROM

| Skill | What it provides | How tov-guidelines uses it |
|-------|------------------|----------------------------|
| **company-context** | Company background, positioning | Provides context for voice analysis |
| **win-loss-analysis** | How team actually speaks (won deals language) | Validates voice claims with sales reality |
| **competitor-research** | Competitor voice patterns | Differentiation contrast |

## Recommended chain sequences

### Full content foundation
```
company-context → tov-guidelines → landing-page-copy
```

### Content system setup
```
tov-guidelines → product-messaging → linkedin-content
```

### Complete PMM stack
```
icp-behavioural → positioning → tov-guidelines → product-messaging → landing-page-copy
```

### Voice-aware research first
```
company-context → win-loss-analysis → competitor-research → tov-guidelines
```

## Trigger / not-trigger conditions

**Invoke when user says:**
- "Create TOV guidelines for [URL/company]"
- "Extract voice from website"
- "Build editorial guidelines"
- "Tone of voice document"
- "Brand voice guidelines"
- "Writing style guide for [company]"
- "What's [company]'s voice?"
- "Analyze voice from [URL]"

**Do NOT invoke when:**
- User wants brand identity guidelines (visual) → Use `brand-kit` skill
- User wants product messaging → Use `product-messaging` skill
- User wants to write content → Use appropriate content skill with TOV as input
- User just wants quick voice description → Answer directly
