# 🐙 Instruções para GitHub Copilot

## Contexto do Projeto

Repositório de material didático para **Módulo 6 - Gestão de Projetos e Equipes de Dados** (pós-graduação). Conteúdo em português brasileiro com termos técnicos em inglês.

---

## 📋 Configuração do Copilot

### `.github/copilot-instructions.md` (criar se não existir)

```markdown
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
```

---

## 🎯 Snippets e Atalhos

### Para Markdown - Estrutura de Aula

```markdown
<!-- Copilot: /aula -->

## Aula X.X: [Título]

### Objetivos de Aprendizagem

Ao final desta aula, o aluno será capaz de:

- [ ] [Verbo de ação] + [objeto] + [contexto]
- [ ]
- [ ]

### Conteúdo Principal

#### 1. [Subtópico]

[Conteúdo]

**Exemplo Prático:**

> [Caso real de empresa]

#### 2. [Subtópico]

[Conteúdo]

### Exercício

[Descrição da atividade prática]

### Recursos Complementares

- [Link/Referência]

### Tempo Estimado

- Vídeo: XX min
- Exercício: XX min
```

### Para Markdown - Case PBL

```markdown
<!-- Copilot: /case -->

## Case: [Empresa] - [Desafio]

### Contexto Empresarial

[2-3 parágrafos sobre a empresa e situação]

### O Desafio

[Problema específico - máximo 1 parágrafo]

### Dados Disponíveis

| Recurso | Descrição |
| ------- | --------- |
|         |           |

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

### Para Markdown - Termo de Glossário

```markdown
<!-- Copilot: /termo -->

### [Termo] | [Categoria]

**Definição:**

**Uso em projetos de dados:**

**Exemplo:**

> "[Frase contextualizada]"

**Termos relacionados:** [termo1], [termo2]

---
```

### Para HTML - Componente de Card

```html
<!-- Copilot: /card -->
<div class="card" data-id="">
  <div class="card-header">
    <h3 class="card-title"></h3>
    <span class="card-badge"></span>
  </div>
  <div class="card-body">
    <p class="card-description"></p>
  </div>
  <div class="card-footer">
    <button class="btn btn-primary" onclick="">Ação</button>
  </div>
</div>
```

### Para HTML - Seção de Progresso

```html
<!-- Copilot: /progress -->
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

### Para JavaScript - LocalStorage Helper

```javascript
// Copilot: /storage
const Storage = {
  get(key, defaultValue = null) {
    try {
      const item = localStorage.getItem(key);
      return item ? JSON.parse(item) : defaultValue;
    } catch (e) {
      console.error("Storage get error:", e);
      return defaultValue;
    }
  },

  set(key, value) {
    try {
      localStorage.setItem(key, JSON.stringify(value));
      return true;
    } catch (e) {
      console.error("Storage set error:", e);
      return false;
    }
  },

  remove(key) {
    localStorage.removeItem(key);
  },

  clear() {
    localStorage.clear();
  },
};
```

### Para JavaScript - Event Handler Pattern

```javascript
// Copilot: /handler
function handle${EventName}(event) {
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
    console.error('Error in handle${EventName}:', error);
    showError('Ocorreu um erro. Tente novamente.');
  }
}

// Registrar evento
document.addEventListener('DOMContentLoaded', () => {
  document.querySelector('#container')
    .addEventListener('click', handle${EventName});
});
```

### Para CSS - Variáveis Base

```css
/* Copilot: /vars */
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
  --font-sans: "Inter", system-ui, sans-serif;
  --font-mono: "JetBrains Mono", monospace;

  /* Sombras */
  --shadow-sm: 0 1px 2px rgba(0, 0, 0, 0.05);
  --shadow-md: 0 4px 6px rgba(0, 0, 0, 0.1);
  --shadow-lg: 0 10px 15px rgba(0, 0, 0, 0.1);

  /* Bordas */
  --radius-sm: 0.25rem;
  --radius-md: 0.5rem;
  --radius-lg: 1rem;
  --radius-full: 9999px;
}
```

---

## 🔧 Comandos de Chat do Copilot

### `/explain` - Para entender código existente

```
/explain este dashboard HTML e suas funcionalidades de localStorage
```

### `/fix` - Para corrigir problemas

```
/fix o cálculo de progresso que não está atualizando corretamente
```

### `/tests` - Para gerar testes (se aplicável)

```
/tests para as funções de Storage helper
```

### `/doc` - Para documentar

```
/doc adicionar JSDoc para todas as funções públicas
```

---

## 📁 Estrutura de Arquivos para Referência

