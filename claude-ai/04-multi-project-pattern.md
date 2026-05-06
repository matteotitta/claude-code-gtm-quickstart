# Multi-Project pattern (claude.ai)

claude.ai gives you one set of Custom Instructions and one Knowledge folder per Project. As you run more skills and produce more outputs, a single Project gets crowded — and Claude has to weigh ALL of that knowledge on every chat, which dilutes focus.

The fix: **two Projects, mirroring the dependency chain.** PMM produces, Content consumes.

## The architecture

```
        ┌────────────────────────────────────────────────────────┐
        │  Project 1 — Marketing Foundations                     │
        │                                                         │
        │  Custom Instructions: INSTRUCTIONS.md                   │
        │  Knowledge:                                             │
        │   - 01-skills-catalog.md                                │
        │   - 02-marketing-folder-convention.md                   │
        │   - 03-voice-conventions.md                             │
        │   - 04-multi-project-pattern.md (this file)             │
        │   - your raw sources (transcripts, decks, screenshots)  │
        │                                                         │
        │  Skills you run here:                                   │
        │   - /company-context     - /tov-guidelines              │
        │   - /competitor-research - /brand-kit                   │
        │   - /icp-research        - /positioning                 │
        │   - /messaging           - /product-launch              │
        └────────────────────┬───────────────────────────────────┘
                             │
                             │ outputs saved locally as MMYY-topic.md
                             │ then dragged into Project 2's Knowledge
                             ▼
        ┌────────────────────────────────────────────────────────┐
        │  Project 2 — Content Engine                             │
        │                                                         │
        │  Custom Instructions: INSTRUCTIONS.md (same prompt)     │
        │  Knowledge:                                             │
        │   - 01-skills-catalog.md                                │
        │   - 02-marketing-folder-convention.md                   │
        │   - 03-voice-conventions.md                             │
        │   - 04-multi-project-pattern.md (this file)             │
        │   - {MMYY}-positioning.md      (locked, from Project 1) │
        │   - {MMYY}-messaging.md        (locked, from Project 1) │
        │   - {MMYY}-icp-research.md     (locked, from Project 1) │
        │   - {MMYY}-brand-kit.md        (locked, from Project 1) │
        │   - {MMYY}-tov-guidelines.md   (locked, from Project 1) │
        │                                                         │
        │  Skills you run here:                                   │
        │   - /content-strategy                                   │
        │   - /content-audit                                      │
        │   - /thought-leadership                                 │
        └────────────────────────────────────────────────────────┘
```

## Why two Projects (not one)

- **Knowledge size limits.** claude.ai caps the Knowledge folder. A single Project running for 6 months hits the limit; two focused Projects don't.
- **Focus.** Content work shouldn't see noisy raw transcripts. Strategy work shouldn't see content drafts. Each Project's Knowledge is curated for the work that happens there.
- **Dependency chain made visible.** PMM produces → Content consumes is a real dependency. Two Projects make it physical: a positioning doc only enters Project 2 once it's locked.

## Setup walkthrough

### Step 1 — Create Project 1: Marketing Foundations

1. claude.ai → **Create Project** → name it "Marketing Foundations"
2. Custom Instructions: paste the contents of `INSTRUCTIONS.md`
3. Knowledge: drag in all 4 reference files (`01-skills-catalog.md`, `02-marketing-folder-convention.md`, `03-voice-conventions.md`, `04-multi-project-pattern.md`)
4. Optional: drag in any raw sources you have (sales call transcripts, customer interview notes, source decks)

You're ready to run research + PMM skills here.

### Step 2 — Run your foundation chain in Project 1

Suggested order (each output feeds the next):

1. `Run the company-context skill for [your company name + URL]`
2. `Run the competitor-research skill for [Competitor 1 name + URL]` (then 2-3 more, one at a time)
3. `Run the icp-research skill for [your company URL]`
4. `Run the tov-guidelines skill on the following content samples: [paste 2-3 URLs]`
5. `Run the brand-kit skill on these screenshots: [drag screenshots in]`
6. `Run the positioning skill for [your company]` (depends on 1-5)
7. `Run the messaging skill for [your company]` (depends on 6)

Save each output locally as `MMYY-topic.md` — your filename per the marketing/ folder convention.

### Step 3 — Create Project 2: Content Engine

1. claude.ai → **Create Project** → name it "Content Engine"
2. Custom Instructions: paste the same `INSTRUCTIONS.md` contents (the prompt is identical)
3. Knowledge: drag in the 4 reference files PLUS the locked outputs from Project 1 (positioning, messaging, ICP, brand-kit, tov-guidelines)

### Step 4 — Run content skills in Project 2

1. `Run the content-audit skill for these channels: [list URLs]`
2. `Run the content-strategy skill for [your company]` (consumes Project 1's positioning + messaging + ICP)
3. `Run the thought-leadership skill on the topic [topic]` (consumes content-strategy)

## Refresh protocol

When Project 1 produces a new locked version of any foundation doc (e.g., positioning gets a refresh):

1. Save the new version locally with the new MMYY prefix (`0826-positioning-v2.md`)
2. Open Project 2 → Knowledge
3. Remove the old `0526-positioning.md` from Project 2's Knowledge
4. Drag in the new `0826-positioning-v2.md`
5. Note the change in your local audit log (`history.md`-equivalent) so you remember which content drafts were built against the old positioning vs. the new one

## Optional Project 3 — Per-launch

For product launches, create a third Project per major launch:

- Knowledge: the 4 reference files + locked positioning + locked messaging + the launch brief from `/product-launch`
- Skills you run there: launch-specific content drafts, ad copy variants, sales enablement (gated tier — see [LinkedIn](https://www.linkedin.com/in/matteotittarelli/))
- Archive the Project 60 days after launch — keep Project 1 and 2 always-on; Project 3 is ephemeral

## Anti-patterns

- ❌ One giant Project with everything dumped in. Knowledge folder hits its cap; Claude's focus dilutes.
- ❌ Skipping the lock step. If you drag draft positioning into Project 2, content gets built against unfinished foundations and has to be redone.
- ❌ Forgetting to refresh Project 2 when Project 1 changes. Content built against stale positioning is the most common bug in this setup.
- ❌ Running content skills in Project 1. Cross-contamination — drafts pollute the strategy Knowledge.
