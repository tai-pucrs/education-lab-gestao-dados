#!/bin/bash
set -euo pipefail

# Script para criar todas as issues pendentes do Módulo 6
# Uso: ./scripts/create-issues.sh

REPO="tai-pucrs/education-lab-gestao-dados"

echo "🚀 Criando issues para o repositório $REPO"
echo ""

# ============================================================================
# P1 - CURTO PRAZO (1-2 meses) - 7 Issues
# ============================================================================

echo "📊 Criando issues P1..."

# Issue #4: Sincronização Dashboard
gh issue create --repo "$REPO" \
  --title "Adicionar sincronização em nuvem ao Dashboard do Aluno" \
  --label "enhancement,student-experience,P1" \
  --body "## Descrição
Adicionar opção de sincronizar progresso do aluno via export/import de JSON ou integração com Google Drive.

## Funcionalidades
- Botão \"Exportar progresso\" (download JSON)
- Botão \"Importar progresso\" (upload JSON)
- Estrutura JSON validada
- Merge inteligente de dados
- Aviso antes de sobrescrever

## Benefício
Aluno pode estudar de múltiplos dispositivos.

## Critérios de Aceitação
- [ ] Implementar botão de exportar com download de JSON
- [ ] Implementar botão de importar com upload de arquivo
- [ ] Validar estrutura do JSON importado
- [ ] Implementar merge inteligente que preserve dados mais recentes
- [ ] Adicionar modal de confirmação antes de sobrescrever dados
- [ ] Testar sincronização entre diferentes dispositivos
- [ ] Documentar formato do JSON no README

