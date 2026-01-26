import type { Meta, StoryObj } from "@storybook/react";
import { Dialog } from "./Dialog";
import { Button } from "./Button";
import { useState } from "react";

const meta: Meta<typeof Dialog> = {
  title: "Componentes/Dialog",
  component: Dialog,
  parameters: {
    layout: "centered",
  },
  tags: ["autodocs"],
};

export default meta;
type Story = StoryObj<typeof meta>;

export const Default: Story = {
  args: {
    title: "Título do Dialog",
    description: "Esta é uma descrição opcional que explica o propósito deste dialog.",
    trigger: <Button>Abrir Dialog</Button>,
    children: (
      <div style={{ marginTop: "1rem" }}>
        <p style={{ margin: 0, color: "#475569" }}>
          Conteúdo do dialog vai aqui. Pode ser qualquer elemento React.
        </p>
      </div>
    ),
  },
};

export const WithForm: Story = {
  args: {
    title: "Editar Perfil",
    description: "Faça alterações no seu perfil aqui.",
    trigger: <Button>Editar Perfil</Button>,
    children: (
      <div style={{ display: "flex", flexDirection: "column", gap: "1rem", marginTop: "1rem" }}>
        <fieldset style={{ border: "none", padding: 0, margin: 0 }}>
          <label
            htmlFor="name"
            style={{ display: "block", marginBottom: "0.25rem", fontSize: "0.875rem" }}
          >
            Nome
          </label>
          <input
            id="name"
            defaultValue="João Silva"
            style={{
              width: "100%",
              padding: "0.5rem",
              borderRadius: "0.375rem",
              border: "1px solid #e2e8f0",
            }}
          />
        </fieldset>
        <fieldset style={{ border: "none", padding: 0, margin: 0 }}>
          <label
            htmlFor="email"
            style={{ display: "block", marginBottom: "0.25rem", fontSize: "0.875rem" }}
          >
            Email
          </label>
          <input
            id="email"
            defaultValue="joao@email.com"
            style={{
              width: "100%",
              padding: "0.5rem",
              borderRadius: "0.375rem",
              border: "1px solid #e2e8f0",
            }}
          />
        </fieldset>
        <div style={{ display: "flex", justifyContent: "flex-end", marginTop: "0.5rem" }}>
          <Button>Salvar Alterações</Button>
        </div>
      </div>
    ),
  },
};

export const Controlled: Story = {
  render: () => {
    const [open, setOpen] = useState(false);
    return (
      <div>
        <Button onClick={() => setOpen(true)}>Abrir Dialog Controlado</Button>
        <Dialog
          open={open}
          onOpenChange={setOpen}
          title="Dialog Controlado"
          description="Este dialog é controlado programaticamente."
        >
          <div style={{ marginTop: "1rem" }}>
            <p style={{ margin: 0, marginBottom: "1rem", color: "#475569" }}>
              O estado do dialog é controlado pelo componente pai.
            </p>
            <Button onClick={() => setOpen(false)}>Fechar</Button>
          </div>
        </Dialog>
      </div>
    );
  },
};

export const Confirmation: Story = {
  args: {
    title: "Tem certeza?",
    description: "Esta ação não pode ser desfeita. Isso excluirá permanentemente sua conta.",
    trigger: <Button variant="outline">Excluir Conta</Button>,
    children: (
      <div
        style={{
          display: "flex",
          justifyContent: "flex-end",
          gap: "0.5rem",
          marginTop: "1.5rem",
        }}
      >
        <Button variant="ghost">Cancelar</Button>
        <Button
          style={{ backgroundColor: "#dc2626" }}
          onClick={() => alert("Conta excluída!")}
        >
          Sim, excluir
        </Button>
      </div>
    ),
  },
};
