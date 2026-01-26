# 📋 28 Issues para Evolução do Módulo 6

Este documento contém a descrição completa das 28 issues organizadas por prioridade para evolução do repositório **education-lab-gestao-dados**.

---

## 🎯 P0 - IMEDIATO (Quick Wins) - 4 Issues

### ✅ Issue #1: Implementar CI/CD para validação de conteúdo
**Status:** ✅ CONCLUÍDA  
**Labels:** `enhancement`, `automation`, `P0`

**Implementação:**
- ✅ Workflow `.github/workflows/validate-content.yml` criado
- ✅ Validação de links em Markdown (markdown-link-check)
- ✅ Validação W3C de HTMLs (html-validate)
- ✅ Verificação de carga horária total (30h)
- ✅ Verificação de consistência de terminologia
- ✅ Badge de status no README.md

---

### ✅ Issue #2: Implementar versionamento semântico
**Status:** ✅ CONCLUÍDA  
**Labels:** `documentation`, `maintenance`, `P0`

**Implementação:**
- ✅ CHANGELOG.md criado seguindo padrão Keep a Changelog
- ✅ Estrutura de versionamento semântico (SemVer)
- ✅ Histórico inicial documentado

---

### ✅ Issue #3: Criar templates de issue
**Status:** ✅ CONCLUÍDA  
**Labels:** `good first issue`, `templates`, `P0`

**Implementação:**
- ✅ Template: Nova Aula/Vídeo (`aula-nova.yml`)
- ✅ Template: Novo Case PBL (`case-pbl.yml`)
- ✅ Template: Correção de Conteúdo (`correcao.yml`)
- ✅ Template: Atualização de Ferramenta (`atualizacao-ferramenta.yml`)
- ✅ Configuração de templates (`config.yml`)
- ✅ Formulários com validação de campos obrigatórios
- ✅ Labels aplicadas automaticamente

---

### ✅ Issue #16: Adicionar modo escuro consistente
**Status:** ✅ CONCLUÍDA  
**Labels:** `a11y`, `ux`, `enhancement`, `P0`

**Implementação:**
- ✅ Sistema de dark mode JavaScript (`dark-mode.js`)
- ✅ Integrado em todos os 4 HTMLs:
  - `modulo6_dashboard_aluno.html`
  - `modulo6_dashboard_producao.html`
  - `framework_gestao_dados_completo.html`
  - `modulo6_framework_interativo.html`
- ✅ Toggle flutuante (🌙/☀️)
- ✅ Persistência em `localStorage`
- ✅ Transição suave (300ms)
- ✅ Atalho de teclado (Ctrl+Shift+D)
- ✅ Paleta de cores consistente
- ✅ Contraste acessível

---

## 📊 P1 - CURTO PRAZO (1-2 meses) - 8 Issues

### ✅ Issue #7: Expandir simuladores de IA com novos cenários
**Status:** ✅ CONCLUÍDA  
**Labels:** `content`, `ai-simulators`, `P1`

**Implementação:**
- ✅ Roleplay 11: Negociação de Orçamento - CFO Resistente (6.3)
- ✅ Roleplay 12: Apresentação para Board (6.3/6.5)
- ✅ Roleplay 13: Mediação de Conflito Técnico (6.4)
- ✅ Roleplay 14: Onboarding de Novo Líder (6.4)
- ✅ Cada cenário com persona detalhada
- ✅ Instruções claras de uso
- ✅ Exemplos de perguntas e desafios

---

### ⏳ Issue #4: Adicionar sincronização em nuvem ao Dashboard do Aluno
**Status:** 📝 PENDENTE  
**Labels:** `enhancement`, `student-experience`, `P1`

**Descrição:**
Adicionar opção de sincronizar progresso do aluno via export/import de JSON ou integração com Google Drive.

**Funcionalidades:**
- Botão "Exportar progresso" (download JSON)
- Botão "Importar progresso" (upload JSON)
- Estrutura JSON validada
- Merge inteligente de dados
- Aviso antes de sobrescrever

**Benefício:** Aluno pode estudar de múltiplos dispositivos.

---

### ⏳ Issue #5: Dashboard produção - adicionar calendário visual
**Status:** 📝 PENDENTE  
**Labels:** `enhancement`, `production`, `P1`

**Descrição:**
Adicionar calendário visual ao Dashboard de Produção para planejamento de gravações.

**Funcionalidades:**
- Visualização mensal de gravações
- Drag-and-drop para reagendar
- Códigos de cor por status
- Alertas de prazos

