# Copilot Custom Instructions

## Project Context
Educational content repository for Module 6 - Data Project and Team Management (30-hour postgraduate course).

## Language Rules
- ALL content must be in **Brazilian Portuguese**
- Technical IT/Data terms must remain in **English**: pipeline, deploy, sprint, stakeholder, backlog, data engineer, data scientist, analytics engineer, ML, BI, ETL, KPI, OKR
- Never translate consolidated terms

## Code Guidelines

### HTML
- Vanilla JavaScript only (no React, Vue, etc.)
- No external dependencies (CDN allowed for icons/fonts)
- Must work offline
- Mobile-first responsive design
- Use localStorage for persistence
- Semantic HTML5 elements
- IDs in kebab-case
- Data attributes for JS interaction

### CSS  
- Use CSS custom properties (variables)
- Mobile-first approach
- Follow color palette:
  - Primary: #2563eb
  - Success: #16a34a
  - Warning: #d97706
  - Danger: #dc2626
- No CSS frameworks

### JavaScript
- ES6+ syntax preferred
- Functions: camelCase
- Constants: UPPER_SNAKE_CASE
- Use const > let > never var
- Template literals for dynamic HTML
- Event delegation pattern
- Always handle errors gracefully

### Markdown
- ATX headers (# not underlines)
- Fenced code blocks with language
- Tables for structured data
- Max 5 lines per paragraph
- Max 7 items per list level

## Target Audiences
1. Technical professionals (Data Engineers, Data Scientists) transitioning to management
2. Managers from other areas taking over data teams

## Common Terms (keep in English)
- Data Pipeline, ETL, ELT, Data Warehouse, Data Lake
- Sprint, Backlog, Kanban, Scrum, Agile
- Stakeholder, Tech Lead, Data Manager
- CRISP-DM, TDSP, DataOps, MLOps
- dbt, Airflow, Spark, Snowflake, BigQuery

## File Structure Reference
- `docs/curso/` - Pedagogical content
- `docs/producao/` - Production/recording guides
- `docs/recursos/` - Educational resources (glossary, cases, simulators)
- `templates/` - Reusable templates and checklists
- `assets/html/` - Interactive HTML applications
