# 📋 Prompts Prontos para Uso

> Copie e cole diretamente no Claude Code ou Copilot Chat

---

## 🟣 CLAUDE CODE - Prompts de Inicialização

### Prompt 1: Onboarding Completo (Primeira Vez)

```
Vamos trabalhar juntos neste projeto. Execute estas ações:

1. Liste a estrutura de diretórios com `find . -type f -name "*.md" -o -name "*.html" -o -name "*.js" -o -name "*.ts" -o -name "*.json" | head -50`

2. Leia os arquivos de configuração:
   - README.md
   - CLAUDE.md (se existir)
   - .cursorrules (se existir)
   - package.json (se existir)

3. Me dê um resumo de:
   - Propósito do projeto
   - Stack tecnológica
   - Padrões de código a seguir
   - Arquivos mais importantes

Aguardo sua análise antes de começarmos.
```

---

### Prompt 2: Início de Sessão (Uso Diário)

```
Sessão de trabalho no projeto [NOME_DO_PROJETO].

CONTEXTO:
- Branch atual: [branch]
- Última tarefa: [o que foi feito]
- Pendências: [o que falta]

OBJETIVO HOJE:
- [ ] [Tarefa principal]
- [ ] [Tarefa secundária]

RESTRIÇÕES:
- Não modificar: [arquivo/módulo]
- Manter: [compatibilidade/padrão]

Confirme o entendimento e sugira por onde começar.
```

---

### Prompt 3: Criar Feature Nova

```
Preciso implementar: [DESCRIÇÃO DA FEATURE]

REQUISITOS:
- [Requisito 1]
- [Requisito 2]
- [Requisito 3]

CONTEXTO TÉCNICO:
- Tecnologia: [React/Node/Python/etc]
- Padrão existente: ver arquivo [exemplo.ts]
- Integra com: [módulo/API]

ENTREGÁVEIS:
- [ ] Código da feature
- [ ] Testes
- [ ] Documentação (se necessário)

ABORDAGEM:
1. Analise o código existente relacionado
2. Proponha a arquitetura/estrutura
3. Aguarde minha aprovação
4. Implemente incrementalmente
```

---

### Prompt 4: Debugging Sistemático

```
BUG: [Título do problema]

SINTOMA:
[O que está acontecendo de errado]

ESPERADO:
[O que deveria acontecer]

REPRODUÇÃO:
1. [Passo 1]
2. [Passo 2]
3. [Resultado incorreto]

ARQUIVOS SUSPEITOS:
- [arquivo1.ts]
- [arquivo2.ts]

JÁ TENTEI:
- [Tentativa 1 - não funcionou porque X]
- [Tentativa 2 - não funcionou porque Y]

Investigue metodicamente:
1. Leia o código relacionado
2. Identifique possíveis causas
3. Proponha hipóteses ordenadas por probabilidade
4. Sugira como testar cada hipótese
```

---

### Prompt 5: Code Review

```
Faça code review das mudanças recentes.

FOCO DA REVISÃO:
- [ ] Bugs potenciais
- [ ] Segurança
- [ ] Performance
- [ ] Legibilidade
- [ ] Aderência aos padrões do projeto
- [ ] Cobertura de edge cases

CONTEXTO:
- Feature: [descrição]
- Arquivos modificados: [lista ou use git diff]

FORMATO DA RESPOSTA:
Para cada issue encontrada:
- 🔴 CRÍTICO / 🟡 IMPORTANTE / 🟢 SUGESTÃO
- Arquivo:linha
- Problema
- Sugestão de correção
```

---

### Prompt 6: Refatoração Segura

```
Refatorar: [MÓDULO/COMPONENTE]

PROBLEMAS ATUAIS:
- [Problema 1: ex. código duplicado]
- [Problema 2: ex. função muito longa]
- [Problema 3: ex. acoplamento alto]

OBJETIVOS:
- [ ] [Melhoria 1]
- [ ] [Melhoria 2]

RESTRIÇÕES CRÍTICAS:
- ⚠️ Manter interface pública intacta
- ⚠️ Não quebrar testes existentes
- ⚠️ Commits atômicos (um por mudança lógica)

PROCESSO:
1. Analise o estado atual
2. Proponha plano de refatoração em etapas
3. Para cada etapa: implemente → teste → commit
4. Aguarde aprovação entre etapas críticas
```

---

### Prompt 7: Explicar Código Legado

```
Preciso entender este código legado:

ARQUIVO(S): [caminho]

PERGUNTAS:
1. Qual o propósito geral deste código?
2. Quais são os fluxos principais?
3. Quais são as dependências externas?
4. Há padrões ou anti-patterns notáveis?
5. Quais partes são mais arriscadas de modificar?
6. O que eu deveria testar se precisar alterar?

Leia o código e me explique como se eu fosse um dev novo no projeto.
```

---

### Prompt 8: Gerar Documentação

