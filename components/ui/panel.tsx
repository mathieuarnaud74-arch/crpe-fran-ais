import { ReactNode } from "react";

import { cn } from "@/lib/utils";

type PanelProps = {
  children: ReactNode;
  className?: string;
};

export function Panel({ children, className }: PanelProps) {
  return (
    <div className={cn("rounded-[1.75rem] border border-border bg-card p-6 shadow-panel", className)}>
      {children}
    </div>
  );
}
