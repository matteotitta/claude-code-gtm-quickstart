# Week 2: Build your marketing skill library

**Crescendo Claude Code Marketing Programme**
Session recording: [link to be added after session]

---

## Intro

Last week you built the operating system — CLAUDE.md, MCP servers, GitHub repo, folder structure, your first skill. This week, you go from "I can use AI" to "I have a quality-enforced marketing system that catches mistakes before anyone sees them."

The difference between Week 1 and Week 2: individual skills produce one-off outputs. A skill library with hooks, rules, and chaining produces consistent, quality-controlled deliverables — every time, automatically checked against your standards. No one needs to remember the quality checklist. Claude enforces it.

By the end of this week, you'll have a library of marketing skills organized by function, automatic quality gates that catch brand voice violations and fabricated metrics, rules that load the right context based on what you're working on, and a GitHub PR workflow that ensures Mike approves every skill before it goes live.

**What you'll walk away with:**
- 6+ marketing skills (2+ context, 2+ strategy, 2+ execution)
- 1+ hook configured (brand voice checker minimum)
- 1+ rule configured (auto-loading context)
- Skills tested and rated 4+ against quality standards
- Skill chaining demonstrated (output of skill 1 feeds skill 2)
- 1+ GitHub PR created for team-wide skill sharing
- Slash commands for one-click skill execution
- Google Drive scripts for branded output delivery

---

## Pre-reqs checklist

Before the Monday session, make sure you have:

- [ ] W1 homework complete (CLAUDE.md, MCP servers, GitHub repo, first skill)
- [ ] Claude Code running in VS Code, Cursor, or CLI
- [ ] GitHub repo pushed with CLAUDE.md and `.gitignore`
- [ ] Google Drive + Slack MCP servers connected and tested
- [ ] Your W1 skill output ready — we'll review and iterate
- [ ] Skill templates from Matteo downloaded (shared in Slack before session)
- [ ] Bring 2-3 examples of real Crescendo deliverables (battlecards, posts, emails, decks) — these become your "taste files"

---

## Theoretical concepts overview

### Two rules before you build your first skill

**Rule 1: The 3-5 Sample Rule**

Never automate a process into a skill until you've done it manually 3-5 times in chat.

The first time you write competitor research, do it in a regular conversation. The second time, notice what you repeat — the questions you always ask, the format you always use, the context you always pull. The third time, THAT's when you save it as a skill.

Why? Because premature skills encode bad workflows. If you automate a process you've only done once, you're codifying your first attempt — not your best approach. The skill becomes the process, even if the process is suboptimal. Nobody goes back and asks "wait, is this actually the right workflow?"

You're not procrastinating by doing it manually first — you're sampling.

**Rule 2: Check what's already there**

Before building anything new, run `/health-check`, browse `context/`, and check the skill list. 40% of what you think you need to build already exists — you just didn't look first.

---

### A. SKILL.md anatomy

**Why should I care?** Instead of typing the same instructions every time you want a competitive battlecard, build it once. Run `/battlecard Sierra` and get consistent, quality output every time. No more copy-pasting prompts. No more forgetting steps.

A SKILL.md has two parts: YAML frontmatter (metadata that tells Claude when and how to use the skill) and a 7-section body (the actual instructions).

**YAML frontmatter:**

```yaml
---
name: competitive-battlecard
description: Generate a competitive battlecard for the sales team based on competitive intelligence and positioning
trigger_phrases:
  - "/battlecard"
  - "create a battlecard"
  - "competitive comparison for"
---
```

The frontmatter tells Claude three things: what the skill is called, what it does, and what phrases trigger it.

**7-section body:**

| Section | Question it answers | Example (competitive battlecard) |
|---------|-------------------|--------------------------------|
| Role | What expertise should Claude bring? | "Think like a CX operations director evaluating vendor capabilities against Crescendo" |
| Goal | What does success look like? | "A battlecard the sales team can use in live deals to win against this specific competitor" |
| Inputs | What changes each time? | Competitor name, feature area, deal context, buyer persona |
| Task | What are the steps? | Research competitor, compare against Crescendo, identify weaknesses, structure card, format for sales |
| Output format | What should the result look like? | Specific sections, length constraints, markdown formatting, what to include and exclude |
| Context | What background does Claude need? | Points to CLAUDE.md, competitive landscape folder, positioning doc, existing battlecard taste files |
| Example | What does great look like? | The best battlecard you've produced — the taste file Claude should match |

The "bare prompt" principle: strip every skill to its minimum inputs. If a word doesn't change the output, remove it. If a section is always the same, move it to CLAUDE.md instead of repeating it in every skill.

**Full example — competitive battlecard SKILL.md:**

