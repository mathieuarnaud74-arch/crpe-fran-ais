"use client";

import { useState } from "react";

import { cn } from "@/lib/utils";

type SubjectTabsProps = {
  frenchContent: React.ReactNode;
  mathContent: React.ReactNode;
  hasMathData: boolean;
};

export function SubjectTabs({ frenchContent, mathContent, hasMathData }: SubjectTabsProps) {
  const [activeTab, setActiveTab] = useState<"french" | "math">("french");

  if (!hasMathData) {
    return <>{frenchContent}</>;
  }

  return (
    <div>
      {/* Tab bar */}
      <div className="mb-4 flex gap-1 rounded-full border border-border bg-secondary/50 p-1">
        <button
          type="button"
          onClick={() => setActiveTab("french")}
          className={cn(
            "flex-1 rounded-full px-4 py-2 text-sm font-semibold transition-colors",
            activeTab === "french"
              ? "bg-card text-ink shadow-subtle"
              : "text-muted hover:text-ink",
          )}
        >
          Fran&ccedil;ais
        </button>
        <button
          type="button"
          onClick={() => setActiveTab("math")}
          className={cn(
            "flex-1 rounded-full px-4 py-2 text-sm font-semibold transition-colors",
            activeTab === "math"
              ? "bg-card text-ink shadow-subtle"
              : "text-muted hover:text-ink",
          )}
        >
          Math&eacute;matiques
        </button>
      </div>

      {/* Tab content */}
      {activeTab === "french" ? frenchContent : mathContent}
    </div>
  );
}
