# Scripts do Repositório

Scripts auxiliares para automação e manutenção do repositório.

## 📝 create-issues.sh

Script para criar todas as 23 issues pendentes do Módulo 6 no GitHub automaticamente.

### Pré-requisitos

1. **GitHub CLI instalado**:
   ```bash
   # macOS
   brew install gh
   
   # Ubuntu/Debian
   sudo apt install gh
   
   # Windows
   winget install --id GitHub.cli
   ```

2. **Autenticação configurada**:
   ```bash
   gh auth login
   ```

### Como Usar

```bash
# 1. Dar permissão de execução
chmod +x scripts/create-issues.sh

# 2. Executar o script
./scripts/create-issues.sh
```

### O que o Script Faz

- ✅ Cria 23 issues no repositório `tai-pucrs/education-lab-gestao-dados`
- ✅ Organiza por prioridade (P1, P2, P3)
- ✅ Adiciona labels automaticamente
- ✅ Inclui descrição completa, critérios de aceitação e arquivos a modificar
- ✅ Gera resumo ao final

### Issues Criadas

**P1 - Curto Prazo (7 issues)**:
- #4: Sincronização Dashboard
- #5: Calendário Visual
- #6: Busca/Filtro Framework
- #8: Rubrica de Avaliação
- #23: GitHub Pages
- #24: Pacote NPM/PyPI
- #25: Release Automático

**P2 - Médio Prazo (11 issues)**:
- #9: Glossário Gen AI
- #10: Anti-patterns
- #11: Cases PBL Difíceis
- #12: Diagramas Mermaid
- #13: Infográficos
- #17: Acessibilidade
- #18: Responsividade Mobile
- #19: Testes Automatizados
- #20: Validação de Português
- #26: Quizzes Interativos
- #27: Rotina Atualização Ferramentas

**P3 - Longo Prazo (5 issues)**:
- #14: SCORM/xAPI
- #15: API REST
- #21: Guia Contribuidores
- #22: ADR
- #28: Analytics

### Solução de Problemas

**Erro de autenticação**:
```bash
# Re-autenticar
gh auth logout
gh auth login
```

**Erro de permissão no repositório**:
- Verificar se você tem permissão de escrita no repositório
- Contatar administrador do repositório

**Rate limit atingido**:
- Aguardar 1 hora
- Ou criar issues manualmente via interface web

### Criação Manual

Se preferir criar manualmente ou o script falhar:

1. **Via GitHub CLI** (uma por vez):
   ```bash
   gh issue create --repo tai-pucrs/education-lab-gestao-dados \
     --title "Título da Issue" \
     --label "label1,label2" \
     --body "Corpo da issue"
   ```

2. **Via Interface Web**:
   - Acesse: https://github.com/tai-pucrs/education-lab-gestao-dados/issues/new
   - Use como referência: `ISSUES.md`

## 📚 Outros Scripts

*Em desenvolvimento*

---

**Última atualização**: 2026-01-26
