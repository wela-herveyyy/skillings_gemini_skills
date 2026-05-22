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
1.  **Initial Inquiry:** Before performing any automatic web searches, check if the user provided specific target details like a `target_business_link`, social media page, or business name. If none of this information is provided, explicitly ask the user first: *"Do you have a specific target business link (Facebook, LinkedIn, website) or a specific business name you'd like me to research? If not, I can proceed with a general search."*
2.  **Search:** Once you have a name, link, or permission to do a general search, use `google_web_search` to find the tutoring center or school.
3.  **Socials & Web Research:** 
    - Use `web_fetch` on the target's website or the links provided by the user.
    - Check their website for social media handles (Facebook, LinkedIn, Instagram).
    - **User Inquiry Option (Socials):** Instead of automatically scraping Google endlessly for their social media, if no definitive social links are found easily, ask the user: *"I couldn't easily find a social media link for [Business Name]. Do you happen to have a link to their Facebook or LinkedIn? If not, I'll proceed with the available web info."*
    - **Insight Extraction:** Review the identified social profiles. Extract recent posts (from the last 2-3 months), active campaigns, student achievements, event photos, or reviews that highlight their specific programs, style, and community engagement.
3.  **Profile:** Create a dedicated directory: `C:\Users\hmapa\Documents\Skillings\Prospects\[Business Name]`.
4.  **Document:** Write a `profile.md` following the [Profile Schema](references/profile-schema.md). Ensure the **Socials** and **Social Insights** fields are thoroughly filled with URLs and the key highlights you found.

### 2. Draft Collaboration Proposal
Use this workflow to create a personalized outreach email for a profiled prospect.

**Procedure:**
1.  **Read Profile:** Load `profile.md` from the prospect's folder.
2.  **Personalization Protocol:**
    - **Admiration Hook:** Construct a highly specific and warm opening. If the profile includes **Social Insights** (e.g., a recent Facebook post about their summer science camp, a LinkedIn post about expanding their classes, or positive reviews praising their patience), reference that specifically. E.g., *"I loved seeing the photos of your recent Reading Intensive graduation on Facebook..."* or *"I saw on LinkedIn that you're expanding your preschool division..."*
    - **Pain Point Mapping:** Match their current tools to Skillings solutions. If their Facebook page shows they take enrollment inquiries via Messenger, highlight "Unified Schedules and Digital Checkout". If they use Google Forms/Sheets, emphasize "Automated Enrollment & Digital Rosters". If they have no social or web presence, emphasize "establishing your online tutoring brand and storefront".
    - **Vibe Alignment:** If the business vibe is "Traditional", use more formal language. If "Modern", be more direct, warm, and tech-forward.
3.  **Draft:** Create a Gmail draft using `gmail.createDraft` with `isHtml: true`.
4.  **Template:** Base the content on the [Proposal Template](references/proposal-template.md), injecting the personalization strings according to the template guidelines.

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
