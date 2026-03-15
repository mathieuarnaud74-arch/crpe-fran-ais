import { ReactNode } from "react";

import { Panel } from "@/components/ui/panel";

type EmptyStateProps = {
  title: string;
  description: string;
  action?: ReactNode;
};

export function EmptyState({ title, description, action }: EmptyStateProps) {
  return (
    <Panel className="border-border bg-card text-center">
      <h2 className="font-serif text-2xl font-semibold text-ink">{title}</h2>
      <p className="mt-3 text-sm leading-6 text-muted">{description}</p>
      {action ? <div className="mt-5">{action}</div> : null}
    </Panel>
  );
}
