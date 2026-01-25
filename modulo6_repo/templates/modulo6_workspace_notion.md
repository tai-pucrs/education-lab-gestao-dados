# 📚 ESTRUTURA WORKSPACE NOTION • MÓDULO 6
## Organização Completa para Gestão do Curso

---

## 🏗️ ARQUITETURA DO WORKSPACE

```
📚 Pós-Graduação Gestão de Dados/
│
├── 🏠 Home
│   ├── Visão Geral do Curso
│   ├── Calendário Acadêmico
│   └── Links Rápidos
│
├── 📦 Módulo 6 - Gestão de Projetos e Equipes/
│   ├── 🎯 Visão Geral
│   ├── 📺 Vídeos (Database)
│   ├── 📚 Recursos (Database)
│   ├── ✅ Produção (Database)
│   ├── 👥 Alunos (Database)
│   └── 📁 Arquivos
│
└── ⚙️ Configurações
    ├── Templates
    └── Integrações
```

---

## 📄 PÁGINAS PRINCIPAIS

### 1. 🏠 HOME DO MÓDULO 6

```markdown
# 📊 Módulo 6: Gestão de Projetos e Equipes de Dados

## Informações Gerais
| Campo | Valor |
|-------|-------|
| Carga Horária | 30 horas |
| Formato | 100% Assíncrono |
| Vídeos | 60 (10-15 min cada) |
| Período | [Data início] - [Data fim] |

## Progresso Geral
[Embed: Barra de progresso dos vídeos]

## Submódulos
| # | Nome | Horas | Status |
|---|------|-------|--------|
| 6.1 | Papéis e Carreira em Dados | 6h | 🟢 |
| 6.2 | Metodologias Ágeis para Dados | 6h | 🟡 |
| 6.3 | Gestão de Projetos de Dados | 6h | ⚪ |
| 6.4 | Liderança de Equipes de Dados | 6h | ⚪ |
| 6.5 | Cultura Data-Driven | 6h | ⚪ |

## Acesso Rápido
- [📺 Todos os Vídeos]
- [📚 Recursos do Aluno]
- [📝 Templates]
- [🎯 Atividades Práticas]

## Equipe
| Papel | Nome | Contato |
|-------|------|---------|
| Instrutor | [Nome] | [Email] |
| Coordenador | [Nome] | [Email] |
| Suporte | [Nome] | [Email] |
```

---

### 2. 📺 DATABASE: VÍDEOS

#### Propriedades da Database

| Propriedade | Tipo | Opções/Formato |
|-------------|------|----------------|
| **Nome** | Title | Título do vídeo |
| **Código** | Text | V01, V02... V60 |
| **Submódulo** | Select | 6.1, 6.2, 6.3, 6.4, 6.5 |
| **Duração** | Number | Minutos |
| **Status Roteiro** | Select | ⚪ Pendente, 🟡 Em revisão, 🟢 Aprovado |
| **Status Gravação** | Select | ⚪ Pendente, 🔵 Agendado, 🟡 Gravando, 🟢 Gravado |
| **Status Edição** | Select | ⚪ Pendente, 🟡 Editando, 🟢 Finalizado |
| **Status Publicação** | Select | ⚪ Pendente, 🟢 Publicado |
| **Data Gravação** | Date | DD/MM/AAAA |
| **Data Publicação** | Date | DD/MM/AAAA |
| **Link YouTube** | URL | Link do vídeo |
| **Arquivo Bruto** | Files | Upload do arquivo |
| **Thumbnail** | Files | Imagem de capa |
| **Instrutor** | Person | Responsável |
| **Editor** | Person | Quem edita |
| **Observações** | Text | Notas gerais |

#### Views Configuradas

**View 1: Por Submódulo (Board)**
```
┌─────────────┬─────────────┬─────────────┬─────────────┬─────────────┐
│    6.1      │    6.2      │    6.3      │    6.4      │    6.5      │
│  Papéis     │   Ágil      │  Projetos   │  Liderança  │  Cultura    │
├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
│ V01 ✅      │ V13 🟡      │ V25 ⚪      │ V37 ⚪      │ V49 ⚪      │
│ V02 ✅      │ V14 🟡      │ V26 ⚪      │ V38 ⚪      │ V50 ⚪      │
│ V03 ✅      │ V15 ⚪      │ V27 ⚪      │ V39 ⚪      │ V51 ⚪      │
│ ...         │ ...         │ ...         │ ...         │ ...         │
└─────────────┴─────────────┴─────────────┴─────────────┴─────────────┘
```

**View 2: Pipeline de Produção (Board)**
```
┌─────────────┬─────────────┬─────────────┬─────────────┬─────────────┐
│  Roteiro    │  Agendado   │  Gravando   │  Editando   │  Publicado  │
├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
│ V25-V36     │ V15-V18     │ V13-V14     │ V10-V12     │ V01-V09     │
│ V37-V48     │             │             │             │             │
│ V49-V60     │             │             │             │             │
└─────────────┴─────────────┴─────────────┴─────────────┴─────────────┘
```