```markdown
---
name: competitive-battlecard
description: Generate a competitive battlecard for the sales team based on competitive intelligence and positioning
trigger_phrases:
  - "/battlecard"
  - "create a battlecard"
  - "competitive comparison for"
---

## Role

You are a competitive intelligence analyst embedded in Crescendo's marketing team. You understand the AI-powered contact center landscape, outcome-based pricing models, and the managed BPO + AI hybrid that differentiates Crescendo from pure-play AI vendors.

## Goal

Produce a competitive battlecard that Tom's sales team can reference during live deals. The card should arm reps with specific talking points, objection handlers, and proof points — not generic marketing language.

## Inputs

- **Competitor name** (required): e.g., Sierra, Decagon, Intercom Fin, PolyAI
- **Feature area** (optional): e.g., pricing model, enterprise security, multilingual support
- **Deal context** (optional): e.g., "prospect is evaluating Sierra for their insurance claims workflow"
- **Buyer persona** (optional): e.g., VP CX, Head of Operations, CFO

## Task

1. Pull the latest competitive intelligence from the `competitors/` folder for the named competitor
2. Cross-reference with Crescendo's positioning and messaging from CLAUDE.md
3. Identify 3-5 key differentiators where Crescendo wins
4. Identify 2-3 areas where the competitor has perceived strengths — and how to reframe them
5. Write objection handlers for the top 3 objections reps hear about this competitor
6. Include proof points, customer quotes, or metrics where available (mark as [UNAVAILABLE] if not)
7. Format as a scannable battlecard with clear sections

## Output format

**Structure:**
- **Quick take** (2-3 sentences): Who they are, where they compete, why we win
- **Crescendo wins** (3-5 bullets): Specific differentiators with evidence
- **Their pitch vs reality** (2-3 rows): What they claim → what's actually true → how to reframe
- **Objection handlers** (3 entries): Objection → response → proof point
- **Landmines to plant** (2-3 questions): Questions reps can ask that expose competitor weaknesses
- **When we lose** (1-2 bullets): Honest assessment of scenarios where this competitor may win

**Constraints:**
- Maximum 1 page when printed
- No buzzwords: "innovative", "leverage", "synergy", "cutting-edge"
- Every claim needs a source or [UNAVAILABLE] marker
- Write for a sales rep scanning between calls, not a marketing executive reading at leisure

## Context

- Load CLAUDE.md for Crescendo's positioning, voice, and competitive landscape
- Reference `competitors/{competitor-name}/` for existing intelligence
- Reference `docs/positioning.md` for current positioning framework
- Reference `docs/taste-files/` for examples of approved battlecard format and tone

## Example

Reference the best competitive battlecard the team has produced. This is the taste file — the quality bar Claude should meet or exceed. If no taste file exists, use the first output as a baseline and iterate from there.
```

Save this file to `.claude/skills/sales-enablement/battlecard/SKILL.md` in your repo.

---

### B. Skill levels (3 tiers)

**Why should I care?** The chain matters: context feeds strategy feeds execution. If your competitive research is wrong, every battlecard built from it is wrong. If your positioning is off, every LinkedIn post, sales deck, and landing page inherits that mistake. Understanding the tiers tells you where to invest time first.

**Context skills (L0)** build the knowledge base. You run these once per competitor, per quarter, or when something changes. They produce raw intelligence and analysis.

| Skill | What it produces | When to run |
|-------|-----------------|-------------|
| `company-context` | Firmographics, funding, traction signals, qualification score | Once per target company |
| `competitor-research` | 11-dimension competitive analysis, comparison matrices | Once per competitor, refresh quarterly |
| `icp-research` | Synthetic personas, pain points, buying simulation | Once, refresh when ICP shifts |
| `win-loss-analysis` | Closed deal patterns, objection themes, win/loss signals | After each batch of sales calls |
| `tov-guidelines` | Voice patterns, vocabulary, frequency scores, do/don't patterns | Once, refresh when brand evolves |
| `transcript-analysis` | Extracted quotes, themes, action items from calls | After every recorded call |

**Strategy skills (L1)** synthesize context into strategic frameworks. These are the translation layer — they take raw data and turn it into decisions.

| Skill | What it produces | Depends on |
|-------|-----------------|------------|
| `positioning` | Market positioning, differentiators, positioning statements | company-context + competitor-research + icp-research |
| `product-messaging` | Persona-specific messaging variants, value propositions | positioning + icp-research + win-loss-analysis |
| `content-strategy` | Content roadmap, channel mix, format priorities | positioning + messaging + icp-research |
| `pricing-strategy` | Pricing model, packaging, competitive pricing analysis | positioning + competitor-research |

**Execution skills (L2-3)** produce the deliverables your team ships. They draw from the context and strategy layers to produce specific outputs.

| Skill | What it produces | Depends on |
|-------|-----------------|------------|
| `battlecards` | Competitive battlecards for sales | competitor-research + positioning + messaging |
| `linkedin-content` | LinkedIn posts with hooks, body, CTA | messaging + tov-guidelines |
| `case-study` | Customer stories with metrics and quotes | win-loss-analysis + messaging |
| `event-recap-email` | Post-event summary emails | transcript-analysis + messaging |
| `press-release` | Media-ready press releases | positioning + messaging + company-context |
| `sales-deck` | Presentation content and structure | positioning + messaging + competitor-research |
| `landing-page-copy` | Headlines, sections, CTAs for web pages | positioning + messaging + icp-research |

**The chain in action:**

```
competitor-research (L0)
       ↓
win-loss-analysis (L0)
       ↓
positioning (L1)
       ↓
product-messaging (L1)
       ↓
battlecard (L2)  ←  This is 4 skills deep.
                     If positioning is wrong,
                     the battlecard is wrong.
```

Invest the most time in L0 and L1. Get those right, and every L2-3 skill produces better output with less iteration.

---

### C. Rules (.claude/rules/) — auto-loaded context

**Why should I care?** When you work in the `competitors/` folder, Claude should automatically know Crescendo's competitive landscape. When you write content in `content/`, voice guidelines should load. Rules make this happen without you doing anything — no manual switching, no forgetting to load context.

Rules are simpler than hooks. They're markdown files in `.claude/rules/` that auto-load based on the file path you're working in. Think of them as "if you're here, know this."

**How to create a rule:**

1. Create a file in `.claude/rules/` — for example, `competitive-landscape.md`
2. Add a glob pattern comment at the top to specify when it loads
3. Write the context Claude should know

**Example — competitive landscape rule:**

Create `.claude/rules/competitive-landscape.md`:

```markdown
# Competitive landscape — auto-loaded context

Crescendo competes in the AI-powered contact center space. Key competitors:

**PRIMARY threats:**
- Sierra ($4.5B valuation) — Pure AI, enterprise-focused, Bret Taylor's brand power
- Decagon ($231M raised) — AI-first, developer-oriented, fast-growing

**DIRECT competitors:**
- Intercom Fin — Existing customer base, bundled with Intercom suite
- PolyAI — Voice-first AI, strong in hospitality and banking

**Crescendo differentiators:**
- AI + managed BPO hybrid (not pure AI — humans in the loop)
- Outcome-based pricing (pay for results, not seats)
- Faster time-to-value than pure-play AI solutions

When producing any competitive analysis, always:
- Compare against these specific competitors
- Reference outcome-based pricing as the primary differentiator
- Never fabricate competitor metrics — mark as [UNAVAILABLE] if not confirmed
```

