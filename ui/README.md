# UI - Biblioteca de Componentes

Biblioteca de componentes React construída com [Radix UI Primitives](https://www.radix-ui.com/primitives) e documentada com [Storybook](https://storybook.js.org/).

## Stack

- **React 19** + TypeScript
- **Vite 6** - Build tool
- **Radix UI** - Componentes acessíveis e sem estilo
- **Storybook 8.6** - Documentação de componentes

## Comandos

```bash
# Instalar dependências
npm install

# Desenvolvimento
npm run dev

# Storybook (documentação de componentes)
npm run storybook

# Build de produção
npm run build

# Build do Storybook
npm run build-storybook
```

## Componentes Disponíveis

| Componente | Descrição                             | Radix Primitive |
| ---------- | ------------------------------------- | --------------- |
| `Button`   | Botão com variantes e tamanhos        | -               |
| `Dialog`   | Modal dialog acessível                | Dialog          |
| `Popover`  | Popover com posicionamento automático | Popover         |
| `Tabs`     | Navegação por abas                    | Tabs            |

## Uso

```tsx
import { Button, Dialog, Popover, Tabs } from "./components";

// Button
<Button variant="primary" size="md">Clique aqui</Button>

// Dialog
<Dialog
  trigger={<Button>Abrir</Button>}
  title="Título"
  description="Descrição"
>
  Conteúdo do dialog
</Dialog>

// Popover
<Popover trigger={<Button>Info</Button>} side="bottom">
  Conteúdo do popover
</Popover>

// Tabs
<Tabs tabs={[
  { value: "tab1", label: "Aba 1", content: <p>Conteúdo 1</p> },
  { value: "tab2", label: "Aba 2", content: <p>Conteúdo 2</p> },
]} />
```

## Estrutura

```
ui/
├── src/
│   ├── components/
│   │   ├── Button.tsx          # Componente Button
│   │   ├── Button.css
│   │   ├── Button.stories.tsx  # Stories do Button
│   │   ├── Dialog.tsx          # Dialog (Radix)
│   │   ├── Dialog.css
│   │   ├── Dialog.stories.tsx
│   │   ├── Popover.tsx         # Popover (Radix)
│   │   ├── Popover.css
│   │   ├── Popover.stories.tsx
│   │   ├── Tabs.tsx            # Tabs (Radix)
│   │   ├── Tabs.css
│   │   ├── Tabs.stories.tsx
│   │   └── index.ts            # Exports
│   └── ...
├── .storybook/
│   ├── main.ts                 # Configuração do Storybook
│   └── preview.ts              # Preview config
└── package.json
```

## Acessibilidade

Todos os componentes baseados em Radix UI seguem as diretrizes [WAI-ARIA](https://www.w3.org/WAI/ARIA/apg/):

- Navegação por teclado
- Screen reader friendly
- Focus management
- ARIA labels apropriados
