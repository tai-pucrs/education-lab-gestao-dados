# ðŸ› ï¸ GUIA DE FERRAMENTAS â€¢ MÃ“DULO 6
## 15 Ferramentas Essenciais para GestÃ£o de Projetos e Equipes de Dados

---

## ðŸ“‹ ÃNDICE

**Por Categoria:**
- [GestÃ£o de Projetos](#categoria-1-gestÃ£o-de-projetos)
- [ColaboraÃ§Ã£o e ComunicaÃ§Ã£o](#categoria-2-colaboraÃ§Ã£o-e-comunicaÃ§Ã£o)
- [Data Engineering & MLOps](#categoria-3-data-engineering--mlops)
- [BI e VisualizaÃ§Ã£o](#categoria-4-bi-e-visualizaÃ§Ã£o)
- [DocumentaÃ§Ã£o e GovernanÃ§a](#categoria-5-documentaÃ§Ã£o-e-governanÃ§a)

**Recursos Adicionais:**
- [Matriz de SeleÃ§Ã£o](#matriz-de-seleÃ§Ã£o-por-contexto)
- [Stack Recomendado por Maturidade](#stack-recomendado-por-maturidade)

---

# CATEGORIA 1: GESTÃƒO DE PROJETOS

## 1. Jira

### VisÃ£o Geral
Ferramenta lÃ­der de mercado para gestÃ£o de projetos Ã¡geis. Desenvolvida pela Atlassian. Suporta Scrum, Kanban e metodologias hÃ­bridas. Amplamente adotada em times de tecnologia e dados.

### Quando Usar
- Times que trabalham com sprints estruturados
- OrganizaÃ§Ãµes que precisam de rastreabilidade completa
- IntegraÃ§Ã£o com ecossistema Atlassian (Confluence, Bitbucket)
- Projetos complexos com mÃºltiplas dependÃªncias

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **Boards** | Quadros Scrum e Kanban customizÃ¡veis |
| **Backlog** | GestÃ£o de product backlog com priorizaÃ§Ã£o |
| **Sprints** | Planejamento, execuÃ§Ã£o e retrospectiva |
| **Roadmaps** | VisualizaÃ§Ã£o de timeline e dependÃªncias |
| **Reports** | Burndown, velocity, cumulative flow |
| **Automations** | Regras para automatizar workflows |

### Modelo de PreÃ§o
- **Free:** AtÃ© 10 usuÃ¡rios
- **Standard:** $7.75/usuÃ¡rio/mÃªs
- **Premium:** $15.25/usuÃ¡rio/mÃªs
- **Enterprise:** Sob consulta

### Para Projetos de Dados
```
ConfiguraÃ§Ã£o sugerida para time de dados:

Issue Types:
- Epic: Iniciativa de dados (ex: "Data Warehouse v2")
- Story: Funcionalidade (ex: "Pipeline de vendas")
- Task: Tarefa tÃ©cnica (ex: "Configurar Airflow DAG")
- Bug: Problemas de qualidade de dados

Workflow sugerido:
Backlog â†’ To Do â†’ In Progress â†’ In Review â†’ Testing â†’ Done

Labels Ãºteis:
- data-quality, pipeline, dashboard, ml-model
- urgent, tech-debt, documentation
```

### Alternativas
- **Linear:** Mais moderno, melhor UX, menos funcionalidades
- **Asana:** Melhor para times nÃ£o-tÃ©cnicos
- **Azure DevOps:** Se jÃ¡ usa ecossistema Microsoft

---

## 2. Notion

### VisÃ£o Geral
Workspace all-in-one que combina notas, documentaÃ§Ã£o, wikis, databases e gestÃ£o de projetos. Extremamente flexÃ­vel e customizÃ¡vel. Popular em startups e times de produto.

### Quando Usar
- Times que valorizam documentaÃ§Ã£o integrada
- Startups que precisam de ferramenta versÃ¡til
- GestÃ£o de conhecimento + projetos juntos
- Times menores (atÃ© 50 pessoas)

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **Pages** | Documentos com blocos flexÃ­veis |
| **Databases** | Tabelas, boards, calendÃ¡rios, galerias |
| **Templates** | Templates prontos e customizÃ¡veis |
| **Integrations** | Slack, GitHub, Figma, etc. |
| **AI** | Assistente de escrita integrado |
| **Wikis** | DocumentaÃ§Ã£o estruturada por equipe |

### Modelo de PreÃ§o
- **Free:** BÃ¡sico para indivÃ­duos
- **Plus:** $8/usuÃ¡rio/mÃªs
- **Business:** $15/usuÃ¡rio/mÃªs
- **Enterprise:** Sob consulta

### Para Projetos de Dados
```
Estrutura sugerida para Ã¡rea de dados:

ðŸ“‚ Data Team Home
â”œâ”€â”€ ðŸ“‹ Project Tracker (Database)
â”‚   â””â”€â”€ Views: Board, Timeline, Table
â”œâ”€â”€ ðŸ“š Documentation
â”‚   â”œâ”€â”€ Data Dictionary
â”‚   â”œâ”€â”€ Pipeline Docs
â”‚   â””â”€â”€ Runbooks
â”œâ”€â”€ ðŸ“Š Dashboards & Reports
â”‚   â””â”€â”€ Links para BI tools
â”œâ”€â”€ ðŸŽ¯ OKRs & Goals
â””â”€â”€ ðŸ“ Meeting Notes
    â”œâ”€â”€ Daily Notes (template)
    â”œâ”€â”€ Sprint Reviews
    â””â”€â”€ 1:1s
```

### Alternativas
- **Confluence:** Melhor integraÃ§Ã£o com Jira
- **Coda:** Mais poder em databases/automaÃ§Ãµes
- **Slite:** Mais simples, foco em documentaÃ§Ã£o

---

## 3. Trello

### VisÃ£o Geral
Ferramenta visual de gestÃ£o baseada em Kanban. Interface intuitiva de arrastar e soltar. Baixa curva de aprendizado. Ideal para times que estÃ£o comeÃ§ando com gestÃ£o visual.

### Quando Usar
- Times pequenos (atÃ© 15 pessoas)
- Projetos com workflow simples
- Stakeholders nÃ£o-tÃ©cnicos
- Primeiros passos em gestÃ£o visual

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **Boards** | Quadros Kanban visuais |
| **Cards** | Tarefas com descriÃ§Ã£o, anexos, checklists |
| **Lists** | Colunas customizÃ¡veis |
| **Power-Ups** | IntegraÃ§Ãµes e funcionalidades extras |
| **Automations** | Butler para automaÃ§Ãµes bÃ¡sicas |
| **Templates** | Boards prontos para comeÃ§ar |

### Modelo de PreÃ§o
- **Free:** AtÃ© 10 boards, bÃ¡sico
- **Standard:** $5/usuÃ¡rio/mÃªs
- **Premium:** $10/usuÃ¡rio/mÃªs
- **Enterprise:** $17.50/usuÃ¡rio/mÃªs

### Para Projetos de Dados
```
Board sugerido para time de dados:

ðŸ“‹ Data Requests
â”œâ”€â”€ ðŸ“¥ Inbox (novos pedidos)
â”œâ”€â”€ ðŸ” Triagem (avaliando)
â”œâ”€â”€ ðŸ“… Backlog (priorizado)
â”œâ”€â”€ ðŸš§ Em Progresso
â”œâ”€â”€ ðŸ‘€ Em Review
â”œâ”€â”€ âœ… ConcluÃ­do
â””â”€â”€ â„ï¸ Ice Box (baixa prioridade)

Labels:
ðŸ”´ Urgente | ðŸŸ¡ Dashboard | ðŸ”µ Pipeline | ðŸŸ¢ AnÃ¡lise

Custom Fields:
- Solicitante
- Data prevista
- Complexidade (P/M/G)
```

### Alternativas
- **GitHub Projects:** Se jÃ¡ usa GitHub
- **Monday.com:** Mais robusto, mais caro
- **ClickUp:** Mais funcionalidades grÃ¡tis

---

# CATEGORIA 2: COLABORAÃ‡ÃƒO E COMUNICAÃ‡ÃƒO

## 4. Slack

### VisÃ£o Geral
Plataforma de comunicaÃ§Ã£o por mensagens para times. Organiza conversas em canais. Rico ecossistema de integraÃ§Ãµes. PadrÃ£o de mercado em empresas de tecnologia.

### Quando Usar
- ComunicaÃ§Ã£o assÃ­ncrona do time
- IntegraÃ§Ã£o com ferramentas de desenvolvimento
- AutomaÃ§Ãµes e bots
- Times distribuÃ­dos

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **Channels** | Canais por tema, projeto ou time |
| **Threads** | Conversas organizadas dentro de mensagens |
| **Huddles** | Chamadas rÃ¡pidas de Ã¡udio/vÃ­deo |
| **Clips** | GravaÃ§Ãµes de Ã¡udio/vÃ­deo assÃ­ncronas |
| **Workflows** | AutomaÃ§Ãµes no-code |
| **Apps** | 2.500+ integraÃ§Ãµes disponÃ­veis |

### Modelo de PreÃ§o
- **Free:** HistÃ³rico de 90 dias
- **Pro:** $7.25/usuÃ¡rio/mÃªs
- **Business+:** $12.50/usuÃ¡rio/mÃªs
- **Enterprise:** Sob consulta

### Para Projetos de Dados
```
Canais sugeridos para Ã¡rea de dados:

#data-team - Geral do time
#data-announcements - Comunicados (poucos podem postar)
#data-alerts - Alertas de pipelines/dashboards
#data-requests - Pedidos de stakeholders
#data-random - Off-topic do time

IntegraÃ§Ãµes essenciais:
- GitHub/GitLab â†’ notificaÃ§Ãµes de PR
- Airflow/dbt â†’ alertas de falha
- Jira â†’ atualizaÃ§Ãµes de tickets
- PagerDuty â†’ on-call alertas

Workflow Ãºtil:
"Nova solicitaÃ§Ã£o de dados" â†’ Form que cria ticket no Jira
```

### Alternativas
- **Microsoft Teams:** Se usa Office 365
- **Discord:** Comunidades, times remotos
- **Google Chat:** Se usa Google Workspace

---

## 5. Miro

### VisÃ£o Geral
Quadro branco colaborativo online. Ideal para brainstorming, workshops, diagramas e planejamento visual. Permite colaboraÃ§Ã£o em tempo real com mÃºltiplos participantes.

### Quando Usar
- Workshops remotos
- Mapeamento de processos
- Retrospectivas visuais
- Design thinking sessions
- Arquitetura de dados (diagramas)

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **Canvas infinito** | EspaÃ§o ilimitado para trabalhar |
| **Templates** | 2.500+ templates prontos |
| **Shapes & Connectors** | Diagramas e fluxogramas |
| **Sticky Notes** | Post-its virtuais |
| **Voting** | VotaÃ§Ã£o para decisÃµes |
| **Timer** | Timeboxing de atividades |

### Modelo de PreÃ§o
- **Free:** 3 boards editÃ¡veis
- **Starter:** $8/usuÃ¡rio/mÃªs
- **Business:** $16/usuÃ¡rio/mÃªs
- **Enterprise:** Sob consulta

### Para Projetos de Dados
```
Templates Ãºteis para times de dados:

ðŸ”„ Data Flow Diagram
- Mapear fontes â†’ transformaÃ§Ãµes â†’ destinos
- Identificar owners e SLAs

ðŸƒ Sprint Retrospective
- O que funcionou / O que melhorar / AÃ§Ãµes
- VariaÃ§Ãµes: 4Ls, Sailboat, Starfish

ðŸ—ºï¸ Data Architecture
- Diagrama de arquitetura atual vs. futura
- Tech stack visual

ðŸ“Š Stakeholder Mapping
- Matriz poder x interesse
- Plano de comunicaÃ§Ã£o visual

ðŸŽ¯ OKR Planning
- Ãrvore de objetivos
- Alinhamento com iniciativas
```

### Alternativas
- **FigJam:** Se usa Figma
- **Lucidchart:** Foco em diagramas tÃ©cnicos
- **Excalidraw:** Open source, minimalista

---

## 6. Loom

### VisÃ£o Geral
Ferramenta de gravaÃ§Ã£o de vÃ­deo para comunicaÃ§Ã£o assÃ­ncrona. Captura tela, webcam ou ambos. Ideal para explicaÃ§Ãµes, demos, feedback e tutoriais. Substitui muitas reuniÃµes.

### Quando Usar
- Explicar algo complexo visualmente
- Demos de dashboards ou anÃ¡lises
- Feedback em documentos
- Onboarding de novos membros
- DocumentaÃ§Ã£o em vÃ­deo

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **Screen Recording** | Captura tela + webcam |
| **Editing** | Cortes simples, trim |
| **Transcription** | TranscriÃ§Ã£o automÃ¡tica |
| **Comments** | ComentÃ¡rios com timestamp |
| **Reactions** | Emojis e respostas em vÃ­deo |
| **Analytics** | Quem assistiu e atÃ© onde |

### Modelo de PreÃ§o
- **Free:** AtÃ© 25 vÃ­deos, 5 min cada
- **Business:** $12.50/usuÃ¡rio/mÃªs
- **Enterprise:** Sob consulta

### Para Projetos de Dados
```
Casos de uso no dia a dia:

ðŸ“Š Demo de Dashboard
- Gravar walkthrough do novo dashboard
- Stakeholders assistem quando podem
- ComentÃ¡rios para feedback

ðŸ› Bug Report
- "Esse nÃºmero estÃ¡ errado"
- Mostrar exatamente o problema
- Evita vai-e-vem de mensagens

ðŸ“š DocumentaÃ§Ã£o
- Tutorial de como usar self-service
- ExplicaÃ§Ã£o de mÃ©trica complexa
- Gravado uma vez, assistido muitas

ðŸ”„ Handoff
- Passar projeto para outro membro
- Contexto completo em 5-10 minutos
- Fica documentado para futuro
```

### Alternativas
- **Tella:** Mais bonito, mais caro
- **Vidyard:** Foco em vendas
- **OBS + YouTube:** Gratuito, mais trabalhoso

---

# CATEGORIA 3: DATA ENGINEERING & MLOPS

## 7. dbt (data build tool)

### VisÃ£o Geral
Framework de transformaÃ§Ã£o de dados que permite escrever transformaÃ§Ãµes em SQL com prÃ¡ticas de engenharia de software. Modelo ELT onde transformaÃ§Ãµes acontecem no warehouse. PadrÃ£o moderno de analytics engineering.

### Quando Usar
- TransformaÃ§Ãµes de dados no data warehouse
- Construir data marts e modelos analÃ­ticos
- DocumentaÃ§Ã£o de dados automatizada
- Testes de qualidade de dados

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **Models** | TransformaÃ§Ãµes SQL versionadas |
| **Tests** | ValidaÃ§Ãµes de qualidade automatizadas |
| **Documentation** | Docs gerados automaticamente |
| **Lineage** | Grafo de dependÃªncias |
| **Macros** | SQL reutilizÃ¡vel (Jinja) |
| **Packages** | Bibliotecas da comunidade |

### Modelo de PreÃ§o
- **dbt Core:** Open source, gratuito
- **dbt Cloud Developer:** $100/mÃªs (1 usuÃ¡rio)
- **dbt Cloud Team:** $100/dev/mÃªs + $50/read/mÃªs
- **dbt Cloud Enterprise:** Sob consulta

### Para Projetos de Dados
```
Estrutura de projeto dbt:

ðŸ“‚ dbt_project/
â”œâ”€â”€ ðŸ“‚ models/
â”‚   â”œâ”€â”€ ðŸ“‚ staging/          # Limpeza inicial
â”‚   â”‚   â”œâ”€â”€ stg_sales.sql
â”‚   â”‚   â””â”€â”€ stg_customers.sql
â”‚   â”œâ”€â”€ ðŸ“‚ intermediate/     # TransformaÃ§Ãµes
â”‚   â”‚   â””â”€â”€ int_sales_enriched.sql
â”‚   â””â”€â”€ ðŸ“‚ marts/           # Modelos finais
â”‚       â”œâ”€â”€ ðŸ“‚ finance/
â”‚       â””â”€â”€ ðŸ“‚ marketing/
â”œâ”€â”€ ðŸ“‚ tests/               # Testes customizados
â”œâ”€â”€ ðŸ“‚ macros/              # SQL reutilizÃ¡vel
â”œâ”€â”€ ðŸ“‚ seeds/               # CSVs estÃ¡ticos
â””â”€â”€ dbt_project.yml

Testes essenciais:
- unique (chave Ãºnica)
- not_null (campos obrigatÃ³rios)
- accepted_values (valores vÃ¡lidos)
- relationships (integridade referencial)
```

### Alternativas
- **Dataform:** Similar, do Google
- **SQLMesh:** Mais novo, versionamento nativo
- **LookML:** TransformaÃ§Ãµes no Looker

---

## 8. Airflow

### VisÃ£o Geral
Plataforma de orquestraÃ§Ã£o de workflows criada pelo Airbnb. Define pipelines como cÃ³digo (Python). Agenda, monitora e gerencia dependÃªncias. PadrÃ£o de mercado para orquestraÃ§Ã£o de dados.

### Quando Usar
- OrquestraÃ§Ã£o de pipelines ETL/ELT
- Workflows com dependÃªncias complexas
- Agendamento de jobs recorrentes
- IntegraÃ§Ã£o com mÃºltiplas ferramentas

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **DAGs** | Pipelines definidos como cÃ³digo |
| **Operators** | Conectores para diversas ferramentas |
| **Scheduling** | Agendamento com cron expressions |
| **UI** | Interface web para monitoramento |
| **Logs** | Logs detalhados por tarefa |
| **Backfill** | Reprocessamento de perÃ­odos |

### Modelo de PreÃ§o
- **Apache Airflow:** Open source, gratuito
- **MWAA (AWS):** ~$0.49/hora + recursos
- **Cloud Composer (GCP):** ~$0.35/hora + recursos
- **Astronomer:** $0.57/hora+

### Para Projetos de Dados
```python
# Exemplo de DAG para pipeline de dados
from airflow import DAG
from airflow.operators.python import PythonOperator
from datetime import datetime, timedelta

default_args = {
    'owner': 'data-team',
    'retries': 3,
    'retry_delay': timedelta(minutes=5),
    'email_on_failure': True,
}

with DAG(
    'sales_pipeline',
    default_args=default_args,
    schedule_interval='0 6 * * *',  # 6am daily
    start_date=datetime(2024, 1, 1),
    catchup=False,
) as dag:
    
    extract = PythonOperator(
        task_id='extract_sales',
        python_callable=extract_from_source,
    )
    
    transform = PythonOperator(
        task_id='transform_data',
        python_callable=run_dbt_models,
    )
    
    notify = PythonOperator(
        task_id='notify_stakeholders',
        python_callable=send_slack_notification,
    )
    
    extract >> transform >> notify
```

### Alternativas
- **Dagster:** Mais moderno, melhor para ML
- **Prefect:** Cloud-first, mais simples
- **Mage:** No-code + cÃ³digo, mais novo

---

## 9. MLflow

### VisÃ£o Geral
Plataforma open source para gerenciar ciclo de vida de ML. Desenvolvida pela Databricks. Cobre experiment tracking, model registry e deployment. PadrÃ£o de mercado para MLOps.

### Quando Usar
- Tracking de experimentos de ML
- Versionamento de modelos
- ComparaÃ§Ã£o de performances
- Deploy de modelos em produÃ§Ã£o

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **Tracking** | Log de parÃ¢metros, mÃ©tricas, artefatos |
| **Projects** | Empacotamento reproduzÃ­vel |
| **Models** | Formato agnÃ³stico de modelos |
| **Registry** | Versionamento e staging de modelos |
| **Serving** | Deploy via REST API |
| **UI** | Interface web para exploraÃ§Ã£o |

### Modelo de PreÃ§o
- **MLflow OSS:** Open source, gratuito
- **Databricks MLflow:** Incluso no Databricks
- **Managed:** Diversos vendors oferecem

### Para Projetos de Dados
```python
# Exemplo de uso do MLflow
import mlflow
import mlflow.sklearn
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score, f1_score

# Configurar experimento
mlflow.set_experiment("churn_prediction")

# Iniciar run
with mlflow.start_run(run_name="rf_baseline"):
    # Log parÃ¢metros
    params = {
        "n_estimators": 100,
        "max_depth": 10,
        "min_samples_split": 5
    }
    mlflow.log_params(params)
    
    # Treinar modelo
    model = RandomForestClassifier(**params)
    model.fit(X_train, y_train)
    
    # Avaliar
    predictions = model.predict(X_test)
    accuracy = accuracy_score(y_test, predictions)
    f1 = f1_score(y_test, predictions)
    
    # Log mÃ©tricas
    mlflow.log_metrics({
        "accuracy": accuracy,
        "f1_score": f1
    })
    
    # Log modelo
    mlflow.sklearn.log_model(
        model, 
        "model",
        registered_model_name="churn_model"
    )
```

### Alternativas
- **Weights & Biases:** Melhor UI, pago
- **Neptune.ai:** Foco em colaboraÃ§Ã£o
- **DVC:** Versionamento de dados/modelos

---

# CATEGORIA 4: BI E VISUALIZAÃ‡ÃƒO

## 10. Power BI

### VisÃ£o Geral
Ferramenta de Business Intelligence da Microsoft. IntegraÃ§Ã£o nativa com ecossistema Office/Azure. Interface drag-and-drop acessÃ­vel. Ampla adoÃ§Ã£o em empresas de todos os portes.

### Quando Usar
- OrganizaÃ§Ãµes que usam Microsoft
- UsuÃ¡rios de negÃ³cio criando relatÃ³rios
- Dashboards self-service
- IntegraÃ§Ã£o com Excel

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **Desktop** | CriaÃ§Ã£o de relatÃ³rios (grÃ¡tis) |
| **Service** | PublicaÃ§Ã£o e compartilhamento |
| **Dataflows** | PreparaÃ§Ã£o de dados |
| **Datasets** | Modelos semÃ¢nticos compartilhados |
| **DAX** | Linguagem de expressÃµes |
| **AI Visuals** | Q&A natural, insights automÃ¡ticos |

### Modelo de PreÃ§o
- **Desktop:** Gratuito
- **Pro:** $10/usuÃ¡rio/mÃªs
- **Premium per User:** $20/usuÃ¡rio/mÃªs
- **Premium Capacity:** A partir de $4,995/mÃªs

### Para Projetos de Dados
```
Arquitetura recomendada:

ðŸ“Š Power BI Service
â”œâ”€â”€ ðŸ“‚ Workspaces
â”‚   â”œâ”€â”€ ðŸ¢ Finance
â”‚   â”‚   â”œâ”€â”€ ðŸ“Š P&L Dashboard
â”‚   â”‚   â””â”€â”€ ðŸ“Š Cash Flow Report
â”‚   â”œâ”€â”€ ðŸ“¦ Sales
â”‚   â”‚   â”œâ”€â”€ ðŸ“Š Sales Performance
â”‚   â”‚   â””â”€â”€ ðŸ“Š Pipeline Analysis
â”‚   â””â”€â”€ ðŸ”§ Data Team (Dev)
â”‚       â””â”€â”€ ðŸ“Š Templates & Tests
â”‚
â”œâ”€â”€ ðŸ“‚ Datasets Compartilhados
â”‚   â”œâ”€â”€ Sales Data Model
â”‚   â”œâ”€â”€ Finance Data Model
â”‚   â””â”€â”€ HR Data Model
â”‚
â””â”€â”€ ðŸ“‚ Dataflows
    â”œâ”€â”€ Staging - ERP
    â”œâ”€â”€ Staging - CRM
    â””â”€â”€ Transformations

Row-Level Security (RLS):
- Vendedor vÃª sÃ³ sua regiÃ£o
- Gerente vÃª seu time
- Diretor vÃª tudo
```

### Alternativas
- **Looker:** Mais governanÃ§a, semantic layer
- **Tableau:** Mais visualizaÃ§Ãµes avanÃ§adas
- **Metabase:** Open source, mais simples

---

## 11. Metabase

### VisÃ£o Geral
Ferramenta de BI open source focada em simplicidade. Interface intuitiva para usuÃ¡rios nÃ£o-tÃ©cnicos. Permite tanto queries SQL quanto anÃ¡lises no-code. Ideal para democratizar acesso a dados.

### Quando Usar
- Startups e empresas com budget limitado
- Self-service para nÃ£o-tÃ©cnicos
- Setup rÃ¡pido com pouca manutenÃ§Ã£o
- Queries ad-hoc e exploraÃ§Ã£o

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **Questions** | Queries sem cÃ³digo |
| **SQL Mode** | Editor SQL completo |
| **Dashboards** | ColeÃ§Ãµes de visualizaÃ§Ãµes |
| **Alerts** | NotificaÃ§Ãµes automÃ¡ticas |
| **Embedding** | Embeder em outras aplicaÃ§Ãµes |
| **Permissions** | Controle de acesso granular |

### Modelo de PreÃ§o
- **Open Source:** Gratuito (self-hosted)
- **Starter (Cloud):** Gratuito (atÃ© 5 usuÃ¡rios)
- **Pro (Cloud):** $85/mÃªs (5 usuÃ¡rios)
- **Enterprise:** Sob consulta

### Para Projetos de Dados
```
Setup rÃ¡pido para equipe:

1. Deploy (opÃ§Ãµes):
   - Docker: docker run -p 3000:3000 metabase/metabase
   - Heroku: One-click deploy
   - AWS/GCP: Terraform templates

2. Conectar fontes:
   - PostgreSQL, MySQL, BigQuery, Snowflake
   - ConexÃ£o read-only para seguranÃ§a

3. Estrutura de Collections:
   ðŸ“‚ Company Metrics
   â”œâ”€â”€ ðŸ“Š Executive Dashboard
   â”œâ”€â”€ ðŸ“Š Weekly KPIs
   â””â”€â”€ ðŸ“Š OKR Tracking
   
   ðŸ“‚ Self-Service
   â”œâ”€â”€ ðŸ“‚ Sales
   â”œâ”€â”€ ðŸ“‚ Marketing
   â””â”€â”€ ðŸ“‚ Finance

4. PermissÃµes:
   - Grupo "Viewers": Ver dashboards
   - Grupo "Analysts": Criar questions
   - Grupo "Admins": Acesso total

5. Dicas:
   - Criar "Questions" base bem documentadas
   - Usar X-rays para descoberta automÃ¡tica
   - Configurar alertas para mÃ©tricas crÃ­ticas
```

### Alternativas
- **Apache Superset:** Mais funcionalidades, mais complexo
- **Redash:** Similar, foco em SQL
- **Lightdash:** IntegraÃ§Ã£o nativa com dbt

---

## 12. Looker

### VisÃ£o Geral
Plataforma de BI da Google Cloud focada em governanÃ§a e modelagem semÃ¢ntica. LookML define mÃ©tricas uma vez, usadas em toda empresa. Forte em consistÃªncia de dados e self-service governado.

### Quando Usar
- OrganizaÃ§Ãµes que precisam de single source of truth
- MÃ©tricas precisam ser consistentes em toda empresa
- Times tÃ©cnicos para manter modelo semÃ¢ntico
- Uso pesado de BigQuery

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **LookML** | Linguagem de modelagem semÃ¢ntica |
| **Explores** | Interface de exploraÃ§Ã£o self-service |
| **Dashboards** | VisualizaÃ§Ãµes interativas |
| **Embedding** | Embeder em aplicaÃ§Ãµes |
| **API** | AutomaÃ§Ã£o e integraÃ§Ãµes |
| **Actions** | Enviar dados para outras ferramentas |

### Modelo de PreÃ§o
- **Looker:** Sob consulta (~$5,000+/mÃªs)
- **Looker Studio (ex-Data Studio):** Gratuito (funcionalidades limitadas)

### Para Projetos de Dados
```
Modelo LookML exemplo:

# sales.model.lkml
connection: "bigquery_prod"

include: "/views/*.view.lkml"

explore: orders {
  label: "Sales Analysis"
  description: "AnÃ¡lise de vendas e pedidos"
  
  join: customers {
    type: left_outer
    sql_on: ${orders.customer_id} = ${customers.id} ;;
    relationship: many_to_one
  }
  
  join: products {
    type: left_outer
    sql_on: ${orders.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

# orders.view.lkml
view: orders {
  sql_table_name: `analytics.orders` ;;
  
  dimension: id {
    primary_key: yes
    type: number
  }
  
  dimension_group: created {
    type: time
    timeframes: [date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  
  measure: total_revenue {
    type: sum
    sql: ${TABLE}.revenue ;;
    value_format_name: brl
    description: "Receita total de vendas"
  }
  
  measure: order_count {
    type: count
    drill_fields: [id, created_date, total_revenue]
  }
}
```

### Alternativas
- **dbt Semantic Layer + BI:** Mais flexÃ­vel
- **AtScale:** Semantic layer agnÃ³stico
- **Cube.dev:** Open source, headless BI

---

# CATEGORIA 5: DOCUMENTAÃ‡ÃƒO E GOVERNANÃ‡A

## 13. Confluence

### VisÃ£o Geral
Wiki corporativa da Atlassian. IntegraÃ§Ã£o nativa com Jira. Ideal para documentaÃ§Ã£o tÃ©cnica e de processos. Amplamente adotada em empresas de tecnologia.

### Quando Usar
- DocumentaÃ§Ã£o tÃ©cnica estruturada
- IntegraÃ§Ã£o com Jira
- Wikis de equipe e processos
- Templates padronizados

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **Spaces** | Ãreas por equipe ou projeto |
| **Pages** | Documentos hierÃ¡rquicos |
| **Templates** | Modelos padronizados |
| **Macros** | ConteÃºdo dinÃ¢mico (Jira, diagramas) |
| **Comments** | DiscussÃµes em pÃ¡ginas |
| **Search** | Busca em toda base |

### Modelo de PreÃ§o
- **Free:** AtÃ© 10 usuÃ¡rios
- **Standard:** $5.75/usuÃ¡rio/mÃªs
- **Premium:** $11/usuÃ¡rio/mÃªs
- **Enterprise:** Sob consulta

### Para Projetos de Dados
```
Estrutura sugerida para Ã¡rea de dados:

ðŸ“‚ Space: Data Team
â”œâ”€â”€ ðŸ“„ Home (visÃ£o geral)
â”œâ”€â”€ ðŸ“‚ Data Dictionary
â”‚   â”œâ”€â”€ ðŸ“„ Tabelas de vendas
â”‚   â”œâ”€â”€ ðŸ“„ Tabelas de clientes
â”‚   â””â”€â”€ ðŸ“„ Tabelas de produtos
â”œâ”€â”€ ðŸ“‚ Pipelines
â”‚   â”œâ”€â”€ ðŸ“„ Sales Pipeline
â”‚   â”‚   â”œâ”€â”€ Fontes de dados
â”‚   â”‚   â”œâ”€â”€ TransformaÃ§Ãµes
â”‚   â”‚   â”œâ”€â”€ SLA e monitoramento
â”‚   â”‚   â””â”€â”€ Troubleshooting
â”‚   â””â”€â”€ ðŸ“„ Finance Pipeline
â”œâ”€â”€ ðŸ“‚ Processos
â”‚   â”œâ”€â”€ ðŸ“„ Como solicitar dados
â”‚   â”œâ”€â”€ ðŸ“„ Processo de deploy
â”‚   â””â”€â”€ ðŸ“„ On-call runbook
â”œâ”€â”€ ðŸ“‚ Arquitetura
â”‚   â”œâ”€â”€ ðŸ“„ Diagrama atual
â”‚   â””â”€â”€ ðŸ“„ ADRs (Architecture Decision Records)
â””â”€â”€ ðŸ“‚ Meeting Notes
    â”œâ”€â”€ ðŸ“„ Weekly Sync
    â””â”€â”€ ðŸ“„ Sprint Reviews

Templates Ãºteis:
- Data Request: FormulÃ¡rio padronizado
- Pipeline Doc: Estrutura para documentar pipelines
- Postmortem: AnÃ¡lise de incidentes
- ADR: DecisÃµes de arquitetura
```

### Alternativas
- **Notion:** Mais flexÃ­vel, menos integraÃ§Ã£o Jira
- **GitBook:** Melhor para docs tÃ©cnicos pÃºblicos
- **Slite:** Mais simples, foco em busca

---

## 14. DataHub

### VisÃ£o Geral
Plataforma open source de data catalog e metadata management criada pelo LinkedIn. Descobre, cataloga e governa ativos de dados. Suporta linhagem automÃ¡tica e qualidade de dados.

### Quando Usar
- CatÃ¡logo centralizado de dados
- Rastreamento de linhagem automÃ¡tico
- Descoberta de dados self-service
- GovernanÃ§a em escala

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **Catalog** | InventÃ¡rio de ativos de dados |
| **Lineage** | Linhagem automÃ¡tica end-to-end |
| **Search** | Descoberta com busca avanÃ§ada |
| **Glossary** | Termos de negÃ³cio padronizados |
| **Ownership** | GestÃ£o de proprietÃ¡rios |
| **Tags & Domains** | OrganizaÃ§Ã£o e classificaÃ§Ã£o |

### Modelo de PreÃ§o
- **Open Source:** Gratuito (self-hosted)
- **Acryl Cloud:** A partir de $1,500/mÃªs

### Para Projetos de Dados
```
IntegraÃ§Ãµes para setup completo:

ðŸ“¥ Ingestion Sources:
- Data Warehouses: BigQuery, Snowflake, Redshift
- Databases: PostgreSQL, MySQL
- BI Tools: Looker, Power BI, Tableau
- Orchestration: Airflow, dbt
- Streaming: Kafka

ðŸ”— Lineage automÃ¡tica:
dbt project â†’ DataHub â†’ Linhagem visual
Airflow DAGs â†’ DataHub â†’ DependÃªncias
SQL parsing â†’ DataHub â†’ Linhagem column-level

ðŸ“Š GovernanÃ§a:
1. Definir Domains (Sales, Finance, Marketing)
2. Criar Glossary Terms
3. Atribuir Owners
4. Classificar dados sensÃ­veis (PII, LGPD)
5. Configurar Data Quality checks

Exemplo de metadata:
{
  "dataset": "analytics.orders",
  "domain": "Sales",
  "owner": "data-team@empresa.com",
  "tags": ["pii", "lgpd"],
  "glossary_terms": ["Revenue", "Order"],
  "freshness_sla": "daily by 8am"
}
```

### Alternativas
- **Atlan:** Mais UX, pago
- **Alation:** Enterprise, mais caro
- **OpenMetadata:** Open source alternativo

---

## 15. Great Expectations

### VisÃ£o Geral
Framework open source de validaÃ§Ã£o e qualidade de dados em Python. Define expectativas sobre dados e valida automaticamente. Gera documentaÃ§Ã£o de qualidade. Integra com pipelines de dados.

### Quando Usar
- Testes automatizados de qualidade de dados
- ValidaÃ§Ã£o em pipelines ETL/ELT
- DocumentaÃ§Ã£o de contratos de dados
- DetecÃ§Ã£o de anomalias

### Funcionalidades Principais

| Funcionalidade | DescriÃ§Ã£o |
|----------------|-----------|
| **Expectations** | AsserÃ§Ãµes sobre dados |
| **Validation** | ExecuÃ§Ã£o de testes |
| **Data Docs** | DocumentaÃ§Ã£o automÃ¡tica |
| **Profiling** | Perfil estatÃ­stico de dados |
| **Checkpoints** | ValidaÃ§Ãµes em batch |
| **Actions** | ReaÃ§Ãµes a falhas (Slack, email) |

### Modelo de PreÃ§o
- **Open Source:** Gratuito
- **GX Cloud:** Beta gratuito (funcionalidades extras)

### Para Projetos de Dados
```python
# Exemplo de Great Expectations
import great_expectations as gx

# Conectar ao contexto
context = gx.get_context()

# Criar expectation suite para tabela de vendas
suite = context.add_expectation_suite("sales_validation")

# Definir expectativas
validator = context.get_validator(
    batch_request=batch_request,
    expectation_suite_name="sales_validation"
)

# Expectativas bÃ¡sicas
validator.expect_table_row_count_to_be_between(min_value=1000)
validator.expect_column_to_exist("order_id")
validator.expect_column_values_to_be_unique("order_id")
validator.expect_column_values_to_not_be_null("customer_id")

# Expectativas de domÃ­nio
validator.expect_column_values_to_be_between(
    column="revenue",
    min_value=0,
    max_value=1000000
)
validator.expect_column_values_to_be_in_set(
    column="status",
    value_set=["pending", "completed", "cancelled"]
)

# Expectativas de freshness
validator.expect_column_max_to_be_between(
    column="created_at",
    min_value=datetime.now() - timedelta(days=1)
)

# Salvar suite
validator.save_expectation_suite(discard_failed_expectations=False)

# Executar checkpoint em pipeline
checkpoint_result = context.run_checkpoint(
    checkpoint_name="sales_daily_check"
)
```

### Alternativas
- **dbt tests:** Mais simples, integrado ao dbt
- **Soda:** Interface visual, mais acessÃ­vel
- **Monte Carlo:** Observabilidade completa, pago

---

# ðŸ“Š MATRIZ DE SELEÃ‡ÃƒO POR CONTEXTO

## Por Tamanho de Time

| Ferramenta | 1-5 pessoas | 5-20 pessoas | 20+ pessoas |
|------------|:-----------:|:------------:|:-----------:|
| **Jira** | âš ï¸ | âœ… | âœ… |
| **Trello** | âœ… | âš ï¸ | âŒ |
| **Notion** | âœ… | âœ… | âš ï¸ |
| **Slack** | âœ… | âœ… | âœ… |
| **Metabase** | âœ… | âœ… | âš ï¸ |
| **Looker** | âŒ | âš ï¸ | âœ… |

âœ… Recomendado | âš ï¸ PossÃ­vel | âŒ NÃ£o recomendado

## Por Budget

| Ferramenta | Gratuito | AtÃ© $1k/mÃªs | $1k-5k/mÃªs | $5k+/mÃªs |
|------------|:--------:|:-----------:|:----------:|:--------:|
| **dbt** | Core âœ… | Cloud Team | Cloud Team | Enterprise |
| **Airflow** | OSS âœ… | Managed | Managed | Astronomer |
| **MLflow** | OSS âœ… | Databricks | Databricks | Databricks |
| **Metabase** | OSS âœ… | Cloud Pro | Enterprise | Enterprise |
| **DataHub** | OSS âœ… | OSS | Acryl | Acryl |

---

# ðŸŽ¯ STACK RECOMENDADO POR MATURIDADE

## NÃ­vel 1: ComeÃ§ando (0-6 meses)

```
GestÃ£o:     Trello ou Notion (grÃ¡tis)
ComunicaÃ§Ã£o: Slack Free
BI:          Metabase OSS ou Power BI Desktop
DocumentaÃ§Ã£o: Notion ou Google Docs
Qualidade:   dbt tests bÃ¡sicos
```

**Investimento:** ~$0-500/mÃªs

## NÃ­vel 2: Estruturado (6-18 meses)

```
GestÃ£o:      Jira Standard
ComunicaÃ§Ã£o: Slack Pro
ColaboraÃ§Ã£o: Miro + Loom
BI:          Metabase Pro ou Power BI Pro
TransformaÃ§Ã£o: dbt Core + Airflow OSS
MLOps:       MLflow OSS
DocumentaÃ§Ã£o: Confluence Standard
Qualidade:   dbt tests + Great Expectations
```

**Investimento:** ~$1,000-3,000/mÃªs

## NÃ­vel 3: Escalado (18+ meses)

```
GestÃ£o:      Jira Premium + Confluence
ComunicaÃ§Ã£o: Slack Business+
ColaboraÃ§Ã£o: Miro Business + Loom
BI:          Looker ou Power BI Premium
TransformaÃ§Ã£o: dbt Cloud + Managed Airflow
MLOps:       MLflow + Feature Store
CatÃ¡logo:    DataHub ou Atlan
Qualidade:   Great Expectations + Soda
DocumentaÃ§Ã£o: Confluence + DataHub
```

**Investimento:** ~$5,000-15,000/mÃªs

---

## ðŸ“ CHECKLIST DE AVALIAÃ‡ÃƒO DE FERRAMENTAS

Antes de adotar uma nova ferramenta:

**Fit TÃ©cnico**
- [ ] Integra com stack atual?
- [ ] Time tem skills para usar/manter?
- [ ] DocumentaÃ§Ã£o Ã© boa?
- [ ] Comunidade Ã© ativa?

**Fit Organizacional**
- [ ] Resolve problema real do time?
- [ ] UsuÃ¡rios vÃ£o adotar?
- [ ] Suporte adequado disponÃ­vel?
- [ ] Cabe no budget atual e futuro?

**Riscos**
- [ ] Vendor lock-in Ã© aceitÃ¡vel?
- [ ] Tem alternativas se nÃ£o funcionar?
- [ ] Dados sensÃ­veis estÃ£o protegidos?
- [ ] Compliance (LGPD) estÃ¡ ok?

---

**Total:** 15 ferramentas â€¢ 3 por categoria

**VersÃ£o:** 1.0 â€¢ MÃ³dulo 6 â€¢ GestÃ£o de Projetos e Equipes de Dados
