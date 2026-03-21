import { ReactNode } from "react";

import { cn } from "@/lib/utils";

type PanelProps = {
  children: ReactNode;
  className?: string;
};

export function Panel({ children, className }: PanelProps) {
  return (
    <div className={cn("rounded-[1.25rem] border border-border bg-card p-4 shadow-panel sm:rounded-[1.75rem] sm:p-6", className)}>
      {children}
    </div>
  );
}
