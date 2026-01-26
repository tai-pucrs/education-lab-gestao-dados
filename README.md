# 🎓 Education Lab - Gestão de Dados

![CI Status](https://github.com/tai-pucrs/education-lab-gestao-dados/workflows/🔍%20Validação%20de%20Conteúdo/badge.svg)
[![GitHub issues](https://img.shields.io/github/issues/tai-pucrs/education-lab-gestao-dados)](https://github.com/tai-pucrs/education-lab-gestao-dados/issues)
[![GitHub license](https://img.shields.io/github/license/tai-pucrs/education-lab-gestao-dados)](https://github.com/tai-pucrs/education-lab-gestao-dados/blob/main/LICENSE)
![GitHub stars](https://img.shields.io/github/stars/tai-pucrs/education-lab-gestao-dados?style=social)

> **Plataforma educacional aberta para Gestão de Projetos e Equipes de Dados**  
> Curso de Pós-Graduação PUCRS | 30 horas | 100% em Português

---

## 🌐 Acesse a Plataforma Online

**🚀 Em breve:** Plataforma navegável via GitHub Pages  
📍 URL futura: `https://tai-pucrs.github.io/education-lab-gestao-dados/`

[📋 Acompanhe a Issue #23 - Hospedar site estático via GitHub Pages](./ISSUES.md#-issue-23-hospedar-site-estático-via-github-pages)

### 📦 Recursos Interativos Disponíveis

Enquanto a plataforma web não está publicada, você pode usar os recursos interativos diretamente:

| Recurso | Descrição | Acesso |
|---------|-----------|--------|
| 📊 **Dashboard do Aluno** | Acompanhe seu progresso, tempo de estudo e conquistas | [Abrir HTML](./modulo6_repo/assets/html/modulo6_dashboard_aluno.html) |
| 🎯 **Framework Interativo** | Navegue pelo framework de gestão de dados | [Abrir HTML](./modulo6_repo/assets/html/modulo6_framework_interativo.html) |
| 📈 **Dashboard de Produção** | Para instrutores: gerencie gravações e cronogramas | [Abrir HTML](./modulo6_repo/assets/html/modulo6_dashboard_producao.html) |
| 🗺️ **Framework Completo** | Visualização completa do framework de gestão | [Abrir HTML](./modulo6_repo/assets/html/framework_gestao_dados_completo.html) |

> **💡 Dica:** Baixe os arquivos HTML e abra diretamente no seu navegador. Todos funcionam offline!

---

## 📚 Sobre o Projeto

Este é o repositório principal para desenvolvimento e evolução do **Módulo 6 - Gestão de Projetos e Equipes de Dados**, parte de um curso de pós-graduação da PUCRS voltado para profissionais de dados em transição para gestão.

### 🎯 Público-Alvo

**Perfil 1: Técnico → Gestor**
- Data Engineers, Data Scientists, Analytics Engineers
- 3-5 anos de experiência técnica
- Primeira experiência em liderança

**Perfil 2: Gestor → Dados**
- Gestores de TI, Produto, Operações
- Assumindo equipes de dados
- Necessidade de vocabulário técnico

### ✨ Diferenciais

- ✅ **100% em Português Brasileiro** com termos técnicos em inglês (padrão da indústria)
- ✅ **30 horas de conteúdo** dividido em 18 aulas práticas
- ✅ **Cases brasileiros** (Nubank, iFood, Mercado Livre, Magazine Luiza)
- ✅ **14 simuladores de IA** para prática de cenários reais
- ✅ **Dashboards interativos** com progresso e badges
- ✅ **Material 100% aberto** e reutilizável

---

## 📂 Estrutura do Repositório

```
education-lab-gestao-dados/
├── 📄 README.md                    # Este arquivo
├── 📋 ISSUES.md                    # 28 issues organizadas por prioridade
├── 📝 CHANGELOG.md                 # Histórico de versões
├── 🔧 IMPLEMENTATION_SUMMARY.md    # Resumo de implementações
│
├── 📚 modulo6_repo/                # Módulo 6 - Conteúdo Principal
│   ├── docs/
│   │   ├── curso/                  # Material pedagógico
│   │   ├── producao/               # Documentos de produção
│   │   └── recursos/               # Glossário, cases, simuladores
│   ├── assets/html/                # Dashboards e frameworks interativos
│   ├── templates/                  # Templates reutilizáveis
│   └── guides/                     # Guias de continuidade
│
├── 🎨 ui/                          # Biblioteca de componentes React
│   ├── src/components/             # Button, Dialog, Popover, Tabs
│   └── .storybook/                 # Documentação Storybook
│
└── 🔧 .github/
    ├── workflows/                  # CI/CD automático
    └── ISSUE_TEMPLATE/             # Templates de issues
```

Para o conteúdo completo do módulo, acesse o diretório [`modulo6_repo/`](./modulo6_repo/).

---

## 🚀 Como Começar

### Para Alunos

1. **📖 Leia o conteúdo**
   - Acesse [`modulo6_repo/docs/curso/`](./modulo6_repo/docs/curso/)
   - Comece pelo [Plano de Trabalho Docente](./modulo6_repo/docs/curso/modulo6_ptd_30h.md)

2. **🎯 Use os recursos interativos**
   - Abra o [Dashboard do Aluno](./modulo6_repo/assets/html/modulo6_dashboard_aluno.html)
   - Consulte o [Glossário](./modulo6_repo/docs/recursos/modulo6_glossario.md)
   - Pratique com [Simuladores de IA](./modulo6_repo/docs/recursos/modulo6_simuladores_ia.md)

3. **📝 Resolva cases práticos**
   - Explore os [Cases PBL](./modulo6_repo/docs/recursos/modulo6_pbl_cases.md)
   - Empresas: Nubank, iFood, Mercado Livre, Magazine Luiza

### Para Instrutores

1. **📹 Prepare as gravações**
   - Consulte o [Guia do Instrutor](./modulo6_repo/docs/producao/modulo6_guia_instrutor.md)
   - Use os [Storyboards detalhados](./modulo6_repo/docs/curso/modulo6_storyboards.md)
   - Siga o [Checklist de Gravação](./modulo6_repo/docs/producao/modulo6_checklist_gravacao.md)

2. **📊 Gerencie a produção**
   - Abra o [Dashboard de Produção](./modulo6_repo/assets/html/modulo6_dashboard_producao.html)
   - Acompanhe status e prazos

### Para Desenvolvedores

1. **🔧 Configuração local**
   ```bash
   git clone https://github.com/tai-pucrs/education-lab-gestao-dados.git
   cd education-lab-gestao-dados
   ```

2. **🎨 Biblioteca UI (React + Radix UI)**
   ```bash
   cd ui
   npm install
   npm run dev          # Servidor de desenvolvimento
   npm run storybook    # Documentação de componentes
   ```

3. **✅ Validação de conteúdo**
   ```bash
   # O CI/CD valida automaticamente:
   # - Links em Markdown
   # - HTMLs (W3C)
   # - Carga horária (30h)
   # - Consistência de terminologia
   ```

---

## 🗺️ Roadmap e Issues

### ✅ Concluído (5 issues P0)

- ✅ **Issue #1:** CI/CD para validação automática de conteúdo
- ✅ **Issue #2:** Versionamento semântico (CHANGELOG.md)
- ✅ **Issue #3:** Templates de issues padronizados
- ✅ **Issue #7:** 14 simuladores de IA expandidos
- ✅ **Issue #16:** Modo escuro consistente em todos os HTMLs

### 🔥 Próximas Prioridades (P1 - 1-2 meses)

- 📍 **Issue #23:** [Hospedar site estático via GitHub Pages](./ISSUES.md#-issue-23-hospedar-site-estático-via-github-pages)
- 🔄 **Issue #4:** [Sincronização em nuvem do Dashboard do Aluno](./ISSUES.md#-issue-4-adicionar-sincronização-em-nuvem-ao-dashboard-do-aluno)
- 📊 **Issue #5:** [Calendário visual no Dashboard de Produção](./ISSUES.md#-issue-5-dashboard-produção---adicionar-calendário-visual)
- 🔍 **Issue #6:** [Busca/filtro avançado no Framework](./ISSUES.md#-issue-6-framework---adicionar-buscafiltro-avançado)
- 📝 **Issue #8:** [Rubrica de avaliação para simuladores](./ISSUES.md#-issue-8-rubrica-de-avaliação-para-simuladores)

**📋 [Ver todas as 28 issues no ISSUES.md](./ISSUES.md)**

---

## 🤝 Como Contribuir

Adoramos contribuições! Aqui estão algumas formas de ajudar:

### 📝 Melhorias de Conteúdo

- Corrigir erros ou imprecisões
- Adicionar novos cases de empresas
- Expandir o glossário
- Traduzir terminologia técnica

### 🎨 Melhorias de UI/UX

- Melhorar acessibilidade dos dashboards
- Adicionar novas funcionalidades aos HTMLs
- Criar novos componentes na biblioteca UI

### 🐛 Reportar Issues

Use nossos templates padronizados:
- [Nova Aula/Vídeo](./.github/ISSUE_TEMPLATE/aula-nova.yml)
- [Novo Case PBL](./.github/ISSUE_TEMPLATE/case-pbl.yml)
- [Correção de Conteúdo](./.github/ISSUE_TEMPLATE/correcao.yml)
- [Atualização de Ferramenta](./.github/ISSUE_TEMPLATE/atualizacao-ferramenta.yml)

### 📖 Processo de Contribuição

1. **Fork** o repositório
2. **Crie uma branch**: `git checkout -b feature/minha-contribuicao`
3. **Commit** suas mudanças: `git commit -m 'Adiciona nova funcionalidade'`
4. **Push** para o branch: `git push origin feature/minha-contribuicao`
5. **Abra um Pull Request**

📘 **Leia o guia completo:** [`modulo6_repo/CONTRIBUTING.md`](./modulo6_repo/CONTRIBUTING.md)

---

## 🛠️ Tecnologias Utilizadas

### Conteúdo Educacional
- **Markdown** - Documentação e material didático
- **HTML5/CSS3/JavaScript (Vanilla)** - Dashboards interativos
- **Mermaid** - Diagramas e fluxogramas

### Biblioteca de Componentes
- **React 19** + TypeScript
- **Radix UI** - Componentes acessíveis
- **Vite 6** - Build tool
- **Storybook 8.6** - Documentação de componentes

### DevOps
- **GitHub Actions** - CI/CD
- **markdown-link-check** - Validação de links
- **html-validate** - Validação W3C

---

## 📊 Conteúdo Programático

### Bloco 1: Fundamentos (10h)
- Especificidades de Projetos de Dados
- Ciclo de Vida e Frameworks (CRISP-DM, TDSP, DataOps)
- Papéis, Responsabilidades e Estruturas Organizacionais
- Gestão de Stakeholders Técnicos

### Bloco 2: Metodologias (10h)
- Agile Adaptado para Dados
- Kanban para Pipelines
- Estimativas e Gestão de Riscos
- Qualidade, Governança e Métricas

### Bloco 3: Liderança (10h)
- Liderança Técnica vs Gestão
- Desenvolvimento de Equipes
- Comunicação e Gestão de Conflitos
- Planejamento de Carreira e Projeto Integrador

**📘 [Ver conteúdo completo no PTD](./modulo6_repo/docs/curso/modulo6_ptd_30h.md)**

---

## 📜 Licença

Este material é desenvolvido pela PUCRS para uso educacional.  
Consulte a instituição para termos específicos de uso e distribuição.

---

## 🌟 Agradecimentos

Este projeto é mantido pela equipe do **TAI (Tecnologia Aplicada à Inovação)** da PUCRS.

Agradecemos especialmente:
- 👨‍🏫 Professores e instrutores que contribuíram com cases e conteúdo
- 🎓 Alunos que testaram e forneceram feedback
- 🤝 Comunidade open-source por ferramentas como Radix UI e Storybook

---

## 📞 Contato e Suporte

- 🐛 **Issues:** [GitHub Issues](https://github.com/tai-pucrs/education-lab-gestao-dados/issues)
- 📧 **Email:** Consulte o coordenador do curso
- 🌐 **Website:** [PUCRS](https://www.pucrs.br)

---

## 📈 Status do Projeto

**Versão Atual:** 1.1  
**Última Atualização:** Janeiro 2026  
**Status:** ✅ Ativo e em evolução contínua

**Progresso Geral:**
- ✅ 5/28 issues concluídas (100% P0)
- 🔥 7 issues P1 em planejamento
- 📊 11 issues P2 documentadas
- 🚀 5 issues P3 roadmap futuro

---

<div align="center">

**⭐ Se este projeto foi útil, considere dar uma estrela!**

[📋 Ver Issues](./ISSUES.md) • [📝 Changelog](./CHANGELOG.md) • [🤝 Contribuir](./modulo6_repo/CONTRIBUTING.md)

</div>