```
# Copilot deve conhecer esta estrutura para sugestões contextuais

docs/curso/           # Conteúdo pedagógico (MD)
├── modulo6_ptd_30h.md           # PTD principal
├── modulo6_estrutura_videos.md   # Estrutura de aulas
└── modulo6_storyboards.md        # Roteiros detalhados

docs/recursos/        # Material complementar (MD)
├── modulo6_glossario.md          # Termos técnicos
├── modulo6_pbl_cases.md          # Cases empresariais
└── modulo6_simuladores_ia.md     # Prompts de IA

assets/html/          # Aplicações interativas (HTML)
├── modulo6_dashboard_aluno.html  # Dashboard do aluno
└── modulo6_framework_interativo.html
```

---

## ⚡ Padrões de Código

### Markdown

````markdown
# Use ATX headers (não Setext)

## Sempre com espaço após

- Listas com hífen
- Não misturar \* e -

`código inline` com backticks simples

​```python

# Blocos com linguagem especificada

​```

> Citações para exemplos e destaques

| Tabelas | Alinhadas |
| ------- | --------- |
| valor   | valor     |
````

### HTML

```html
<!-- Indentação: 2 espaços -->
<!-- IDs: kebab-case -->
<!-- Classes: BEM ou kebab-case -->
<!-- Data attributes para JS: data-* -->

<section id="section-name" class="section section--variant">
  <div class="section__header">
    <h2 class="section__title">Título</h2>
  </div>
  <div class="section__content" data-state="active">
    <!-- conteúdo -->
  </div>
</section>
```

### JavaScript

```javascript
// Funções: camelCase
// Constantes: UPPER_SNAKE_CASE
// Classes/Componentes: PascalCase
// Preferir const > let > var
// Arrow functions para callbacks
// Template literals para strings complexas

const MAX_ITEMS = 10;

function calculateProgress(completed, total) {
  if (total === 0) return 0;
  return Math.round((completed / total) * 100);
}

const items = data.map((item) => ({
  id: item.id,
  label: `${item.name} - ${item.status}`,
}));
```

### CSS

```css
/* Mobile-first */
/* Use variáveis CSS */
/* Evite !important */
/* Prefira classes a IDs para estilo */

.component {
  /* Layout */
  display: flex;
  flex-direction: column;
  gap: var(--spacing-md);

  /* Box model */
  padding: var(--spacing-lg);
  margin-bottom: var(--spacing-md);

  /* Visual */
  background: var(--color-surface);
  border-radius: var(--radius-md);
  box-shadow: var(--shadow-sm);

  /* Tipografia */
  font-family: var(--font-sans);
  color: var(--color-text);
}

@media (min-width: 768px) {
  .component {
    flex-direction: row;
  }
}
```

---

## 🚫 Evitar

```
❌ Frameworks JS (React, Vue, etc) - projeto usa vanilla
❌ CSS frameworks (Tailwind, Bootstrap) - CSS puro com variáveis
❌ Termos em inglês traduzidos para português
❌ Dependências npm/yarn - HTMLs são standalone
❌ Fetch para APIs externas - tudo local/localStorage
❌ ES modules em HTML (usar script tradicional)
```

---

## ✅ Preferir

```
✅ Vanilla JavaScript ES6+
✅ CSS custom properties (variáveis)
✅ Semântica HTML5
✅ Acessibilidade (ARIA quando necessário)
✅ Mobile-first responsive
✅ LocalStorage para persistência
✅ Template literals para HTML dinâmico
✅ Event delegation
```

---

## 🎓 Contexto de Domínio

### Termos que Copilot deve reconhecer

```
Data Engineering, Data Science, Analytics Engineering
Pipeline, ETL, ELT, Data Warehouse, Data Lake
dbt, Airflow, Spark, Snowflake, BigQuery
Sprint, Backlog, Kanban, Scrum
Stakeholder, Tech Lead, Data Manager
CRISP-DM, TDSP, DataOps, MLOps
KPI, OKR, SLA, SLO
```

### Empresas frequentemente citadas

```
Brasil: Nubank, iFood, Mercado Livre, Magazine Luiza, PicPay
Internacional: Uber, Netflix, Airbnb, Spotify, Meta
```

### Frameworks de gestão

```
Agile, Scrum, Kanban, SAFe
CRISP-DM, TDSP, Team Data Science Process
MoSCoW, RICE, ICE (priorização)
RACI, DACI (responsabilidades)
```

---

## 📝 Exemplo de Workspace Settings

### `.vscode/settings.json`

```json
{
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.formatOnSave": true,
  "editor.tabSize": 2,
  "files.trimTrailingWhitespace": true,
  "markdown.preview.fontSize": 14,
  "[markdown]": {
    "editor.wordWrap": "on",
    "editor.quickSuggestions": {
      "other": true,
      "comments": false,
      "strings": true
    }
  },
  "[html]": {
    "editor.defaultFormatter": "vscode.html-language-features"
  },
  "github.copilot.enable": {
    "*": true,
    "markdown": true,
    "plaintext": true
  }
}
```

---

_Documento atualizado em Janeiro 2026_