---

### ⏳ Issue #6: Framework - adicionar busca/filtro avançado
**Status:** 📝 PENDENTE  
**Labels:** `enhancement`, `search`, `P1`

**Descrição:**
Implementar sistema de busca/filtro no Framework Interativo.

**Funcionalidades:**
- Busca por palavras-chave
- Filtro por submódulo
- Filtro por tipo de ferramenta
- Destaque de resultados

---

### ⏳ Issue #8: Rubrica de avaliação para simuladores
**Status:** 📝 PENDENTE  
**Labels:** `content`, `assessment`, `P1`

**Descrição:**
Criar rubrica de avaliação para as práticas com simuladores de IA.

**Conteúdo:**
- Critérios de avaliação por roleplay
- Escala de pontuação
- Exemplos de respostas (boa/média/ruim)
- Checklist de auto-avaliação

---

### ⏳ Issue #23: Hospedar site estático via GitHub Pages
**Status:** 📝 PENDENTE  
**Labels:** `deployment`, `distribution`, `P1`

**Descrição:**
Publicar conteúdo navegável em GitHub Pages.

**Estrutura:**
```
https://tai-pucrs.github.io/education-lab-gestao-dados/modulo6/
├── index.html (landing page)
├── dashboard/
├── framework/
├── recursos/
└── docs/
```

**Funcionalidades:**
- Landing page com visão geral
- Links para todos os recursos
- Deploy automático via GitHub Actions
- Mobile responsive

---

### ⏳ Issue #24: Criar pacote NPM/PyPI para templates
**Status:** 📝 PENDENTE  
**Labels:** `distribution`, `tools`, `P1`

**Descrição:**
Criar pacotes para distribuir templates via gerenciadores de pacotes.

**Pacotes:**
- NPM: `@education-lab/modulo6-templates`
- PyPI: `education-lab-modulo6-templates`

**Conteúdo:**
- 12 templates editáveis
- CLI para gerar templates
- Documentação de uso

---

### ⏳ Issue #25: Adicionar workflow de release automático
**Status:** 📝 PENDENTE  
**Labels:** `automation`, `ci-cd`, `P1`

**Descrição:**
Automatizar processo de release com GitHub Actions.

**Funcionalidades:**
- Tag automática baseada em commits
- CHANGELOG.md atualizado automaticamente
- Release notes geradas
- Assets empacotados (ZIP)

---

## 📚 P2 - MÉDIO PRAZO (2-4 meses) - 11 Issues

### ⏳ Issue #9: Atualizar glossário com termos de IA Generativa
**Status:** 📝 PENDENTE  
**Labels:** `content`, `glossary`, `P2`

**Descrição:**
Adicionar 15-20 termos de IA Generativa ao glossário.

**Termos a adicionar:**
- LLM (Large Language Model)
- Prompt Engineering
- RAG (Retrieval-Augmented Generation)
- Fine-tuning vs Few-shot learning
- Vector Database
- Embedding
- Token (contexto de LLMs)
- Hallucination
- Chain-of-Thought
- Agent (IA autônoma)
- Guardrails
- RLHF
- Multimodal AI
- Foundation Model
- Bias em LLMs

---

### ⏳ Issue #10: Criar seção de anti-patterns em gestão
**Status:** 📝 PENDENTE  
**Labels:** `content`, `best-practices`, `P2`

**Descrição:**
Criar documento com anti-patterns comuns em gestão de dados.

**Categorias:**
- Anti-patterns organizacionais
- Anti-patterns em projetos
- Anti-patterns em comunicação
- Anti-patterns em liderança
- Como evitar e corrigir

---

### ⏳ Issue #11: Adicionar cases PBL de nível "difícil"
**Status:** 📝 PENDENTE  
**Labels:** `content`, `pbl`, `advanced`, `P2`

**Descrição:**
Criar 3-4 cases PBL de alta complexidade.

**Características:**
- Múltiplos stakeholders conflitantes
- Constraints técnicos e orçamentários
- Decisões sem resposta "certa"
- Requer análise de trade-offs
- Baseados em casos reais

---

### ⏳ Issue #12: Criar diagramas interativos com Mermaid Live
**Status:** 📝 PENDENTE  
**Labels:** `content`, `diagrams`, `interactive`, `P2`

**Descrição:**
Converter diagramas estáticos em versões interativas com Mermaid Live.

**Diagramas:**
- Fluxos de trabalho
- Arquiteturas de dados
- Organogramas
- Timelines de projetos

