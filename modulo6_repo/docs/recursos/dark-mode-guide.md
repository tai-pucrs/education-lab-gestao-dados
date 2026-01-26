# 🌙 Modo Escuro - Guia de Uso

O sistema de modo escuro foi implementado em todos os dashboards HTML do Módulo 6 para melhorar a experiência do usuário e reduzir a fadiga visual.

---

## ✨ Funcionalidades

### 🎨 Toggle de Tema
- **Botão flutuante** no canto superior direito
- Ícone 🌙 (modo claro) ou ☀️ (modo escuro)
- Clique para alternar entre temas
- Transição suave de 300ms

### ⌨️ Atalho de Teclado
- **Ctrl + Shift + D** para alternar rapidamente
- Funciona em qualquer parte da página

### 💾 Persistência
- Preferência salva em `localStorage`
- Mantém escolha entre recarregamentos
- Sincronizado entre páginas do módulo

---

## 🎨 Paleta de Cores

### Modo Claro (Padrão)
```css
--bg-primary: #FFFFFF
--bg-secondary: #F5F6FA
--text-primary: #2C3E50
--text-secondary: #7F8C8D
--accent: #6B4C9A
```

### Modo Escuro
```css
--bg-primary: #1E1E1E
--bg-secondary: #2D2D2D
--text-primary: #E0E0E0
--text-secondary: #B0B0B0
--accent: #9B7EBD
```

---

## ♿ Acessibilidade

### Contraste (WCAG AA)
- ✅ Modo claro: Contraste 4.5:1 (texto normal)
- ✅ Modo escuro: Contraste 4.5:1 (texto normal)
- ✅ Modo claro: Contraste 3:1 (texto grande)
- ✅ Modo escuro: Contraste 3:1 (texto grande)

### Suporte a Leitores de Tela
- `aria-label="Alternar tema claro/escuro"`
- Atributo `title` atualizado dinamicamente
- Estado do botão acessível via ARIA

---

## 🔧 Implementação Técnica

### Arquitetura
```
modulo6_repo/assets/
├── js/
│   └── dark-mode.js        # Sistema de dark mode
└── html/
    ├── modulo6_dashboard_aluno.html
    ├── modulo6_dashboard_producao.html
    ├── framework_gestao_dados_completo.html
    └── modulo6_framework_interativo.html
```

### Integração
Cada HTML inclui no final do `<body>`:
```html
<!-- Dark Mode Toggle -->
<script src="../js/dark-mode.js"></script>
```

### Evento Customizado
O sistema dispara evento `themechange` quando o tema é alterado:
```javascript
window.addEventListener('themechange', (e) => {
  console.log('Novo tema:', e.detail.theme);
  // Seu código aqui
});
```

---

## 🧪 Testado Em

### Navegadores
- ✅ Chrome/Edge 100+
- ✅ Firefox 100+
- ✅ Safari 15+
- ✅ Chrome Mobile
- ✅ Safari Mobile

### Dispositivos
- ✅ Desktop (Windows, macOS, Linux)
- ✅ Tablet (iPad, Android)
- ✅ Smartphone (iOS, Android)

---

## 🐛 Resolução de Problemas

### O tema não persiste entre recarregamentos
**Causa:** localStorage desabilitado ou em modo privado  
**Solução:** Navegador em modo normal com cookies/storage habilitados

### Alguns elementos não mudam de cor
**Causa:** Seletores CSS específicos podem ter prioridade  
**Solução:** Adicione `!important` ou ajuste especificidade no CSS

### Botão não aparece
**Causa:** JavaScript bloqueado ou caminho do script incorreto  
**Solução:** Verifique console do navegador e caminho do arquivo

---

## 🔮 Funcionalidades Futuras

### Planejado para v2.0
- [ ] Detecção automática de preferência do sistema (`prefers-color-scheme`)
- [ ] Mais variações de tema (alto contraste, deuteranopia, etc.)
- [ ] Agendamento automático (modo escuro à noite)
- [ ] Personalização de cores pelo usuário

---

## 📞 Suporte

Para reportar bugs ou sugerir melhorias no modo escuro:
1. Abra uma issue usando o template "Correção de Conteúdo"
2. Inclua:
   - Navegador e versão
   - Sistema operacional
   - Screenshot (se visual)
   - Passos para reproduzir

---

**Versão:** 1.0 • Modo Escuro • Módulo 6  
**Última atualização:** 2026-01-26