This file auto-loads whenever Claude is working on files in the `competitors/` directory. No trigger needed — the path match handles it.

**More rule examples:**

| Rule file | Auto-loads when | What it contains |
|-----------|----------------|-----------------|
| `competitive-landscape.md` | Working in `competitors/` | Competitor list, threat levels, differentiators |
| `brand-voice.md` | Working in `content/` | Tone guidelines, banned words, formatting rules |
| `sales-context.md` | Working in `sales-enablement/` | Tom's team structure, deal stages, common objections |
| `data-integrity.md` | Working with financial data or metrics | Never fabricate numbers, source requirements |

Rules are the simplest quality layer. Start here before moving to hooks.

---

### D. Hooks — automatic quality gates

**Why should I care?** In Cowork, you had a manual quality checklist. Someone had to remember to check voice, banned words, and claims before shipping. In Claude Code, hooks do it automatically — every time, before anyone sees the output. The hook catches "innovative solutions" in your LinkedIn post before you paste it. It flags a fabricated metric before it reaches the sales deck.

Hooks are shell scripts that run at specific points in Claude's lifecycle. There are four types, and you should learn them in lifecycle order.

**1. SessionStart hook — context loader**

Runs when you start a new Claude Code session. Use it to load the latest competitive intel, check for updates, or set up the workspace.

**Shell script** — save as `.claude/hooks/session-start.sh`:

```bash
#!/bin/bash
# SessionStart hook: load latest competitive intelligence

echo "Loading latest competitive intelligence..."

# Check if competitive docs have been updated in the last 7 days
RECENT_UPDATES=$(find competitors/ -name "*.md" -mtime -7 2>/dev/null | wc -l | tr -d ' ')

if [ "$RECENT_UPDATES" -gt "0" ]; then
  echo "NOTE: $RECENT_UPDATES competitive docs updated in the last 7 days. Review before producing battlecards."
fi

# Check if positioning doc exists
if [ ! -f "docs/positioning.md" ]; then
  echo "WARNING: No positioning.md found. Strategy skills will produce weaker output."
fi

echo "Session context loaded. Ready to work."
```

Make it executable: `chmod +x .claude/hooks/session-start.sh`

**2. PreToolUse hook — sensitive file protector**

Runs BEFORE Claude touches a file. Use it to prevent overwriting brand assets, block changes to protected files, or validate inputs.

**Shell script** — save as `.claude/hooks/pre-tool-use.sh`:

```bash
#!/bin/bash
# PreToolUse hook: protect sensitive files from accidental modification

# Read the tool name and file path from stdin
INPUT=$(cat)
TOOL_NAME=$(echo "$INPUT" | jq -r '.tool_name // empty')
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // empty')

# Protect brand assets
PROTECTED_PATHS=(
  "docs/brand-assets/"
  "docs/logos/"
  ".env"
  ".claude/apis/"
  ".claude/settings.local.json"
)

for PROTECTED in "${PROTECTED_PATHS[@]}"; do
  if [[ "$FILE_PATH" == *"$PROTECTED"* ]]; then
    echo "BLOCKED: Cannot modify protected path: $PROTECTED"
    echo "These files are managed manually. Ask the team lead before changing."
    exit 2  # Exit code 2 = block the action
  fi
done

exit 0  # Exit code 0 = allow the action
```

Exit codes matter:
- `0` = allow the action (proceed)
- `2` = block the action (prevent Claude from touching the file)

**3. PostToolUse hook — brand voice checker**

Runs AFTER Claude writes something. This is your automatic quality gate. Use it to check for banned words, tone violations, fabricated metrics, and formatting issues.

**Shell script** — save as `.claude/hooks/post-tool-use.sh`:

```bash
#!/bin/bash
# PostToolUse hook: brand voice checker
# Checks every file Claude writes for banned words, tone issues, and fabricated metrics

INPUT=$(cat)
TOOL_NAME=$(echo "$INPUT" | jq -r '.tool_name // empty')
FILE_PATH=$(echo "$INPUT" | jq -r '.tool_input.file_path // empty')

# Only check write operations on content files
if [[ "$TOOL_NAME" != "Write" && "$TOOL_NAME" != "Edit" ]]; then
  exit 0
fi

# Skip non-content files
if [[ "$FILE_PATH" == *.json || "$FILE_PATH" == *.sh || "$FILE_PATH" == *.yaml ]]; then
  exit 0
fi

# Check if file exists
if [ ! -f "$FILE_PATH" ]; then
  exit 0
fi

CONTENT=$(cat "$FILE_PATH")
ISSUES=""

# --- Banned words check ---
BANNED_WORDS=("innovative" "leverage" "synergy" "cutting-edge" "best-in-class" "game-changing" "disruptive" "solutions" "revolutionize" "world-class" "seamlessly" "empower")

for WORD in "${BANNED_WORDS[@]}"; do
  if echo "$CONTENT" | grep -iq "$WORD"; then
    ISSUES="${ISSUES}\n- BANNED WORD: Found '${WORD}' — rewrite without it"
  fi
done

# --- Fabricated metrics check ---
# Flag specific dollar amounts, percentages, and statistics that aren't sourced
if echo "$CONTENT" | grep -qP '\d+%\s+(increase|decrease|improvement|reduction|growth)'; then
  if ! echo "$CONTENT" | grep -q '\[VERIFIED\|Source:\|source:'; then
    ISSUES="${ISSUES}\n- UNSOURCED METRIC: Found a percentage claim without source attribution. Add [VERIFIED: source] or mark [UNAVAILABLE]."
  fi
done

# --- Tone check ---
# Flag overly formal or corporate phrasing
CORPORATE_PHRASES=("I am pleased to" "we are delighted" "it is our pleasure" "in conclusion" "furthermore" "henceforth" "pursuant to")

for PHRASE in "${CORPORATE_PHRASES[@]}"; do
  if echo "$CONTENT" | grep -iq "$PHRASE"; then
    ISSUES="${ISSUES}\n- CORPORATE TONE: Found '${PHRASE}' — rewrite in direct, human language"
  fi
done

# --- Output results ---
if [ -n "$ISSUES" ]; then
  echo "BRAND VOICE CHECK FAILED:"
  echo -e "$ISSUES"
  echo ""
  echo "Fix these issues before shipping. The hook will re-run after edits."
  exit 1  # Exit code 1 = warn (Claude sees the feedback and fixes)
else
  echo "Brand voice check passed."
  exit 0
fi
```

