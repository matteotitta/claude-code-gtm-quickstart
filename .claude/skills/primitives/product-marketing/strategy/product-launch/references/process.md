# Process — full step-by-step

The launch is a 3-phase system: Strategy (T-14 to T-10) → Development (T-10 to T-1) → Deployment (T-14 to T+14). Read this when running the skill end-to-end.

---

## Phase 1: Strategy (T-14 to T-10)

**Purpose:** Define narrative, objectives, and positioning for the launch.

**Steps:**

1. **Step 1.1: Complete product feature brief**
   - Confirm feature name (branded name)
   - Classify category (Major/Significant/Standard/Minor)
   - Write 2-3 sentence description
   - Identify target personas (primary and secondary)
   - Document key capabilities
   - Document differentiation vs. alternatives
   - Note dependencies
   - **Output:** Completed feature brief

2. **Step 1.2: Develop narrative angle**
   - Create "Big idea" — one sentence on why this matters now
   - Build story arc: Problem → Insight → Solution → Proof → Future
   - Write 3-5 hook variations for different channels
   - Create message hierarchy: Primary → Secondary → Supporting
   - **Output:** Narrative framework

3. **Step 1.3: Define business objectives**
   - Set pipeline impact target (e.g., $X qualified pipeline in 30 days)
   - Set adoption target (e.g., X% of customers using by T+30)
   - Set awareness target (e.g., X impressions, X engagements)
   - Set sales enablement target (e.g., X% reps enabled)
   - Document monetization impact (pricing tier changes, upsell motion)
   - **Output:** Objectives with measurable targets

4. **Step 1.4: Create launch kick-off agenda**
   - Feature overview (10 min)
   - Target audience (10 min)
   - Success metrics (10 min)
   - Asset requirements (15 min)
   - Timeline and owners (10 min)
   - Dependencies and risks (5 min)
   - **Output:** Kick-off meeting agenda

**Phase 1 Checkpoint:**
- [ ] Feature brief complete with all required fields
- [ ] Narrative angle with story arc and hooks
- [ ] Business objectives with measurable targets
- [ ] Kick-off agenda ready

---

## Phase 2: Development (T-10 to T-1)

**Purpose:** Create all launch assets organized by function.

**Steps:**

1. **Step 2.1: Determine launch tier**
   - Major: New product, category entry, platform shift → All 18 assets
   - Significant: Major feature, integration, pricing change → 12-15 assets
   - Standard: Feature improvement, capability expansion → 8-10 assets
   - Minor: Bug fix, UX improvement → Blog post, email, in-app
   - **Output:** Tier selected with asset checklist

2. **Step 2.2: Generate website and product assets**
   - Product landing page (use `landing-page-copy` skill)
   - Product media kit (screenshots, creatives, blurb)
   - Website banner (homepage announcement)
   - In-app touchpoints (banners, checklist, demo video)
   - **Output:** Website asset files

3. **Step 2.3: Generate content assets**
   - Blog post announcement with founder video
   - Founder video demo script (2-3 min)
   - **Output:** Content asset files

4. **Step 2.4: Generate social and community assets**
   - LinkedIn series (pre-launch, launch day, post-launch)
   - Team sharing templates
   - Community announcements (Slack, Discord, forums)
   - **Output:** Social asset files

5. **Step 2.5: Generate email and CRM assets**
   - Email announcement (separate for prospects and customers)
   - Newsletter placement copy
   - **Output:** Email asset files

6. **Step 2.6: Generate paid and amplification assets**
   - Ad creatives and copy
   - Creator amplification list and templates
   - Partner amplification list and templates
   - **Output:** Amplification asset files

7. **Step 2.7: Generate sales enablement assets**
   - Enablement deck updates
   - Battle cards (use `sales-enablement` skill)
   - Talk tracks for SDRs, AEs, CSMs
   - **Output:** Enablement asset files

8. **Step 2.8: Generate event assets**
   - Launch webinar AMA setup
   - Webinar announcement copy
   - **Output:** Event asset files

**Phase 2 Checkpoint:**
- [ ] All tier-appropriate assets generated
- [ ] Assets trace to messaging framework
- [ ] Placeholders clearly marked
- [ ] No invented metrics or quotes

---

## Phase 3: Deployment (T-14 to T+14)

**Purpose:** Orchestrate timeline and amplification.

**Steps:**

1. **Step 3.1: Customize pre-launch timeline (T-14 to T-1)**
   - T-14 → T-1: Lock post timelines for creators, partners, team
   - T-10 → T-1: QA new feature
   - T-7 → T-1: Publish pre-launch LinkedIn teaser series
   - T-7 → T-1: Team members amplify with sharing templates
   - T-1: Publish product landing page and website banner
   - T-1: Publish in-app touchpoints
   - **Output:** Pre-launch timeline with owners

2. **Step 3.2: Customize launch day timeline (T-0)**
   - T-0: Publish blog post with founder video
   - T-0: Send email announcement
   - T-0: Publish LinkedIn launch announcement
   - T-0: Team amplifies with sharing templates
   - T-0: Host AMA webinar
   - **Output:** Launch day timeline with owners

3. **Step 3.3: Customize post-launch timeline (T+1 to T+14)**
   - T+0 → T+5: Creators and partners amplify
   - T+0 → T+14: Trigger paid campaigns
   - T+1 → T+5: Post-launch LinkedIn series
   - T+1 → T+5: Community announcements
   - T+1 → T+14: Newsletter placements
   - T+1 → T+14: Sales tests new enablement
   - **Output:** Post-launch timeline with owners

4. **Step 3.4: Build coordination playbook**
   - Create RACI matrix by asset
   - Document handoff protocols
   - Define review and approval workflow
   - Build contingency plans
   - **Output:** Coordination playbook

**Phase 3 Checkpoint:**
- [ ] Timeline customized to launch date
- [ ] Owner assignments complete
- [ ] RACI matrix documented
- [ ] Contingencies planned

---

## Process Flowchart (overview)

```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│   INPUT     │───▶│  STRATEGY   │───▶│ DEVELOPMENT │───▶│ DEPLOYMENT  │───▶│   REVIEW    │
│ VALIDATION  │    │  (T-14→T-10)│    │ (T-10→T-1)  │    │(T-14→T+14)  │    │   & CHAIN   │
└─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘    └─────────────┘
```

**Self-evaluation gate** (before review): feature brief complete, narrative angle has story arc + hooks, all tier-required assets listed with owners, no invented metrics.

**Review gate:** Level 3 (Deep Review). Present full launch package; chain into `landing-page-copy`, `linkedin-content`, `sales-enablement`.
