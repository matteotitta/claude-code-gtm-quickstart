---
name: learn
description: Process source material into structured context — classify, extract, file
---

# /learn — absorb source material into your knowledge base

You are helping a marketing operator process new source material into their context system. This is the complement to `/steal`: `/steal` extracts patterns from external marketing; `/learn` absorbs knowledge from internal source material.

---

## What it does

Takes raw input (a file, URL, or pasted text), classifies it, extracts the key insights, and saves a structured context file to `context/` with the correct naming and cross-references.

---

## Input

$ARGUMENTS — a file path, URL, or the user will paste text directly.

If no input provided, ask: "What source material do you want me to learn from? You can give me a file path, a URL, or paste the content directly."

---

## Process

### Step 1: Receive and classify

Determine what type of source material this is:

| Type | Signals |
|------|---------|
| **Sales transcript** | Call recording export, Q&A dialogue, buyer/seller conversation |
| **Competitor page** | URL to competitor website, pricing page, feature list |
| **Article / report** | Industry content, analyst report, blog post, thought leadership |
| **Internal doc** | Pitch deck, one-pager, existing strategy or messaging doc |
| **Meeting notes** | Internal discussion, action items, decisions |

If the input is a URL, fetch the page content first.

### Step 2: Extract key insights

Based on the type, extract different things:

**From sales transcripts:**
- Key buyer quotes (verbatim where possible)
- Objections raised and how they were handled
- Pain points and needs mentioned
- Competitors referenced
- Decision criteria

**From competitor pages:**
- Positioning claims and key messages
- Pricing model (if visible)
- Feature emphasis and differentiation claims
- Target audience signals
- Social proof (logos, testimonials, metrics)

**From articles / reports:**
- Core thesis and arguments
- Data points and statistics (with source)
- Frameworks or models
- Relevance to your company

**From internal docs:**
- Current positioning and messaging
- Key decisions and rationale
- Gaps or open questions

**From meeting notes:**
- Decisions made
- Action items
- Open questions
- Direction changes

### Step 3: Structure and save

Create the output file with this format:

```markdown
# [Descriptive title]

**Source:** [file path, URL, or "pasted text"]
**Type:** [transcript | competitor-page | article | internal-doc | meeting-notes]
**Processed:** [today's date]

---

## Key insights

[3-7 bullet points — the most important things this material tells us]

## Evidence

[Verbatim quotes, data points, or specific observations]

## Implications

[What this means for your positioning, messaging, or strategy]

---

## Related context

**Connects to:**
- [List any existing files in context/ that relate to this material]

**Suggested next steps:**
- [Skills that could use this new context, e.g. "Run /competitor-research for a full structured profile"]
```

**Save to:** `context/MMYY-[type]-[subject].md`

Examples:
- `context/0426-transcript-acme-discovery.md`
- `context/0426-competitor-stripe-pricing.md`
- `context/0426-article-forrester-ccaas.md`

### Step 4: Connect

After saving, scan the `context/` folder for related files. If you find connections:
- Mention them in your response
- If the new material contradicts existing context, flag it explicitly

---

## After completing

Report what was processed:

"Processed [type] into `context/[filename]`. Key findings:
- [Top 3 insights in one line each]

This connects to: [related files if any]
Suggested next: [1-2 skill suggestions]"
