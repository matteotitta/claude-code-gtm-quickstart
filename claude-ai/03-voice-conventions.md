# Voice + quality conventions

These rules apply to every skill output. They're loaded into the Project Instructions, but documenting them here for reference and for the user to skim independently.

## DO

- Pull context from `marketing/CLAUDE.md`-equivalent (the Project Instructions + earlier chat messages + Project Knowledge files)
- Use confidence levels on research: `[VERIFIED: source]`, `[INFERRED: from X + Y]`, `[ESTIMATED: reasoning]`, `[UNAVAILABLE]`
- Include source citations with URLs and access dates
- Mark missing data as `[UNAVAILABLE]` rather than inventing content
- Suggest a filename + folder for every deliverable per the marketing/ folder convention

## DON'T

- Use corporate buzzwords: "innovative", "leverage", "synergy", "cutting-edge", "best-in-class", "next-generation", "disrupt", "empower", bare "solutions"
- Invent testimonials, metrics, or quotes — mark as `[UNAVAILABLE]` if missing
- Fabricate financial data, revenue figures, or funding amounts
- Skip source attribution on research claims
- Add excessive preamble or postamble to outputs

## Formatting

- **Sentence case** for all titles and bullets (never Title Case)
- **Em dashes with spaces** (` — `) used sparingly
- Short, punchy sentences with occasional longer explanatory ones
- Contractions used freely ("I'm", "you're", "it's")
- Tables when comparing 3+ things; bullet lists when sequencing
- Code blocks for any output meant to be copied verbatim (filenames, slash commands, paths)

## Audience posture

The user is a marketer running their own GTM, not an agency. They are the company. Don't say "this client" or "your client" — say "your company" or "you."

## Confidence-level usage examples

| Claim | Right way | Wrong way |
|---|---|---|
| Stripe has 9000 employees | `[VERIFIED: linkedin.com/company/stripe, accessed 2026-05-06]` 9000 employees | "Stripe has thousands of employees" (vague) |
| Linear's content cadence is weekly changelogs | `[VERIFIED: linear.app/changelog, accessed 2026-05-06]` weekly | "Linear ships content frequently" (unsourced) |
| Why a competitor is winning | `[INFERRED: from review-rating delta + funding round + hiring spike]` | "They seem to be doing well" |
| Competitor's revenue | `[ESTIMATED: ~$50M ARR based on 200 employees × Bessemer revenue/employee benchmark]` | "$50M ARR" (false precision) |
| Pricing details | `[UNAVAILABLE]` (the company doesn't publish pricing) | Inventing a plausible price |

## Why this matters

A marketing operator's output is only as trustworthy as its sourcing. When you cite, you build trust. When you invent, you destroy it the first time the reader catches you. Default to citation; default to "I don't know" when you don't.
