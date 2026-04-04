# CLAUDE.md template prompt

Use this prompt inside Claude Code. Paste it into a session and answer the questions Claude asks. It will generate your personalized CLAUDE.md file ready to save to your project root.

CLAUDE.md is the persistent context file that Claude Code loads automatically at the start of every session. It shapes every response you get. Think of it as a briefing doc that tells Claude who you are, how you work, and what matters to you.

---

## The prompt

```
I need you to help me write my CLAUDE.md for Claude Code. This is the persistent context file that shapes every response — like a briefing doc that tells Claude who I am and what matters to me.

Claude Code loads CLAUDE.md automatically every session from the project root. Everything in this file becomes persistent context — your identity, your standards, your constraints. Get it right and every session starts informed.

Ask me these questions one at a time. Wait for my answer before moving to the next question. After I answer all 7, generate my complete CLAUDE.md as a single block I can save directly.

1. **Who are you and what's your role?**
   What's your name, title, and company? What does your company do in one sentence? What's your area of expertise — marketing, product, engineering, design, ops?

2. **What should Claude act as when working with you?**
   Think of this as casting a role. Examples: "an embedded senior marketer", "a staff engineer who knows our codebase", "a product strategist who challenges my thinking." What expertise should Claude bring to every session?

3. **Who are your audiences?**
   Who do you write for, sell to, or build for? Describe 2-3 personas with their titles, pain points, and what they care about. These personas will shape every piece of content Claude helps you create.

4. **Who are your competitors?**
   Name 3-5 competitors. For each, give a one-line description of what makes them different from you. Include funding, market position, or key strengths if you know them. This becomes your competitive quick-reference.

5. **What does your brand sound like?**
   Describe your voice in 3-5 adjectives (e.g., direct, warm, technical, casual). What phrases or words do you always use? What words should Claude never use? Any formatting preferences — em dashes, sentence case, bullet style?

6. **What are your quality standards?**
   What makes output "good enough to ship"? What are your pet peeves in written content? Any rules about data accuracy, source citations, or metric claims? What does "bad output" look like to you?

7. **What should Claude absolutely never do?**
   Hard constraints only. Examples: never fabricate data, never use certain words, never invent testimonials, always use active voice, never skip source attribution. These become the guardrails Claude checks against every response.

Once I've answered all 7, generate my CLAUDE.md using this exact structure:

---

# [Name] — Claude Code Context

## Who I am

[Name, title, company, one-sentence company description]

## Your role

You are [role description]. Act as [expertise areas].

[Bullet list of 4-6 specific expertise areas]

## Voice and style

### Tone

[3-5 bullet points describing voice, each with a bold label and explanation]

### Formatting rules

[Specific formatting preferences — em dashes, capitalization, bullet styles, sentence structure]

## Critical rules

### DO

[5-7 positive instructions — things Claude should always do]

### DON'T

[5-7 negative instructions — things Claude should never do, including banned words]

## Competitive landscape

[Competitors with one-line differentiators, formatted as a reference table or bullet list]

## Key URLs

[Company website, booking link, social profiles, any tools Claude should know about]

## Tool stack

[Organized by category — design, development, automation, communication, AI]

---

Rules for generating the output:
- Write it as instructions TO Claude, not as a description of the user
- Use sentence case for all headings and bullets (never Title Case)
- Keep it direct and concise — no filler paragraphs
- Banned words list goes in the DON'T section, formatted as: "Use corporate buzzwords: [list]"
- The "Your Role" section should read as a casting brief, not a job description
- Quality standards get woven into the DO/DON'T sections, not a separate block
- Format competitor entries with enough detail to be useful as quick-reference during work
```

---

## How to use the output

Save the generated file as `CLAUDE.md` in your project root. Claude Code loads it automatically every session — no setup, no configuration. Just save and start a session.

```
your-project/
├── CLAUDE.md          ← Save it here
├── .claude/
├── context/
├── marketing/
└── ...
```

**Hierarchy:** Claude Code loads CLAUDE.md files at three levels, all additive:
- `~/.claude/CLAUDE.md` — Global (applies to all projects)
- `./CLAUDE.md` — Project root (most common, start here)
- `./subfolder/CLAUDE.md` — Subfolder-specific (for client work, sub-projects)

---

## Tips for a strong CLAUDE.md

1. **Be specific about banned words.** "Don't use buzzwords" is weak. "Don't use: innovative, leverage, synergy, cutting-edge" is enforceable.

2. **Write it as instructions, not autobiography.** "You are an embedded strategist" works better than "I am a marketing leader who needs help."

3. **Include your competitors.** Claude can't help you differentiate if it doesn't know who you're differentiating against.

4. **Add formatting rules.** Small things — em dash style, capitalization, bullet format — compound across hundreds of outputs.

5. **Start lean, iterate often.** Your CLAUDE.md should grow as you discover what Claude gets wrong. Every correction is a candidate for a new rule.

6. **The DON'T section is your highest-leverage investment.** The things Claude should never do matter more than the things it should always do. Bad defaults are persistent — rules against them are your best defense.
