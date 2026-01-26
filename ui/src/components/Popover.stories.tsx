import type { Meta, StoryObj } from "@storybook/react";
import { Popover } from "./Popover";
import { Button } from "./Button";

const meta: Meta<typeof Popover> = {
  title: "Componentes/Popover",
  component: Popover,
  parameters: {
    layout: "centered",
  },
  tags: ["autodocs"],
  argTypes: {
    side: {
      control: "select",
      options: ["top", "right", "bottom", "left"],
      description: "Posição do popover em relação ao trigger",
    },
    align: {
      control: "select",
      options: ["start", "center", "end"],
      description: "Alinhamento do popover",
    },
    sideOffset: {
      control: { type: "number", min: 0, max: 20 },
      description: "Distância do trigger em pixels",
    },
  },
};

export default meta;
type Story = StoryObj<typeof meta>;

export const Default: Story = {
  args: {
    trigger: <Button>Abrir Popover</Button>,
    children: (
      <div>
        <h3 style={{ margin: "0 0 0.5rem 0", fontSize: "1rem" }}>Informações</h3>
        <p style={{ margin: 0, fontSize: "0.875rem", color: "#64748b" }}>
          Este é um popover com informações adicionais.
        </p>
      </div>
    ),
  },
};

export const Top: Story = {
  args: {
    side: "top",
    trigger: <Button>Popover Acima</Button>,
    children: (
      <p style={{ margin: 0, fontSize: "0.875rem" }}>Conteúdo aparece acima do botão</p>
    ),
  },
};

export const Right: Story = {
  args: {
    side: "right",
    trigger: <Button>Popover Direita</Button>,
    children: (
      <p style={{ margin: 0, fontSize: "0.875rem" }}>Conteúdo aparece à direita do botão</p>
    ),
  },
};

export const Left: Story = {
  args: {
    side: "left",
    trigger: <Button>Popover Esquerda</Button>,
    children: (
      <p style={{ margin: 0, fontSize: "0.875rem" }}>Conteúdo aparece à esquerda do botão</p>
    ),
  },
};

export const WithForm: Story = {
  args: {
    trigger: <Button variant="outline">Configurações</Button>,
    children: (
      <div style={{ display: "flex", flexDirection: "column", gap: "0.75rem" }}>
        <h3 style={{ margin: 0, fontSize: "1rem", fontWeight: 600 }}>Dimensões</h3>
        <div style={{ display: "flex", flexDirection: "column", gap: "0.5rem" }}>
          <label style={{ fontSize: "0.875rem" }}>
            Largura
            <input
              type="number"
              defaultValue={100}
              style={{
                width: "100%",
                padding: "0.375rem",
                borderRadius: "0.25rem",
                border: "1px solid #e2e8f0",
                marginTop: "0.25rem",
              }}
            />
          </label>
          <label style={{ fontSize: "0.875rem" }}>
            Altura
            <input
              type="number"
              defaultValue={50}
              style={{
                width: "100%",
                padding: "0.375rem",
                borderRadius: "0.25rem",
                border: "1px solid #e2e8f0",
                marginTop: "0.25rem",
              }}
            />
          </label>
        </div>
      </div>
    ),
  },
};

export const AllPositions: Story = {
  render: () => (
    <div
      style={{
        display: "grid",
        gridTemplateColumns: "repeat(2, 1fr)",
        gap: "1rem",
        padding: "3rem",
      }}
    >
      <Popover side="top" trigger={<Button variant="outline">Top</Button>}>
        <p style={{ margin: 0 }}>Posição: top</p>
      </Popover>
      <Popover side="right" trigger={<Button variant="outline">Right</Button>}>
        <p style={{ margin: 0 }}>Posição: right</p>
      </Popover>
      <Popover side="bottom" trigger={<Button variant="outline">Bottom</Button>}>
        <p style={{ margin: 0 }}>Posição: bottom</p>
      </Popover>
      <Popover side="left" trigger={<Button variant="outline">Left</Button>}>
        <p style={{ margin: 0 }}>Posição: left</p>
      </Popover>
    </div>
  ),
};