Exit codes for PostToolUse:
- `0` = all checks passed
- `1` = issues found, Claude sees the feedback and should fix them
- `2` = critical issue, block the operation entirely

**4. Stop hook — session cleanup**

Runs when a Claude Code session ends. Use it for cleanup, summary generation, or session logging.

```bash
#!/bin/bash
# Stop hook: session summary

echo "Session ended. Remember to:"
echo "- Push any new skills to GitHub"
echo "- Share notable outputs in #marketing-ops Slack"
echo "- Rate your skill outputs 1-5 in your log"
```

**Configuring hooks in settings.local.json:**

All hooks are registered in `.claude/settings.local.json`. Here's the full config:

```json
{
  "hooks": {
    "SessionStart": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "bash .claude/hooks/session-start.sh"
          }
        ]
      }
    ],
    "PreToolUse": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "bash .claude/hooks/pre-tool-use.sh"
          }
        ]
      }
    ],
    "PostToolUse": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "bash .claude/hooks/post-tool-use.sh"
          }
        ]
      }
    ],
    "Stop": [
      {
        "matcher": "",
        "hooks": [
          {
            "type": "command",
            "command": "bash .claude/hooks/stop.sh"
          }
        ]
      }
    ]
  }
}
```

The `matcher` field filters which tools trigger the hook. An empty string means "all tools." You can restrict it — for example, `"matcher": "Write"` would only fire on Write operations.

---

### E. Slash commands — one-click skill execution

**Why should I care?** One command, full workflow. `/battlecard Sierra`. `/social-post AI trends`. `/recap London event`. No searching for the right skill. No remembering the inputs. Just type the command and go.

Slash commands live in `.claude/commands/`. Each command is a markdown file that maps to a skill with pre-configured context.

**How to create a slash command:**

Create a file at `.claude/commands/battlecard.md`:

```markdown
Run the competitive battlecard skill for $ARGUMENTS.

Use the SKILL.md at `.claude/skills/sales-enablement/battlecard/SKILL.md`.

Pull context from:
- CLAUDE.md (positioning, voice, competitor landscape)
- `competitors/$ARGUMENTS/` (existing intelligence)
- `docs/taste-files/` (quality reference)

Output the battlecard in the format specified by the skill.
```

Now you can type `/battlecard Sierra` and Claude runs the full skill with all context loaded.

**More command examples:**

| Command file | Usage | What it triggers |
|-------------|-------|-----------------|
| `battlecard.md` | `/battlecard Sierra` | Competitive battlecard skill |
| `social-post.md` | `/social-post AI trends` | LinkedIn content skill with topic input |
| `recap.md` | `/recap London` | Event recap email skill |
| `deck.md` | `/deck Q2 board update` | Deck outline skill |
| `research.md` | `/research Decagon` | Competitor research skill |

The `$ARGUMENTS` variable captures everything after the command name.

---

### F. Google Drive scripts — branded output delivery

**Why should I care?** Raw markdown is useful for drafting. But when you need to share a battlecard with Tom's sales team or present a competitive overview to the board, you need formatted Google Slides, Docs, or Sheets with Crescendo branding. These scripts bridge that gap.

Scripts live in `.claude/mcp/gdrive/` and push formatted output to Google Workspace:

| Script | What it creates | Example use |
|--------|----------------|-------------|
| `create-doc-unified.mjs` | Branded Google Doc | Push a battlecard, research brief, or messaging doc |
| `create-slides.mjs` | Branded Google Slides | Push a competitive overview deck, board update |
| `create-sheet.mjs` | Branded Google Sheet | Push a competitive comparison matrix, content calendar |

**How it works:**

1. Your skill produces a markdown file (battlecard, research doc, etc.)
2. The script converts it to a formatted Google Doc/Slides/Sheet
3. Brand colors and fonts are applied automatically from config
4. The document lands in the right team folder

```bash
# Push a battlecard to Google Drive as a branded doc
cd .claude/mcp/gdrive && node create-doc-unified.mjs "/path/to/battlecard.md" "Crescendo" --title "Sierra Battlecard Q1 2026"

# Push a competitive overview as branded slides
cd .claude/mcp/gdrive && node create-slides.mjs "/path/to/overview.md" "Crescendo" --title "Competitive Landscape Q1"

# Push a comparison matrix as a branded sheet
cd .claude/mcp/gdrive && node create-sheet.mjs "Feature Comparison" --data "/path/to/comparison.csv"
```

For the homework, you don't need to set up Google Drive scripts from scratch. Matteo will share the script templates. Your job is to: produce a skill output, run it through a script, and verify the branded document appears in your team's Drive folder.

---

### G. Skill chaining — output of skill 1 feeds skill 2

**Why should I care?** Real deliverables are never one skill. A competitive battlecard needs: research, win-loss analysis, positioning comparison, formatted card, and sales talking points. Each step feeds the next. Skill chaining turns a 5-step manual process into a single flow.

**The canonical chain:**

```
competitor-research    →   "Here's what Sierra does, claims, and how they position"
       ↓
win-loss-analysis      →   "Here's where we win/lose against them in real deals"
       ↓
positioning            →   "Here's how we should position against them"
       ↓
product-messaging      →   "Here's the specific language to use"
       ↓
battlecard             →   "Here's the card Tom's reps use in calls"
```

