# Guia de Criação Manual de Issues

Este documento contém o conteúdo completo de cada issue para facilitar a criação manual via interface web do GitHub.

## 📋 Como Criar as Issues

1. Acesse: https://github.com/tai-pucrs/education-lab-gestao-dados/issues/new
2. Para cada issue abaixo:
   - Copie o **Título**
   - Copie o **Corpo** completo
   - Adicione as **Labels** manualmente
   - Clique em "Submit new issue"

---

## P1 - CURTO PRAZO

### Issue #4: Sincronização Dashboard

**Título:**
```
Adicionar sincronização em nuvem ao Dashboard do Aluno
```

**Labels:** `enhancement`, `student-experience`, `P1`

**Corpo:**
```markdown
## Descrição
Adicionar opção de sincronizar progresso do aluno via export/import de JSON ou integração com Google Drive.

## Funcionalidades
- Botão "Exportar progresso" (download JSON)
- Botão "Importar progresso" (upload JSON)
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
- `modulo6_repo/assets/html/modulo6_dashboard_aluno.html`

## Prioridade
P1 - Curto Prazo (1-2 meses)
```

---

### Issue #5: Calendário Visual

**Título:**
```
Dashboard produção - adicionar calendário visual
```

**Labels:** `enhancement`, `production`, `P1`

**Corpo:**
```markdown
## Descrição
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
- `modulo6_repo/assets/html/modulo6_dashboard_producao.html`

## Biblioteca Sugerida
- FullCalendar (MIT license) ou implementação vanilla

## Prioridade
P1 - Curto Prazo (1-2 meses)
```

---

### Issue #6: Busca/Filtro Framework

**Título:**
```
Framework - adicionar busca/filtro avançado
```

**Labels:** `enhancement`, `search`, `P1`

**Corpo:**
```markdown
## Descrição
Implementar sistema de busca/filtro no Framework Interativo.

## Funcionalidades
- Busca por palavras-chave em tempo real
- Filtro por submódulo (6.1 a 6.5)
- Filtro por tipo de ferramenta (técnica, gestão, comunicação)
- Destaque de resultados encontrados

## Benefício
Permite aos alunos encontrarem rapidamente ferramentas específicas dentre as dezenas disponíveis.

## Critérios de Aceitação
- [ ] Implementar campo de busca com busca em tempo real
- [ ] Adicionar filtros por submódulo
- [ ] Adicionar filtros por tipo de ferramenta
- [ ] Implementar destaque visual dos resultados
- [ ] Adicionar contador de resultados encontrados
- [ ] Preservar estado dos filtros no localStorage
- [ ] Garantir performance com muitos itens

## Arquivos a Modificar
- `modulo6_repo/assets/html/modulo6_framework_interativo.html`
- `modulo6_repo/assets/html/framework_gestao_dados_completo.html`

## Prioridade
P1 - Curto Prazo (1-2 meses)
```

---

### Issue #8: Rubrica de Avaliação

**Título:**
```
Rubrica de avaliação para simuladores
```

**Labels:** `content`, `assessment`, `P1`

**Corpo:**
```markdown
## Descrição
Criar rubrica de avaliação para as práticas com simuladores de IA.

## Conteúdo
- Critérios de avaliação por roleplay
- Escala de pontuação (1-5 ou similar)
- Exemplos de respostas (boa/média/ruim)
- Checklist de auto-avaliação
- Indicadores de soft skills avaliadas

## Benefício
Permite que alunos e instrutores avaliem objetivamente o desempenho nas simulações.

## Critérios de Aceitação
- [ ] Criar documento de rubrica em Markdown
- [ ] Definir 3-5 critérios por simulador
- [ ] Adicionar exemplos práticos para cada nível
- [ ] Criar checklist de auto-avaliação
- [ ] Documentar soft skills avaliadas
- [ ] Revisar com especialistas pedagógicos

## Arquivo a Criar
- `modulo6_repo/docs/recursos/modulo6_rubrica_avaliacao.md`

## Estrutura Sugerida
- Introdução à rubrica
- Critérios gerais de avaliação
- Rubrica específica por simulador (14 simuladores)
- Checklist de auto-avaliação
- Exemplos comentados

## Prioridade
P1 - Curto Prazo (1-2 meses)
```

---

### Issue #23: GitHub Pages

**Título:**
```
Hospedar site estático via GitHub Pages
```

**Labels:** `deployment`, `distribution`, `P1`

