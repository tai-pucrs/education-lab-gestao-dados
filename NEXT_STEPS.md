# 🎯 Ações Necessárias: Criação de Issues no GitHub

## 📝 Resumo

Este documento foi criado para facilitar a **criação das 23 issues pendentes** documentadas em `ISSUES.md` e `IMPLEMENTATION_SUMMARY.md`.

## ✅ O Que Foi Feito

1. ✅ Atualizado `IMPLEMENTATION_SUMMARY.md` com:
   - Referências aos issues do GitHub (placeholder para links)
   - Tabela completa das 23 issues pendentes
   - Instruções de criação (3 opções)
   - Guia de vinculação ao GitHub Projects

2. ✅ Criado `scripts/create-issues.sh`:
   - Script bash para criar todas as issues automaticamente
   - Usa GitHub CLI (`gh`)
   - Cria issues com título, corpo, labels completos

3. ✅ Criado `scripts/README.md`:
   - Documentação completa do script
   - Pré-requisitos e solução de problemas
   - Alternativas de criação manual

4. ✅ Criado `MANUAL_ISSUE_CREATION.md`:
   - Conteúdo completo das issues P1 para copiar/colar
   - Formato pronto para interface web do GitHub
   - Instruções passo a passo

## 🚀 Próximos Passos

### 1️⃣ Criar as Issues no GitHub

Escolha uma das 3 opções:

#### Opção A: Script Automático (Mais Rápido) ⚡
```bash
# Pré-requisito: GitHub CLI instalado e autenticado
gh auth login

# Executar o script
chmod +x scripts/create-issues.sh
./scripts/create-issues.sh
```

**Vantagens**: 
- Cria todas as 23 issues automaticamente
- Labels aplicadas corretamente
- Conteúdo completo e padronizado

**Desvantagens**: 
- Requer GitHub CLI instalado
- Necessita permissões de escrita no repositório

---

#### Opção B: GitHub CLI Manual (Controle Total) 🎛️
```bash
# Para cada issue individualmente
gh issue create --repo tai-pucrs/education-lab-gestao-dados \
  --title "Adicionar sincronização em nuvem ao Dashboard do Aluno" \
  --label "enhancement,student-experience,P1" \
  --body "$(cat issue-4-content.md)"
```

**Vantagens**: 
- Controle total sobre cada issue
- Pode criar seletivamente (ex: apenas P1)
- Usa linha de comando

**Desvantagens**: 
- Mais trabalhoso (uma por vez)
- Requer criar arquivos .md temporários ou copiar conteúdo

---

#### Opção C: Interface Web (Mais Visual) 🖱️
1. Acesse: https://github.com/tai-pucrs/education-lab-gestao-dados/issues/new
2. Abra `MANUAL_ISSUE_CREATION.md`
3. Para cada issue:
   - Copie o **Título**
   - Copie o **Corpo** completo
   - Adicione as **Labels**
   - Clique em "Submit new issue"

**Vantagens**: 
- Não requer instalação de ferramentas
- Interface visual familiar
- Pode revisar antes de criar

**Desvantagens**: 
- Mais demorado (copiar/colar 23 vezes)
- Pode haver erros de formatação

---

### 2️⃣ Vincular ao GitHub Projects

Após criar as issues:

1. **Acessar Projects**: 
   - URL: https://github.com/tai-pucrs/education-lab-gestao-dados/projects

2. **Criar novo Project** (se não existir):
   - Nome: "Módulo 6 - Roadmap de Evolução"
   - Template: "Board" (Kanban)
   - Descrição: "Planejamento e acompanhamento das 28 issues do Módulo 6"

3. **Configurar Colunas**:
   - 📝 Backlog
   - 🚀 Em Progresso
   - 👀 Em Revisão
   - ✅ Concluído

4. **Adicionar Issues**:
   ```bash
   # Via CLI (para cada issue criada)
   gh project item-add <PROJECT_NUMBER> --owner tai-pucrs --url <ISSUE_URL>
   ```
   
   Ou arrastar manualmente na interface web.

5. **Configurar Automações**:
   - Issue criada → Backlog
   - Com assignee → Em Progresso
   - PR linkada → Em Revisão
   - Fechada → Concluído