Each skill's output becomes the next skill's input. The battlecard at the end is informed by four layers of analysis — not just a prompt asking "write a battlecard about Sierra."

**How to chain in practice:**

1. Run `/research Sierra` — save output to `competitors/sierra/research.md`
2. Run `/win-loss Sierra` — save to `competitors/sierra/win-loss.md`
3. Run `/positioning Sierra` — it reads both files automatically (rules load `competitors/` context)
4. Run `/messaging Sierra` — reads positioning output
5. Run `/battlecard Sierra` — reads everything above, produces the final card

The folder structure does the wiring. Each skill reads from known paths. Rules auto-load the right context. You just run the commands in order.

---

### H. Iterative testing against taste files

**Why should I care?** A skill that produces 3/5 output is worse than no skill — it gives you false confidence. Taste files are your quality bar. Run the skill, compare against the taste file, rate it 1-5, and iterate until you consistently hit 4+.

**What's a taste file?** The best example of a deliverable you've produced. Your best battlecard. Your best LinkedIn post. Your best press release. Save it in `docs/taste-files/` and point your skill's Context section to it.

**The testing loop:**

1. Run the skill with a real input (not a test case — a real competitor, a real topic)
2. Compare the output to your taste file side by side
3. Rate it 1-5:
   - **1** — Unusable. Wrong format, wrong voice, wrong content.
   - **2** — Recognizable but needs heavy editing. Missing sections, weak analysis.
   - **3** — Decent but not shippable. Needs editing before sharing with the team.
   - **4** — Good. Minor tweaks only. You'd share this with confidence.
   - **5** — Better than what you'd produce manually. Ship it.
4. If below 4: tell Claude specifically what's wrong. "The tone is too formal." "The objection handlers are generic." "Missing the pricing comparison."
5. Update the SKILL.md based on what you learned. Re-run. Rate again.
6. Run a second time with a *different* input. Does the quality hold? A good skill works for Sierra AND Decagon, not just one.

**Keep a simple log:**

| Skill | Input | Run | Rating | Notes |
|-------|-------|-----|--------|-------|
| battlecard | Sierra | 1 | 3 | Voice too formal, missing pricing section |
| battlecard | Sierra | 2 | 4 | Fixed voice, added pricing. Ready to share. |
| battlecard | Decagon | 1 | 4 | Worked first time. Skill is solid. |

---

### I. skills.sh — community skill inspiration

**Why should I care?** You don't need to write every skill from scratch. https://skills.sh/trending is a community library of Claude Code skills. Browse it, find skills that match your use cases, adapt them for Crescendo, and iterate.

**How to use it:**

1. Go to https://skills.sh/trending
2. Browse by category — look for marketing, content, research, sales
3. Find a skill that's close to what you need
4. Download or copy the SKILL.md
5. Adapt it: replace generic examples with Crescendo-specific ones, point the context to your CLAUDE.md, update inputs for your use cases
6. Test it with real input and iterate

Don't use skills.sh skills verbatim. They're starting points, not finished products. The adaptation step is where the value is.

---

### J. GitHub PR workflow for skills

> **Git branching for first-timers**
>
> If you've never used branches before: a branch is a parallel version of the repo. You can make changes on a branch without affecting the main version that everyone shares. When your skill is ready and reviewed, it merges into main — and everyone gets it on their next `git pull`.
>
> The four commands you need:
> ```bash
> git checkout -b skill/battlecard-v2    # create a new branch
> git add .claude/skills/battlecard/SKILL.md   # stage your file
> git commit -m "Add battlecard skill for Crescendo"   # name the snapshot
> git push origin skill/battlecard-v2    # send it to GitHub
> ```
>
> Then go to GitHub and click "Create Pull Request." That's it. Mike reviews, approves, merges. Everyone gets your skill.

**Why should I care?** Skills are team-shared code. When Nicole creates a LinkedIn post skill, every team member gets it on their next `git pull`. That means bad skills propagate just as fast as good ones. The PR workflow ensures Mike reviews every skill before it goes live — quality, voice, and strategic alignment checked before the team inherits it.

**The workflow:**

1. **Create a branch:** `git checkout -b skill/battlecard-v2`
2. **Write or edit the SKILL.md file** in the appropriate folder
3. **Test it** — run it twice with different inputs, rate 4+
4. **Push to GitHub:** `git push origin skill/battlecard-v2`
5. **Create a Pull Request** on GitHub — describe what the skill does, share your test results
6. **Mike reviews** — he checks voice, quality, strategic alignment, and whether the skill follows the SKILL.md structure
7. **Iterate** — Mike may suggest changes to the voice section or add missing context references
8. **Merge to main** — once approved, everyone gets the skill on `git pull`

**PR checklist for skill review:**

- [ ] YAML frontmatter complete (name, description, trigger phrases)
- [ ] All 7 sections present (role, goal, inputs, task, output format, context, example)
- [ ] Tested 2+ times with different inputs, rated 4+
- [ ] No banned words in the skill template itself
- [ ] Context section points to CLAUDE.md and relevant project files
- [ ] Output format has explicit length and formatting constraints

This is the governance layer. It prevents skill sprawl and maintains quality across the team.

---

## Step-by-step homework

### Step 1: Build 2+ context/strategy skills (60 min)

1. Open the skill templates Matteo shared in Slack
2. Pick 2+ from this list (based on your role):
   - `competitor-research` — structured competitive intelligence gathering
   - `positioning` — market positioning and differentiation framework
   - `product-messaging` — persona-specific messaging variants
   - `win-loss-analysis` — closed deal pattern analysis from sales calls
   - `icp-research` — ideal customer profile development
   - `tov-guidelines` — tone of voice patterns and vocabulary
3. For each template, adapt it for Crescendo:
   - Replace generic examples with Crescendo-specific ones (Sierra, Decagon, Intercom Fin, PolyAI)
   - Update the inputs section with Crescendo's competitors, personas, and features
   - Point the context section to your CLAUDE.md and relevant project files
   - Add a taste file reference if you have one (best example of this type of output)
