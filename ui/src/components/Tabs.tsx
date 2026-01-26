import type { ReactNode } from "react";
import { Tabs as RadixTabs } from "radix-ui";
import "./Tabs.css";

export interface Tab {
  value: string;
  label: string;
  content: ReactNode;
}

export interface TabsProps {
  tabs: Tab[];
  defaultValue?: string;
  onValueChange?: (value: string) => void;
}

export function Tabs({ tabs, defaultValue, onValueChange }: TabsProps) {
  return (
    <RadixTabs.Root
      className="tabs-root"
      defaultValue={defaultValue || tabs[0]?.value}
      onValueChange={onValueChange}
    >
      <RadixTabs.List className="tabs-list" aria-label="Navegação por abas">
        {tabs.map((tab) => (
          <RadixTabs.Trigger
            key={tab.value}
            className="tabs-trigger"
            value={tab.value}
          >
            {tab.label}
          </RadixTabs.Trigger>
        ))}
      </RadixTabs.List>
      {tabs.map((tab) => (
        <RadixTabs.Content
          key={tab.value}
          className="tabs-content"
          value={tab.value}
        >
          {tab.content}
        </RadixTabs.Content>
      ))}
    </RadixTabs.Root>
  );
}
