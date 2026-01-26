import type { Meta, StoryObj } from "@storybook/react";
import { Button } from "./Button";

const meta: Meta<typeof Button> = {
  title: "Componentes/Button",
  component: Button,
  parameters: {
    layout: "centered",
  },
  tags: ["autodocs"],
  argTypes: {
    variant: {
      control: "select",
      options: ["primary", "secondary", "outline", "ghost"],
      description: "Estilo visual do botão",
    },
    size: {
      control: "select",
      options: ["sm", "md", "lg"],
      description: "Tamanho do botão",
    },
    disabled: {
      control: "boolean",
      description: "Estado desabilitado",
    },
  },
};

export default meta;
type Story = StoryObj<typeof meta>;

export const Primary: Story = {
  args: {
    children: "Botão Primário",
    variant: "primary",
  },
};

export const Secondary: Story = {
  args: {
    children: "Botão Secundário",
    variant: "secondary",
  },
};

export const Outline: Story = {
  args: {
    children: "Botão Outline",
    variant: "outline",
  },
};

export const Ghost: Story = {
  args: {
    children: "Botão Ghost",
    variant: "ghost",
  },
};

export const Small: Story = {
  args: {
    children: "Pequeno",
    size: "sm",
  },
};

export const Large: Story = {
  args: {
    children: "Grande",
    size: "lg",
  },
};

export const Disabled: Story = {
  args: {
    children: "Desabilitado",
    disabled: true,
  },
};

export const AllVariants: Story = {
  render: () => (
    <div style={{ display: "flex", gap: "1rem", flexWrap: "wrap" }}>
      <Button variant="primary">Primary</Button>
      <Button variant="secondary">Secondary</Button>
      <Button variant="outline">Outline</Button>
      <Button variant="ghost">Ghost</Button>
    </div>
  ),
};

export const AllSizes: Story = {
  render: () => (
    <div style={{ display: "flex", gap: "1rem", alignItems: "center" }}>
      <Button size="sm">Small</Button>
      <Button size="md">Medium</Button>
      <Button size="lg">Large</Button>
    </div>
  ),
};
