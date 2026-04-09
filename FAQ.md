# Frequently asked questions

The five questions every team asks in the first week — answered.

---

## "Won't it hallucinate?"

One session working against structured context produces virtually no hallucinations. Five sessions without a knowledge base, and it starts making things up.

The context IS the hallucination defense. When Claude has your competitor research, your ICP brief, and your positioning doc to draw from, it cites what's there instead of inventing what isn't. The more complete your `context/` folder, the more grounded every output becomes.

**What this means for you:** Build your CLAUDE.md first (that's week 1). Then run `/company-context` and `/competitor-research` to fill the `context/` folder. Every skill you run after that benefits from this foundation.

---

## "Why not just use ChatGPT or Claude.ai?"

Custom GPTs and Claude Projects lose context between sessions, can't search across your documents, can't create persistent files, can't be version-controlled, and can't connect to your tools.

A Claude Code workspace is YOUR file system, YOUR structure, YOUR rules. The AI conforms to your world — not the other way around. When you close the session and open a new one, everything you've built is still there. Your CLAUDE.md, your skills, your context folder, your outputs. Nothing resets.

**What this means for you:** By the end of week 1, test this yourself — ask the same question in ChatGPT and in Claude Code with your CLAUDE.md loaded. The difference in output quality is the entire argument for this approach.

---

## "How much should I feed it first?"

Start with 10-15 pieces of source material:

- 5-10 sales call transcripts or meeting notes (won AND lost deals)
- 2-3 competitor landing pages (saved as markdown or PDF)
- Your current pitch deck or one-pager
- Any existing positioning, messaging, or brand docs

5 is too thin for patterns — the system just parrots back what you gave it. 50 overwhelms without structure. 10-15 is where the system starts seeing patterns across your data.

**What this means for you:** Gather these into your `docs/` folder before running your first context skill. The richer your starting material, the stronger every output from day one.

---

## "Does everyone on my team need Claude Max?"

Only the person maintaining the system needs a Max subscription ($100/month). Everyone else can:

- Read the outputs (they're just markdown files in a shared repo)
- Run skills against existing context
- Contribute new context via Git pull requests
- Review and approve changes through GitHub's PR workflow

PRs keep quality high without requiring everyone to pay for a subscription.

**What this means for you:** Start with one maintainer. Others clone the repo and get the full system. As the team grows, add subscriptions based on who's actively building — not who's consuming outputs.

---

## "Can I break it?"

It's files. You can see everything, open anything in a text editor, and change whatever you want.

Git means you can roll back any change. Every commit is a snapshot you can return to. You literally cannot permanently break it — `git log` shows what changed, `git revert` undoes it.

The worst case scenario: you delete a file you shouldn't have. Git brings it back. You corrupt your CLAUDE.md. Git brings it back. You accidentally overwrite a context file. Git brings it back.

**What this means for you:** Experiment freely. Try things. If something goes wrong, `git revert` is your undo button. That's why we set up Git in the first week.