## Arquivos a Modificar
- \`modulo6_repo/assets/html/modulo6_dashboard_aluno.html\`

## Prioridade
P1 - Curto Prazo (1-2 meses)"

echo "  ✓ Issue #4 criada"

# Issue #5: Calendário Visual
gh issue create --repo "$REPO" \
  --title "Dashboard produção - adicionar calendário visual" \
  --label "enhancement,production,P1" \
  --body "## Descrição
Adicionar calendário visual ao Dashboard de Produção para planejamento de gravações.

## Funcionalidades
- Visualização mensal de gravações
- Drag-and-drop para reagendar
- Códigos de cor por status (planejado, gravado, editado, publicado)
- Alertas de prazos próximos

## Benefício
Facilita o planejamento e acompanhamento visual da produção de vídeos.

## Critérios de Aceitação
- [ ] Implementar calendário mensal usando JavaScript vanilla
- [ ] Adicionar funcionalidade de drag-and-drop
- [ ] Implementar sistema de cores por status
- [ ] Adicionar alertas visuais para prazos
- [ ] Persistir dados no localStorage
- [ ] Garantir responsividade mobile

## Arquivos a Modificar
- \`modulo6_repo/assets/html/modulo6_dashboard_producao.html\`

## Biblioteca Sugerida
- FullCalendar (MIT license) ou implementação vanilla

## Prioridade
P1 - Curto Prazo (1-2 meses)"

echo "  ✓ Issue #5 criada"

# Issue #6: Roteiro detalhado das aulas do Módulo 6
gh issue create --repo "$REPO" \
  --title "Produzir roteiro detalhado das aulas do Módulo 6" \
  --label "content,P1" \
  --body "## Descrição
Elaborar roteiro detalhado (script) para cada aula do Módulo 6, alinhado com os objetivos de aprendizagem e com o material de apoio.

## Funcionalidades / Entregáveis
- Estrutura padrão para todas as aulas (abertura, contexto, conteúdo, exemplo, call-to-action)
- Indicação explícita de exemplos práticos (cases) a serem usados em vídeo
- Alinhamento com glossário e framework interativo
- Marcações de tempo estimado por bloco de conteúdo

## Benefício
Garante consistência pedagógica e facilita a gravação dos vídeos do módulo.

## Critérios de Aceitação
- [ ] Todas as 18 aulas do módulo têm roteiro em Markdown
- [ ] Cada roteiro está alinhado aos objetivos de aprendizagem do plano de curso
- [ ] Roteiros revisados por pelo menos 1 data engineer e 1 data manager
- [ ] Roteiros armazenados em \`docs/curso/modulo6_storyboards.md\`

## Arquivos a Modificar
- \`docs/curso/modulo6_storyboards.md\`

## Prioridade
P1 - Curto Prazo (1-2 meses)"

echo "  ✓ Issue #6 criada"

# Issue #8: Refinar estrutura dos vídeos do Módulo 6
gh issue create --repo "$REPO" \
  --title "Refinar estrutura e minutagem dos vídeos do Módulo 6" \
  --label "content,P1" \
  --body "## Descrição
Atualizar a estrutura de vídeos do Módulo 6 com minutagem estimada por bloco, sinalizando momentos de exemplos práticos e pausas para exercício.

## Funcionalidades / Entregáveis
- Definir blocos de conteúdo de 5-8 minutos
- Marcar pontos de interação com o aluno (perguntas, mini-quiz)
- Indicar trechos que podem virar cortes para redes sociais internas
- Garantir que a soma da minutagem respeita 30h totais do curso

## Benefício
Otimiza o engajamento e facilita o planejamento de gravação e edição.

## Critérios de Aceitação
- [ ] Todas as aulas possuem minutagem estimada por bloco
- [ ] Arquivo de estrutura de vídeos atualizado e revisado pelo time
- [ ] Coerência entre minutagem de vídeos, exercícios e tempo total do módulo

## Arquivos a Modificar
- \`docs/curso/modulo6_estrutura_videos.md\`

## Prioridade
P1 - Curto Prazo (1-2 meses)"

echo "  ✓ Issue #8 criada"

# Issue #23: Finalizar framework interativo de gestão de times de dados
gh issue create --repo "$REPO" \
  --title "Finalizar framework interativo de gestão de times de dados (Módulo 6)" \
  --label "enhancement,student-experience,P1" \
  --body "## Descrição
Finalizar a implementação do framework interativo em HTML para ajudar gestores a desenhar operating model e responsabilidades do time de dados.

## Funcionalidades
- Seleção do tipo de equipe (centralizada, descentralizada, híbrida)
- Configuração de papéis (data engineer, data scientist, analytics engineer, BI)
- Visualização de responsabilidades usando RACI ou DACI
- Exportação da configuração em JSON ou texto Markdown

## Benefício
Apoia gestores na definição de estrutura organizacional e responsabilidades do time de dados.

## Critérios de Aceitação
- [ ] Permitir escolher tipo de equipe e ver visualização atualizada
- [ ] Configurar papéis e responsabilidades com base em RACI/DACI
- [ ] Exportar configuração em JSON e em texto Markdown
- [ ] Persistir última configuração no localStorage
- [ ] Layout responsivo e usável em mobile

## Arquivos a Modificar
- \`assets/html/modulo6_framework_interativo.html\`

## Prioridade
P1 - Curto Prazo (1-2 meses)"

echo "  ✓ Issue #23 criada"

# Issue #24: Otimizar dashboard do aluno para gestores
gh issue create --repo "$REPO" \
  --title "Otimizar dashboard do aluno focado em gestores de times de dados" \
  --label "enhancement,student-experience,P1" \
  --body "## Descrição
Ajustar o dashboard do aluno para destacar trilhas específicas de gestão (gente, processo, tecnologia) e métricas de progresso mais relevantes para gestores.

## Funcionalidades
- Filtros por trilha (liderança, estratégia, operação, DataOps/MLOps)
- Indicadores de progresso por trilha e por bloco do curso
- Destaque de atividades práticas de gestão (PBL, simuladores)
- Resumo de tempo investido por tipo de atividade

## Benefício
Ajuda gestores a acompanhar sua evolução em competências críticas de liderança em dados.

## Critérios de Aceitação
- [ ] Dashboard permite filtrar conteúdos por trilha de gestão
- [ ] KPIs de progresso por trilha visíveis em destaque
- [ ] Integração com simuladores de IA sinalizada no dashboard
- [ ] Interface responsiva e legível em dispositivos móveis

## Arquivos a Modificar
- \`assets/html/modulo6_dashboard_aluno.html\`

## Prioridade
P1 - Curto Prazo (1-2 meses)"

echo "  ✓ Issue #24 criada"

# Issue #25: Ajustar backlog pedagógico do Módulo 6
gh issue create --repo "$REPO" \
  --title "Ajustar backlog pedagógico do Módulo 6 com prioridades P1, P2, P3" \
  --label "content,planning,P1" \
  --body "## Descrição
Revisar e organizar o backlog pedagógico do Módulo 6, marcando claramente prioridades P1, P2 e P3, e relacionando cada item com as issues do GitHub.

## Funcionalidades / Entregáveis
- Tabela de backlog com status, prioridade e responsável
- Link entre itens de backlog e issues correspondentes
- Indicação de dependências entre atividades (roteiro, gravação, edição, revisão)
- Visão por sprint (sugestão de alocação em 2-3 sprints)

## Benefício
Melhora o planejamento e a comunicação entre equipe pedagógica, produção e stakeholders.

## Critérios de Aceitação
- [ ] Backlog do Módulo 6 documentado em Markdown
- [ ] Cada item do backlog com prioridade P1/P2/P3
- [ ] Itens de backlog referenciam issues do repositório
- [ ] Backlog validado com o coordenador do curso

## Arquivos a Modificar
- \`docs/curso/modulo6_ptd_30h.md\`

## Prioridade
P1 - Curto Prazo (1-2 meses)"

echo "  ✓ Issue #25 criada"

# ============================================================================
# P2 - MÉDIO PRAZO (3-4 meses)
# ============================================================================

echo "🧩 Criando issues P2..."

# Issue #9: Ampliar glossário do Módulo 6
gh issue create --repo "$REPO" \
  --title "Ampliar glossário do Módulo 6 com termos de gestão e DataOps/MLOps" \
  --label "content,P2" \
  --body "## Descrição
Expandir o glossário do Módulo 6 para cobrir termos de gestão de times de dados, DataOps, MLOps, frameworks de priorização e governança.

## Funcionalidades / Entregáveis
- Inclusão de termos de gestão (RACI, DACI, MoSCoW, RICE, ICE)
- Termos de DataOps, MLOps e CRISP-DM
- Exemplos práticos de uso em contexto de empresas como Nubank, iFood, Netflix
- Links cruzados entre termos relacionados

## Benefício
Ajuda alunos gestores a dominar a linguagem utilizada em times de dados.

## Critérios de Aceitação
- [ ] Glossário revisado com, no mínimo, 50 termos relevantes
- [ ] Cada termo com definição clara e exemplo contextualizado
- [ ] Termos organizados alfabeticamente

## Arquivos a Modificar
- \`docs/recursos/modulo6_glossario.md\`

## Prioridade
P2 - Médio Prazo (3-4 meses)"

echo "  ✓ Issue #9 criada"

# Issue #10: Criar casos PBL adicionais
gh issue create --repo "$REPO" \
  --title "Criar novos casos PBL de gestão de times de dados" \
  --label "content,P2" \
  --body "## Descrição
Adicionar 2-3 novos casos PBL focados em desafios de escala de times de dados, priorização de backlog e alinhamento com stakeholders.

## Funcionalidades / Entregáveis
- Casos baseados em empresas digitais (ex.: fintech, marketplace, streaming)
- Cada caso com contexto, desafio, dados disponíveis, restrições e perguntas
- Seção com sugestão de solução para o professor

## Benefício
Aumenta repertório de situações reais para discussão em sala e atividades assíncronas.

## Critérios de Aceitação
- [ ] Pelo menos 2 novos casos completos documentados
- [ ] Cada caso com bloco \\"Solução Real (Expandir)\\" em \`details\`
- [ ] Casos revisados por docentes do curso

## Arquivos a Modificar
- \`docs/recursos/modulo6_pbl_cases.md\`

## Prioridade
P2 - Médio Prazo (3-4 meses)"

echo "  ✓ Issue #10 criada"

# Issue #11: Melhorar simuladores de IA para gestão
gh issue create --repo "$REPO" \
  --title "Melhorar simuladores de IA para apoio à gestão de times de dados" \
  --label "enhancement,student-experience,P2" \
  --body "## Descrição
Refatorar e ampliar os simuladores de IA usados no Módulo 6 para apoiar decisões de priorização, desenho de time e definição de KPIs.

## Funcionalidades
- Simulador para priorização de backlog usando MoSCoW/RICE
- Simulador para definição de RACI/DACI em squads de dados
- Simulador para definição de KPIs e OKRs de times de dados

## Benefício
Ajuda gestores a praticar decisões de gestão em ambiente controlado com feedback imediato.

## Critérios de Aceitação
- [ ] Pelo menos 2 simuladores interativos documentados
- [ ] Cada simulador com instruções claras de uso
- [ ] Exemplos alinhados ao conteúdo do Módulo 6

## Arquivos a Modificar
- \`docs/recursos/modulo6_simuladores_ia.md\`

## Prioridade
P2 - Médio Prazo (3-4 meses)"

echo "  ✓ Issue #11 criada"

# Issue #12: Documentar jornada do aluno gestor no Módulo 6
gh issue create --repo "$REPO" \
  --title "Documentar jornada do aluno gestor ao longo do Módulo 6" \
  --label "content,P2" \
  --body "## Descrição
Mapear e documentar a jornada do aluno gestor, desde o onboarding até a conclusão dos exercícios práticos, destacando pontos de contato com dashboards e simuladores.

## Funcionalidades / Entregáveis
- Mapa visual da jornada em Markdown (etapas, objetivos, entregas)
- Indicação de momentos de alto impacto (aulas-chave, PBL, simuladores)
- Sugestão de acompanhamento por parte do professor

## Benefício
Facilita o desenho de experiências mais engajantes e consistentes para gestores.

## Critérios de Aceitação
- [ ] Jornada documentada com todas as etapas relevantes
- [ ] Mapeamento dos artefatos (dashboards, PBL, simuladores, leituras)
- [ ] Revisão conjunta com coordenação pedagógica

## Arquivos a Modificar
- \`docs/curso/modulo6_ptd_30h.md\`

## Prioridade
P2 - Médio Prazo (3-4 meses)"

echo "  ✓ Issue #12 criada"

# Issue #13: Incluir orientações para professores
gh issue create --repo "$REPO" \
  --title "Incluir orientações detalhadas para professores do Módulo 6" \
  --label "content,P2" \
  --body "## Descrição
Criar uma seção específica com orientações para professores: como conduzir discussões, utilizar dashboards, explorar simuladores e conectar o módulo à prática dos alunos.

## Funcionalidades / Entregáveis
- Guia de facilitação por aula
- Sugestões de perguntas para discussão com gestores
- Dicas de conexão com contextos reais dos alunos

## Benefício
Garante maior consistência na condução das turmas e melhor aproveitamento dos recursos didáticos.

## Critérios de Aceitação
- [ ] Guia de facilitação criado em Markdown
- [ ] Pelo menos 3 perguntas-chave por aula listadas
- [ ] Material revisado por docentes experientes em gestão de dados

## Arquivos a Modificar
- \`docs/curso/modulo6_ptd_30h.md\`

## Prioridade
P2 - Médio Prazo (3-4 meses)"

echo "  ✓ Issue #13 criada"

# Issue #17: Criar exemplos de KPIs e OKRs de times de dados
gh issue create --repo "$REPO" \
  --title "Criar exemplos de KPIs e OKRs para times de dados" \
  --label "content,P2" \
  --body "## Descrição
Adicionar exemplos práticos de KPIs e OKRs para diferentes tipos de time de dados (plataforma, produto, analítico) e níveis de maturidade.

## Funcionalidades / Entregáveis
- Tabela com KPIs por tipo de time
- Exemplos de OKRs trimestrais
- Relação entre KPIs e objetivos de negócio

## Benefício
Ajuda gestores a traduzir objetivos de negócio em métricas concretas para o time de dados.

## Critérios de Aceitação
- [ ] Pelo menos 10 KPIs relevantes documentados
- [ ] Pelo menos 5 exemplos de OKRs completos (O + KRs)
- [ ] Exemplos alinhados à realidade de empresas digitais brasileiras

## Arquivos a Modificar
- \`docs/curso/modulo6_ptd_30h.md\`

## Prioridade
P2 - Médio Prazo (3-4 meses)"

echo "  ✓ Issue #17 criada"

# Issue #18: Adicionar seção de riscos e anti-padrões
gh issue create --repo "$REPO" \
  --title "Adicionar seção de riscos e anti-padrões em gestão de times de dados" \
  --label "content,P2" \
  --body "## Descrição
Criar uma seção específica sobre riscos comuns e anti-padrões em gestão de times de dados, com exemplos e estratégias de mitigação.

## Funcionalidades / Entregáveis
- Lista de anti-padrões (ex.: hero culture, shadow IT, silo de dados)
- Impactos típicos em performance de times e negócio
- Estratégias práticas de mitigação

## Benefício
Ajuda gestores a reconhecer e evitar erros comuns em times de dados.

## Critérios de Aceitação
- [ ] Pelo menos 8 anti-padrões documentados
- [ ] Para cada anti-padrão, descrição, exemplo e mitigação
- [ ] Material incluído no plano de aula onde for mais relevante

## Arquivos a Modificar
- \`docs/curso/modulo6_ptd_30h.md\`

## Prioridade
P2 - Médio Prazo (3-4 meses)"

echo "  ✓ Issue #18 criada"

# Issue #19: Integrar exemplos de ferramentas do mercado
gh issue create --repo "$REPO" \
  --title "Integrar exemplos de ferramentas do mercado nas aulas do Módulo 6" \
  --label "content,P2" \
  --body "## Descrição
Inserir exemplos concretos de ferramentas usadas em times de dados (Airflow, dbt, Spark, Snowflake, BigQuery, etc.) quando relevante para decisões de gestão.

## Funcionalidades / Entregáveis
- Tabelas comparativas de ferramentas por categoria
- Exemplos de decisões típicas de Tech Lead / Data Manager
- Conexão com implicações em pessoas e processo

## Benefício
Aproxima o conteúdo da realidade tecnológica dos alunos e de seus times.

## Critérios de Aceitação
- [ ] Pelo menos 3 tabelas comparativas incluídas
- [ ] Exemplos contextualizados por tipo de empresa
- [ ] Nenhuma ferramenta apresentada como \\"silver bullet\\"

## Arquivos a Modificar
- \`docs/curso/modulo6_ptd_30h.md\`

## Prioridade
P2 - Médio Prazo (3-4 meses)"

echo "  ✓ Issue #19 criada"

# Issue #20: Criar checklist de implantação de DataOps/MLOps
gh issue create --repo "$REPO" \
  --title "Criar checklist de implantação de DataOps/MLOps para gestores" \
  --label "content,P2" \
  --body "## Descrição
Desenvolver um checklist prático para gestores que estão implantando DataOps/MLOps, cobrindo pessoas, processos e tecnologia.

## Funcionalidades / Entregáveis
- Checklist em Markdown com seções por dimensão (pessoas, processo, tecnologia)
- Itens marcáveis para uso em sala ou na prática
- Ligação explícita com aulas e simuladores do módulo

## Benefício
Fornece ferramenta prática para planejar e acompanhar a implantação de DataOps/MLOps em organizações reais.

## Critérios de Aceitação
- [ ] Checklist completo com pelo menos 20 itens
- [ ] Itens organizados por dimensão
- [ ] Referência cruzada com aulas e recursos do Módulo 6

## Arquivos a Modificar
- \`docs/recursos/modulo6_simuladores_ia.md\`

## Prioridade
P2 - Médio Prazo (3-4 meses)"

echo "  ✓ Issue #20 criada"

# Issue #26: Documentar exemplos de contratos de SLA/SLO
gh issue create --repo "$REPO" \
  --title "Documentar exemplos de SLA e SLO para times de dados" \
  --label "content,P2" \
  --body "## Descrição
Criar exemplos de SLA e SLO para serviços de dados (dashboards, APIs, pipelines), com foco em decisões de gestão.

## Funcionalidades / Entregáveis
- Modelos de SLA para Data Warehouse, Data Lake e APIs de dados
- Exemplos de SLOs medidos (disponibilidade, latência, frescor dos dados)
- Discussão sobre trade-offs de custo e confiabilidade

## Benefício
Ajuda gestores a formalizar expectativas com stakeholders e times técnicos.

## Critérios de Aceitação
- [ ] Pelo menos 3 modelos de SLA documentados
- [ ] Pelo menos 5 exemplos de SLOs com métricas claras
- [ ] Materiais integrados nas aulas correspondentes

## Arquivos a Modificar
- \`docs/curso/modulo6_ptd_30h.md\`

## Prioridade
P2 - Médio Prazo (3-4 meses)"

echo "  ✓ Issue #26 criada"

# Issue #27: Criar guia de carreira para gestores de dados
gh issue create --repo "$REPO" \
  --title "Criar guia de carreira para gestores de times de dados" \
  --label "content,P2" \
  --body "## Descrição
Elaborar um guia de carreira para profissionais que querem migrar de data engineer, data scientist, analytics engineer ou BI para posições de liderança (Tech Lead, Data Manager, Head).

## Funcionalidades / Entregáveis
- Mapa de competências por senioridade
- Sugestões de próximos passos de desenvolvimento
- Exemplos de trajetórias reais em empresas brasileiras

## Benefício
Ajuda alunos a planejar sua evolução profissional na gestão de times de dados.

## Critérios de Aceitação
- [ ] Guia organizado por perfis de origem e destino
- [ ] Pelo menos 3 trajetórias reais documentadas (anonimizadas)
- [ ] Conexão com conteúdos abordados no Módulo 6

## Arquivos a Modificar
- \`docs/curso/modulo6_ptd_30h.md\`

## Prioridade
P2 - Médio Prazo (3-4 meses)"

echo "  ✓ Issue #27 criada"

# ============================================================================
# P3 - LONGO PRAZO (5-6 meses)
# ============================================================================

echo "🌱 Criando issues P3..."

# Issue #14: Criar versões em inglês dos principais recursos
gh issue create --repo "$REPO" \
  --title "Criar versão em inglês dos principais recursos do Módulo 6" \
  --label "content,P3" \
  --body "## Descrição
Traduzir para inglês os principais recursos do Módulo 6 (estruturas, frameworks visuais e cases), mantendo termos técnicos originais em inglês.

## Funcionalidades / Entregáveis
- Versão em inglês da estrutura de vídeos
- Versão em inglês dos cases PBL principais
- Versão em inglês dos frameworks visuais de gestão

## Benefício
Permite reutilização do conteúdo em programas internacionais e parcerias.

## Critérios de Aceitação
- [ ] Pelo menos 2 recursos core traduzidos
- [ ] Traduções revisadas por alguém fluente em inglês
- [ ] Manter coerência terminológica ao longo do material

## Arquivos a Modificar
- \`docs/curso/modulo6_estrutura_videos.md\`
- \`docs/recursos/modulo6_pbl_cases.md\`

## Prioridade
P3 - Longo Prazo (5-6 meses)"

echo "  ✓ Issue #14 criada"

# Issue #15: Criar trilha opcional para C-level
gh issue create --repo "$REPO" \
  --title "Criar trilha opcional do Módulo 6 focada em C-level" \
  --label "content,P3" \
  --body "## Descrição
Desenhar uma trilha resumida do Módulo 6 voltada para C-level (CIO, CDO, CTO), priorizando visão estratégica e decisões de portfólio de dados.

## Funcionalidades / Entregáveis
- Seleção de aulas essenciais para C-level
- Material síntese em formato executivo (1-2 páginas)
- Sugestão de atividades de discussão com times de dados

## Benefício
Facilita o alinhamento entre liderança executiva e gestores de times de dados.

## Critérios de Aceitação
- [ ] Trilha C-level definida com carga horária enxuta
- [ ] Material síntese em linguagem executiva
- [ ] Indicações claras de como usar o material com o time

## Arquivos a Modificar
- \`docs/curso/modulo6_ptd_30h.md\`

## Prioridade
P3 - Longo Prazo (5-6 meses)"

echo "  ✓ Issue #15 criada"

# Issue #21: Criar biblioteca de slides base para o módulo
gh issue create --repo "$REPO" \
  --title "Criar biblioteca de slides base do Módulo 6" \
  --label "content,P3" \
  --body "## Descrição
Definir e documentar a estrutura de slides base para o Módulo 6, com indicações de quais elementos devem ser personalizados por turma.

## Funcionalidades / Entregáveis
- Estrutura padrão de deck por aula
- Orientações de uso para professores
- Indicação de pontos de interação com alunos

## Benefício
Reduz esforço de preparação de aula e aumenta consistência visual e pedagógica.

## Critérios de Aceitação
- [ ] Estrutura descrita em Markdown (não é necessário criar slides ainda)
- [ ] Indicação de seções obrigatórias e opcionais
- [ ] Alinhamento com storyboards das aulas

## Arquivos a Modificar
- \`docs/curso/modulo6_storyboards.md\`

## Prioridade
P3 - Longo Prazo (5-6 meses)"

echo "  ✓ Issue #21 criada"

# Issue #22: Conectar Módulo 6 com demais módulos da trilha
gh issue create --repo "$REPO" \
  --title "Conectar Módulo 6 com demais módulos da trilha de gestão de dados" \
  --label "content,P3" \
  --body "## Descrição
Mapear e documentar as conexões do Módulo 6 com os demais módulos da trilha (técnicos e de negócio), destacando pré-requisitos e caminhos de aprofundamento.

## Funcionalidades / Entregáveis
- Mapa de dependências entre módulos
- Sugestões de ordem de consumo para diferentes perfis
- Indicação de conteúdos recomendados pós-Módulo 6

## Benefício
Ajuda alunos e coordenação a desenhar jornadas de aprendizagem mais completas.

## Critérios de Aceitação
- [ ] Mapa de conexões documentado
- [ ] Pelo menos 2 jornadas sugeridas (gestor vindo de tech, gestor vindo de negócio)
- [ ] Revisão com coordenação da trilha

## Arquivos a Modificar
- \`docs/curso/modulo6_ptd_30h.md\`

## Prioridade
P3 - Longo Prazo (5-6 meses)"

echo "  ✓ Issue #22 criada"

# Issue #28: Criar métricas de sucesso do Módulo 6
gh issue create --repo "$REPO" \
  --title "Definir métricas de sucesso e feedback contínuo do Módulo 6" \
  --label "content,analytics,P3" \
  --body "## Descrição
Definir e documentar métricas de sucesso do Módulo 6 (engajamento, NPS, aplicação prática) e um processo simples de coleta e análise contínua.

## Funcionalidades / Entregáveis
- Lista de KPIs de sucesso do módulo
- Plano de coleta de feedback dos alunos (quantitativo e qualitativo)
- Sugestão de como usar esses dados para revisar o módulo a cada ciclo

## Benefício
Garante melhoria contínua do módulo com base em dados e feedback real dos alunos.

## Critérios de Aceitação
- [ ] KPIs definidos e documentados
- [ ] Processo de coleta descrito
- [ ] Conexão com decisões de revisão de conteúdo

## Arquivos a Modificar
- \`docs/curso/modulo6_ptd_30h.md\`

## Prioridade
P3 - Longo Prazo (5-6 meses)"

echo "  ✓ Issue #28 criada"
echo ""
echo "═══════════════════════════════════════════════════════════"
echo "✨ Script concluído com sucesso!"
echo "═══════════════════════════════════════════════════════════"
