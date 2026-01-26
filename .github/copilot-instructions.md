# Copilot Instructions for Modulo 6

## Language Rules
- All content in Brazilian Portuguese
- Keep technical terms in English: pipeline, deploy, sprint, stakeholder, backlog
- Do NOT translate: data engineer, data scientist, analytics engineer, ML, BI

## Code Style
- HTML: Vanilla JavaScript only, no frameworks
- CSS: Mobile-first, use CSS variables for colors
- Markdown: ATX headers (#), fenced code blocks

## Project Context
- Educational content for postgraduate course
- Target: Data professionals becoming managers + Managers leading data teams
- 30 hours total, 3 blocks, 18 lessons

---

## File Structure Reference

```
docs/curso/           # Conteúdo pedagógico (MD)
├── modulo6_ptd_30h.md
├── modulo6_estrutura_videos.md
└── modulo6_storyboards.md

docs/recursos/        # Material complementar (MD)
├── modulo6_glossario.md
├── modulo6_pbl_cases.md
└── modulo6_simuladores_ia.md

assets/html/          # Aplicações interativas (HTML)
├── modulo6_dashboard_aluno.html
└── modulo6_framework_interativo.html
```

---

## Code Patterns

### Markdown
- Use ATX headers (not Setext)
- Always space after #
- Lists with hyphen only
- Inline code with single backticks
- Fenced code blocks with language specified
- Use blockquotes for examples and highlights

### HTML
- Indentation: 2 spaces
- IDs: kebab-case
- Classes: BEM or kebab-case
- Data attributes for JS: data-*

### JavaScript
- Functions: camelCase
- Constants: UPPER_SNAKE_CASE
- Classes/Components: PascalCase
- Prefer const > let > never var
- Arrow functions for callbacks
- Template literals for complex strings
- Error messages in Portuguese: 'Ocorreu um erro. Tente novamente.'

### CSS
- Mobile-first approach
- Use CSS custom properties (variables)
- Avoid !important
- Prefer classes over IDs for styling
- Group properties: Layout → Box model → Visual → Typography

---

## DO NOT Use

- ❌ JS Frameworks (React, Vue, etc) - use vanilla JS
- ❌ CSS frameworks (Tailwind, Bootstrap) - use pure CSS with variables
- ❌ Technical terms translated to Portuguese
- ❌ npm/yarn dependencies - HTMLs are standalone
- ❌ Fetch for external APIs - use localStorage only
- ❌ ES modules in HTML - use traditional script tags

---

## PREFER

- ✅ Vanilla JavaScript ES6+
- ✅ CSS custom properties (variables)
- ✅ Semantic HTML5
- ✅ Accessibility (ARIA when needed)
- ✅ Mobile-first responsive design
- ✅ LocalStorage for persistence
- ✅ Template literals for dynamic HTML
- ✅ Event delegation

---

## Domain Context

### Technical Terms (Keep in English)
- Data Engineering, Data Science, Analytics Engineering
- Pipeline, ETL, ELT, Data Warehouse, Data Lake
- dbt, Airflow, Spark, Snowflake, BigQuery
- Sprint, Backlog, Kanban, Scrum
- Stakeholder, Tech Lead, Data Manager
- CRISP-DM, TDSP, DataOps, MLOps
- KPI, OKR, SLA, SLO

### Frequently Cited Companies
- Brasil: Nubank, iFood, Mercado Livre, Magazine Luiza, PicPay
- International: Uber, Netflix, Airbnb, Spotify, Meta

### Management Frameworks
- Agile, Scrum, Kanban, SAFe
- CRISP-DM, TDSP, Team Data Science Process
- MoSCoW, RICE, ICE (prioritization)
- RACI, DACI (responsibilities)

---

## Common Snippets

### Markdown - Lesson Structure
```markdown
## Aula X.X: [Título]

### Objetivos de Aprendizagem
Ao final desta aula, o aluno será capaz de:
- [ ] [Verbo de ação] + [objeto] + [contexto]

### Conteúdo Principal

#### 1. [Subtópico]
[Conteúdo]

**Exemplo Prático:**
> [Caso real de empresa]

### Exercício
[Descrição da atividade prática]

### Recursos Complementares
- [Link/Referência]

### Tempo Estimado
- Vídeo: XX min
- Exercício: XX min
```

### Markdown - PBL Case
```markdown
## Case: [Empresa] - [Desafio]

### Contexto Empresarial
[2-3 parágrafos sobre a empresa e situação]

### O Desafio
[Problema específico - máximo 1 parágrafo]

### Dados Disponíveis
| Recurso | Descrição |
|---------|-----------|
| | |

### Restrições do Projeto
- **Prazo:** 
- **Budget:** 
- **Equipe:** 
- **Tecnologia:** 

### Perguntas para Discussão
1. **Estratégia:** 
2. **Técnica:** 
3. **Liderança:** 

### Solução Real (Expandir)
<details>
<summary>Ver solução implementada</summary>

[Descrição do que foi feito]

</details>
```

### HTML - Card Component
```html
<div class="card" data-id="">
  <div class="card-header">
    <h3 class="card-title"></h3>
    <span class="card-badge"></span>
  </div>
  <div class="card-body">
    <p class="card-description"></p>
  </div>
  <div class="card-footer">
    <button type="button" class="btn btn-primary" onclick="">
      Ação
    </button>
  </div>
</div>
```

### HTML - Progress Section
```html
<div class="progress-section" id="">
  <div class="progress-header">
    <span class="progress-label"></span>
    <span class="progress-value">0%</span>
  </div>
  <div class="progress-bar">
    <div class="progress-fill" style="width: 0%"></div>
  </div>
</div>
```

### JavaScript - LocalStorage Helper
```javascript
const Storage = {
  get(key, defaultValue = null) {
    try {
      const item = localStorage.getItem(key);
      return item ? JSON.parse(item) : defaultValue;
    } catch (e) {
      console.error('Storage get error:', e);
      return defaultValue;
    }
  },
  
  set(key, value) {
    try {
      localStorage.setItem(key, JSON.stringify(value));
      return true;
    } catch (e) {
      console.error('Storage set error:', e);
      return false;
    }
  },
  
  remove(key) {
    localStorage.removeItem(key);
  },
  
  clear() {
    localStorage.clear();
  }
};
```

### JavaScript - Event Handler Pattern
```javascript
function handleEventName(event) {
  event.preventDefault();
  
  const target = event.target;
  const data = target.dataset;
  
  // Validação
  if (!data.id) return;
  
  // Lógica
  try {
    // ...
    updateUI();
  } catch (error) {
    console.error('Error in handleEventName:', error);
    showError('Ocorreu um erro. Tente novamente.');
  }
}

// Registrar evento
document.addEventListener('DOMContentLoaded', () => {
  document.querySelector('#container')
    .addEventListener('click', handleEventName);
});
```

### CSS - Base Variables
```css
:root {
  /* Cores principais */
  --color-primary: #2563eb;
  --color-primary-dark: #1d4ed8;
  --color-secondary: #64748b;
  
  /* Estados */
  --color-success: #16a34a;
  --color-warning: #d97706;
  --color-danger: #dc2626;
  --color-info: #0891b2;
  
  /* Neutros */
  --color-bg: #f8fafc;
  --color-surface: #ffffff;
  --color-border: #e2e8f0;
  --color-text: #1e293b;
  --color-text-muted: #64748b;
  
  /* Espaçamento */
  --spacing-xs: 0.25rem;
  --spacing-sm: 0.5rem;
  --spacing-md: 1rem;
  --spacing-lg: 1.5rem;
  --spacing-xl: 2rem;
  
  /* Tipografia */
  --font-sans: 'Inter', system-ui, sans-serif;
  --font-mono: 'JetBrains Mono', monospace;
  
  /* Sombras */
  --shadow-sm: 0 1px 2px rgba(0,0,0,0.05);
  --shadow-md: 0 4px 6px rgba(0,0,0,0.1);
  --shadow-lg: 0 10px 15px rgba(0,0,0,0.1);
  
  /* Bordas */
  --radius-sm: 0.25rem;
  --radius-md: 0.5rem;
  --radius-lg: 1rem;
  --radius-full: 9999px;
}
```