4. Save each skill to `.claude/skills/{category}/{skill-name}/SKILL.md`
   - Context skills go in `.claude/skills/context-skills/`
   - Strategy skills go in `.claude/skills/product-marketing-skills/`
5. Run each skill once with real input. Rate the output 1-5.
6. If below 4, tell Claude what's wrong and iterate.

### Step 2: Build 2+ execution skills (60 min)

1. Pick 2+ from this list (matched to your role):

   Content:
   - `linkedin-content` — LinkedIn posts for company voice or personal branding
   - `press-release` — media-ready press releases
   - `employee-advocacy-post` — team member social posts

   Enablement:
   - `battlecards` — competitive battlecards for Tom's sales team
   - `sales-deck` — presentation content and structure
   - `demo-script` — structured demo talk tracks

   Product marketing:
   - `case-study` — customer stories with metrics and quotes
   - `landing-page-copy` — headlines, sections, CTAs
   - `event-recap-email` — post-event summary emails

   Design and creative:
   - `design-brief-generator` — structured design briefs from Slack requests
   - `social-calendar-entry` — content calendar entries with specs
   - `deck-outline` — deck structure and messaging outline
   - `storyboard-generator` — video/animation storyboards

   Operations:
   - `pipeline-digest` — sales pipeline summary for leadership
   - `lead-routing-qa` — lead routing quality checks
   - `outbound-sequence-builder` — multi-step outreach sequences

2. Adapt each template for Crescendo (same process as Step 1)
3. Save to `.claude/skills/{category}/{skill-name}/SKILL.md`
4. Run each skill once. Rate 1-5. Iterate until 4+.

### Step 3: Configure 1+ hook (30 min)

1. Choose your primary hook:

   **Option A: Brand voice checker (recommended for everyone)**
   - Copy the `post-tool-use.sh` script from the concepts section above
   - Save to `.claude/hooks/post-tool-use.sh`
   - Make executable: `chmod +x .claude/hooks/post-tool-use.sh`
   - Customize the banned words list for Crescendo
   - Add Crescendo-specific checks (e.g., always mention outcome-based pricing when discussing competitors)

   **Option B: Sensitive file protector**
   - Copy the `pre-tool-use.sh` script
   - Save to `.claude/hooks/pre-tool-use.sh`
   - Customize the protected paths for your repo

   **Option C: Context loader (session start)**
   - Copy the `session-start.sh` script
   - Customize for your folder structure

2. Register the hook in `.claude/settings.local.json` (copy the config from the concepts section)
3. Test it:
   - For brand voice checker: ask Claude to write something with "innovative solutions" — the hook should catch it
   - For file protector: ask Claude to edit a protected file — the hook should block it
   - For context loader: start a new session — the hook should run and show output

### Step 4: Set up 1+ rule (15 min)

1. Create `.claude/rules/` directory if it doesn't exist
2. Create a rule file — start with `competitive-landscape.md` (copy from the concepts section)
3. Adapt it for Crescendo's actual competitors and differentiators
4. Test it: work on a file in the `competitors/` folder and verify Claude references the rule content

### Step 5: Test every skill twice (30 min)

1. Run each skill at least twice with different inputs
   - Battlecard: test with Sierra AND Decagon
   - LinkedIn post: test with two different topics
   - Research: test with two different competitors
2. Rate each output 1-5
3. For anything below 4: identify what's wrong, adjust the SKILL.md, re-run
4. Keep a log (use the table template from section H)

### Step 6: Create a slash command (15 min)

1. Create `.claude/commands/` directory if it doesn't exist
2. Create a command file for your best skill (e.g., `battlecard.md`)
3. Map it to your SKILL.md with the right context pointers
4. Test it: run the slash command and verify it triggers the right skill with the right context

### Step 7: Create a GitHub PR for your best skill (15 min)

1. Create a branch: `git checkout -b skill/{your-name}-{skill-name}`
2. Add your best SKILL.md file
3. Push to GitHub: `git push origin skill/{your-name}-{skill-name}`
4. Create a PR with:
   - What the skill does
   - Your test results (input, rating, notes)
   - Any known limitations
5. Request Mike's review

### Step 8: Browse skills.sh (15 min)

1. Visit https://skills.sh/trending
2. Find 2+ skills relevant to your role
3. Download or note them
4. Adapt one for Crescendo (if time allows)
5. Share your finds in Slack

---

## Role-specific homework additions

### Nicole (Comms, L3)
- **Skills:** `linkedin-content`, `press-release`, `employee-advocacy-post`
- **Hook:** Brand voice checker with expanded banned words list — add Crescendo's comms-specific prohibitions (Nicole knows these)
- **Command:** `/social-post [topic]` → triggers linkedin-content skill
- **Stretch:** Chain `transcript-analysis` → `press-release` for turning call insights into announcements

### Mike (SVP Marketing, L5)
- **Skills:** `competitor-research`, `positioning`, `product-messaging`, `board-update`
- **Hook:** Full PostToolUse quality gate — banned words + unsourced metrics + tone check + competitor claim verification
- **Command:** `/research [competitor]` → triggers competitor-research skill
- **Stretch:** Full chain: `competitor-research` → `positioning` → `product-messaging` → `battlecard`. Run the entire sequence. Rate each step.

### Sr Designer (L2)
- **Skills:** `design-brief-generator`, `social-calendar-entry`
- **Hook:** Image spec hook — checks that design briefs include dimensions, format, and platform specs
- **Command:** `/brief [project]` → triggers design-brief-generator
- **Stretch:** Connect Figma MCP, build a skill that reads Slack design requests and produces structured briefs

### Web Dev (L3)
- **Skills:** `blog-post-formatter`, `press-release-web`
- **Hook:** Compression check hook — validates that web content includes meta descriptions, alt text, and SEO fields
- **Command:** `/publish [content-type]` → formats for web and checks SEO requirements
- **Stretch:** Chain `press-release` → `press-release-web` for end-to-end release workflow

