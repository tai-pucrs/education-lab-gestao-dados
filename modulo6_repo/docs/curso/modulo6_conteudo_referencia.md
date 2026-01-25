# MÃ“DULO 6 - CONTEÃšDO DE REFERÃŠNCIA
## GestÃ£o de Projetos e Equipes de Dados â€¢ 30h

---

## ðŸ“Š ESTRUTURA

| SubmÃ³dulo | Tema | Horas |
|-----------|------|-------|
| 6.1 | PapÃ©is e Carreira | 6h |
| 6.2 | Metodologias Ãgeis | 6h |
| 6.3 | GestÃ£o de Projetos | 6h |
| 6.4 | LideranÃ§a de Equipes | 6h |
| 6.5 | Cultura Data-Driven | 6h |

---

## 6.1 PAPÃ‰IS E CARREIRA (6h)

### 6.1.1 Estrutura Organizacional (1h30)

**Modelos:**
- Centralizado (Centro de ExcelÃªncia)
- Descentralizado (Embedado)
- HÃ­brido (Hub & Spoke)
- Data Mesh (por domÃ­nios)

**PapÃ©is organizacionais:**
- CDO (Chief Data Officer)
- CAO (Chief Analytics Officer)
- ComitÃªs de GovernanÃ§a
- Data Stewards
- Data Owners

---

### 6.1.2 PapÃ©is Profissionais (2h)

**Data Engineer**
- Pipelines, ETL/ELT
- Stack: Python, SQL, Spark, Airflow
- Skills: programaÃ§Ã£o, sistemas distribuÃ­dos

**Data Analyst**
- AnÃ¡lises, relatÃ³rios
- Stack: SQL, Excel, Power BI/Tableau
- Skills: visualizaÃ§Ã£o, storytelling

**Data Scientist**
- ML, modelos preditivos
- Stack: Python, R, TensorFlow
- Skills: algoritmos, estatÃ­stica

**Analytics Engineer**
- dbt, transformaÃ§Ãµes, qualidade
- Stack: SQL, dbt, Git
- Skills: modelagem dimensional, testes

**ML Engineer**
- Deploy e operaÃ§Ã£o de modelos
- Stack: Docker, Kubernetes, MLflow
- Skills: DevOps, engenharia, ML

**Data Product Manager**
- Roadmap, priorizaÃ§Ã£o, stakeholders
- Skills: gestÃ£o de produtos, UX, mÃ©tricas

---

### 6.1.3 Trilhas de Carreira (1h30)

**ProgressÃ£o:**
- Junior â†’ Pleno â†’ Senior â†’ Staff â†’ Principal

**Tracks:**
- IC (Individual Contributor)
- Management Track

**CertificaÃ§Ãµes:**
- CDMP (DAMA)
- AWS/Azure Data Engineer
- PMP, PSM, SAFe
- Databricks, Snowflake, dbt

**Desenvolvimento:**
- Comunidades: Data Hackers, Kaggle
- Eventos: conferÃªncias, meetups
- PublicaÃ§Ãµes: blogs, LinkedIn

---

### 6.1.4 Recrutamento e RetenÃ§Ã£o (1h)

**Perfil ideal:**
- Hard skills + Soft skills

**Processos seletivos:**
- Case tÃ©cnico
- Desafios de cÃ³digo
- Entrevistas comportamentais

**Onboarding:**
- DocumentaÃ§Ã£o
- Mentoria/buddy
- Primeiros 90 dias

**RetenÃ§Ã£o:**
- PDI (Plano de Desenvolvimento Individual)
- Feedbacks 1:1
- Cultura de aprendizado

---

## 6.2 METODOLOGIAS ÃGEIS (6h)

### 6.2.1 Agile em Dados (1h30)

**Manifesto Ãgil:**
- Adaptado para dados
- Incerteza exploratÃ³ria
- DependÃªncia de qualidade

**Frameworks:**
- Scrum: sprints 1-2 semanas
- Kanban: fluxo contÃ­nuo, WIP limits
- SAFe: grandes organizaÃ§Ãµes

**CerimÃ´nias:**
- Sprint Planning
- Daily Stand-up
- Sprint Review
- Retrospective

---

### 6.2.2 DataOps (2h)

**DefiniÃ§Ã£o:**
- DevOps aplicado a dados
- Ciclos rÃ¡pidos, qualidade, confiabilidade

**Pilares:**
1. ColaboraÃ§Ã£o (Dev + Ops + Analytics)
2. AutomaÃ§Ã£o (CI/CD)
3. Monitoramento (observabilidade)
4. GovernanÃ§a automatizada