---

### ⏳ Issue #13: Criar infográficos visuais (assets PNG/SVG)
**Status:** 📝 PENDENTE  
**Labels:** `design`, `visual-assets`, `P2`

**Descrição:**
Produzir 5 infográficos profissionais.

**Infográficos:**
1. Mapa de Papéis em Dados (6.1)
2. Ciclo Ágil para Dados (6.2)
3. Jornada do Projeto de Dados (6.3)
4. Toolkit do Líder de Dados (6.4)
5. Pirâmide da Cultura Data-Driven (6.5)

**Especificações:**
- PNG (300 DPI) + SVG (vetorial)
- Paleta de cores consistente
- Contraste acessível (WCAG AA)

---

### ⏳ Issue #17: Melhorar acessibilidade para leitores de tela
**Status:** 📝 PENDENTE  
**Labels:** `a11y`, `accessibility`, `P2`

**Descrição:**
Melhorar acessibilidade dos HTMLs para leitores de tela.

**Melhorias:**
- Landmarks ARIA apropriados
- Alt text em imagens
- Labels em formulários
- Navegação por teclado
- Skip links
- Testes com NVDA/JAWS

---

### ⏳ Issue #18: Implementar responsividade mobile avançada
**Status:** 📝 PENDENTE  
**Labels:** `ux`, `mobile`, `responsive`, `P2`

**Descrição:**
Melhorar experiência mobile dos dashboards.

**Melhorias:**
- Layout otimizado para telas pequenas
- Menu hamburger
- Touch gestures
- Formulários mobile-friendly
- Performance otimizada

---

### ⏳ Issue #19: Criar testes automatizados para dashboards
**Status:** 📝 PENDENTE  
**Labels:** `testing`, `quality`, `P2`

**Descrição:**
Implementar testes automatizados para HTMLs interativos.

**Tecnologias:**
- Playwright ou Puppeteer
- Testes de interface
- Testes de localStorage
- Testes de responsividade

---

### ⏳ Issue #20: Adicionar validação de português com LanguageTool
**Status:** 📝 PENDENTE  
**Labels:** `content`, `quality`, `language`, `P2`

**Descrição:**
Integrar LanguageTool no CI para validar português.

**Validações:**
- Gramática
- Concordância
- Pontuação
- Coerência textual

---

### ⏳ Issue #26: Adicionar quiz interativo ao final de cada bloco
**Status:** 📝 PENDENTE  
**Labels:** `assessment`, `interactive`, `gamification`, `P2`

**Descrição:**
Criar sistema de quizzes interativos com 50 questões totais.

**Funcionalidades:**
- 5 quizzes (1 por submódulo)
- 10 questões de múltipla escolha cada
- Feedback imediato
- Explicação detalhada da resposta correta
- Sistema de badges (Bronze/Prata/Ouro)
- Progresso salvo em localStorage
- Export de resultado (PDF)

---

### ⏳ Issue #27: Criar rotina de atualização de ferramentas
**Status:** 📝 PENDENTE  
**Labels:** `maintenance`, `automation`, `P2`

**Descrição:**
Criar processo automatizado para monitorar atualizações de ferramentas.

**Funcionalidades:**
- Script que verifica versões de ferramentas mencionadas
- Compara com releases mais recentes
- Gera issues automaticamente quando há nova versão
- Dashboard de "health" das ferramentas

---

## 🚀 P3 - LONGO PRAZO (4-6 meses) - 6 Issues

### ⏳ Issue #14: Exportar conteúdo para LMS (SCORM/xAPI)
**Status:** 📝 PENDENTE  
**Labels:** `integration`, `lms`, `P3`

**Descrição:**
Criar pacotes SCORM 1.2/2004 e xAPI para integração com LMS.

**Conteúdo:**
- 60 vídeos
- Dashboards HTML
- Quizzes com tracking
- Templates
- Certificado de conclusão

**Tracking:**
- Vídeos assistidos
- Tempo de estudo
- Quizzes completados
- Progresso geral

---

### ⏳ Issue #15: Criar API REST para consulta de conteúdo
**Status:** 📝 PENDENTE  
**Labels:** `feature`, `api`, `backend`, `P3`

**Descrição:**
Desenvolver API REST simples para consultar conteúdo.

**Endpoints:**
- `GET /api/glossary` - Lista termos
- `GET /api/glossary/:term` - Termo específico
- `GET /api/videos` - Lista vídeos
- `GET /api/cases` - Lista cases PBL
- `GET /api/templates` - Lista templates
- `GET /api/search` - Busca full-text