---

### 3️⃣ Atualizar Links no IMPLEMENTATION_SUMMARY.md

Após as issues serem criadas, atualizar os placeholders:

```markdown
<!-- Substituir -->
**GitHub Issue:** [Criar issue no GitHub](#) <!-- TODO: Adicionar link após criação -->

<!-- Por -->
**GitHub Issue:** [#123](https://github.com/tai-pucrs/education-lab-gestao-dados/issues/123)
```

Fazer para todas as 5 issues concluídas (Issues #1, #2, #3, #7, #16).

---

## 📊 Visão Geral das Issues

### Status Atual
- ✅ **Concluídas**: 5 issues (P0 e 1 P1)
- 📝 **A criar**: 23 issues (6 P1, 11 P2, 6 P3)

### Por Prioridade

**P1 - Curto Prazo (1-2 meses)**: 7 issues totais
- ✅ 1 concluída: Issue #7 (Simuladores IA)
- 📝 6 a criar: #4, #5, #6, #8, #23, #24, #25

**P2 - Médio Prazo (2-4 meses)**: 11 issues
- 📝 11 a criar: #9, #10, #11, #12, #13, #17, #18, #19, #20, #26, #27

**P3 - Longo Prazo (4-6 meses)**: 6 issues
- 📝 5 a criar: #14, #15, #21, #22, #28
- ⚠️ 1 duplicada: Issue #25 (aparece em P1 e P3)

---

## 🔍 Checklist de Validação

Após criar as issues e vincular ao projeto:

- [ ] 23 issues criadas no GitHub
- [ ] Labels aplicadas corretamente (P1, P2, P3, etc.)
- [ ] Conteúdo completo em cada issue
- [ ] Project criado ou existente identificado
- [ ] Issues adicionadas ao Project
- [ ] Colunas do Kanban configuradas
- [ ] Links atualizados no IMPLEMENTATION_SUMMARY.md
- [ ] README.md principal atualizado (se necessário)

---

## 📚 Referências

- **ISSUES.md**: Descrição completa das 28 issues
- **IMPLEMENTATION_SUMMARY.md**: Resumo de implementação e status
- **MANUAL_ISSUE_CREATION.md**: Conteúdo formatado para copiar/colar
- **scripts/create-issues.sh**: Script de automação
- **scripts/README.md**: Documentação do script

---

## 💡 Dicas

1. **Priorize P1**: Comece criando as issues P1 se não quiser criar todas de uma vez
2. **Revise Labels**: Crie as labels customizadas no repositório antes de usar o script
3. **Teste Primeiro**: Considere criar 1-2 issues manualmente primeiro para validar o formato
4. **Automação**: Configure as automações do GitHub Projects para reduzir trabalho manual
5. **Comunicação**: Notifique o time após criar as issues e configurar o projeto

---

## ❓ Perguntas Frequentes

**P: Preciso criar todas as 23 issues de uma vez?**
R: Não. Você pode começar com as P1 (6 issues) e criar as outras gradualmente.

**P: E se eu não tiver GitHub CLI instalado?**
R: Use a Opção C (Interface Web) com o arquivo `MANUAL_ISSUE_CREATION.md`.

**P: Posso modificar o conteúdo das issues?**
R: Sim! O conteúdo em `ISSUES.md` é uma base. Adapte conforme necessário.

**P: Como reporto problemas com o script?**
R: Consulte a seção "Solução de Problemas" em `scripts/README.md`.

**P: Quem pode criar issues no repositório?**
R: Qualquer pessoa com permissão de escrita no repositório `tai-pucrs/education-lab-gestao-dados`.

---

## 📞 Contato

Para dúvidas sobre este processo:
1. Consulte a documentação em `scripts/README.md`
2. Revise `ISSUES.md` para contexto completo
3. Verifique `IMPLEMENTATION_SUMMARY.md` para status atualizado

---

**Última atualização**: 2026-01-26  
**Branch**: `copilot/relate-issues-to-project`  
**Commit**: Relacionar issues ao projeto e preparar criação de novas issues
