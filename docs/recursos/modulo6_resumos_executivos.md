# ðŸ“‹ RESUMOS EXECUTIVOS â€¢ MÃ“DULO 6
## One-Pagers por SubmÃ³dulo para Gestores e Stakeholders

---

## ðŸ“‹ ÃNDICE

1. [6.1 PapÃ©is e Carreira em Dados](#61-papÃ©is-e-carreira-em-dados)
2. [6.2 Metodologias Ãgeis para Dados](#62-metodologias-Ã¡geis-para-dados)
3. [6.3 GestÃ£o de Projetos de Dados](#63-gestÃ£o-de-projetos-de-dados)
4. [6.4 LideranÃ§a de Equipes de Dados](#64-lideranÃ§a-de-equipes-de-dados)
5. [6.5 Cultura Data-Driven](#65-cultura-data-driven)

---

# 6.1 PAPÃ‰IS E CARREIRA EM DADOS

## Executive Summary

### O Problema
OrganizaÃ§Ãµes enfrentam dificuldade em estruturar times de dados eficazes. A confusÃ£o sobre papÃ©is, responsabilidades e modelos organizacionais resulta em ineficiÃªncia, conflitos e turnover elevado.

### A SoluÃ§Ã£o
Estruturar a Ã¡rea de dados com clareza de papÃ©is, modelo organizacional adequado ao contexto e trilhas de carreira que retÃªm talentos.

### Principais Conceitos

| Papel | Foco Principal | EntregÃ¡veis TÃ­picos |
|-------|---------------|---------------------|
| Data Engineer | Infraestrutura | Pipelines, Data Warehouse |
| Data Analyst | AnÃ¡lise | Dashboards, RelatÃ³rios |
| Data Scientist | Modelagem | Modelos ML, Experimentos |
| Analytics Engineer | TransformaÃ§Ã£o | Modelos dbt, Data Quality |
| ML Engineer | ProduÃ§Ã£o | MLOps, Model Serving |

### Modelos Organizacionais

**Centralizado:** Um time atende toda empresa. Bom para padronizaÃ§Ã£o, ruim para proximidade com negÃ³cio.

**Descentralizado (Embedded):** Profissionais dentro de cada Ã¡rea. Bom para contexto, ruim para consistÃªncia.

**HÃ­brido (Hub & Spoke):** Time central + especialistas nas Ã¡reas. Equilibra padronizaÃ§Ã£o e proximidade.

**Data Mesh:** DomÃ­nios de negÃ³cio sÃ£o donos de seus dados como produtos. Para organizaÃ§Ãµes maduras.

### MÃ©tricas de Sucesso
- Tempo mÃ©dio para preencher vagas
- Turnover da Ã¡rea vs. empresa
- SatisfaÃ§Ã£o do time (eNPS)
- % de profissionais com PDI ativo

### Quick Wins (Primeiros 90 Dias)
1. Mapear papÃ©is atuais vs. necessÃ¡rios
2. Documentar job descriptions claras
3. Criar matriz RACI para processos-chave
4. Iniciar programa de 1:1s estruturados

### Investimento vs. Retorno
- **Investimento:** Tempo de estruturaÃ§Ã£o, possÃ­veis ajustes salariais
- **Retorno:** ReduÃ§Ã£o de turnover (economia de 6-12 meses de salÃ¡rio por retenÃ§Ã£o), maior produtividade por clareza de papÃ©is

---

# 6.2 METODOLOGIAS ÃGEIS PARA DADOS

## Executive Summary

### O Problema
Times de dados frequentemente operam de forma reativa, sem previsibilidade de entregas. Metodologias tradicionais de projeto nÃ£o se adequam Ã  natureza exploratÃ³ria do trabalho com dados.

### A SoluÃ§Ã£o
Adaptar frameworks Ã¡geis (Scrum, Kanban) para o contexto de dados, incorporando prÃ¡ticas de DataOps e MLOps para entregas contÃ­nuas e confiÃ¡veis.

### Frameworks Recomendados

| Contexto | Framework | Por quÃª |
|----------|-----------|---------|
| Projetos com escopo definido | Scrum | Sprints dÃ£o cadÃªncia |
| Suporte e manutenÃ§Ã£o | Kanban | Fluxo contÃ­nuo |
| ML em produÃ§Ã£o | MLOps | Ciclo de vida de modelos |
| Pipelines de dados | DataOps | AutomaÃ§Ã£o e qualidade |

### CerimÃ´nias Essenciais

**Daily (15 min):** SincronizaÃ§Ã£o rÃ¡pida, nÃ£o resoluÃ§Ã£o de problemas

**Planning (2-4h):** Definir compromisso da sprint

**Review (1h):** Demonstrar entregas para stakeholders

**Retrospectiva (1h):** Melhoria contÃ­nua do processo

### PrÃ¡ticas de DataOps/MLOps

```
CÃ³digo â†’ Testes â†’ Review â†’ Deploy â†’ Monitoramento
         â†‘                              |
         â””â”€â”€â”€â”€â”€â”€â”€â”€ Feedback â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
```

- Versionamento de cÃ³digo E dados
- Testes automatizados de qualidade
- Deploy automatizado (CI/CD)
- Monitoramento de pipelines e modelos
- Alertas proativos

### MÃ©tricas de Sucesso
- Velocity (pontos/sprint)
- Lead time (pedido â†’ entrega)
- Cycle time (inÃ­cio â†’ conclusÃ£o)
- % de deploy sem rollback
- Uptime de pipelines

### Quick Wins (Primeiros 90 Dias)
1. Implementar daily de 15 minutos
2. Criar board Kanban visual
3. Definir Definition of Done
4. Automatizar 1 teste de qualidade

### Investimento vs. Retorno
- **Investimento:** Tempo de cerimÃ´nias (~15-20% da semana)
- **Retorno:** Previsibilidade de entregas, reduÃ§Ã£o de retrabalho, stakeholders mais satisfeitos

---

# 6.3 GESTÃƒO DE PROJETOS DE DADOS

## Executive Summary

### O Problema
Projetos de dados frequentemente falham por escopo mal definido, expectativas desalinhadas e falta de validaÃ§Ã£o incremental. A natureza exploratÃ³ria dos dados requer abordagem diferente de projetos tradicionais.

### A SoluÃ§Ã£o
Aplicar prÃ¡ticas de gestÃ£o de projetos adaptadas para dados: escopo flexÃ­vel, validaÃ§Ã£o contÃ­nua, gestÃ£o ativa de stakeholders e foco em valor entregue.

### Ciclo de Vida de Projeto de Dados

```
Discovery â†’ Planning â†’ Execution â†’ Validation â†’ Deployment â†’ Monitoring
    â†‘                                              |
    â””â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€ IteraÃ§Ã£o ContÃ­nua â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”€â”˜
```

### Artefatos Essenciais

| Artefato | Quando | Para QuÃª |
|----------|--------|----------|
| Project Charter | InÃ­cio | AutorizaÃ§Ã£o e alinhamento |
| RACI Matrix | Planejamento | Clareza de responsabilidades |
| Roadmap | Planejamento | VisÃ£o de timeline |
| Definition of Done | ExecuÃ§Ã£o | CritÃ©rios de conclusÃ£o |
| Risk Register | ContÃ­nuo | GestÃ£o de riscos |

### Frameworks de PriorizaÃ§Ã£o

**MoSCoW:** Must / Should / Could / Won't
- Bom para: Negociar escopo de MVP

**RICE:** (Reach Ã— Impact Ã— Confidence) / Effort
- Bom para: PriorizaÃ§Ã£o quantitativa de backlog

### GestÃ£o de Stakeholders

**Matriz Poder Ã— Interesse:**
- Alto poder + Alto interesse â†’ Gerenciar de perto
- Alto poder + Baixo interesse â†’ Manter satisfeito
- Baixo poder + Alto interesse â†’ Manter informado
- Baixo poder + Baixo interesse â†’ Monitorar

### MÃ©tricas de Sucesso
- % de projetos entregues no prazo
- % de escopo entregue vs. planejado
- SatisfaÃ§Ã£o de stakeholders (NPS)
- ROI dos projetos concluÃ­dos

### Quick Wins (Primeiros 90 Dias)
1. Criar template de Project Charter
2. Implementar reuniÃ£o de kickoff padronizada
3. Estabelecer check-ins semanais com sponsors
4. Documentar liÃ§Ãµes aprendidas de projetos recentes

### Investimento vs. Retorno
- **Investimento:** Tempo de planejamento e documentaÃ§Ã£o
- **Retorno:** Menos projetos cancelados, stakeholders alinhados, entregas com valor real

---

# 6.4 LIDERANÃ‡A DE EQUIPES DE DADOS

## Executive Summary

### O Problema
Liderar times tÃ©cnicos requer habilidades diferentes de gestÃ£o tradicional. Profissionais de dados valorizam autonomia, desafios tÃ©cnicos e crescimento. Abordagens comando-controle geram desmotivaÃ§Ã£o e turnover.

### A SoluÃ§Ã£o
Desenvolver lideranÃ§a servidora focada em remover bloqueios, criar ambiente de psychological safety e oferecer caminhos claros de crescimento.

### Estilos de LideranÃ§a (Situacional)

| Maturidade do Liderado | Estilo | Comportamento |
|------------------------|--------|---------------|
| Baixa competÃªncia, alta motivaÃ§Ã£o | Directing | InstruÃ§Ãµes claras, supervisÃ£o prÃ³xima |
| Alguma competÃªncia, baixa motivaÃ§Ã£o | Coaching | Explicar decisÃµes, ouvir sugestÃµes |
| Alta competÃªncia, motivaÃ§Ã£o variÃ¡vel | Supporting | Facilitar, compartilhar decisÃµes |
| Alta competÃªncia, alta motivaÃ§Ã£o | Delegating | Autonomia total, monitorar resultados |

### PrÃ¡ticas Essenciais

**1:1s Efetivos:**
- FrequÃªncia: Semanal ou quinzenal
- DuraÃ§Ã£o: 30-60 minutos
- Foco: No liderado, nÃ£o em status
- Estrutura: Bem-estar â†’ Bloqueios â†’ Desenvolvimento

**Feedback (Modelo SBI):**
- Situation: Contexto especÃ­fico
- Behavior: Comportamento observado
- Impact: Efeito do comportamento

**PDI (Plano de Desenvolvimento):**
- Estado atual â†’ Objetivo â†’ Gap â†’ AÃ§Ãµes â†’ Prazos

### GestÃ£o de Conflitos

```
Identificar â†’ Entender lados â†’ Buscar interesse comum â†’ Acordar soluÃ§Ã£o â†’ Acompanhar
```

### MÃ©tricas de Sucesso
- eNPS do time
- Turnover voluntÃ¡rio
- % de PDIs em dia
- PromoÃ§Ãµes internas vs. contrataÃ§Ãµes
- Resultados de pesquisa de clima

### Quick Wins (Primeiros 90 Dias)
1. Estabelecer 1:1s com todos os liderados
2. Criar PDI para cada pessoa
3. Definir acordos de trabalho do time
4. Implementar retrospectivas de equipe

### Investimento vs. Retorno
- **Investimento:** ~20% do tempo do lÃ­der em gestÃ£o de pessoas
- **Retorno:** RetenÃ§Ã£o de talentos (economia de R$100-300k por turnover evitado), time mais produtivo e engajado

---

# 6.5 CULTURA DATA-DRIVEN

## Executive Summary

### O Problema
Ter infraestrutura de dados nÃ£o garante que a organizaÃ§Ã£o use dados para decidir. ResistÃªncia cultural, falta de letramento e ferramentas inadequadas impedem a transformaÃ§Ã£o.

### A SoluÃ§Ã£o
Construir cultura data-driven com abordagem de change management: conscientizaÃ§Ã£o, capacitaÃ§Ã£o, ferramentas acessÃ­veis e reforÃ§o contÃ­nuo de comportamentos.

### NÃ­veis de Maturidade

| NÃ­vel | CaracterÃ­sticas | % de DecisÃµes com Dados |
|-------|-----------------|------------------------|
| Ad-hoc | Planilhas isoladas, intuiÃ§Ã£o | <10% |
| Aware | BI existe, poucos usam | 10-30% |
| Proactive | Self-service, data literacy | 30-60% |
| Data-Driven | Dados em todas decisÃµes | 60-80% |
| Embedded | Dados nativos em processos | >80% |

### Framework de Change Management (ADKAR)

1. **Awareness:** Por que mudar?
2. **Desire:** O que ganho com isso?
3. **Knowledge:** Como fazer?
4. **Ability:** Consigo fazer?
5. **Reinforcement:** Como manter?

### Pilares da TransformaÃ§Ã£o

**Data Literacy:**
- Programa de capacitaÃ§Ã£o por nÃ­veis
- Champions em cada Ã¡rea
- ConteÃºdo prÃ¡tico, nÃ£o teÃ³rico

**Self-Service:**
- Ferramentas intuitivas
- Dados curados e documentados
- Suporte disponÃ­vel

**GovernanÃ§a:**
- Single source of truth
- Qualidade garantida
- Acesso controlado

### MÃ©tricas de Sucesso
- % de usuÃ¡rios ativos em ferramentas de BI
- # de anÃ¡lises self-service / mÃªs
- Time-to-insight mÃ©dio
- % de decisÃµes documentadas com dados
- NPS de serviÃ§os de dados

### Quick Wins (Primeiros 90 Dias)
1. Identificar 3 champions em Ã¡reas de negÃ³cio
2. Criar dashboard "poster child" de alto impacto
3. LanÃ§ar treinamento bÃ¡sico de data literacy
4. Estabelecer mÃ©tricas de adoÃ§Ã£o

### Investimento vs. Retorno
- **Investimento:** Ferramentas, treinamento, tempo de change management
- **Retorno:** DecisÃµes melhores e mais rÃ¡pidas, reduÃ§Ã£o de retrabalho analÃ­tico, vantagem competitiva

---

# ðŸ“Š VISÃƒO CONSOLIDADA

## ConexÃµes Entre SubmÃ³dulos

```
6.1 PapÃ©is â”€â”€â”€â”€â”€â”€â–º 6.4 LideranÃ§a
    â”‚                    â”‚
    â–¼                    â–¼
6.2 Metodologias â—„â”€â”€â–º 6.3 Projetos
    â”‚                    â”‚
    â””â”€â”€â”€â”€â”€â”€â”€â”€â–º 6.5 Cultura â—„â”€â”€â”€â”€â”€â”˜
```

## Jornada de ImplementaÃ§Ã£o Sugerida

| MÃªs | Foco | EntregÃ¡veis |
|-----|------|-------------|
| 1-2 | Estrutura (6.1) | PapÃ©is definidos, organograma |
| 2-3 | Processos (6.2) | Kanban, Daily, DoD |
| 3-4 | Projetos (6.3) | Templates, RACI, Roadmap |
| 4-6 | Pessoas (6.4) | 1:1s, PDIs, Feedback |
| 6-12 | Cultura (6.5) | Data literacy, Self-service |

## ROI Consolidado

| Ãrea | Investimento TÃ­pico | Retorno Esperado |
|------|--------------------|--------------------|
| EstruturaÃ§Ã£o | 2-3 meses FTE | Clareza, menos conflitos |
| Metodologias | 15-20% tempo/semana | Previsibilidade |
| GestÃ£o de Projetos | 10-15% tempo/projeto | Menos cancelamentos |
| LideranÃ§a | 20% tempo do lÃ­der | RetenÃ§Ã£o de talentos |
| Cultura | R$100-500k/ano | DecisÃµes melhores |

---

**VersÃ£o:** 1.0 â€¢ MÃ³dulo 6 â€¢ GestÃ£o de Projetos e Equipes de Dados