### Creative Director (L2)
- **Skills:** `deck-outline`, `storyboard-generator`, `messaging-refresh`
- **Hook:** Messaging consistency hook — checks that deck content aligns with approved messaging framework
- **Command:** `/deck [topic]` → triggers deck-outline skill with messaging context loaded
- **Stretch:** Build a `brand-consistency-checker` skill that audits any content against brand guidelines

### VP Brand (L3)
- **Skills:** `case-study`, `sales-deck`, `brand-consistency-checker`
- **Hook:** Brand voice hook — extended version with Crescendo's full voice guidelines, not just banned words
- **Command:** `/case-study [customer]` → triggers case-study skill
- **Stretch:** Create a rule that auto-loads brand guidelines when working anywhere in the `content/` or `docs/` folders

### Event Manager (L2)
- **Skills:** `event-recap-email`, `registration-summary`
- **Hook:** Event data hook — checks that recap emails include attendee count, key takeaways count, and follow-up actions
- **Command:** `/recap [event-name]` → triggers event-recap-email skill
- **Stretch:** Chain `transcript-analysis` (from event recording) → `event-recap-email` → formatted Google Doc

### Marketing Ops (L4)
- **Skills:** `pipeline-digest`, `lead-routing-qa`, `outbound-sequence-builder`
- **Hook:** Data integrity hook — checks that any data-driven output cites its source and doesn't fabricate numbers
- **Command:** `/pipeline` → triggers pipeline-digest skill pulling from HubSpot
- **Stretch:** Build a `data-validation` rule that auto-loads when working with any CSV, dashboard, or metrics file

---

## Troubleshooting, validation, and success criteria

### Common issues

| Problem | Likely cause | Fix |
|---------|-------------|-----|
| Skill output doesn't match Crescendo voice | Context section not pointing to CLAUDE.md | Add explicit reference to your CLAUDE.md in the skill's context section |
| Hook doesn't fire | Hook not registered in `settings.local.json` | Check the JSON config — make sure the hook path and type are correct |
| Hook fires but doesn't catch anything | Shell script not executable or has syntax errors | Run `chmod +x .claude/hooks/{script}.sh` and test the script directly: `echo '{}' \| bash .claude/hooks/post-tool-use.sh` |
| Skill works for Sierra but not Decagon | Skill is too specific — hardcoded Sierra details | Make competitor-specific details into inputs, not fixed text in the SKILL.md |
| Skill output is too long/short | Output format section is vague | Add explicit length constraints: "Maximum 1 page" or "3-5 bullet points per section" |
| Rule doesn't auto-load | Working in the wrong directory, or glob pattern mismatch | Check the file path you're working in matches the rule's expected directory |
| Git branch merge conflict | Two people edited the same SKILL.md | Communicate in Slack before editing shared skills. Use PRs to avoid conflicts. |
| Slash command not found | Command file in wrong directory or missing `.md` extension | Verify file is in `.claude/commands/` and ends with `.md` |
| Skill chain produces weak output at step 3+ | Early steps (L0/L1) have quality issues | Go back to the L0/L1 skills. Fix those first — downstream quality follows upstream quality. |

### Validation checklist

- [ ] Run your best context skill with 2 different competitors — does quality hold?
- [ ] Run your best execution skill — would you send the output to Tom without editing?
- [ ] Trigger your hook intentionally — does it catch what it should?
- [ ] Try to edit a protected file (if using PreToolUse) — does the hook block it?
- [ ] Run a slash command — does it trigger the right skill with the right context?
- [ ] Chain 2 skills together — does the output of skill 1 meaningfully improve skill 2?

### Success criteria

- [ ] 6+ skills built (2+ context, 2+ strategy, 2+ execution)
- [ ] 1+ hook configured and tested (brand voice checker minimum)
- [ ] 1+ rule configured (auto-loading context)
- [ ] Each skill tested 2+ times, rated 4+
- [ ] 1+ PR created on GitHub for a skill
- [ ] 2+ skills from skills.sh identified and adapted
- [ ] Skill chaining demonstrated (output of skill 1 feeds skill 2)
- [ ] 1+ slash command created and working

---

## Outro

**What you built this week:**
A marketing skill library organized by function (context, strategy, execution), with automatic quality gates that catch brand voice violations and fabricated metrics before anyone sees them. Rules that load the right context based on what you're working on. A GitHub PR workflow that ensures quality control across the team. And slash commands for one-click execution.

**What to bring to Thursday's showcase:**
- Your best skill — demo it live (2 minutes max). Run the slash command, show the output, show the hook catching something.
- Your skill ratings log — which skills scored highest? Lowest? What did you change?
- Your hook in action — trigger it intentionally and show the team what it catches.
- One question about something you couldn't figure out.

**What to prepare for next week:**
- Keep your skills and hooks committed to GitHub — Week 3 builds on them
- Think about which of your skills should run automatically (weekly competitive digest? daily pipeline summary? monthly battlecard refresh?)
- Download the Claude mobile app if you haven't already — Dispatch is the main topic
- Identify 1 tool you use regularly that doesn't have an API or MCP server (Webflow? Sprout Social? Gong's UI?) — we'll use Computer Use to reach it

---

## Useful links