**View 3: Calendário (Calendar)**
- Agrupado por Data de Gravação
- Mostra vídeos agendados

**View 4: Lista Completa (Table)**
- Todos os campos visíveis
- Filtros por status

#### Template de Página do Vídeo

```markdown
# 📺 [Código] - [Título do Vídeo]

## Informações
| Campo | Valor |
|-------|-------|
| Submódulo | [6.X] |
| Duração | [X] minutos |
| Objetivo | [Objetivo de aprendizagem] |

## Roteiro

### Hook (0:00 - 0:30)
[Pergunta provocativa ou gancho]

### Contexto (0:30 - 1:30)
[Por que esse tema importa]

### Conteúdo Principal (1:30 - 9:00)
#### Parte 1: [Subtema]
- Ponto 1
- Ponto 2
- Exemplo

#### Parte 2: [Subtema]
- Ponto 1
- Ponto 2
- Exemplo

### Aplicação Prática (9:00 - 11:00)
[Como o aluno usa isso]

### Fechamento (11:00 - 12:00)
[Resumo + CTA para próximo vídeo]

## Recursos Relacionados
- [Template X]
- [Checklist Y]
- [Glossário - termos Z]

## Notas de Produção
- [ ] Preparar slides
- [ ] Testar demo de ferramenta
- [ ] Revisar com coordenação

## Checklist de Qualidade
- [ ] Áudio limpo
- [ ] Enquadramento correto
- [ ] Conteúdo completo
- [ ] CTA presente
- [ ] Thumbnail criada
```

---

### 3. 📚 DATABASE: RECURSOS

#### Propriedades da Database

| Propriedade | Tipo | Opções/Formato |
|-------------|------|----------------|
| **Nome** | Title | Nome do recurso |
| **Tipo** | Select | Template, Checklist, Case, PBL, Simulador IA, Glossário, Guia, Infográfico, Diagrama |
| **Submódulo** | Multi-select | 6.1, 6.2, 6.3, 6.4, 6.5 |
| **Formato** | Select | Markdown, HTML, PDF, Notion |
| **Status** | Select | ⚪ Rascunho, 🟡 Revisão, 🟢 Publicado |
| **Arquivo** | Files | Upload |
| **Link Notion** | URL | Se for página Notion |
| **Vídeos Relacionados** | Relation | → Database Vídeos |
| **Descrição** | Text | Breve descrição |
| **Instruções de Uso** | Text | Como usar |

#### Views Configuradas

**View 1: Por Tipo (Board)**
```
┌───────────┬───────────┬───────────┬───────────┬───────────┐
│ Templates │ Checklists│ Cases/PBL │Simuladores│  Guias    │
├───────────┼───────────┼───────────┼───────────┼───────────┤
│ RACI      │ Onboarding│ Nubank    │ CFO       │ Ferrament.│
│ Charter   │ Deploy    │ DataStart │ Engineer  │ Glossário │
│ PDI       │ Sprint    │ AgendaIA  │ PM        │ ...       │
│ ...       │ ...       │ ...       │ ...       │           │
└───────────┴───────────┴───────────┴───────────┴───────────┘
```

**View 2: Por Submódulo (Table)**
- Agrupado por submódulo
- Mostra tipo e status

**View 3: Para o Aluno (Gallery)**
- Cards visuais
- Filtro: Status = Publicado
- Ordenado por tipo

---

### 4. ✅ DATABASE: PRODUÇÃO

#### Propriedades da Database

| Propriedade | Tipo | Opções/Formato |
|-------------|------|----------------|
| **Tarefa** | Title | Descrição da tarefa |
| **Tipo** | Select | Roteiro, Gravação, Edição, Revisão, Publicação, Arte |
| **Vídeo** | Relation | → Database Vídeos |
| **Responsável** | Person | Quem executa |
| **Prazo** | Date | Data limite |
| **Status** | Select | ⚪ A fazer, 🟡 Fazendo, 🟢 Feito, 🔴 Bloqueado |
| **Prioridade** | Select | 🔴 Alta, 🟡 Média, 🟢 Baixa |
| **Estimativa** | Number | Horas estimadas |
| **Tempo Real** | Number | Horas gastas |
| **Bloqueio** | Text | Motivo do bloqueio |
| **Notas** | Text | Observações |

#### Views Configuradas

**View 1: Kanban de Produção (Board)**
```
┌───────────┬───────────┬───────────┬───────────┬───────────┐
│  A Fazer  │  Fazendo  │  Revisão  │   Feito   │ Bloqueado │
├───────────┼───────────┼───────────┼───────────┼───────────┤
│ 45 tarefas│ 8 tarefas │ 3 tarefas │120 tarefas│ 2 tarefas │
└───────────┴───────────┴───────────┴───────────┴───────────┘
```