**Corpo:**
```markdown
## Descrição
Publicar conteúdo navegável em GitHub Pages.

## Estrutura
\`\`\`
https://tai-pucrs.github.io/education-lab-gestao-dados/modulo6/
├── index.html (landing page)
├── dashboard/
├── framework/
├── recursos/
└── docs/
\`\`\`

## Funcionalidades
- Landing page com visão geral do módulo
- Links para todos os recursos interativos
- Deploy automático via GitHub Actions
- Mobile responsive
- SEO básico (meta tags, Open Graph)

## Benefício
Acesso público e fácil ao conteúdo sem necessidade de clonar repositório.

## Critérios de Aceitação
- [ ] Criar landing page profissional (index.html)
- [ ] Configurar GitHub Pages no repositório
- [ ] Criar workflow de deploy automático
- [ ] Organizar estrutura de diretórios para publicação
- [ ] Adicionar meta tags e SEO básico
- [ ] Testar responsividade mobile
- [ ] Adicionar link no README principal

## Arquivos a Criar
- `docs/index.html` (landing page)
- `.github/workflows/deploy-pages.yml`

## Configuração
- Fonte: branch `gh-pages` ou pasta `docs/`
- Domínio personalizado (opcional)

## Prioridade
P1 - Curto Prazo (1-2 meses)
```

---

### Issue #24: Pacote NPM/PyPI

**Título:**
```
Criar pacote NPM/PyPI para templates
```

**Labels:** `distribution`, `tools`, `P1`

**Corpo:**
```markdown
## Descrição
Criar pacotes para distribuir templates via gerenciadores de pacotes.

## Pacotes
- NPM: `@education-lab/modulo6-templates`
- PyPI: `education-lab-modulo6-templates`

## Conteúdo
- 12 templates editáveis (HTML, MD)
- CLI para gerar templates
- Documentação de uso
- Exemplos de personalização

## Benefício
Facilita reutilização e customização dos templates por outras instituições.

## Critérios de Aceitação
- [ ] Criar estrutura de pacote NPM
- [ ] Criar estrutura de pacote Python
- [ ] Implementar CLI básico (npx/python -m)
- [ ] Adicionar documentação completa
- [ ] Publicar em NPM registry
- [ ] Publicar em PyPI
- [ ] Adicionar testes básicos
- [ ] Criar exemplos de uso

## Estrutura do Pacote
\`\`\`
templates/
├── html/
│   ├── dashboard.html
│   └── framework.html
├── markdown/
│   ├── aula.md
│   └── case-pbl.md
└── cli/
    ├── generate.js
    └── __main__.py
\`\`\`

## Comandos Sugeridos
\`\`\`bash
# NPM
npx @education-lab/modulo6-templates generate dashboard

# Python
python -m education_lab_modulo6_templates generate aula
\`\`\`

## Prioridade
P1 - Curto Prazo (1-2 meses)
```

---

### Issue #25: Release Automático

**Título:**
```
Adicionar workflow de release automático
```

**Labels:** `automation`, `ci-cd`, `P1`

**Corpo:**
```markdown
## Descrição
Automatizar processo de release com GitHub Actions.

## Funcionalidades
- Tag automática baseada em commits convencionais
- CHANGELOG.md atualizado automaticamente
- Release notes geradas
- Assets empacotados (ZIP dos HTMLs, templates)
- Notificação de nova versão

## Benefício
Reduz trabalho manual e garante consistência nas releases.

## Critérios de Aceitação
- [ ] Criar workflow `.github/workflows/release.yml`
- [ ] Implementar versionamento automático (semantic-release ou similar)
- [ ] Gerar CHANGELOG.md automaticamente
- [ ] Empacotar assets para release
- [ ] Criar release no GitHub com notas
- [ ] Testar workflow em release de teste

## Ferramentas Sugeridas
- semantic-release
- conventional-changelog
- actions/create-release

## Trigger
- Push de tag no formato `v*` (ex: v1.1.0)
- Ou workflow manual via `workflow_dispatch`

## Prioridade
P1 - Curto Prazo (1-2 meses)
```

---

## 📌 Notas Importantes

1. **Labels**: Você precisará criar as labels no repositório se elas ainda não existirem:
   - `P1`, `P2`, `P3` (prioridades)
   - `enhancement`, `content`, `automation`, etc.

2. **Numeração**: A numeração (#4, #5, etc.) é referência do ISSUES.md. O GitHub vai atribuir números sequenciais automaticamente.

3. **Continuação**: Este guia contém apenas as issues P1. Para as issues P2 e P3, consulte o arquivo `ISSUES.md` completo.

4. **Script Automático**: Se preferir, use o script `./scripts/create-issues.sh` que cria todas as issues automaticamente.

---

**Para continuar com P2 e P3**: Consulte [`ISSUES.md`](../ISSUES.md) para o conteúdo completo de todas as 23 issues pendentes.
