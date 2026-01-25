# ðŸ“Š DIAGRAMAS DE ARQUITETURA â€¢ MÃ“DULO 6
## 3 Diagramas em Mermaid para VisualizaÃ§Ã£o TÃ©cnica

---

## ðŸ“‹ ÃNDICE

1. [Diagrama 1: Arquitetura de Dados Moderna](#diagrama-1-arquitetura-de-dados-moderna)
2. [Diagrama 2: Fluxo de Projeto de Dados](#diagrama-2-fluxo-de-projeto-de-dados)
3. [Diagrama 3: Estrutura Organizacional de Dados](#diagrama-3-estrutura-organizacional-de-dados)

---

# DIAGRAMA 1: ARQUITETURA DE DADOS MODERNA

## DescriÃ§Ã£o
VisÃ£o completa de uma arquitetura de dados moderna, desde fontes atÃ© consumo, incluindo camadas de ingestÃ£o, armazenamento, transformaÃ§Ã£o e serving.

## CÃ³digo Mermaid

```mermaid
flowchart TB
    subgraph SOURCES["ðŸ“¥ FONTES DE DADOS"]
        direction LR
        ERP["ðŸ¢ ERP<br/>SAP/Oracle"]
        CRM["ðŸ‘¥ CRM<br/>Salesforce"]
        WEB["ðŸŒ Web/App<br/>Eventos"]
        API["ðŸ”Œ APIs<br/>Parceiros"]
        IOT["ðŸ“¡ IoT<br/>Sensores"]
    end

    subgraph INGESTION["âš™ï¸ INGESTÃƒO"]
        direction LR
        BATCH["ðŸ“¦ Batch<br/>Airbyte/Fivetran"]
        STREAM["ðŸŒŠ Streaming<br/>Kafka/Kinesis"]
        CDC["ðŸ”„ CDC<br/>Debezium"]
    end

    subgraph STORAGE["ðŸ’¾ ARMAZENAMENTO"]
        direction TB
        subgraph LAKE["ðŸžï¸ Data Lake"]
            RAW["ðŸ“‚ Raw<br/>Bronze"]
            CLEAN["ðŸ“‚ Cleaned<br/>Silver"]
            CURATED["ðŸ“‚ Curated<br/>Gold"]
        end
        DW["ðŸ›ï¸ Data Warehouse<br/>Snowflake/BigQuery"]
    end

    subgraph TRANSFORM["ðŸ”„ TRANSFORMAÃ‡ÃƒO"]
        direction LR
        DBT["ðŸ”§ dbt<br/>SQL Models"]
        SPARK["âš¡ Spark<br/>Heavy Processing"]
        AIRFLOW["ðŸ“… Airflow<br/>Orchestration"]
    end

    subgraph SERVING["ðŸŽ¯ SERVING"]
        direction LR
        SEMANTIC["ðŸ“Š Semantic Layer<br/>Metrics Store"]
        FEATURE["ðŸ§® Feature Store<br/>ML Features"]
        CACHE["âš¡ Cache<br/>Redis"]
    end

    subgraph CONSUME["ðŸ‘¥ CONSUMO"]
        direction LR
        BI["ðŸ“ˆ BI Tools<br/>Power BI/Looker"]
        NOTEBOOK["ðŸ““ Notebooks<br/>Jupyter/Colab"]
        APP["ðŸ“± AplicaÃ§Ãµes<br/>APIs/Dashboards"]
        ML["ðŸ¤– ML Models<br/>Predictions"]
    end

    subgraph GOVERNANCE["ðŸ›¡ï¸ GOVERNANÃ‡A"]
        direction LR
        CATALOG["ðŸ“š Data Catalog<br/>DataHub"]
        QUALITY["âœ… Data Quality<br/>Great Expectations"]
        SECURITY["ðŸ”’ Security<br/>IAM/Masking"]
        LINEAGE["ðŸ”— Lineage<br/>Tracking"]
    end

    %% Connections
    ERP --> BATCH
    CRM --> BATCH
    WEB --> STREAM
    API --> CDC
    IOT --> STREAM

    BATCH --> RAW
    STREAM --> RAW
    CDC --> RAW

    RAW --> CLEAN
    CLEAN --> CURATED
    CURATED --> DW

    RAW --> SPARK
    SPARK --> CLEAN
    CLEAN --> DBT
    DBT --> CURATED
    AIRFLOW -.->|orchestrates| DBT
    AIRFLOW -.->|orchestrates| SPARK

    DW --> SEMANTIC
    CURATED --> FEATURE
    SEMANTIC --> CACHE

    SEMANTIC --> BI
    FEATURE --> ML
    CACHE --> APP
    DW --> NOTEBOOK

    %% Governance connections
    CATALOG -.->|catalogs| DW
    QUALITY -.->|validates| CURATED
    LINEAGE -.->|tracks| TRANSFORM
    SECURITY -.->|protects| STORAGE

    %% Styling
    classDef sources fill:#e1f5fe,stroke:#01579b
    classDef ingestion fill:#fff3e0,stroke:#e65100
    classDef storage fill:#f3e5f5,stroke:#7b1fa2
    classDef transform fill:#e8f5e9,stroke:#2e7d32
    classDef serving fill:#fce4ec,stroke:#c2185b
    classDef consume fill:#e3f2fd,stroke:#1565c0
    classDef governance fill:#fff8e1,stroke:#f9a825

    class ERP,CRM,WEB,API,IOT sources
    class BATCH,STREAM,CDC ingestion
    class RAW,CLEAN,CURATED,DW storage
    class DBT,SPARK,AIRFLOW transform
    class SEMANTIC,FEATURE,CACHE serving
    class BI,NOTEBOOK,APP,ML consume
    class CATALOG,QUALITY,SECURITY,LINEAGE governance
```

## DescriÃ§Ã£o das Camadas

| Camada | Componentes | Responsabilidade |
|--------|-------------|------------------|
| **Fontes** | ERP, CRM, Web, APIs, IoT | Sistemas de origem dos dados |
| **IngestÃ£o** | Airbyte, Kafka, Debezium | Captura e transporte de dados |
| **Armazenamento** | Data Lake (Bronze/Silver/Gold), DW | PersistÃªncia organizada |
| **TransformaÃ§Ã£o** | dbt, Spark, Airflow | Processamento e orquestraÃ§Ã£o |
| **Serving** | Semantic Layer, Feature Store | DisponibilizaÃ§Ã£o otimizada |
| **Consumo** | BI, Notebooks, Apps, ML | Uso final dos dados |
| **GovernanÃ§a** | Catalog, Quality, Security | GestÃ£o transversal |

## Ferramentas por Camada

| Camada | Open Source | Enterprise |
|--------|-------------|------------|
| IngestÃ£o | Airbyte, Kafka | Fivetran, Confluent |
| Lake | MinIO, Delta Lake | S3, ADLS, GCS |
| DW | ClickHouse, DuckDB | Snowflake, BigQuery, Redshift |
| Transform | dbt Core, Airflow | dbt Cloud, Astronomer |
| Catalog | DataHub, OpenMetadata | Alation, Collibra |
| BI | Metabase, Superset | Looker, Power BI, Tableau |

---

# DIAGRAMA 2: FLUXO DE PROJETO DE DADOS

## DescriÃ§Ã£o
Fluxo completo de um projeto de dados, desde a solicitaÃ§Ã£o atÃ© a operaÃ§Ã£o, com gates de decisÃ£o e artefatos de cada fase.

## CÃ³digo Mermaid

```mermaid
flowchart TD
    subgraph REQUEST["ðŸ“¨ SOLICITAÃ‡ÃƒO"]
        REQ_IN["Pedido chega<br/>via Slack/Jira"]
        TRIAGE["Triagem<br/>PM avalia"]
        REQ_IN --> TRIAGE
    end

    GATE1{{"ðŸš¦ GATE 1<br/>Vale fazer?"}}
    TRIAGE --> GATE1

    GATE1 -->|"âŒ NÃ£o"| BACKLOG["ðŸ“‹ Ice Box<br/>Baixa prioridade"]
    GATE1 -->|"âœ… Sim"| DISCOVERY

    subgraph DISCOVERY["ðŸ” DISCOVERY (1-2 sem)"]
        direction TB
        UNDERSTAND["Entender<br/>problema"]
        DATA_ASSESS["Avaliar<br/>dados disponÃ­veis"]
        FEASIBILITY["AnÃ¡lise de<br/>viabilidade"]
        UNDERSTAND --> DATA_ASSESS --> FEASIBILITY
    end

    GATE2{{"ðŸš¦ GATE 2<br/>ViÃ¡vel?"}}
    FEASIBILITY --> GATE2

    GATE2 -->|"âŒ NÃ£o"| CANCEL["ðŸš« Cancelar<br/>Documentar motivo"]
    GATE2 -->|"âœ… Sim"| PLANNING

    subgraph PLANNING["ðŸ“‹ PLANNING (1-2 sem)"]
        direction TB
        CHARTER["Project Charter"]
        RACI["Matriz RACI"]
        ROADMAP["Roadmap"]
        RISKS["Risk Register"]
        CHARTER --> RACI --> ROADMAP --> RISKS
    end

    GATE3{{"ðŸš¦ GATE 3<br/>Plano aprovado?"}}
    RISKS --> GATE3

    GATE3 -->|"ðŸ”„ Ajustar"| PLANNING
    GATE3 -->|"âœ… Sim"| EXECUTION

    subgraph EXECUTION["ðŸ’» EXECUTION (4-8 sem)"]
        direction TB
        
        subgraph SPRINT["Sprint 1-N"]
            PLAN_S["Planning"]
            DEV["Desenvolvimento"]
            REVIEW_S["Review"]
            RETRO["Retro"]
            PLAN_S --> DEV --> REVIEW_S --> RETRO
        end
        
        SPRINT --> |"PrÃ³ximo Sprint"| SPRINT
    end

    GATE4{{"ðŸš¦ GATE 4<br/>Escopo concluÃ­do?"}}
    SPRINT --> GATE4

    GATE4 -->|"ðŸ”„ Continuar"| SPRINT
    GATE4 -->|"âœ… Sim"| VALIDATION

    subgraph VALIDATION["âœ… VALIDATION (1-2 sem)"]
        direction TB
        TESTS["Testes de<br/>Qualidade"]
        UAT["UAT com<br/>UsuÃ¡rios"]
        FIXES["CorreÃ§Ãµes<br/>Finais"]
        TESTS --> UAT --> FIXES
    end

    GATE5{{"ðŸš¦ GATE 5<br/>Aceito?"}}
    FIXES --> GATE5

    GATE5 -->|"ðŸ”„ Ajustar"| FIXES
    GATE5 -->|"âœ… Sim"| DEPLOY

    subgraph DEPLOY["ðŸš€ DEPLOY (1 sem)"]
        direction TB
        DOCS["DocumentaÃ§Ã£o"]
        TRAINING["Treinamento"]
        GOLIVE["Go-Live"]
        DOCS --> TRAINING --> GOLIVE
    end

    subgraph OPERATE["ðŸ“ˆ OPERATE (contÃ­nuo)"]
        direction TB
        MONITOR["Monitoramento"]
        SUPPORT["Suporte"]
        IMPROVE["Melhorias"]
        MONITOR --> SUPPORT --> IMPROVE
        IMPROVE -->|"Nova demanda"| REQ_IN
    end

    GOLIVE --> OPERATE

    %% Artefatos (notas)
    CHARTER -.- NOTE1["ðŸ“„ Escopo, objetivos,<br/>stakeholders, timeline"]
    RACI -.- NOTE2["ðŸ“„ ResponsÃ¡vel, Accountable,<br/>Consultado, Informado"]
    TESTS -.- NOTE3["ðŸ“„ Testes automatizados,<br/>data quality checks"]

    %% Styling
    classDef gate fill:#fff3e0,stroke:#e65100,stroke-width:2px
    classDef phase fill:#e3f2fd,stroke:#1565c0
    classDef artifact fill:#f5f5f5,stroke:#9e9e9e,stroke-dasharray: 5 5

    class GATE1,GATE2,GATE3,GATE4,GATE5 gate
    class REQUEST,DISCOVERY,PLANNING,EXECUTION,VALIDATION,DEPLOY,OPERATE phase
    class NOTE1,NOTE2,NOTE3 artifact
```

## Gates de DecisÃ£o Detalhados

| Gate | Pergunta | CritÃ©rios de AprovaÃ§Ã£o | Quem Decide |
|------|----------|------------------------|-------------|
| **Gate 1** | Vale fazer? | ROI positivo, alinhado com OKRs | PM + Sponsor |
| **Gate 2** | Ã‰ viÃ¡vel? | Dados disponÃ­veis, skills existem, prazo realista | Tech Lead + PM |
| **Gate 3** | Plano aprovado? | Charter assinado, RACI definido, riscos mitigÃ¡veis | Sponsor |
| **Gate 4** | Escopo concluÃ­do? | DoD atendido, testes passando | PM + Tech Lead |
| **Gate 5** | Aceito pelo usuÃ¡rio? | UAT aprovado, documentaÃ§Ã£o completa | UsuÃ¡rio + Sponsor |

## Artefatos por Fase

| Fase | Artefatos ObrigatÃ³rios | Templates |
|------|------------------------|-----------|
| Discovery | Business Case, Data Assessment | modulo6_templates |
| Planning | Charter, RACI, Roadmap, Risks | modulo6_templates |
| Execution | Sprint Backlog, DoD, Burndown | Jira/Notion |
| Validation | Test Cases, UAT Sign-off | modulo6_checklists |
| Deploy | Runbook, Training Materials | Confluence |
| Operate | SLA, Alerts Config, Metrics | DataDog/Grafana |

---

# DIAGRAMA 3: ESTRUTURA ORGANIZACIONAL DE DADOS

## DescriÃ§Ã£o
TrÃªs modelos de estrutura organizacional para times de dados: Centralizado, Descentralizado e HÃ­brido (Hub & Spoke).

## CÃ³digo Mermaid

### Modelo A: Centralizado

```mermaid
flowchart TB
    subgraph CENTRAL["ðŸ›ï¸ MODELO CENTRALIZADO"]
        direction TB
        
        CDO["ðŸ‘” CDO"]
        
        subgraph DATA_TEAM["ðŸ“Š Time Central de Dados"]
            MGR["ðŸ‘¤ Data Manager"]
            
            subgraph ENGINEERS["âš™ï¸ Engineering"]
                DE1["Data Engineer"]
                DE2["Data Engineer"]
                AE1["Analytics Engineer"]
            end
            
            subgraph ANALYTICS["ðŸ“ˆ Analytics"]
                DA1["Data Analyst"]
                DA2["Data Analyst"]
                DA3["Data Analyst"]
            end
            
            subgraph SCIENCE["ðŸ”¬ Science"]
                DS1["Data Scientist"]
                DS2["ML Engineer"]
            end
            
            MGR --> ENGINEERS
            MGR --> ANALYTICS
            MGR --> SCIENCE
        end
        
        CDO --> DATA_TEAM
        
        subgraph BIZ["ðŸ¢ Ãreas de NegÃ³cio"]
            direction LR
            SALES["Sales"]
            MKT["Marketing"]
            FIN["Finance"]
            OPS["Operations"]
        end
        
        DATA_TEAM -->|"Atende todas<br/>as Ã¡reas"| BIZ
    end

    PROS1["âœ… PadronizaÃ§Ã£o<br/>âœ… Economia de escala<br/>âœ… VisÃ£o holÃ­stica"]
    CONS1["âŒ Gargalo central<br/>âŒ Distante do negÃ³cio<br/>âŒ PriorizaÃ§Ã£o difÃ­cil"]
    
    CENTRAL --- PROS1
    CENTRAL --- CONS1
```

### Modelo B: Descentralizado (Embedded)

```mermaid
flowchart TB
    subgraph EMBEDDED["ðŸŒ MODELO DESCENTRALIZADO"]
        direction TB
        
        CEO["ðŸ‘” CEO"]
        
        subgraph SALES_TEAM["ðŸ’¼ Sales"]
            S_HEAD["VP Sales"]
            S_DATA["ðŸ“Š Data Analyst"]
            S_HEAD --> S_DATA
        end
        
        subgraph MKT_TEAM["ðŸ“£ Marketing"]
            M_HEAD["VP Marketing"]
            M_DS["ðŸ”¬ Data Scientist"]
            M_DA["ðŸ“Š Data Analyst"]
            M_HEAD --> M_DS
            M_HEAD --> M_DA
        end
        
        subgraph FIN_TEAM["ðŸ’° Finance"]
            F_HEAD["CFO"]
            F_DA["ðŸ“Š Data Analyst"]
            F_HEAD --> F_DA
        end
        
        subgraph PROD_TEAM["ðŸ› ï¸ Product"]
            P_HEAD["VP Product"]
            P_DE["âš™ï¸ Data Engineer"]
            P_DS["ðŸ”¬ Data Scientist"]
            P_HEAD --> P_DE
            P_HEAD --> P_DS
        end
        
        CEO --> SALES_TEAM
        CEO --> MKT_TEAM
        CEO --> FIN_TEAM
        CEO --> PROD_TEAM
    end

    PROS2["âœ… PrÃ³ximo ao negÃ³cio<br/>âœ… Contexto profundo<br/>âœ… Agilidade local"]
    CONS2["âŒ Silos de dados<br/>âŒ InconsistÃªncia<br/>âŒ DuplicaÃ§Ã£o de esforÃ§o"]
    
    EMBEDDED --- PROS2
    EMBEDDED --- CONS2
```

### Modelo C: HÃ­brido (Hub & Spoke)

```mermaid
flowchart TB
    subgraph HYBRID["âš¡ MODELO HÃBRIDO (HUB & SPOKE)"]
        direction TB
        
        CDO["ðŸ‘” CDO"]
        
        subgraph HUB["ðŸŽ¯ HUB CENTRAL"]
            direction TB
            PLATFORM["ðŸ—ï¸ Platform Team"]
            GOVERNANCE["ðŸ›¡ï¸ Governance"]
            COE["ðŸ“š Centro de<br/>ExcelÃªncia"]
            
            subgraph PLAT_TEAM["Platform"]
                PDE1["Data Engineer"]
                PDE2["Data Engineer"]
                PAE["Analytics Engineer"]
            end
            
            PLATFORM --> PLAT_TEAM
        end
        
        CDO --> HUB
        
        subgraph SPOKES["ðŸ”„ SPOKES (Embedded)"]
            direction LR
            
            subgraph S_SALES["Sales Spoke"]
                SS_DA["ðŸ“Š Analyst"]
            end
            
            subgraph S_MKT["Marketing Spoke"]
                SM_DS["ðŸ”¬ Scientist"]
                SM_DA["ðŸ“Š Analyst"]
            end
            
            subgraph S_PROD["Product Spoke"]
                SP_DS["ðŸ”¬ Scientist"]
                SP_MLE["ðŸ¤– ML Engineer"]
            end
        end
        
        HUB <-->|"PadrÃµes<br/>Ferramentas<br/>Suporte"| SPOKES
        
        %% Governance connections
        GOVERNANCE -.->|"Data Quality"| S_SALES
        GOVERNANCE -.->|"Data Quality"| S_MKT
        GOVERNANCE -.->|"Data Quality"| S_PROD
        
        COE -.->|"Best Practices<br/>Training"| SPOKES
    end

    PROS3["âœ… EquilÃ­brio ideal<br/>âœ… PadronizaÃ§Ã£o + Proximidade<br/>âœ… EscalÃ¡vel"]
    CONS3["âš ï¸ GovernanÃ§a complexa<br/>âš ï¸ CoordenaÃ§Ã£o necessÃ¡ria<br/>âš ï¸ Requer maturidade"]
    
    HYBRID --- PROS3
    HYBRID --- CONS3
```

## Comparativo dos Modelos

```mermaid
quadrantChart
    title Comparativo de Modelos Organizacionais
    x-axis Distante do NegÃ³cio --> PrÃ³ximo do NegÃ³cio
    y-axis Baixa PadronizaÃ§Ã£o --> Alta PadronizaÃ§Ã£o
    quadrant-1 Hub & Spoke
    quadrant-2 Centralizado
    quadrant-3 Ad-hoc
    quadrant-4 Descentralizado
    Centralizado: [0.25, 0.85]
    Descentralizado: [0.85, 0.25]
    Hub & Spoke: [0.70, 0.75]
    Data Mesh: [0.90, 0.65]
```

## Matriz de DecisÃ£o

| CritÃ©rio | Centralizado | Descentralizado | Hub & Spoke |
|----------|:------------:|:---------------:|:-----------:|
| **Tamanho ideal** | <50 pessoas dados | Qualquer | >20 pessoas dados |
| **Maturidade necessÃ¡ria** | Baixa | MÃ©dia | Alta |
| **PadronizaÃ§Ã£o** | â­â­â­ | â­ | â­â­â­ |
| **Agilidade local** | â­ | â­â­â­ | â­â­ |
| **Contexto de negÃ³cio** | â­ | â­â­â­ | â­â­ |
| **GovernanÃ§a** | â­â­â­ | â­ | â­â­â­ |
| **Custo** | ðŸ’° | ðŸ’°ðŸ’°ðŸ’° | ðŸ’°ðŸ’° |

## EvoluÃ§Ã£o TÃ­pica

```mermaid
timeline
    title Jornada de EvoluÃ§Ã£o Organizacional
    
    section InÃ­cio (0-2 anos)
        Ad-hoc : Analistas isolados
                : Planilhas
                : Sem padrÃ£o
    
    section EstruturaÃ§Ã£o (2-4 anos)
        Centralizado : Time Ãºnico
                     : Primeiras ferramentas
                     : Processos bÃ¡sicos
    
    section Escala (4-6 anos)
        Hub & Spoke : Plataforma central
                    : Especialistas embedded
                    : GovernanÃ§a federada
    
    section Maturidade (6+ anos)
        Data Mesh : DomÃ­nios autÃ´nomos
                  : Dados como produto
                  : Self-service total
```

---

# ðŸ› ï¸ COMO USAR OS DIAGRAMAS

## RenderizaÃ§Ã£o

### OpÃ§Ã£o 1: Mermaid Live Editor
1. Acesse: https://mermaid.live
2. Cole o cÃ³digo Mermaid
3. Exporte como PNG ou SVG

### OpÃ§Ã£o 2: VS Code
1. Instale extensÃ£o "Mermaid Preview"
2. Abra arquivo .md com o cÃ³digo
3. Use preview para visualizar

### OpÃ§Ã£o 3: Notion / Confluence
1. Use bloco de cÃ³digo com linguagem "mermaid"
2. RenderizaÃ§Ã£o automÃ¡tica

### OpÃ§Ã£o 4: GitHub
1. Arquivos .md renderizam Mermaid automaticamente
2. Use em READMEs e documentaÃ§Ã£o

## CustomizaÃ§Ã£o

### Cores
```mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'primaryColor': '#1E3A5F', 'secondaryColor': '#6B4C9A'}}}%%
```

### DireÃ§Ã£o
- `TB` = Top to Bottom (vertical)
- `LR` = Left to Right (horizontal)
- `BT` = Bottom to Top
- `RL` = Right to Left

## Dicas de ApresentaÃ§Ã£o

1. **Para slides:** Exporte como SVG para qualidade mÃ¡xima
2. **Para docs:** Use PNG com fundo transparente
3. **Para web:** Embed direto com biblioteca Mermaid.js
4. **Para impressÃ£o:** PDF vetorial via exportaÃ§Ã£o

---

**Total:** 3 diagramas tÃ©cnicos com mÃºltiplas variaÃ§Ãµes

**VersÃ£o:** 1.0 â€¢ MÃ³dulo 6 â€¢ GestÃ£o de Projetos e Equipes de Dados