**View 2: Por Responsável (Board)**
- Colunas = Pessoas
- Cards = Tarefas

**View 3: Timeline (Timeline)**
- Eixo X = Tempo
- Barras = Tarefas com prazo

**View 4: Minha Semana (Table)**
- Filtro: Responsável = @me
- Filtro: Prazo = Esta semana
- Ordenado por prioridade

---

### 5. 👥 DATABASE: ALUNOS (Opcional)

#### Propriedades

| Propriedade | Tipo | Opções |
|-------------|------|--------|
| **Nome** | Title | Nome completo |
| **Email** | Email | Contato |
| **Turma** | Select | 2026.1, 2026.2 |
| **Progresso** | Number | % concluído |
| **Vídeos Assistidos** | Relation | → Vídeos |
| **Entregas** | Relation | → Recursos (PBL/Cases) |
| **Última Atividade** | Date | Último acesso |
| **Notas** | Text | Observações |

---

## 📁 ESTRUTURA DE ARQUIVOS

```
📁 Arquivos Módulo 6/
│
├── 📁 01_Planejamento/
│   ├── modulo6_ptd_30h.md
│   ├── modulo6_estrutura_videos.md
│   └── modulo6_analise_pedagogica_v2.md
│
├── 📁 02_Conteudo/
│   ├── modulo6_conteudo_referencia.md
│   ├── modulo6_glossario.md
│   └── modulo6_guia_ferramentas.md
│
├── 📁 03_Recursos_Aluno/
│   ├── modulo6_templates_editaveis.md
│   ├── modulo6_checklists.md
│   ├── modulo6_resumos_executivos.md
│   └── modulo6_dashboard_aluno.html
│
├── 📁 04_Atividades/
│   ├── modulo6_pbl_cases.md
│   ├── modulo6_simuladores_ia.md
│   └── modulo6_banco_prompts.md
│
├── 📁 05_Comunicacao/
│   ├── modulo6_comunicacao.md
│   └── modulo6_infograficos.md
│
├── 📁 06_Visuais/
│   ├── modulo6_framework_interativo.html
│   └── modulo6_diagramas.md
│
├── 📁 07_Producao/
│   ├── modulo6_guia_instrutor.md
│   ├── modulo6_checklist_gravacao.md
│   ├── modulo6_matriz_rastreabilidade.md
│   └── modulo6_pacote_entrega.md
│
└── 📁 08_Midia/
    ├── 📁 Videos_Brutos/
    ├── 📁 Videos_Editados/
    ├── 📁 Thumbnails/
    └── 📁 Slides/
```

---

## 🔗 RELACIONAMENTOS ENTRE DATABASES

```
┌─────────────────┐
│     VÍDEOS      │
│   (60 itens)    │
└────────┬────────┘
         │
         │ 1:N
         ▼
┌─────────────────┐       ┌─────────────────┐
│    PRODUÇÃO     │       │    RECURSOS     │
│  (180+ tarefas) │       │   (50+ itens)   │
└─────────────────┘       └─────────────────┘
         │                         │
         │                         │
         ▼                         ▼
┌─────────────────┐       ┌─────────────────┐
│   RESPONSÁVEIS  │       │     ALUNOS      │
│    (Pessoas)    │       │   (Database)    │
└─────────────────┘       └─────────────────┘
```

**Relações:**
- Vídeo → Produção (1 vídeo : N tarefas)
- Vídeo ↔ Recursos (N:N)
- Recurso → Aluno (entregas)
- Tarefa → Responsável

---

## 🎨 TEMPLATES NOTION

### Template: Submódulo

```markdown
# 📖 6.X - [Nome do Submódulo]

## Visão Geral
| Campo | Valor |
|-------|-------|
| Carga Horária | 6 horas |
| Vídeos | 12 (V[XX]-V[XX]) |
| Objetivo | [Objetivo principal] |

## Objetivos de Aprendizagem
1. [Objetivo 1]
2. [Objetivo 2]
3. [Objetivo 3]

## Vídeos
[Embed: View filtrada da database Vídeos]

## Recursos
[Embed: View filtrada da database Recursos]

## Atividade Principal
[Descrição do PBL/Case]

## Checklist do Aluno
- [ ] Assistir todos os vídeos
- [ ] Preencher templates
- [ ] Completar atividade prática
- [ ] Revisar glossário
```

### Template: Reunião de Produção

