"use client";

import { useState } from "react";

import { ChevronDown } from "lucide-react";

import { cn } from "@/lib/utils";

export type CollapsiblePanelTone = "critical" | "high" | "medium" | "low";

const TONE: Record<CollapsiblePanelTone, {
  stripe: string; badge: string; border: string; header: string;
}> = {
  critical: {
    stripe:  "bg-[#394E45]",
    badge:   "bg-[#394E45]",
    border:  "border-[#394E45]/25",
    header:  "bg-[linear-gradient(135deg,rgba(57,78,69,0.10)_0%,#F5F1E8_100%)]",
  },
  high: {
    stripe:  "bg-[#476257]",
    badge:   "bg-[#476257]",
    border:  "border-[#476257]/20",
    header:  "bg-[linear-gradient(135deg,rgba(71,98,87,0.08)_0%,#F5F1E8_100%)]",
  },
  medium: {
    stripe:  "bg-[#6B8F80]",
    badge:   "bg-[#6B8F80]",
    border:  "border-[#6B8F80]/30",
    header:  "bg-[linear-gradient(135deg,rgba(107,143,128,0.08)_0%,#F5F1E8_100%)]",
  },
  low: {
    stripe:  "bg-[#A3BDB5]",
    badge:   "bg-[#A3BDB5]",
    border:  "border-[#A3BDB5]/40",
    header:  "bg-[linear-gradient(135deg,rgba(163,189,181,0.10)_0%,#F5F1E8_100%)]",
  },
};

export function CollapsiblePanel({
  title,
  description,
  badge,
  defaultOpen = true,
  tone = "high",
  action,
  children,
  className,
}: {
  title: string;
  description?: string;
  badge?: string | number;
  defaultOpen?: boolean;
  tone?: CollapsiblePanelTone;
  action?: React.ReactNode;
  children: React.ReactNode;
  className?: string;
}) {
  const [open, setOpen] = useState(defaultOpen);
  const t = TONE[tone];

  return (
    <div className={cn("overflow-hidden rounded-[1.75rem] border shadow-panel", t.border, className)}>
      <div className={cn("relative flex items-start justify-between gap-4 border-b px-6 py-5", t.border, t.header)}>
        <span aria-hidden className={cn("absolute left-0 top-0 h-full w-1 rounded-l-[1.75rem]", t.stripe)} />
        <button
          type="button"
          onClick={() => setOpen((prev) => !prev)}
          className="flex flex-1 items-start gap-3 pl-3 text-left"
          aria-expanded={open}
        >
          <div className="flex-1">
            <div className="flex flex-wrap items-center gap-2.5">
              <h2 className="font-serif text-2xl font-semibold text-ink">{title}</h2>
              {badge !== undefined && badge !== "" && (
                <span className={cn("flex h-6 min-w-6 items-center justify-center rounded-full px-1.5 text-xs font-bold text-paper", t.badge)}>
                  {badge}
                </span>
              )}
            </div>
            {description ? (
              <p className="mt-1.5 text-sm leading-6 text-muted">{description}</p>
            ) : null}
          </div>
          <ChevronDown
            className={cn(
              "mt-1 h-5 w-5 shrink-0 text-muted transition-transform duration-200",
              open && "rotate-180",
            )}
          />
        </button>

        {action ? <div className="shrink-0">{action}</div> : null}
      </div>

      {open ? <div className="bg-card px-6 py-6">{children}</div> : null}
    </div>
  );
}