**PrÃ¡ticas:**
- Versionamento (DVC)
- Testes automatizados:
  - Unit tests (dbt)
  - Integration tests
  - Data quality tests
- DocumentaÃ§Ã£o as code
- OrquestraÃ§Ã£o (Airflow, Prefect)
- CI/CD

**Ferramentas:**
- Git/GitHub/GitLab
- dbt
- Great Expectations
- Airflow/Prefect/Dagster
- Docker/Kubernetes

---

### 6.2.3 MLOps (2h)

**Ciclo de vida:**
1. ExploraÃ§Ã£o e experimentaÃ§Ã£o
2. Desenvolvimento e treinamento
3. ValidaÃ§Ã£o e testes
4. Deploy em produÃ§Ã£o
5. Monitoramento e retreinamento

**Desafios:**
- Data drift
- Model drift
- Reprodutibilidade
- Escalabilidade

**PrÃ¡ticas:**
- Feature stores (Feast, Tecton)
- Model registry (MLflow)
- Experiment tracking (W&B, Neptune)
- Serving (TensorFlow Serving, Seldon)
- A/B testing de modelos
- Monitoramento de performance

**Ferramentas:**
- MLflow
- Kubeflow
- SageMaker (AWS)
- Vertex AI (GCP)
- Azure ML

---

### 6.2.4 Backlog e PriorizaÃ§Ã£o (30min)

