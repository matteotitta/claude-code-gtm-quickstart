# Account brief mode (optional — Apollo credits)

Append to a company-context run when the user explicitly requests "account brief", "pre-call brief", or "full account research". Adds hiring activity, key people, and outreach angles via Apollo MCP.

## Credit gate (mandatory)

Confirm before invoking Apollo enrichment:

> "Adding account brief will use ~1-2 additional Apollo credits for job postings. Proceed?"


## Tools used

| Tool | Purpose | Credits |
|------|---------|---------|
| `mcp__apollo-io__apollo_get_organization_job_postings` | Hiring activity (open roles, departments) | 1 credit |
| `mcp__apollo-io__apollo_search_people` | Key decision-makers (filtered by seniority) | Free |

Use `person_seniorities: ['director', 'vp', 'c_suite']` to filter Key People search.

## Output sections

### Hiring activity

- **Open positions:** [count]
- **Top departments hiring:** [departments with counts]
- **Key insight:** [what their hiring tells us about priorities — e.g., "Hiring 3 SDRs and a VP Sales suggests they're ramping outbound"]

### Key people

| Name | Title | Seniority |
|------|-------|-----------|
| [Decision-maker 1] | [Title] | [C-suite/VP/Director] |
| [Decision-maker 2] | [Title] | [C-suite/VP/Director] |
| [Decision-maker 3] | [Title] | [C-suite/VP/Director] |

*Filtered to director+ seniority using `person_seniorities: ['director', 'vp', 'c_suite']`*

### Outreach angles

Based on the research above, recommended outreach angles:

1. **[Angle based on hiring activity]** — e.g., "They're hiring a Head of Content — they need content strategy before that hire lands"
2. **[Angle based on tech stack]** — e.g., "Using HubSpot + Webflow but no attribution tool — ripe for marketing ops conversation"
3. **[Angle based on funding/growth stage]** — e.g., "Series B 6 months ago — classic timing for PMM investment"

## Provenance

Imported via `/steal` from workflows.io Apollo x Claude Playbook (v2.3, 2026-04-08).