**Stack sugerida:**
- Node.js + Express ou Deno + Oak
- Dados em JSON/SQLite
- Documentação OpenAPI/Swagger
- Rate limiting
- CORS habilitado

---

### ⏳ Issue #21: Criar guia de onboarding para contribuidores
**Status:** 📝 PENDENTE  
**Labels:** `documentation`, `community`, `P3`

**Descrição:**
Criar guia completo para novos contribuidores.

**Conteúdo:**
- Como contribuir
- Padrões de código
- Fluxo de trabalho (fork, branch, PR)
- Revisão de código
- Code of conduct
- Primeiros passos

---

### ⏳ Issue #22: Adicionar ADR (Architecture Decision Records)
**Status:** 📝 PENDENTE  
**Labels:** `documentation`, `architecture`, `P3`

**Descrição:**
Documentar decisões arquiteturais importantes.

**ADRs iniciais:**
- Escolha de standalone HTMLs vs framework web
- Decisão de usar localStorage vs backend
- Padrões de CSS (inline vs arquivos separados)
- Estrutura de diretórios

---

### ⏳ Issue #25: Implementar sistema de conquistas elaborado
**Status:** 📝 PENDENTE  
**Labels:** `gamification`, `engagement`, `P3`

**Descrição:**
Expandir sistema de badges com conquistas mais elaboradas.

**Tipos de conquistas:**
- Por progresso (25%, 50%, 75%, 100%)
- Por tempo (maratonista, estudioso, consistente)
- Por exploração (completou todos os extras)
- Por performance (100% nos quizzes)
- Conquistas secretas/easter eggs

---

### ⏳ Issue #28: Implementar analytics de uso (opcional, anônimo)
**Status:** 📝 PENDENTE  
**Labels:** `analytics`, `insights`, `privacy`, `P3`

**Descrição:**
Coletar métricas agregadas e anônimas (LGPD compliant).

**Métricas:**
- Vídeos mais/menos assistidos
- Taxa de conclusão por submódulo
- Tempo médio de estudo
- Badges mais conquistados
- Horários de estudo
- Taxa de acerto em quizzes

**Princípios:**
- ✅ Opt-in explícito
- ✅ Apenas dados agregados (sem PII)
- ✅ Retenção de 90 dias
- ✅ Opt-out fácil
- ✅ Transparência total

**Ferramentas sugeridas:**
- Plausible Analytics (privacy-first)
- Umami (open-source)
- PostHog (feature flags + analytics)

---

## 📊 RESUMO EXECUTIVO

### Progresso Geral
- **Total de Issues:** 28
- **Concluídas (P0):** 5 (100% do P0)
- **Pendentes:** 23
  - P1: 7 issues
  - P2: 11 issues
  - P3: 5 issues

### Impacto das Issues Implementadas

**Issue #1 (CI/CD):**
- ✅ Validação automática de conteúdo
- ✅ Previne links quebrados
- ✅ Garante consistência técnica
- ✅ Economiza horas de revisão manual

**Issue #3 (Templates):**
- ✅ Padroniza contribuições
- ✅ Facilita onboarding de colaboradores
- ✅ Melhora qualidade das issues

**Issue #7 (Simuladores IA):**
- ✅ +4 cenários de prática (total 14)
- ✅ Cobre todos os submódulos
- ✅ Foco em soft skills críticas

**Issue #16 (Dark Mode):**
- ✅ Melhora acessibilidade
- ✅ Reduz fadiga visual
- ✅ Preferência persistente
- ✅ UX moderna

### Próximas Prioridades

**Curto Prazo (P1):**
1. GitHub Pages (Issue #23) - Aumentar alcance
2. Sincronização Dashboard (Issue #4) - Multi-device
3. Rubrica de Avaliação (Issue #8) - Qualidade pedagógica

**Médio Prazo (P2):**
1. Glossário Gen AI (Issue #9) - Manter atualizado
2. Quizzes Interativos (Issue #26) - Avaliação de aprendizagem
3. Infográficos (Issue #13) - Recursos visuais profissionais

**Longo Prazo (P3):**
1. SCORM/xAPI (Issue #14) - Integração com LMS corporativos
2. API REST (Issue #15) - Extensibilidade
3. Analytics (Issue #28) - Insights de uso

---

**Versão:** 1.1 • Módulo 6 • Gestão de Projetos e Equipes de Dados  
**Última atualização:** 2026-01-26