**TÃ©cnicas:**
- MoSCoW (Must, Should, Could, Won't)
- RICE (Reach, Impact, Confidence, Effort)
- Valor vs EsforÃ§o (matriz 2x2)

**User stories:**
- "Como [stakeholder], quero [insight], para [decisÃ£o]"
- CritÃ©rios de aceitaÃ§Ã£o
- Estimativas (story points, t-shirt sizes)

---

## 6.3 GESTÃƒO DE PROJETOS (6h)

### 6.3.1 Planejamento (1h30)

**Ciclo de vida:**
1. IdeaÃ§Ã£o e descoberta
2. DefiniÃ§Ã£o de escopo
3. Desenho de soluÃ§Ã£o
4. Desenvolvimento e validaÃ§Ã£o
5. Deploy e entrega
6. Monitoramento e melhoria

**DocumentaÃ§Ã£o:**
- Project Charter
- Roadmap visual (Gantt, Kanban)
- RACI matrix
- Arquitetura de soluÃ§Ã£o

**Estimativas:**
- Bottom-up vs Top-down
- Buffers e contingÃªncias
- TCO (cloud)

**GestÃ£o de riscos:**
- IdentificaÃ§Ã£o (brainstorming)
- AnÃ¡lise (probabilidade x impacto)
- Plano de mitigaÃ§Ã£o

---

### 6.3.2 ExecuÃ§Ã£o e Monitoramento (1h30)

**KPIs:**
- Velocity (story points/sprint)
- Lead time e cycle time
- Taxa de defeitos

**Acompanhamento:**
- Burndown charts (Scrum)
- Cumulative Flow (Kanban)
- Status reports (RAG)

**GestÃ£o de mudanÃ§as:**
- Change request process
- AvaliaÃ§Ã£o de impacto
- AprovaÃ§Ã£o

**Ferramentas:**
- Jira / Azure DevOps
- Confluence
- Miro / Mural
- Notion / ClickUp

---

### 6.3.3 Stakeholders (1h30)

**Mapeamento:**
- Poder/Interesse matrix
- Champions e blockers
- Canais de comunicaÃ§Ã£o

**ComunicaÃ§Ã£o:**
- Adaptar linguagem (tÃ©cnica vs negÃ³cio)
- Storytelling para C-level
- VisualizaÃ§Ãµes por audiÃªncia

**TÃ©cnicas de influÃªncia:**
- CoalizÃµes de apoio
- Quick wins
- GestÃ£o de expectativas

**Conflitos:**
- NegociaÃ§Ã£o win-win
- MediaÃ§Ã£o de prioridades
- EscalaÃ§Ã£o estruturada

---

### 6.3.4 ValidaÃ§Ã£o e ExperimentaÃ§Ã£o (1h30)

**FormulaÃ§Ã£o de hipÃ³teses:**
- HipÃ³teses de negÃ³cio claras
- MÃ©tricas de sucesso definidas
- CritÃ©rios de validaÃ§Ã£o/rejeiÃ§Ã£o

**Design de experimentos:**
- Teste A/B
- Teste multivariado
- Grupos de controle
- Tamanho de amostra

**ExecuÃ§Ã£o:**
- ImplementaÃ§Ã£o do experimento
- Coleta de dados
- Monitoramento em tempo real
- DetecÃ§Ã£o de anomalias

**AnÃ¡lise de resultados:**
- SignificÃ¢ncia estatÃ­stica
- Tamanho do efeito
- Intervalos de confianÃ§a
- AnÃ¡lise de subgrupos

**DecisÃ£o:**
- Validar hipÃ³tese â†’ Scale
- Rejeitar hipÃ³tese â†’ Pivot
- Inconclusivo â†’ Novo experimento

**AplicaÃ§Ãµes em dados:**
- Validar features de ML
- Testar arquiteturas
- Otimizar pipelines
- Validar dashboards/mÃ©tricas

---

### 6.3.5 Encerramento (30min)

**CritÃ©rios de sucesso:**
- Entrega no prazo/orÃ§amento
- AdoÃ§Ã£o pelos usuÃ¡rios
- ROI demonstrado
- SatisfaÃ§Ã£o dos stakeholders

**Retrospectiva:**
- O que funcionou?
- O que melhorar?
- AÃ§Ãµes para prÃ³ximos projetos

**DocumentaÃ§Ã£o:**
- RelatÃ³rio final
- Handover para operaÃ§Ã£o
- LiÃ§Ãµes aprendidas

---

## 6.4 LIDERANÃ‡A DE EQUIPES (6h)

### 6.4.1 Fundamentos (1h30)

**DiferenÃ§as:**
- Autoridade vs InfluÃªncia
- Comando vs Empoderamento

**Estilos:**
- Situacional (Hersey-Blanchard)
- Transformacional vs Transacional
- Servant Leadership

**CompetÃªncias:**
- VisÃ£o estratÃ©gica
- ComunicaÃ§Ã£o inspiradora
- Empatia e inteligÃªncia emocional
- Tomada de decisÃ£o sob incerteza
- DelegaÃ§Ã£o eficaz

**LideranÃ§a tÃ©cnica:**
- EquilÃ­brio hands-on e gestÃ£o
- Mentoria tÃ©cnica
- Code reviews construtivos
- DecisÃµes de arquitetura

---

### 6.4.2 Performance e Feedbacks (2h)

**Ciclo de performance:**
- DefiniÃ§Ã£o de metas (OKRs, SMART)
- Check-ins contÃ­nuos
- AvaliaÃ§Ã£o formal
- CalibraÃ§Ã£o entre lÃ­deres

**Feedbacks 1:1:**
- FrequÃªncia: semanal/quinzenal
- Estrutura: rapport + updates + feedback + prÃ³ximos passos
- Escuta ativa
- Perguntas poderosas

**Feedback construtivo:**
- Modelo SBI (Situation-Behavior-Impact)
- Feedback positivo
- Feedback corretivo
- Upward feedback

**PDI:**
- Gap analysis
- AÃ§Ãµes concretas
- RevisÃ£o trimestral

---

### 6.4.3 Conflitos (1h30)

**Tipos:**
- Interpessoal
- TÃ©cnico
- De recursos

**ResoluÃ§Ã£o:**
- MediaÃ§Ã£o imparcial
- NegociaÃ§Ã£o integrativa
- Compromisso
- Evitar x Enfrentar

**Conversas difÃ­ceis:**
- Baixo desempenho
- Desligamento
- MudanÃ§as impopulares
- ResistÃªncia

**Frameworks:**
- Crucial Conversations
- Nonviolent Communication

---

### 6.4.4 DEI (1h)

**ImportÃ¢ncia:**
- Times diversos = decisÃµes melhores
- ReduÃ§Ã£o de vieses em ML
- Produtos inclusivos

**Vieses inconscientes:**
- Affinity bias
- Halo effect
- Confirmation bias
- MitigaÃ§Ã£o em processos

**AÃ§Ãµes prÃ¡ticas:**
- Recrutamento inclusivo
- Mentoria reversa
- Employee Resource Groups
- Auditorias salariais

**PsicosseguranÃ§a:**
- Ambiente seguro para opinar
- Valorizar contribuiÃ§Ãµes
- Zero tolerÃ¢ncia a toxicidade

---

## 6.5 CULTURA DATA-DRIVEN (6h)

### 6.5.1 DefiniÃ§Ã£o (1h30)

**O que Ã©:**
- DecisÃµes baseadas em dados
- Dados acessÃ­veis e confiÃ¡veis
- Uso por todos

**BenefÃ­cios:**
- DecisÃµes rÃ¡pidas e assertivas
- ReduÃ§Ã£o de riscos
- InovaÃ§Ã£o baseada em insights
- Vantagem competitiva

**Barreiras:**
- ResistÃªncia Ã  mudanÃ§a
- Medo de transparÃªncia
- Falta de data literacy
- Silos organizacionais

**Exemplos:**
- Netflix: recomendaÃ§Ãµes
- Amazon: precificaÃ§Ã£o dinÃ¢mica
- Spotify: curadoria algorÃ­tmica
- Nubank: credit scoring

---

### 6.5.2 EvangelizaÃ§Ã£o (2h)

**Data Literacy:**
- Ler, trabalhar, analisar, argumentar com dados

**PirÃ¢mide:**
1. Consumidor passivo
2. Consumidor ativo
3. Produtor
4. Evangelizador

**Programas:**
- Workshops por nÃ­vel
- Materiais de autoaprendizado
- Office hours
- CertificaÃ§Ãµes internas

**EvangelizaÃ§Ã£o:**
- Champions por Ã¡rea
- Showcase mensal
- Newsletters com insights
- Hackathons/datathons

**DemocratizaÃ§Ã£o:**
- Self-service analytics
- Data catalog
- DocumentaÃ§Ã£o acessÃ­vel
- Suporte responsivo

---

### 6.5.3 Change Management (1h30)

**Modelos:**
- ADKAR (Awareness, Desire, Knowledge, Ability, Reinforcement)
- Kotter's 8-Step
- Curva de KÃ¼bler-Ross

**Fases:**
1. Senso de urgÃªncia
2. CoalizÃ£o de lideranÃ§a
3. VisÃ£o e estratÃ©gia
4. Comunicar visÃ£o
5. Empoderar para aÃ§Ã£o
6. Quick wins
7. Consolidar ganhos
8. Ancorar na cultura

**GestÃ£o de resistÃªncia:**
- Early adopters vs laggards
- EndereÃ§ar objeÃ§Ãµes
- WIIFM (What's In It For Me)
- Celebrar vitÃ³rias

**ComunicaÃ§Ã£o:**
- Over-communication
- Canais diversos
- TransparÃªncia

---

### 6.5.4 MediÃ§Ã£o (1h)

**KPIs de adoÃ§Ã£o:**
- % decisÃµes baseadas em dados
- UsuÃ¡rios ativos em BI
- Dashboards criados por Ã¡rea
- Tickets para time de dados

**KPIs de impacto:**
- ROI de iniciativas
- ReduÃ§Ã£o de custos
- Aumento de receita
- Time-to-insight

**KPIs de engajamento:**
- ParticipaÃ§Ã£o em treinamentos
- NPS do time de dados
- Uso de self-service

**Pesquisas:**
- Survey anual de maturidade
- Benchmark com mercado

---

## ðŸ“š BIBLIOGRAFIA ESSENCIAL

### BÃ¡sica
1. Davenport & Harris - *Competing on Analytics* (2017)
2. Kim et al. - *The DevOps Handbook* (2016)
3. Ladley - *Data Governance* (2019)

### Complementar
4. Fournier - *The Manager's Path* (2017)
5. Reis & Housley - *Fundamentals of Data Engineering* (2022)
6. Kleppmann - *Designing Data-Intensive Applications* (2017)
7. Huyen - *Designing Machine Learning Systems* (2022)
8. Redman - *Getting in Front on Data* (2016)
9. Kotter - *Leading Change* (2012)
10. Anderson - *Kanban* (2010)

### Whitepapers
- Gartner: *How to Build a Data-Driven Culture* (2023)
- DAMA: *DAMA-DMBOK2* (2017)
- McKinsey: *Ten Red Flags Analytics Program* (2018)

### Online
- Data Hackers: https://datahackers.com.br
- dbt docs: https://docs.getdbt.com
- MLOps Community: https://mlops.community
- Data Engineering Podcast

---

## ðŸŽ¯ PROJETO FINAL MÃ“DULO 6

**Entrega:** Plano de GestÃ£o de Equipe e Projeto de Dados

**Componentes:**

1. **Estrutura Organizacional** (2 pÃ¡g)
   - Modelo escolhido
   - RACI
   - Justificativa

2. **Roadmap de Projeto** (2 pÃ¡g)
   - Iniciativa prioritÃ¡ria
   - Cronograma visual
   - Marcos e entregÃ¡veis

3. **Metodologia Ãgil** (2 pÃ¡g)
   - Framework (Scrum/Kanban)
   - CerimÃ´nias adaptadas
   - Ferramentas

4. **LideranÃ§a e Engajamento** (2 pÃ¡g)
   - Plano de comunicaÃ§Ã£o
   - Programa data literacy
   - KPIs de cultura

**Formato:** PDF 8-10 pÃ¡ginas

---

**VersÃ£o:** 1.0 â€¢ Janeiro 2025
