### Problema
A validação de conteúdo está falhando em múltiplos arquivos HTML devido a problemas de conformidade com as regras do html-validate:

1. **Botões sem atributo `type`** (`no-implicit-button-type`)
2. **Estilos inline não permitidos** (`no-inline-style`)

Esses problemas foram identificados no job de validação #61463287992 e precisam ser corrigidos em todos os arquivos HTML do repositório.

### Erros identificados

No arquivo `modulo6_repo/assets/html/modulo6_dashboard_aluno.html`:
- Linhas 653, 695, 696, 697, 713, 714, 715: `<button>` sem atributo `type`
- Linha 706: uso de `style` inline na barra de progresso

### Solução proposta

#### 1. Adicionar `type="button"` em todos os botões
Todos os elementos `<button>` que não fazem submit de formulário devem ter `type="button"` explicitamente:

```html
<!-- ❌ Errado -->
<button class="timer-btn start" onclick="startTimer()">▶️ Iniciar</button>

<!-- ✅ Correto -->
<button class="timer-btn start" onclick="startTimer()" type="button">▶️ Iniciar</button>
```

#### 2. Remover estilos inline
Substituir todos os `style=""` inline por classes CSS ou controlar via JavaScript:

```html
<!-- ❌ Errado -->
<div class="progress-bar" id="overallProgressBar" style="width: 0%"></div>

<!-- ✅ Correto -->
<div class="progress-bar" id="overallProgressBar"></div>
```

E no JavaScript, garantir que a largura seja definida programaticamente:
```javascript
document.getElementById('overallProgressBar').style.width = '0%';
```

### Escopo
Verificar e corrigir **todos os arquivos HTML** no repositório:
- `modulo6_repo/assets/html/*.html`
- Qualquer outro diretório que contenha arquivos `.html`

### Critérios de aceitação
- [ ] Todos os `<button>` possuem atributo `type` explícito
- [ ] Nenhum elemento possui atributo `style` inline
- [ ] O workflow de validação `.github/workflows/validate-content.yml` passa sem erros
- [ ] A funcionalidade dos dashboards permanece inalterada

### Referências
- [no-implicit-button-type](https://html-validate.org/rules/no-implicit-button-type.html)
- [no-inline-style](https://html-validate.org/rules/no-inline-style.html)
- Job com falha: commit 39864fff6e7e51d400fa32b67acec54c3dfee744

### Riscos e trade-offs
- **Risco baixo**: Correções não afetam comportamento, apenas conformidade
- **Atenção**: Ao remover styles inline de barras de progresso, verificar se o JS inicializa corretamente o width

---
**Prioridade**: Alta