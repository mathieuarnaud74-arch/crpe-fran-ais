"use client";

import { useState } from "react";

import { cn } from "@/lib/utils";

type ChartToggleProps = {
  radar: React.ReactNode;
  evolution: React.ReactNode;
};

export function ChartToggle({ radar, evolution }: ChartToggleProps) {
  const [tab, setTab] = useState<"radar" | "evolution">("radar");

  return (
    <div>
      <div className="mb-3 flex gap-1 rounded-full border border-border bg-paper p-1">
        <button
          type="button"
          onClick={() => setTab("radar")}
          className={cn(
            "flex-1 rounded-full px-3 py-1.5 text-xs font-semibold transition-colors",
            tab === "radar" ? "bg-ink text-paper" : "text-muted hover:text-ink",
          )}
        >
          Radar
        </button>
        <button
          type="button"
          onClick={() => setTab("evolution")}
          className={cn(
            "flex-1 rounded-full px-3 py-1.5 text-xs font-semibold transition-colors",
            tab === "evolution" ? "bg-ink text-paper" : "text-muted hover:text-ink",
          )}
        >
          Tendance
        </button>
      </div>
      {tab === "radar" ? radar : evolution}
    </div>
  );
}
