# 🤝 Guia de Contribuição

## Como Contribuir para o Módulo 6

Este documento descreve as diretrizes para contribuir com o material didático do Módulo 6.

---

## 📋 Checklist Antes de Contribuir

- [ ] Li o README.md completo
- [ ] Entendi a estrutura de diretórios
- [ ] Verifiquei se minha alteração não duplica conteúdo existente
- [ ] Mantive termos técnicos em inglês
- [ ] Testei arquivos HTML no navegador (se aplicável)

---

## 🔄 Fluxo de Trabalho

### 1. Clone o Repositório
```bash
git clone [url-do-repositorio]
cd modulo6_repo
```

### 2. Crie uma Branch
```bash
# Para conteúdo novo
git checkout -b feature/nome-do-conteudo

# Para correções
git checkout -b fix/descricao-da-correcao

# Para melhorias
git checkout -b improve/area-melhorada
```

### 3. Faça suas Alterações
- Siga os padrões descritos neste documento
- Mantenha commits atômicos e bem descritos

### 4. Commit com Mensagem Clara
```bash
# Formato: tipo(escopo): descrição

git commit -m "feat(recursos): adiciona case PBL do Nubank"
git commit -m "fix(dashboard): corrige cálculo de progresso"
git commit -m "docs(glossario): adiciona termos de MLOps"
```

### 5. Push e Pull Request
```bash
git push origin sua-branch
```

---

## 📝 Padrões de Conteúdo

### Markdown

```markdown
# Título Principal (H1) - apenas um por arquivo

## Seções (H2)

### Subseções (H3)

#### Detalhes (H4) - usar com moderação

- Listas com hífen
- Máximo 7 itens por nível
- Sub-itens com 2 espaços de indentação

1. Listas numeradas para sequências
2. Quando a ordem importa

> Citações para exemplos e destaques importantes

`código inline` para termos técnicos

| Tabelas | Para | Comparações |
|---------|------|-------------|
| valor   | valor| valor       |
```

### Terminologia

| ✅ Correto | ❌ Incorreto |
|-----------|-------------|
| data pipeline | pipeline de dados |
| stakeholder | parte interessada |
| sprint | sprint (não traduzir) |
| deploy | implantação |
| backlog | lista de pendências |
| Data Engineer | Engenheiro de Dados |

### Estrutura de Aulas

Toda aula deve conter:
1. **Objetivos de Aprendizagem** (verbos de ação)
2. **Conteúdo Principal** (dividido em tópicos)
3. **Exemplo Prático** (case real)
4. **Exercício** (aplicação do conhecimento)
5. **Recursos Complementares** (links/referências)

---

## 💻 Padrões de Código

### HTML
- Indentação: 2 espaços
- IDs em kebab-case: `id="meu-elemento"`
- Classes semânticas: `class="card card--featured"`
- Atributos data-* para JavaScript

### CSS
- Mobile-first
- Usar variáveis CSS (custom properties)
- Evitar !important
- Seguir ordem: layout → box model → visual → tipografia

### JavaScript
- ES6+ (const, let, arrow functions)
- Funções em camelCase
- Constantes em UPPER_SNAKE_CASE
- Documentar funções públicas

---

## 📁 Onde Adicionar Novos Arquivos

| Tipo de Conteúdo | Diretório |
|------------------|-----------|
| Aulas/Estrutura pedagógica | `docs/curso/` |
| Material de gravação | `docs/producao/` |
| Glossário, cases, simuladores | `docs/recursos/` |
| Templates e checklists | `templates/` |
| Aplicações HTML | `assets/html/` |

---

## ✅ Checklist de Review

Antes de aprovar um PR, verificar:

### Conteúdo
- [ ] Português brasileiro correto
- [ ] Termos técnicos em inglês
- [ ] Exemplos práticos incluídos
- [ ] Não há duplicação de conteúdo
- [ ] Carga horária mantida (30h total)

### Código (se aplicável)
- [ ] HTML válido e semântico
- [ ] CSS responsivo
- [ ] JavaScript sem erros no console
- [ ] Funciona offline
- [ ] Testado em diferentes navegadores

### Formatação
- [ ] Markdown bem estruturado
- [ ] Tabelas alinhadas
- [ ] Links funcionando
- [ ] Imagens com alt text (se houver)

---

## 🐛 Reportando Problemas

Ao abrir uma issue, inclua:

1. **Descrição clara** do problema
2. **Localização** (arquivo e linha)
3. **Comportamento esperado** vs atual
4. **Screenshots** (se visual)
5. **Navegador/ambiente** (para HTMLs)

---

## 💡 Sugestões de Melhoria

Bem-vindas! Abra uma issue com:

1. **Contexto** - Por que essa melhoria é necessária?
2. **Proposta** - O que você sugere?
3. **Impacto** - Quais arquivos seriam afetados?
4. **Esforço** - Estimativa de complexidade

---

## 📞 Dúvidas

Para dúvidas sobre:
- **Conteúdo pedagógico**: Consultar PTD em `docs/curso/modulo6_ptd_30h.md`
- **Padrões de código**: Ver `CLAUDE_CODE_INSTRUCTIONS.md` ou `COPILOT_INSTRUCTIONS.md`
- **Processo**: Abrir issue com label "question"

---

*Obrigado por contribuir! 🎓*
