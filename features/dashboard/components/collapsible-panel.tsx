"use client";

import { useState } from "react";

import { ChevronDown } from "lucide-react";

import { cn } from "@/lib/utils";

export type CollapsiblePanelTone = "critical" | "high" | "medium" | "low";

const TONE: Record<CollapsiblePanelTone, {
  topBar: string; badge: string; badgeText: string; border: string; header: string;
}> = {
  critical: {
    topBar:  "bg-[linear-gradient(90deg,#394E45_0%,#394E45_40%,transparent_100%)]",
    badge:   "bg-[#394E45]/10",
    badgeText: "text-[#394E45]",
    border:  "border-[#394E45]/25",
    header:  "bg-[linear-gradient(135deg,rgba(57,78,69,0.10)_0%,#F5F1E8_100%)]",
  },
  high: {
    topBar:  "bg-[linear-gradient(90deg,#476257_0%,#476257_40%,transparent_100%)]",
    badge:   "bg-[#476257]/10",
    badgeText: "text-[#476257]",
    border:  "border-[#476257]/20",
    header:  "bg-[linear-gradient(135deg,rgba(71,98,87,0.08)_0%,#F5F1E8_100%)]",
  },
  medium: {
    topBar:  "bg-[linear-gradient(90deg,#6B8F80_0%,#6B8F80_40%,transparent_100%)]",
    badge:   "bg-[#6B8F80]/10",
    badgeText: "text-[#6B8F80]",
    border:  "border-[#6B8F80]/30",
    header:  "bg-[linear-gradient(135deg,rgba(107,143,128,0.08)_0%,#F5F1E8_100%)]",
  },
  low: {
    topBar:  "bg-[linear-gradient(90deg,#A3BDB5_0%,#A3BDB5_40%,transparent_100%)]",
    badge:   "bg-[#A3BDB5]/15",
    badgeText: "text-[#6B8F80]",
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
    <div className={cn("overflow-hidden rounded-[1.25rem] border shadow-panel sm:rounded-[1.75rem]", t.border, className)}>
      <span aria-hidden className={cn("block h-[3px] rounded-t-[1.25rem] sm:rounded-t-[1.75rem]", t.topBar)} />
      <div className={cn("relative flex items-start justify-between gap-3 border-b px-4 py-4 sm:gap-4 sm:px-6 sm:py-5", t.border, t.header)}>
        <button
          type="button"
          onClick={() => setOpen((prev) => !prev)}
          className="flex flex-1 items-start gap-3 text-left"
          aria-expanded={open}
        >
          <div className="flex-1">
            <div className="flex flex-wrap items-center gap-2.5">
              <h2 className="font-serif text-2xl font-semibold text-ink">{title}</h2>
              {badge !== undefined && badge !== "" && (
                <span className={cn("inline-flex items-center justify-center rounded-lg px-2.5 py-0.5 text-xs font-bold tabular-nums", t.badge, t.badgeText)}>
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

      {open ? <div className="bg-card px-4 py-4 sm:px-6 sm:py-6">{children}</div> : null}
    </div>
  );
}
