# Setup guide — Mac

Get Claude Code running in Cursor in 15 minutes. Complete this before the live session.

---

## What you need

- [ ] Mac computer with admin access
- [ ] Claude Max ($100/mo, recommended) or Pro ($20/mo) subscription at claude.ai
- [ ] Stable internet connection

---

## Step 1: Install Cursor IDE

1. Go to [cursor.com](https://cursor.com)
2. Download the Mac version (.dmg file)
3. Open the .dmg file from Downloads
4. Drag the Cursor icon into the Applications folder
5. Open Finder, go to Applications, find Cursor
6. **Right-click** Cursor and click **Open** (not double-click — this bypasses the macOS security warning on first launch)
7. Create a Cursor account (free) when prompted

**Verify:** Cursor opens with a welcome screen and you see a File menu at the top.

---

## Step 2: Install the Claude Code extension

1. In Cursor, find the **Extensions icon** in the left sidebar (looks like 4 squares)
2. Click it
3. Search for: `claude code`
4. Click **Install** on "Claude Code"
5. Wait for the install to complete
6. Look for the **orange Claude icon** in the right sidebar
7. Click it to open the Claude Code panel

**Verify:** The Claude Code panel opens on the right side of your screen.

---

## Step 3: Authenticate Claude Code

1. In the Claude Code panel, click **"Sign in with Claude subscription"**
2. Your browser opens — log in with your Claude Max or Pro account
3. Approve the connection when prompted
4. Return to Cursor

**Verify:** The Claude Code panel no longer shows a sign-in prompt. You see a text input where you can type messages.

**If you see "only available for premium seats":** You need Claude Max ($100/mo) or Pro ($20/mo). The free tier does not work with Claude Code.

---

## Step 4: Clone this repo and open it

1. In Cursor: **File > Open Folder**
2. Navigate to your Documents folder (or wherever you want to keep this project)
3. Click **New Folder** — name it something like `my-gtm-workspace`
4. Open that folder
5. Open the terminal: **Terminal > New Terminal** (top menu bar)
6. In the terminal, paste this command and press Enter:

```bash
git clone https://github.com/[org]/claude-code-gtm-quickstart.git .
```

(Replace `[org]` with the actual GitHub URL shared with you)

7. Wait for cloning to complete
8. You should see files appear in the left sidebar (Explorer)

**Verify:** You can see folders like `.claude/`, `context/`, `marketing/`, and files like `CLAUDE.md` and `README.md` in the Explorer.

---

## Step 5: Test that it works

1. Click the **orange Claude icon** in the right sidebar to open Claude Code
2. Type this message and press Enter:

```
What files are in this repository? Give me a quick overview.
```

3. Claude should respond by listing the folders and files it can see

**Verify:** Claude describes the folder structure — `.claude/`, `context/`, `marketing/`, etc.

---

## You're ready

Your setup is complete. In the live session, we'll run:

1. `/quickstart` — personalize your workspace (10 min)
2. `/context-loop` — generate competitive intelligence on your company (25 min)

**Before the session, have ready:**
- Your company website URL
- 2-5 competitor names and URLs

---

## Troubleshooting

### "command not found" when running git clone

Git might not be installed. Open Terminal and run:

```bash
xcode-select --install
```

This installs Apple's developer tools including Git. Follow the prompts, then try the clone command again.

### Claude Code won't authenticate

- Verify you have Claude Max or Pro (not the free tier)
- Log out of claude.ai in your browser, log back in, then try again
- Close and reopen the Claude Code panel in Cursor

### Files don't appear in the Explorer after cloning

- Make sure you opened the correct folder (File > Open Folder > select the folder you cloned into)
- Try: **File > Open Folder** and re-select the folder

### The terminal shows errors during clone

- Check the repo URL is correct (copy it exactly from the link shared with you)
- Make sure you have internet access
- If you see "repository not found," check that you have access to the repo (can you see it on github.com?)

### I see "Invisible password" or nothing happens when I type

When any terminal prompt asks for a password:
- **Your typing will NOT show on screen** — no dots, no asterisks, nothing
- This is normal macOS security behavior, not a bug
- Type your password and press Enter