```markdown
# 📅 Reunião de Produção - [Data]

## Participantes
- [ ] @Instrutor
- [ ] @Editor
- [ ] @Coordenador

## Pauta
1. Status geral de produção
2. Vídeos da semana
3. Bloqueios
4. Próximos passos

## Status Atual
| Métrica | Valor |
|---------|-------|
| Vídeos gravados | X/60 |
| Vídeos editados | X/60 |
| Vídeos publicados | X/60 |

## Discussão
[Notas da reunião]

## Ações
- [ ] Ação 1 - @Responsável - Prazo
- [ ] Ação 2 - @Responsável - Prazo

## Próxima reunião
[Data e hora]
```

---

## ⚙️ AUTOMAÇÕES SUGERIDAS

### Com Notion Nativo

| Trigger | Ação |
|---------|------|
| Status Gravação = Gravado | Criar tarefa de Edição |
| Status Edição = Finalizado | Criar tarefa de Revisão |
| Status = Publicado | Notificar coordenador |
| Prazo = Hoje | Destacar na view |

### Com Integrações (Zapier/Make)

| Trigger | Ação |
|---------|------|
| Novo vídeo publicado | Postar no Slack |
| Todas tarefas do vídeo = Feito | Atualizar status do vídeo |
| Aluno completou módulo | Enviar certificado |
| Prazo vencido | Enviar lembrete por email |

---

## 📊 DASHBOARDS SUGERIDOS

### Dashboard: Visão Executiva

```
┌─────────────────────────────────────────────────────────────────┐
│                    MÓDULO 6 - PRODUÇÃO                          │
├─────────────────┬─────────────────┬─────────────────────────────┤
│                 │                 │                             │
│   VÍDEOS        │   PROGRESSO     │   PRÓXIMAS GRAVAÇÕES        │
│   ━━━━━━━━━━━   │                 │                             │
│   ██████░░░░    │   ┌───────────┐ │   📅 Seg 27/01 - V15, V16  │
│   32/60 (53%)   │   │  53%      │ │   📅 Ter 28/01 - V17, V18  │
│                 │   │ concluído │ │   📅 Qua 29/01 - V19, V20  │
│   Gravados: 40  │   └───────────┘ │                             │
│   Editados: 35  │                 │                             │
│   Publicados:32 │                 │                             │
│                 │                 │                             │
├─────────────────┴─────────────────┴─────────────────────────────┤
│                                                                 │
│   POR SUBMÓDULO                                                 │
│   6.1 ████████████████████ 100%                                │
│   6.2 ████████████████░░░░  80%                                │
│   6.3 ████████░░░░░░░░░░░░  40%                                │
│   6.4 ░░░░░░░░░░░░░░░░░░░░   0%                                │
│   6.5 ░░░░░░░░░░░░░░░░░░░░   0%                                │
│                                                                 │
├─────────────────────────────────────────────────────────────────┤
│                                                                 │
│   🔴 BLOQUEIOS (2)                    ⚠️ ATRASADOS (3)          │
│   • V14 - Aguardando arte             • V12 - Edição (2 dias)  │
│   • V22 - Problema de áudio           • V13 - Revisão (1 dia)  │
│                                       • V14 - Gravação (3 dias)│
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

---

## 🚀 ROTEIRO DE IMPLEMENTAÇÃO

### Fase 1: Estrutura Base (2-3 horas)
- [ ] Criar workspace/página principal
- [ ] Criar database Vídeos com todas propriedades
- [ ] Importar dados dos 60 vídeos
- [ ] Configurar views principais

### Fase 2: Recursos e Produção (2-3 horas)
- [ ] Criar database Recursos
- [ ] Importar lista de recursos
- [ ] Criar database Produção
- [ ] Gerar tarefas para todos os vídeos

### Fase 3: Templates e Automações (1-2 horas)
- [ ] Criar templates de página
- [ ] Configurar relações entre databases
- [ ] Testar fluxo de trabalho

### Fase 4: Refinamento (1-2 horas)
- [ ] Ajustar views conforme uso
- [ ] Criar dashboards
- [ ] Treinar equipe
- [ ] Documentar processos

---

## 📋 DADOS PARA IMPORTAÇÃO

### Vídeos (CSV para importação)

```csv
Código,Nome,Submódulo,Duração,Status
V01,Introdução aos papéis em dados,6.1,12,Pendente
V02,Data Engineer vs Data Scientist,6.1,15,Pendente
V03,Analytics Engineer: o novo papel,6.1,12,Pendente
...
V60,Case: transformação cultural,6.5,15,Pendente
```

### Recursos (CSV para importação)

```csv
Nome,Tipo,Submódulo,Formato,Status
Template Job Description,Template,6.1,Markdown,Publicado
Template RACI,Template,"6.1,6.3",Markdown,Publicado
Checklist Onboarding,Checklist,6.1,Markdown,Publicado
...
```

---

**Estrutura pronta para implementação no Notion!**

**Versão:** 1.0 • Módulo 6 • Gestão de Projetos e Equipes de Dados
