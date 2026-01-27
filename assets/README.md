# 📦 Assets - Recursos Interativos

Este diretório contém todos os assets interativos do Módulo 6.

---

## 📁 Estrutura

```
assets/
├── html/                   # Dashboards e frameworks interativos
│   ├── modulo6_dashboard_aluno.html
│   ├── modulo6_dashboard_producao.html
│   ├── framework_gestao_dados_completo.html
│   └── modulo6_framework_interativo.html
│
└── js/                     # Scripts JavaScript reutilizáveis
    └── dark-mode.js        # Sistema de modo escuro
```

---

## 🎯 Descrição dos Arquivos

### HTML Interativos

#### `modulo6_dashboard_aluno.html`
Dashboard para acompanhamento de progresso do aluno.

**Funcionalidades:**
- ✅ Tracking de vídeos assistidos
- ✅ Sistema de badges e conquistas
- ✅ Timer de estudo (Pomodoro)
- ✅ Estatísticas de progresso
- ✅ Links para recursos
- ✅ Modo escuro

**Uso:** Abrir diretamente no navegador (standalone)

---

#### `modulo6_dashboard_producao.html`
Dashboard para gerenciamento de produção de conteúdo.

**Funcionalidades:**
- ✅ Status de gravações (60 vídeos)
- ✅ Timeline de produção
- ✅ Filtros por bloco e status
- ✅ Estatísticas de conclusão
- ✅ Modo escuro

**Uso:** Equipe de produção audiovisual

---

#### `framework_gestao_dados_completo.html`
Framework completo de gestão de dados com 100+ ferramentas.

**Funcionalidades:**
- ✅ Categorização por área (15 categorias)
- ✅ 100+ ferramentas com links
- ✅ Descrições de cada ferramenta
- ✅ Navegação por categoria
- ✅ Modo escuro

**Uso:** Referência rápida de ferramentas

---

#### `modulo6_framework_interativo.html`
Framework interativo navegável por submódulos.

**Funcionalidades:**
- ✅ Navegação por submódulos 6.1-6.5
- ✅ Expansão/colapso de seções
- ✅ Conteúdo organizado hierarquicamente
- ✅ Links para recursos
- ✅ Modo escuro

**Uso:** Navegação estruturada do conteúdo

---

### Scripts JavaScript

#### `dark-mode.js`
Sistema universal de modo escuro.

**Funcionalidades:**
- ✅ Toggle claro/escuro
- ✅ Persistência em localStorage
- ✅ Transição suave (300ms)
- ✅ Atalho de teclado (Ctrl+Shift+D)
- ✅ Evento customizado `themechange`
- ✅ Botão flutuante
- ✅ Acessibilidade (ARIA)

**Uso:** Incluir no final do `<body>`:
```html
<script src="../js/dark-mode.js"></script>
```

**Documentação:** Ver [`docs/recursos/dark-mode-guide.md`](../docs/recursos/dark-mode-guide.md)

---

## 🚀 Como Usar

### Desenvolvimento Local

1. **Abrir arquivos HTML diretamente:**
   ```bash
   # No navegador, abrir:
   modulo6_repo/assets/html/modulo6_dashboard_aluno.html
   ```

2. **Servidor local (opcional):**
   ```bash
   # Python 3
   python -m http.server 8000
   
   # Node.js
   npx http-server
   
   # Acessar: http://localhost:8000/modulo6_repo/assets/html/
   ```

### Deploy (GitHub Pages)

Os arquivos estão prontos para deploy estático:
- ✅ Sem dependências externas obrigatórias
- ✅ Assets relativos (funcionam offline)
- ✅ Self-contained (HTML + CSS + JS inline)

---

## 📊 Tecnologias

### Frontend
- HTML5
- CSS3 (Flexbox, Grid, Custom Properties)
- JavaScript Vanilla (ES6+)
- Local Storage API

### Sem dependências externas
- ❌ Sem jQuery
- ❌ Sem frameworks (React, Vue, etc.)
- ❌ Sem CDNs obrigatórios
- ✅ 100% standalone

---

## ♿ Acessibilidade

Todos os HTMLs seguem boas práticas:
- ✅ Contraste WCAG AA
- ✅ Navegação por teclado
- ✅ Landmarks ARIA
- ✅ Alt text em ícones
- ✅ Labels em formulários

---

## 📱 Responsividade

Todos os dashboards são responsivos:
- ✅ Mobile (320px+)
- ✅ Tablet (768px+)
- ✅ Desktop (1024px+)
- ✅ Large screens (1440px+)

Breakpoints:
```css
@media (max-width: 768px)  { /* Mobile */ }
@media (max-width: 1024px) { /* Tablet */ }
```

---

## 🔧 Manutenção

### Adicionar novo HTML
1. Criar arquivo `.html` em `html/`
2. Incluir `dark-mode.js` no final do body
3. Testar em múltiplos navegadores
4. Atualizar este README

### Adicionar novo script JS
1. Criar arquivo `.js` em `js/`
2. Documentar uso e API
3. Adicionar exemplos
4. Atualizar este README

---

## 🐛 Issues Conhecidas

Nenhuma no momento. Para reportar:
1. Usar template "Correção de Conteúdo"
2. Incluir navegador, OS, steps to reproduce
3. Adicionar screenshot se visual

---

## 📝 Próximas Melhorias

Ver [`ISSUES.md`](../../ISSUES.md) para roadmap completo:
- [ ] Issue #4: Sincronização em nuvem (Dashboard Aluno)
- [ ] Issue #6: Busca/filtro avançado (Framework)
- [ ] Issue #26: Quizzes interativos
- [ ] Issue #19: Testes automatizados

---

**Última atualização:** 2026-01-26  
**Versão dos assets:** 1.1
