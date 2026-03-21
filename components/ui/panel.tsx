import { type HTMLAttributes, type ReactNode } from "react";

import { cn } from "@/lib/utils";

type PanelProps = HTMLAttributes<HTMLDivElement> & {
  children: ReactNode;
  className?: string;
};

export function Panel({ children, className, ...rest }: PanelProps) {
  return (
    <div
      className={cn("rounded-[1.25rem] border border-border bg-card p-4 shadow-panel sm:rounded-[1.75rem] sm:p-6", className)}
      {...rest}
    >
      {children}
    </div>
  );
}