```
Gere documentação para: [MÓDULO/FUNÇÃO/API]

TIPO DE DOCUMENTAÇÃO:
- [ ] README do módulo
- [ ] JSDoc/Docstrings
- [ ] API docs
- [ ] Guia de uso
- [ ] Arquitetura (diagrama)

PÚBLICO-ALVO:
- [ ] Desenvolvedores do time
- [ ] Desenvolvedores externos
- [ ] Usuários finais

PADRÃO A SEGUIR:
- Ver exemplo em: [arquivo_exemplo.md]
- Idioma: [Português/Inglês]

Leia o código primeiro, depois gere a documentação.
```

---

## 🟢 COPILOT CHAT - Prompts de Inicialização

### Prompt C1: Análise de Arquivo

```
/explain Analise este arquivo completamente:
1. Propósito e responsabilidade
2. Dependências importadas
3. Funções/classes exportadas
4. Padrões de código usados
5. Possíveis melhorias
```

---

### Prompt C2: Gerar Implementação

```
Implemente [DESCRIÇÃO] neste arquivo.

Requisitos:
- [Req 1]
- [Req 2]

Siga os mesmos padrões dos outros métodos/funções neste arquivo.
Use TypeScript/JavaScript [especificar] com tipos explícitos.
```

---

### Prompt C3: Gerar Testes

```
/tests Gere testes unitários para [função/classe/arquivo].

Incluir:
- Casos de sucesso (happy path)
- Casos de erro e exceções
- Edge cases (null, undefined, empty, limites)
- Mocks para dependências externas

Framework: [Jest/Mocha/Pytest/especificar]
Padrão: ver arquivo [exemplo.test.ts]
```

---

### Prompt C4: Corrigir Código

```
/fix Este código tem um problema: [DESCRIÇÃO DO PROBLEMA]

Erro/Comportamento atual:
[Cole o erro ou descreva]

Esperado:
[O que deveria acontecer]

Corrija mantendo o estilo do código existente.
```

---

### Prompt C5: Otimizar

```
/explain Analise a performance deste código e sugira otimizações.

Foco em:
- Complexidade algorítmica
- Uso de memória
- Chamadas desnecessárias
- Oportunidades de cache
- Lazy loading

Mantenha legibilidade - não otimize prematuramente.
```

---

### Prompt C6: Converter/Migrar

```
Converta este código de [ORIGEM] para [DESTINO].

Origem: [JavaScript/Python 2/Class components/etc]
Destino: [TypeScript/Python 3/Hooks/etc]

Mantenha:
- Mesma lógica de negócio
- Nomenclatura consistente
- Comentários relevantes

Adicione:
- Tipos explícitos (se TypeScript)
- Tratamento de erros moderno
```

---

### Prompt C7: Documentar Inline

```
/doc Adicione documentação a este código:
- JSDoc/Docstring para cada função pública
- Comentários para lógica complexa
- Tipos de parâmetros e retorno
- Exemplos de uso onde útil

Não documente o óbvio. Foque no "porquê", não no "o quê".
```

---

## 🔄 PROMPTS COMBINADOS (Fluxo Completo)

### Fluxo: Nova Feature (Copie em sequência)

**Passo 1 - Claude Code (Planejamento):**
```
Nova feature: [NOME]

Descrição: [O que faz]

Antes de implementar:
1. Analise onde essa feature se encaixa na arquitetura atual
2. Liste os arquivos que precisarão ser criados/modificados
3. Identifique dependências e integrações necessárias
4. Proponha a estrutura de pastas/arquivos
5. Defina as interfaces/tipos principais

Não implemente ainda - apenas planeje.
```

**Passo 2 - Claude Code (Estrutura):**
```
Aprovado o plano. Agora:
1. Crie os arquivos base com estrutura/interfaces
2. Adicione stubs das funções principais
3. Configure imports/exports

Pare antes de implementar a lógica de negócio.
```

**Passo 3 - Copilot (Implementação):**
```
# Na IDE, abra cada arquivo criado
# Use comentários como guia para Copilot:

// TODO: implementar validação de [X]
// TODO: chamar serviço de [Y]  
// TODO: transformar resposta para [Z]

# Tab para aceitar sugestões do Copilot
```

**Passo 4 - Copilot Chat (Testes):**
```
/tests para todos os arquivos em [pasta da feature]
Siga o padrão de testes existente em [exemplo]
```

**Passo 5 - Claude Code (Review):**
```
Feature implementada. Faça review final:

1. Verifique se segue os padrões do projeto
2. Identifique bugs potenciais
3. Sugira melhorias de código
4. Confirme cobertura de testes
5. Liste qualquer débito técnico criado
```

---

## 💾 Salve Seus Prompts Favoritos

Crie um arquivo `prompts.md` no seu diretório home:

```bash
# Criar arquivo de prompts pessoais
touch ~/prompts.md

# Adicionar alias para acessar rapidamente
echo "alias prompts='cat ~/prompts.md'" >> ~/.zshrc
```

---

*Prompts atualizados em Janeiro 2026*
