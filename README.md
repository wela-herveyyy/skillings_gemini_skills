# Skillings Outreach Automation Skill

This is a specialized [Gemini CLI](https://geminicli.com) skill designed for the **Skillings** team (Livro Systems Inc.) to automate partner prospecting and outreach.

## 🚀 Features

- **Prospect Discovery:** Automated search for tutoring centers and schools.
- **Lead Profiling:** Standardized documentation of prospects with lead scoring.
- **Personalized Outreach:** Automated Gmail drafting with integrated meeting scheduling and Livro Systems branding.
- **High-Fidelity Personalization:** Automated research-to-proposal mapping for tailored emails.
- **Project Context:** Deep integration with the Skillings platform's value propositions.

## 📥 Installation

### 1. Prerequisite
Ensure you have the Gemini CLI installed. If not, follow the guide at [geminicli.com](https://geminicli.com/docs/getting-started).

### 2. Install the Extension
You can install this extension directly from your GitHub repository:

```bash
gemini extensions install https://github.com/wela-herveyyy/skillings_gemini_skills
```

Or for local development/testing, run this command from the project root folder (containing `gemini-extension.json`):

```bash
gemini extensions install .
```

### 3. Reload
After installation, run the following command in the Gemini CLI session:
```bash
/skills reload
```

## 🛠️ Usage

Once installed, you can trigger the skill using natural language commands:

- **Finding Leads:** *"Search for private schools in [Location] for Skillings and profile them."*
- **Creating Profiles:** *"Research [Business Name] and create a Skillings prospect profile."*
- **Drafting Emails:** *"Draft a collaboration proposal for [Prospect Name] using the Skillings template."*
- **Scoring:** *"Evaluate my current Skillings prospects and give me the top 3 leads."*

## 📂 Structure

- `SKILL.md`: Core logic and workflow instructions for the AI.
- `references/`:
    - `profile-schema.md`: The standard format for lead documentation.
    - `proposal-template.md`: The Livro Systems branded email template.
    - `skillings-info.md`: Platform features and value props.

## ⚙️ Development & Packaging

If you make modifications to the files inside `skills/skillings-outreach/` or `references/`, you need to package the extension.

Run the packaging script in PowerShell:
```powershell
powershell -ExecutionPolicy Bypass -File .\pack-skill.ps1
```
This compiles the files into the root `skillings-outreach.skill` zip file, ready for distribution.

## 🏢 Corporate Identity
This skill is configured to use **Livro Systems Inc.** branding. All outreach drafts will point to [livro.systems](https://livro.systems/) and use the official Skillings vision.

---
Built with ❤️ by the Skillings Team.
