import type { Meta, StoryObj } from "@storybook/react";
import { Tabs } from "./Tabs";
import type { Tab } from "./Tabs";

const meta: Meta<typeof Tabs> = {
  title: "Componentes/Tabs",
  component: Tabs,
  parameters: {
    layout: "centered",
  },
  tags: ["autodocs"],
};

export default meta;
type Story = StoryObj<typeof meta>;

const defaultTabs: Tab[] = [
  {
    value: "account",
    label: "Conta",
    content: (
      <div>
        <h3 style={{ margin: "0 0 0.5rem 0" }}>Configurações da Conta</h3>
        <p style={{ color: "#64748b", margin: 0 }}>
          Gerencie suas informações de conta e preferências.
        </p>
      </div>
    ),
  },
  {
    value: "password",
    label: "Senha",
    content: (
      <div>
        <h3 style={{ margin: "0 0 0.5rem 0" }}>Alterar Senha</h3>
        <p style={{ color: "#64748b", margin: 0 }}>
          Atualize sua senha para manter sua conta segura.
        </p>
      </div>
    ),
  },
  {
    value: "notifications",
    label: "Notificações",
    content: (
      <div>
        <h3 style={{ margin: "0 0 0.5rem 0" }}>Preferências de Notificação</h3>
        <p style={{ color: "#64748b", margin: 0 }}>
          Configure quais notificações você deseja receber.
        </p>
      </div>
    ),
  },
];

export const Default: Story = {
  args: {
    tabs: defaultTabs,
  },
};

export const TwoTabs: Story = {
  args: {
    tabs: [
      {
        value: "overview",
        label: "Visão Geral",
        content: <p>Conteúdo da visão geral do projeto.</p>,
      },
      {
        value: "analytics",
        label: "Analytics",
        content: <p>Gráficos e métricas de análise.</p>,
      },
    ],
  },
};

export const ManyTabs: Story = {
  args: {
    tabs: [
      { value: "tab1", label: "Início", content: <p>Conteúdo do início</p> },
      { value: "tab2", label: "Produtos", content: <p>Lista de produtos</p> },
      { value: "tab3", label: "Serviços", content: <p>Nossos serviços</p> },
      { value: "tab4", label: "Sobre", content: <p>Sobre a empresa</p> },
      { value: "tab5", label: "Contato", content: <p>Informações de contato</p> },
    ],
  },
};

export const WithDefaultValue: Story = {
  args: {
    tabs: defaultTabs,
    defaultValue: "password",
  },
};

export const DataManagement: Story = {
  args: {
    tabs: [
      {
        value: "pipeline",
        label: "Pipeline",
        content: (
          <div>
            <h3 style={{ margin: "0 0 1rem 0" }}>Pipeline de Dados</h3>
            <ul style={{ margin: 0, paddingLeft: "1.25rem", color: "#475569" }}>
              <li>Extração de dados (ETL)</li>
              <li>Transformação e limpeza</li>
              <li>Carga no data warehouse</li>
            </ul>
          </div>
        ),
      },
      {
        value: "quality",
        label: "Qualidade",
        content: (
          <div>
            <h3 style={{ margin: "0 0 1rem 0" }}>Qualidade de Dados</h3>
            <ul style={{ margin: 0, paddingLeft: "1.25rem", color: "#475569" }}>
              <li>Validação de schemas</li>
              <li>Detecção de anomalias</li>
              <li>Monitoramento contínuo</li>
            </ul>
          </div>
        ),
      },
      {
        value: "governance",
        label: "Governança",
        content: (
          <div>
            <h3 style={{ margin: "0 0 1rem 0" }}>Governança de Dados</h3>
            <ul style={{ margin: 0, paddingLeft: "1.25rem", color: "#475569" }}>
              <li>Políticas de acesso</li>
              <li>Compliance (LGPD)</li>
              <li>Catálogo de dados</li>
            </ul>
          </div>
        ),
      },
    ],
  },
};
