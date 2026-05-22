---
name: skillings-outreach
description: Automates outreach for Skillings (online tutoring platform). Use when searching for tutoring centers or schools to prospect, profiling them in the local Documents folder, and drafting personalized collaboration proposals via Gmail.
---

# Skillings Outreach

## Overview
This skill streamlines the sales prospecting and outreach workflow for Skillings. It helps identify potential partners (tutoring centers, schools, education groups), documents their details, and drafts high-conversion collaboration emails.

## Core Workflows

### 1. Search & Profile Prospect
Use this workflow to find and document new potential partners.

**Procedure:**
1.  **Search:** Use `google_web_search` to find tutoring centers or schools in a specific region (e.g., "Tutoring centers in Cagayan de Oro").
2.  **Research:** Use `web_fetch` on the websites of promising leads to understand their offerings, scale, and "vibe".
3.  **Profile:** Create a dedicated directory: `C:\Users\hmapa\Documents\Skillings\Prospects\[Business Name]`.
4.  **Document:** Write a `profile.md` following the [Profile Schema](references/profile-schema.md).

### 2. Draft Collaboration Proposal
Use this workflow to create a personalized outreach email for a profiled prospect.

**Procedure:**
1.  **Read Profile:** Load `profile.md` from the prospect's folder.
2.  **Personalization Protocol:**
    - **Admiration Hook:** Reference a specific program or success story found in research (e.g., "I saw your recent Reading Intensive program...").
    - **Pain Point Mapping:** Match their current tools to Skillings solutions. If they use FB/Messenger, emphasize "Integrated Schedules". If they use Sheets, emphasize "Automated Enrollment".
    - **Vibe Alignment:** If the business vibe is "Traditional", use more formal language. If "Modern", be more direct and tech-forward.
3.  **Draft:** Create a Gmail draft using `gmail.createDraft` with `isHtml: true`.
4.  **Template:** Base the content on the [Proposal Template](references/proposal-template.md), injecting the personalization strings.

### 3. Lead Scoring (Optional)
Evaluate a prospect's potential value.
- **Fit (1-5):** How well does their business model align with Skillings (e.g., multiple courses, tutors, schedules)?
- **Need (1-5):** Do they lack an online presence or use fragmented tools (spreadsheets/social media only)?
- **Total Score:** Fit + Need (Goal: 8+ for priority outreach).

### 4. Meeting Scheduler
Streamline the call to action.
- Use `calendar.findFreeTime` to find three 15-minute slots in the next 3 business days.
- Include these slots in the draft proposal.

## Context & Constraints
- **Pricing:** Emphasize collaborative partnership and accessible rates (₱1k–₱5k range for local SMBs).
- **Branding:** Refer to the [Skillings Project Doc](references/skillings-info.md) for core value propositions.
- **Location:** Prioritize "homegrown" businesses in the Philippines, specifically Mindanao/CDO for local outreach.

## Resources
- **references/profile-schema.md:** Standardized format for prospect profiles.
- **references/proposal-template.md:** Email template for outreach.
- **references/skillings-info.md:** Core features and value props of the platform.