**Anthropic official:**
- [Claude Code skills documentation](https://docs.anthropic.com/en/docs/claude-code/skills)
- [Claude Code hooks documentation](https://docs.anthropic.com/en/docs/claude-code/hooks)
- [Claude Code slash commands](https://docs.anthropic.com/en/docs/claude-code/slash-commands)
- [Claude Code GitHub integration](https://docs.anthropic.com/en/docs/claude-code/github)

**Community resources:**
- [skills.sh — trending Claude Code skills](https://skills.sh/trending)
- [Claude Code tips and tricks (community)](https://github.com/anthropics/claude-code/discussions)

**Crescendo-specific:**
- Team Slack channel: #claude-code-programme
- Skill templates: [shared in Slack before session]
- Taste files: `docs/taste-files/` in the team repo

---

## Appended prompts

### Prompt 1: SKILL.md builder — interactive template

*(Use this prompt in Claude Code to generate a complete SKILL.md from a guided Q&A. Copy-paste this into your Claude Code session.)*

```
I want to build a new Claude Code SKILL.md for my marketing team. Walk me through it step by step — ask me one question at a time, then generate the complete SKILL.md when you have all the answers.

**Part 1 — Metadata:**
1. What should this skill be called? (lowercase, hyphenated — e.g., "competitive-battlecard")
2. Write a one-sentence description of what it does.
3. What trigger phrases should activate it? (e.g., "/battlecard", "create a battlecard", "competitive comparison for")

**Part 2 — The 7 sections:**
4. ROLE: What expertise should Claude bring to this task? Think: what job title would you hire for this?
5. GOAL: What does success look like? Describe the ideal output in one sentence.
6. INPUTS: What changes each time you run this skill? List the variables (e.g., competitor name, topic, audience).
7. TASK: Walk me through the steps. What should Claude do, in order?
8. OUTPUT FORMAT: Describe the structure of the output. What sections? How long? What formatting?
9. CONTEXT: What files or documents should Claude reference? (CLAUDE.md, specific folders, taste files)
10. EXAMPLE: Do you have an example of great output for this type of deliverable? If yes, paste it or point to the file path.

After I answer all 10, generate the complete SKILL.md with YAML frontmatter and all 7 sections. Save it to the appropriate folder in `.claude/skills/`.
```

### Prompt 2: Hook configuration — brand voice checker generator

*(Use this prompt to generate a customized brand voice checker hook for your team. Copy-paste into Claude Code.)*

```
I need to create a PostToolUse hook for Claude Code that automatically checks every piece of content Claude writes. Build me:

1. A shell script (`.claude/hooks/post-tool-use.sh`) that checks for:
   - Banned words (I'll give you my list)
   - Corporate tone phrases that don't match our voice
   - Unsourced metrics or statistics (any percentage or dollar claim needs a source)
   - Specific formatting rules (I'll specify)

2. The JSON config for `.claude/settings.local.json` to register the hook

Ask me these questions one at a time:

1. What words are banned in your brand voice? List them all.
2. What corporate phrases should be flagged? (e.g., "I am pleased to", "we are delighted")
3. Are there any words or phrases that MUST appear in certain types of content? (e.g., "outcome-based pricing" must appear in any competitive content)
4. What formatting rules should be enforced? (e.g., sentence case for headers, no Title Case)
5. Should unsourced metrics be flagged as warnings (Claude fixes them) or blocked entirely?
6. Are there specific file types or folders where the hook should NOT run? (e.g., don't check .json config files)

After I answer all 6, generate the complete shell script and JSON config. Make the script executable and test it.
```

### Prompt 3: Example Crescendo battlecard SKILL.md (complete, ready to use)

*(This is the full battlecard SKILL.md from the concepts section, ready to save to your repo. Copy this file directly to `.claude/skills/sales-enablement/battlecard/SKILL.md`.)*

```markdown
---
name: competitive-battlecard
description: Generate a competitive battlecard for the sales team based on competitive intelligence and positioning
trigger_phrases:
  - "/battlecard"
  - "create a battlecard"
  - "competitive comparison for"
---

## Role

You are a competitive intelligence analyst embedded in Crescendo's marketing team. You understand the AI-powered contact center landscape, outcome-based pricing models, and the managed BPO + AI hybrid that differentiates Crescendo from pure-play AI vendors.

## Goal

Produce a competitive battlecard that Tom's sales team can reference during live deals. The card should arm reps with specific talking points, objection handlers, and proof points — not generic marketing language.

## Inputs

- **Competitor name** (required): e.g., Sierra, Decagon, Intercom Fin, PolyAI
- **Feature area** (optional): e.g., pricing model, enterprise security, multilingual support
- **Deal context** (optional): e.g., "prospect is evaluating Sierra for their insurance claims workflow"
- **Buyer persona** (optional): e.g., VP CX, Head of Operations, CFO

## Task

1. Pull the latest competitive intelligence from the `competitors/` folder for the named competitor
2. Cross-reference with Crescendo's positioning and messaging from CLAUDE.md
3. Identify 3-5 key differentiators where Crescendo wins
4. Identify 2-3 areas where the competitor has perceived strengths — and how to reframe them
5. Write objection handlers for the top 3 objections reps hear about this competitor
6. Include proof points, customer quotes, or metrics where available (mark as [UNAVAILABLE] if not)
7. Format as a scannable battlecard with clear sections

## Output format

**Structure:**
- **Quick take** (2-3 sentences): Who they are, where they compete, why we win
- **Crescendo wins** (3-5 bullets): Specific differentiators with evidence
- **Their pitch vs reality** (2-3 rows): What they claim → what's actually true → how to reframe
- **Objection handlers** (3 entries): Objection → response → proof point
- **Landmines to plant** (2-3 questions): Questions reps can ask that expose competitor weaknesses
- **When we lose** (1-2 bullets): Honest assessment of scenarios where this competitor may win

**Constraints:**
- Maximum 1 page when printed
- No buzzwords: "innovative", "leverage", "synergy", "cutting-edge"
- Every claim needs a source or [UNAVAILABLE] marker
- Write for a sales rep scanning between calls, not a marketing executive reading at leisure

## Context

- Load CLAUDE.md for Crescendo's positioning, voice, and competitive landscape
- Reference `competitors/{competitor-name}/` for existing intelligence
- Reference `docs/positioning.md` for current positioning framework
- Reference `docs/taste-files/` for examples of approved battlecard format and tone

## Example

Reference the best competitive battlecard the team has produced. Save it to `docs/taste-files/battlecard-example.md` and point this section to it. If no taste file exists yet, use the first output as baseline and iterate until it reaches 4/5 quality.
```
