import type { ReactNode } from "react";
import { Popover as RadixPopover } from "radix-ui";
import "./Popover.css";

export interface PopoverProps {
  trigger: ReactNode;
  children: ReactNode;
  side?: "top" | "right" | "bottom" | "left";
  align?: "start" | "center" | "end";
  sideOffset?: number;
}

export function Popover({
  trigger,
  children,
  side = "bottom",
  align = "center",
  sideOffset = 5,
}: PopoverProps) {
  return (
    <RadixPopover.Root>
      <RadixPopover.Trigger asChild>{trigger}</RadixPopover.Trigger>
      <RadixPopover.Portal>
        <RadixPopover.Content
          className="popover-content"
          side={side}
          align={align}
          sideOffset={sideOffset}
        >
          {children}
          <RadixPopover.Arrow className="popover-arrow" />
        </RadixPopover.Content>
      </RadixPopover.Portal>
    </RadixPopover.Root>
  );
}
