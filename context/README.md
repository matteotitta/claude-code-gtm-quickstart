# context/

Raw research source files. The unprocessed material that informs your skill outputs.

## What goes here

| Type | Examples |
|---|---|
| Sales call transcripts | `0526-discovery-call-acme.md`, `0526-demo-recording.md` |
| Customer interview transcripts | `0526-interview-{customer}.md` |
| Stakeholder meeting notes | `0526-q2-strategy-meeting.md` |
| Source decks (theirs or yours) | `0526-source-pitch-deck.pdf` |
| Competitor screenshots | `0526-source-competitor-pricing.png` |
| Reference materials | research reports, market analyses, anything that informs but isn't a skill output |

## What does NOT go here

Skill outputs go into `marketing/{topic}/`, not `context/`. The pattern:

| Output | Lives at |
|---|---|
| `/icp-research` output | `marketing/icp/{MMYY}-icp-research.md` |
| `/positioning` output | `marketing/positioning/{MMYY}-positioning.md` |
| `/competitor-research` output | `marketing/competitors/{MMYY}-{competitor}.md` |
| Raw transcript that informed any of the above | `context/{MMYY}-source-{topic}.md` |

## Naming

`MMYY-source-{topic}.{ext}` for raw source files. The `source-` prefix flags "this is raw input, not a skill output." Skill outputs use `MMYY-{topic}.md` without the `source-` prefix.

## Why a separate folder?

Skill outputs go into `marketing/` because that's the workspace your team operates from daily. `context/` is the foundation underneath — files you load into Claude Code sessions when a skill needs the raw material to draw from. Keep them separate so the workspace stays navigable.
