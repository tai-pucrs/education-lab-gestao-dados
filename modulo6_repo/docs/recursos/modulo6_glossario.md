# ðŸ“– GLOSSÃRIO TÃ‰CNICO â€¢ MÃ“DULO 6
## 75 Termos Essenciais em GestÃ£o de Projetos e Equipes de Dados

---

## ðŸ“‹ ÃNDICE

- [6.1 PapÃ©is e Carreira](#61-papÃ©is-e-carreira-15-termos)
- [6.2 Metodologias Ãgeis](#62-metodologias-Ã¡geis-15-termos)
- [6.3 GestÃ£o de Projetos](#63-gestÃ£o-de-projetos-15-termos)
- [6.4 LideranÃ§a de Equipes](#64-lideranÃ§a-de-equipes-15-termos)
- [6.5 Cultura Data-Driven](#65-cultura-data-driven-15-termos)

---

# 6.1 PAPÃ‰IS E CARREIRA (15 termos)

### Analytics Engineer
Profissional que atua na interseÃ§Ã£o entre Data Engineering e Data Analysis. ResponsÃ¡vel por transformar dados brutos em modelos analÃ­ticos usando ferramentas como dbt, garantindo qualidade e documentaÃ§Ã£o. Foco em modelagem dimensional e data quality.

**Relacionado:** dbt, Data Modeling, Data Quality

---

### CDO (Chief Data Officer)
Executivo C-level responsÃ¡vel pela estratÃ©gia de dados da organizaÃ§Ã£o. AtribuiÃ§Ãµes incluem governanÃ§a, qualidade, compliance (LGPD), e alinhamento de iniciativas de dados com objetivos de negÃ³cio. Reporta ao CEO ou COO.

**Relacionado:** Data Governance, Data Strategy

---

### Data Analyst
Profissional focado em anÃ¡lises exploratÃ³rias, criaÃ§Ã£o de relatÃ³rios e dashboards. Traduz dados em insights acionÃ¡veis para o negÃ³cio. Stack tÃ­pico: SQL, Excel, Power BI/Tableau. Skill principal: storytelling com dados.

**Relacionado:** Business Intelligence, Data Visualization

---

### Data Engineer
ResponsÃ¡vel por construir e manter infraestrutura de dados: pipelines ETL/ELT, data warehouses, data lakes. Stack tÃ­pico: Python, SQL, Spark, Airflow. Foco em escalabilidade, confiabilidade e performance.

**Relacionado:** ETL, Data Pipeline, Data Warehouse

---

### Data Mesh
Paradigma de arquitetura de dados descentralizada onde cada domÃ­nio de negÃ³cio Ã© responsÃ¡vel por seus prÃ³prios dados como produtos. Baseado em 4 princÃ­pios: ownership por domÃ­nio, dados como produto, infraestrutura self-service, e governanÃ§a federada.

**Relacionado:** Domain-Driven Design, Data Products

---

### Data Owner
Pessoa de negÃ³cio responsÃ¡vel por um conjunto de dados especÃ­fico. Define regras de acesso, qualidade esperada e uso apropriado. Diferente de Data Steward (que executa), o Owner decide.

**Relacionado:** Data Governance, Data Steward

---

### Data Product Manager
PM especializado em produtos de dados (plataformas, APIs, modelos de ML). Combina skills de product management tradicional com entendimento tÃ©cnico de dados. Foco em roadmap, priorizaÃ§Ã£o e mÃ©tricas de adoÃ§Ã£o.

**Relacionado:** Product Management, Data Products

---

### Data Scientist
Profissional que aplica estatÃ­stica e machine learning para extrair insights e criar modelos preditivos. Stack tÃ­pico: Python, R, TensorFlow, scikit-learn. Habilidades: algoritmos, matemÃ¡tica aplicada, experimentaÃ§Ã£o.

**Relacionado:** Machine Learning, Statistics

---

### Data Steward
ResponsÃ¡vel operacional pela qualidade e governanÃ§a de dados no dia a dia. Implementa polÃ­ticas definidas pelo Data Owner. Atua em catalogaÃ§Ã£o, linhagem, resoluÃ§Ã£o de issues de qualidade.

**Relacionado:** Data Quality, Data Governance

---

### Hub & Spoke
Modelo organizacional hÃ­brido onde um time central (hub) fornece plataforma, padrÃµes e especialistas, enquanto times descentralizados (spokes) atendem Ã¡reas de negÃ³cio especÃ­ficas. Equilibra padronizaÃ§Ã£o com proximidade ao negÃ³cio.

**Relacionado:** Centro de ExcelÃªncia, Embedded Teams

---

### IC (Individual Contributor)
Trilha de carreira tÃ©cnica sem gestÃ£o de pessoas. ProgressÃ£o: Junior â†’ Pleno â†’ Senior â†’ Staff â†’ Principal. Alternativa ao Management Track para quem prefere profundidade tÃ©cnica.

**Relacionado:** Career Ladder, Staff Engineer

---

### ML Engineer
Engenheiro especializado em operacionalizar modelos de machine learning. ResponsÃ¡vel por deploy, monitoramento, scaling e manutenÃ§Ã£o de modelos em produÃ§Ã£o. Bridge entre Data Science e Engineering.

**Relacionado:** MLOps, Model Serving

---

### PDI (Plano de Desenvolvimento Individual)
Documento que mapeia gap de competÃªncias e define aÃ§Ãµes concretas para desenvolvimento profissional. Componentes: estado atual, objetivo, aÃ§Ãµes, prazos, mÃ©tricas de sucesso. RevisÃ£o tÃ­pica: trimestral.

**Relacionado:** Career Development, 1:1

---

### Staff Engineer
NÃ­vel sÃªnior de IC com escopo alÃ©m do time imediato. Influencia arquitetura, padrÃµes e decisÃµes tÃ©cnicas em mÃºltiplos times. Mentora engineers e resolve problemas complexos cross-team.

**Relacionado:** Principal Engineer, Technical Leadership

---

### T-Shaped Professional
Profissional com conhecimento amplo em vÃ¡rias Ã¡reas (barra horizontal do T) e expertise profunda em uma especialidade (barra vertical). Ideal para times Ã¡geis que precisam de flexibilidade.

**Relacionado:** Generalista, Especialista

---

# 6.2 METODOLOGIAS ÃGEIS (15 termos)

### Backlog Grooming
TambÃ©m chamado de Backlog Refinement. CerimÃ´nia para revisar, estimar e priorizar itens do backlog. Time discute user stories, remove ambiguidades e quebra itens grandes. FrequÃªncia tÃ­pica: 1x/semana.

**Relacionado:** Product Backlog, User Story

---

### Burndown Chart
GrÃ¡fico que mostra trabalho restante vs. tempo em um sprint. Eixo Y: pontos/tarefas restantes. Eixo X: dias do sprint. Usado para visualizar progresso e prever se sprint serÃ¡ completada.

**Relacionado:** Sprint, Velocity

---

### CI/CD (Continuous Integration / Continuous Deployment)
PrÃ¡ticas de automaÃ§Ã£o para integrar cÃ³digo frequentemente (CI) e deployar automaticamente (CD). Em dados: automaÃ§Ã£o de testes de qualidade, deploy de pipelines e modelos. Ferramentas: GitHub Actions, GitLab CI, Jenkins.

**Relacionado:** DevOps, DataOps

---

### Daily Stand-up
ReuniÃ£o diÃ¡ria de 15 minutos onde cada membro responde: O que fiz ontem? O que farei hoje? HÃ¡ impedimentos? Objetivo: sincronizaÃ§Ã£o, nÃ£o resoluÃ§Ã£o de problemas. Em pÃ© para manter curta.

**Relacionado:** Scrum, Timeboxing

---

### DataOps
AplicaÃ§Ã£o de prÃ¡ticas DevOps ao ciclo de vida de dados. Pilares: colaboraÃ§Ã£o, automaÃ§Ã£o, monitoramento, governanÃ§a automatizada. Objetivo: entregar dados confiÃ¡veis com ciclos mais rÃ¡pidos.

**Relacionado:** DevOps, Data Pipeline

---

### Definition of Done (DoD)
CritÃ©rios que uma tarefa/story deve cumprir para ser considerada completa. Exemplo em dados: cÃ³digo versionado, testes passando, documentaÃ§Ã£o atualizada, review aprovado, deploy em staging.

**Relacionado:** Acceptance Criteria, Quality

---

### Feature Store
RepositÃ³rio centralizado de features de ML reutilizÃ¡veis. Armazena, versiona e serve features para treinamento e inferÃªncia. Evita duplicaÃ§Ã£o e garante consistÃªncia. Ferramentas: Feast, Tecton, Hopsworks.

**Relacionado:** MLOps, Feature Engineering

---

### Kanban
MÃ©todo visual de gestÃ£o de fluxo de trabalho. Usa quadro com colunas (To Do, Doing, Done) e cartÃµes representando tarefas. PrincÃ­pios: visualizar trabalho, limitar WIP, gerenciar fluxo.

**Relacionado:** WIP Limit, Lead Time

---

### MLOps
PrÃ¡ticas de operacionalizaÃ§Ã£o de Machine Learning. Abrange: experiment tracking, model registry, feature stores, serving, monitoring, retraining. Objetivo: ML em produÃ§Ã£o de forma confiÃ¡vel e escalÃ¡vel.

**Relacionado:** DataOps, Model Monitoring

---

### Model Registry
Sistema para versionar, catalogar e gerenciar ciclo de vida de modelos de ML. Armazena artefatos, mÃ©tricas, linhagem. Facilita deploy e rollback. Ferramentas: MLflow, Weights & Biases, SageMaker.

**Relacionado:** MLOps, Model Versioning

---

### Sprint Planning
CerimÃ´nia no inÃ­cio do sprint onde time seleciona itens do backlog e define como serÃ£o implementados. Output: Sprint Backlog com compromisso do time. DuraÃ§Ã£o tÃ­pica: 2-4 horas para sprint de 2 semanas.

**Relacionado:** Sprint, Product Backlog

---

### Sprint Retrospective
CerimÃ´nia ao final do sprint para refletir sobre processo. Formato comum: O que funcionou? O que melhorar? AÃ§Ãµes para prÃ³ximo sprint. Foco em melhoria contÃ­nua do time.

**Relacionado:** Continuous Improvement, Kaizen

---

### User Story
DescriÃ§Ã£o de funcionalidade do ponto de vista do usuÃ¡rio. Formato: "Como [persona], quero [funcionalidade], para [benefÃ­cio]". Em dados: "Como analista de marketing, quero dashboard de CAC, para otimizar campanhas."

**Relacionado:** Acceptance Criteria, Product Backlog

---

### Velocity
MÃ©trica que mede quantidade de trabalho que time entrega por sprint (em story points ou itens). Usada para previsÃ£o de capacidade. Calculada como mÃ©dia das Ãºltimas 3-5 sprints.

**Relacionado:** Story Points, Sprint

---

### WIP Limit (Work in Progress)
Limite mÃ¡ximo de tarefas simultÃ¢neas em uma etapa do Kanban. Objetivo: evitar multitasking, reduzir context switching, identificar gargalos. Exemplo: mÃ¡ximo 3 itens em "Doing" por pessoa.

**Relacionado:** Kanban, Flow Efficiency

---

# 6.3 GESTÃƒO DE PROJETOS (15 termos)

### A/B Testing
Experimento controlado que compara duas variantes (A e B) para determinar qual performa melhor. Requer: hipÃ³tese clara, mÃ©trica de sucesso, tamanho de amostra calculado, randomizaÃ§Ã£o. Em dados: validar impacto de features e modelos.

**Relacionado:** Statistical Significance, Experiment Design

---

### Burndown / Burnup
Burndown: mostra trabalho restante diminuindo. Burnup: mostra trabalho concluÃ­do aumentando + scope total. Burnup Ã© preferido quando scope pode mudar, pois visualiza scope creep.

**Relacionado:** Sprint, Project Tracking

---

### Change Request
SolicitaÃ§Ã£o formal para modificar escopo, prazo ou orÃ§amento de projeto. Processo tÃ­pico: documentar mudanÃ§a, avaliar impacto, aprovar com stakeholders, atualizar plano. Evita scope creep descontrolado.

**Relacionado:** Scope Management, Project Charter

---

### Cycle Time
Tempo desde inÃ­cio do trabalho em um item atÃ© sua conclusÃ£o. Diferente de Lead Time (que inclui tempo em fila). MÃ©trica chave em Kanban para medir eficiÃªncia do processo.

**Relacionado:** Lead Time, Throughput

---

### Data Quality
Grau em que dados atendem requisitos de uso. DimensÃµes: accuracy, completeness, consistency, timeliness, uniqueness, validity. Medido com testes automatizados. Ferramentas: Great Expectations, dbt tests, Soda.

**Relacionado:** Data Governance, Testing

---

### ELT (Extract, Load, Transform)
PadrÃ£o moderno de integraÃ§Ã£o de dados onde transformaÃ§Ã£o ocorre apÃ³s carga no data warehouse. Aproveita poder de processamento do DW (ex: BigQuery, Snowflake). Contrasta com ETL tradicional.

**Relacionado:** ETL, Data Pipeline, dbt

---

### Gantt Chart
Diagrama de barras horizontais que visualiza cronograma de projeto. Eixo X: tempo. Eixo Y: tarefas. Mostra duraÃ§Ã£o, dependÃªncias e marcos. Ãštil para comunicar timeline a stakeholders.

**Relacionado:** Project Planning, Milestones

---

### Lead Time
Tempo total desde requisiÃ§Ã£o atÃ© entrega ao cliente. Inclui tempo em fila + tempo de trabalho (cycle time). MÃ©trica importante para SLA e satisfaÃ§Ã£o do cliente.

**Relacionado:** Cycle Time, SLA

---

### MoSCoW
Framework de priorizaÃ§Ã£o: Must have (essencial), Should have (importante), Could have (desejÃ¡vel), Won't have (descartado). Usado para definir escopo de MVP e negociar com stakeholders.

**Relacionado:** Prioritization, MVP

---

### Project Charter
Documento que autoriza formalmente um projeto. ContÃ©m: objetivos, escopo, stakeholders, premissas, riscos, orÃ§amento, cronograma macro, critÃ©rios de sucesso. Assinado por sponsor.

**Relacionado:** Kickoff, Scope Statement

---

### RACI Matrix
Matriz de responsabilidades: Responsible (faz), Accountable (aprova), Consulted (opina), Informed (recebe info). Evita confusÃ£o sobre quem faz o quÃª. Cada tarefa tem exatamente 1 Accountable.

**Relacionado:** Stakeholder Management, Governance

---

### RICE Score
Framework de priorizaÃ§Ã£o quantitativo. Score = (Reach Ã— Impact Ã— Confidence) / Effort. Reach: pessoas impactadas. Impact: magnitude (0.25-3). Confidence: certeza (%). Effort: pessoa-meses.

**Relacionado:** Prioritization, Product Management

---

### Scope Creep
ExpansÃ£o nÃ£o controlada do escopo do projeto. Sintomas: features adicionadas sem anÃ¡lise, prazo mantido, recursos nÃ£o aumentados. PrevenÃ§Ã£o: change request process, backlog separado para "nice to haves".

**Relacionado:** Change Management, Project Charter

---

### Stakeholder Mapping
Processo de identificar e categorizar stakeholders por poder/interesse. Matriz 2x2: Alto poder/Alto interesse (gerenciar de perto), Alto poder/Baixo interesse (manter satisfeito), etc.

**Relacionado:** Communication Plan, Influence

---

### TCO (Total Cost of Ownership)
Custo total de uma soluÃ§Ã£o ao longo do tempo. Inclui: licenÃ§as, infraestrutura, implementaÃ§Ã£o, manutenÃ§Ã£o, treinamento, suporte. Crucial para decisÃµes de cloud vs. on-premise.

**Relacionado:** ROI, Budget Planning

---

# 6.4 LIDERANÃ‡A DE EQUIPES (15 termos)

### 1:1 (One-on-One)
ReuniÃ£o regular entre gestor e liderado. FrequÃªncia tÃ­pica: semanal ou quinzenal. Foco no liderado: carreira, bloqueios, feedback, desenvolvimento. NÃ£o Ã© status update. DuraÃ§Ã£o: 30-60 minutos.

**Relacionado:** Feedback, PDI

---

### Crucial Conversations
Framework para conversas difÃ­ceis onde stakes sÃ£o altos, opiniÃµes divergem e emoÃ§Ãµes sÃ£o fortes. PrincÃ­pios: criar seguranÃ§a, explorar histÃ³rias dos outros, separar fatos de interpretaÃ§Ãµes.

**Relacionado:** Conflict Resolution, Communication

---

### Delegation Poker
TÃ©cnica para definir nÃ­veis de autonomia em decisÃµes. 7 nÃ­veis: Tell â†’ Sell â†’ Consult â†’ Agree â†’ Advise â†’ Inquire â†’ Delegate. Alinha expectativas entre gestor e time sobre quem decide o quÃª.

**Relacionado:** Empowerment, Autonomy

---

### DEI (Diversity, Equity, Inclusion)
PrÃ¡ticas para criar ambiente diverso, equitativo e inclusivo. Diversidade: representaÃ§Ã£o de grupos. Equidade: oportunidades justas. InclusÃ£o: todos se sentem valorizados. Impacta inovaÃ§Ã£o e retenÃ§Ã£o.

**Relacionado:** Bias, Psychological Safety

---

### Feedback Loop
Ciclo de dar e receber feedback para melhoria contÃ­nua. Componentes: observaÃ§Ã£o, feedback, aÃ§Ã£o, resultado, novo feedback. Loops curtos aceleram aprendizado. Em dados: mÃ©tricas â†’ insights â†’ aÃ§Ãµes â†’ mÃ©tricas.

**Relacionado:** Continuous Improvement, Learning

---

### GROW Model
Framework para coaching: Goal (objetivo), Reality (situaÃ§Ã£o atual), Options (alternativas), Will (comprometimento). Usado em 1:1s para ajudar liderado a encontrar soluÃ§Ãµes prÃ³prias.

**Relacionado:** Coaching, Mentoring

---

### OKR (Objectives and Key Results)
Framework de definiÃ§Ã£o de metas. Objective: qualitativo, inspirador, ambicioso. Key Results: quantitativos, mensurÃ¡veis, especÃ­ficos. TÃ­pico: 3-5 objectives com 3-5 KRs cada. Ciclo: trimestral.

**Relacionado:** Goal Setting, KPI

---

### Psychological Safety
Ambiente onde pessoas se sentem seguras para tomar riscos, fazer perguntas e admitir erros sem medo de puniÃ§Ã£o. Pesquisa do Google (Projeto Aristotle) identificou como fator #1 de times de alta performance.

**Relacionado:** Trust, Team Culture

---

### Radical Candor
Framework de feedback por Kim Scott. Combina "Care Personally" (importar-se) com "Challenge Directly" (desafiar). Evita: Ruinous Empathy (sÃ³ carinho), Obnoxious Aggression (sÃ³ desafio), Manipulative Insincerity (nenhum dos dois).

**Relacionado:** Feedback, Leadership

---

### SBI Model
Framework para feedback estruturado: Situation (contexto especÃ­fico), Behavior (comportamento observado), Impact (efeito do comportamento). Evita generalizaÃ§Ã£o e julgamentos. Foco em fatos, nÃ£o personalidade.

**Relacionado:** Feedback, Performance Management

---

### Servant Leadership
Filosofia onde lÃ­der prioriza servir o time em vez de ser servido. Foco em remover bloqueios, desenvolver pessoas, criar ambiente de sucesso. Contrasta com lideranÃ§a comando-e-controle.

**Relacionado:** Empowerment, Team Development

---

### Situational Leadership
Modelo Hersey-Blanchard onde estilo de lideranÃ§a adapta-se Ã  maturidade do liderado. Estilos: Directing â†’ Coaching â†’ Supporting â†’ Delegating. Maturidade varia por tarefa, nÃ£o pessoa.

**Relacionado:** Leadership Styles, Development

---

### Skip-Level
ReuniÃ£o entre gestor e liderados de seu liderado direto (pulando um nÃ­vel). Objetivo: entender cultura do time, identificar problemas, manter conexÃ£o. FrequÃªncia tÃ­pica: mensal ou trimestral.

**Relacionado:** 1:1, Communication

---

### Span of Control
NÃºmero de pessoas que reportam diretamente a um gestor. TÃ­pico em tech: 5-8 pessoas. Muito amplo: gestor sobrecarregado. Muito estreito: micro-management, excesso de camadas.

**Relacionado:** Org Structure, Management

---

### Technical Debt
Custo implÃ­cito de retrabalho causado por escolher soluÃ§Ã£o rÃ¡pida em vez de melhor abordagem. Em dados: pipelines sem testes, cÃ³digo nÃ£o documentado, modelos sem monitoramento. Deve ser gerenciada, nÃ£o eliminada.

**Relacionado:** Code Quality, Maintenance

---

# 6.5 CULTURA DATA-DRIVEN (15 termos)

### ADKAR Model
Framework de change management: Awareness (consciÃªncia), Desire (desejo), Knowledge (conhecimento), Ability (habilidade), Reinforcement (reforÃ§o). Cada pessoa passa por essas fases na mudanÃ§a.

**Relacionado:** Change Management, Adoption

---

### Champion / Evangelista
Pessoa que advoga ativamente por iniciativa de dados em sua Ã¡rea. NÃ£o necessariamente tÃ©cnico. Ajuda a disseminar prÃ¡ticas, responder dÃºvidas, e conectar Ã¡rea de dados com negÃ³cio.

**Relacionado:** Data Literacy, Change Management

---

### Data Catalog
InventÃ¡rio organizado de ativos de dados da organizaÃ§Ã£o. ContÃ©m metadados, linhagem, owners, descriÃ§Ãµes, exemplos. Facilita descoberta e entendimento. Ferramentas: Alation, Collibra, DataHub.

**Relacionado:** Data Discovery, Metadata

---

### Data Democratization
Tornar dados acessÃ­veis a todos que precisam, nÃ£o apenas especialistas. Envolve: self-service tools, data literacy, governanÃ§a adequada. Objetivo: decisÃµes baseadas em dados em todos os nÃ­veis.

**Relacionado:** Self-Service, Data Literacy

---

### Data Governance
PrÃ¡ticas, processos e polÃ­ticas para gerenciar dados como ativo estratÃ©gico. Abrange: qualidade, seguranÃ§a, privacidade, compliance, metadata, lifecycle. Framework comum: DAMA-DMBOK.

**Relacionado:** Data Quality, Compliance

---

### Data Lake
RepositÃ³rio centralizado que armazena dados em formato bruto (raw). Aceita estruturado, semi-estruturado e nÃ£o-estruturado. Schema-on-read. Tecnologias: S3, ADLS, GCS. Risco: virar "data swamp" sem governanÃ§a.

**Relacionado:** Data Warehouse, Raw Data

---

### Data Lineage
Rastreamento da origem e transformaÃ§Ãµes de dados ao longo do pipeline. Responde: de onde vem? o que aconteceu? onde Ã© usado? CrÃ­tico para debugging, compliance e confianÃ§a.

**Relacionado:** Data Catalog, Metadata

---

### Data Literacy
Habilidade de ler, trabalhar, analisar e argumentar com dados. NÃ­veis: consumidor passivo â†’ consumidor ativo â†’ produtor â†’ evangelizador. PrÃ©-requisito para cultura data-driven.

**Relacionado:** Training, Data Democratization

---

### Data Maturity Model
Framework para avaliar evoluÃ§Ã£o de capacidades de dados. NÃ­veis tÃ­picos: Ad-hoc â†’ Aware â†’ Proactive â†’ Data-Driven â†’ Embedded. Usado para benchmark e roadmap de evoluÃ§Ã£o.

**Relacionado:** Assessment, Data Strategy

---

### Data Warehouse
RepositÃ³rio otimizado para anÃ¡lise, com dados estruturados e modelados. Schema-on-write. Suporta queries complexas. Cloud DWs: Snowflake, BigQuery, Redshift. Diferente de Data Lake (raw data).

**Relacionado:** Data Lake, Data Modeling

---

### Experimentation Culture
Mentalidade organizacional de testar hipÃ³teses antes de implementar em escala. Componentes: hipÃ³teses claras, mÃ©tricas definidas, tolerÃ¢ncia a falha, aprendizado com resultados negativos.

**Relacionado:** A/B Testing, Learning Culture

---

### NPS (Net Promoter Score)
MÃ©trica de lealdade/satisfaÃ§Ã£o. Pergunta: "De 0-10, quanto recomendaria?" Promoters (9-10) - Detractors (0-6) = NPS (-100 a +100). Usado para medir satisfaÃ§Ã£o com serviÃ§os de dados internos.

**Relacionado:** Customer Satisfaction, Metrics

---

### Self-Service Analytics
Capacidade de usuÃ¡rios de negÃ³cio acessarem e analisarem dados sem dependÃªncia de time tÃ©cnico. Requer: ferramentas intuitivas, dados curados, data literacy, governanÃ§a. Objetivo: escalar uso de dados.

**Relacionado:** Data Democratization, BI Tools

---

### Single Source of Truth (SSOT)
PrÃ¡tica de ter uma Ãºnica fonte autoritativa para cada tipo de dado. Evita inconsistÃªncias entre relatÃ³rios. Implementado via data warehouse com definiÃ§Ãµes padronizadas (semantic layer).

**Relacionado:** Data Quality, Data Warehouse

---

### Time-to-Insight
MÃ©trica que mede tempo desde pergunta de negÃ³cio atÃ© resposta baseada em dados. Objetivo de iniciativas de dados: reduzir TtI. Componentes: acesso a dados, preparaÃ§Ã£o, anÃ¡lise, comunicaÃ§Ã£o.

**Relacionado:** Data Democratization, Efficiency

---

# ðŸ“Š ÃNDICE ALFABÃ‰TICO COMPLETO

| Termo | SubmÃ³dulo |
|-------|-----------|
| 1:1 (One-on-One) | 6.4 |
| A/B Testing | 6.3 |
| ADKAR Model | 6.5 |
| Analytics Engineer | 6.1 |
| Backlog Grooming | 6.2 |
| Burndown / Burnup | 6.3 |
| Burndown Chart | 6.2 |
| CDO (Chief Data Officer) | 6.1 |
| Champion / Evangelista | 6.5 |
| Change Request | 6.3 |
| CI/CD | 6.2 |
| Crucial Conversations | 6.4 |
| Cycle Time | 6.3 |
| Daily Stand-up | 6.2 |
| Data Analyst | 6.1 |
| Data Catalog | 6.5 |
| Data Democratization | 6.5 |
| Data Engineer | 6.1 |
| Data Governance | 6.5 |
| Data Lake | 6.5 |
| Data Lineage | 6.5 |
| Data Literacy | 6.5 |
| Data Maturity Model | 6.5 |
| Data Mesh | 6.1 |
| Data Owner | 6.1 |
| Data Product Manager | 6.1 |
| Data Quality | 6.3 |
| Data Scientist | 6.1 |
| Data Steward | 6.1 |
| Data Warehouse | 6.5 |
| DataOps | 6.2 |
| Definition of Done | 6.2 |
| DEI | 6.4 |
| Delegation Poker | 6.4 |
| ELT | 6.3 |
| Experimentation Culture | 6.5 |
| Feature Store | 6.2 |
| Feedback Loop | 6.4 |
| Gantt Chart | 6.3 |
| GROW Model | 6.4 |
| Hub & Spoke | 6.1 |
| IC (Individual Contributor) | 6.1 |
| Kanban | 6.2 |
| Lead Time | 6.3 |
| ML Engineer | 6.1 |
| MLOps | 6.2 |
| Model Registry | 6.2 |
| MoSCoW | 6.3 |
| NPS | 6.5 |
| OKR | 6.4 |
| PDI | 6.1 |
| Project Charter | 6.3 |
| Psychological Safety | 6.4 |
| RACI Matrix | 6.3 |
| Radical Candor | 6.4 |
| RICE Score | 6.3 |
| SBI Model | 6.4 |
| Scope Creep | 6.3 |
| Self-Service Analytics | 6.5 |
| Servant Leadership | 6.4 |
| Single Source of Truth | 6.5 |
| Situational Leadership | 6.4 |
| Skip-Level | 6.4 |
| Span of Control | 6.4 |
| Sprint Planning | 6.2 |
| Sprint Retrospective | 6.2 |
| Staff Engineer | 6.1 |
| Stakeholder Mapping | 6.3 |
| T-Shaped Professional | 6.1 |
| TCO | 6.3 |
| Technical Debt | 6.4 |
| Time-to-Insight | 6.5 |
| User Story | 6.2 |
| Velocity | 6.2 |
| WIP Limit | 6.2 |

---

**Total:** 75 termos â€¢ 15 por submÃ³dulo

**VersÃ£o:** 1.0 â€¢ MÃ³dulo 6 â€¢ GestÃ£o de Projetos e Equipes de Dados
