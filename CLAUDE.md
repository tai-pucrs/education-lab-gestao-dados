# Claude Code Project Rules

## Project Overview
Educational content for Module 6 - Data Project and Team Management
- Course: Strategic Data Management (Postgraduate)
- Duration: 30 hours
- Format: Asynchronous video lessons

## Critical Rules

### Language
ALWAYS: Brazilian Portuguese for all content
ALWAYS: English for technical terms (pipeline, deploy, sprint, stakeholder, backlog, ML, BI, ETL)
NEVER: Translate "data pipeline" to "pipeline de dados" or similar

### Target Audience (DUAL)
1. Technical → Manager: Data Engineers/Scientists becoming team leads
2. Manager → Data: Business managers taking over data teams
ALWAYS consider BOTH audiences when writing content

### Code Standards
- HTML: Vanilla JS only, NO frameworks
- CSS: Custom properties, mobile-first, NO frameworks  
- JS: ES6+, camelCase functions, UPPER_SNAKE_CASE constants
- Files must work OFFLINE (localStorage, no external APIs)

### Content Standards
- Include REAL company examples (prefer Brazilian: Nubank, iFood, Mercado Livre)
- Every concept needs a PRACTICAL example
- Maintain 30-hour total course load
- Use action verbs for learning objectives

## File Locations

| Content Type | Path |
|-------------|------|
| Course structure (PTD) | docs/curso/modulo6_ptd_30h.md |
| Video scripts | docs/curso/modulo6_storyboards.md |
| Technical glossary | docs/recursos/modulo6_glossario.md |
| PBL Cases | docs/recursos/modulo6_pbl_cases.md |
| AI Simulators | docs/recursos/modulo6_simuladores_ia.md |
| Interactive HTML | assets/html/ |

## Before Editing
1. Read the PTD (docs/curso/modulo6_ptd_30h.md) for context
2. Check if similar content exists
3. Verify terminology against glossary
4. Test HTML files in browser after changes

## Common Tasks

### Adding a lesson
1. Identify block (1-3) and lesson number
2. Duration: 45-60 minutes
3. Include: objectives, content, example, exercise
4. Update traceability matrix

### Adding glossary term
Format: Term (EN) | Definition | Usage context | Example | Related terms

### Adding PBL case
Structure: Context → Challenge → Available Data → Constraints → Discussion Questions → Real Solution

### Creating AI simulator
Include: Learning objective → Scenario setup → AI prompt → Success criteria
