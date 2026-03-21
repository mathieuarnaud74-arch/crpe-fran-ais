"use client";

import { ChevronDown } from "lucide-react";
import { useState } from "react";

import { AchievementBadges } from "@/components/ui/achievement-badges";
import { cn } from "@/lib/utils";
import { EarnedBadge } from "@/types/domain";

const TOTAL_BADGES = 116;

type BadgesSummaryProps = {
  earnedBadges: EarnedBadge[];
};

export function BadgesSummary({ earnedBadges }: BadgesSummaryProps) {
  const [open, setOpen] = useState(false);
  const progress = Math.round((earnedBadges.length / TOTAL_BADGES) * 100);
  const lastEarned = earnedBadges.slice(-3);

  return (
    <div className="rounded-[1.25rem] border border-border bg-card shadow-subtle">
      <button
        type="button"
        onClick={() => setOpen((prev) => !prev)}
        className="flex w-full items-center gap-3 rounded-t-[1.25rem] px-4 py-3 text-left transition-colors hover:bg-paper/50 sm:gap-4 sm:px-5 sm:py-4"
      >
        <div className="flex min-w-0 flex-1 flex-wrap items-center gap-x-4 gap-y-2">
          <span className="text-xs font-semibold uppercase tracking-[0.16em] text-accentSecondary">
            Badges
          </span>
          <span className="text-sm font-semibold text-ink">
            {earnedBadges.length}/{TOTAL_BADGES}
          </span>
          <div className="hidden h-1.5 w-24 overflow-hidden rounded-full bg-secondary sm:block">
            <div
              className="h-full rounded-full bg-gradient-to-r from-[#476257] to-[#6B8F80] transition-all duration-500"
              style={{ width: `${progress}%` }}
            />
          </div>
          {lastEarned.length > 0 && (
            <div className="hidden items-center gap-1 sm:flex">
              {lastEarned.map((b) => (
                <span key={b.id} className="text-lg" title={b.label}>
                  {b.icon}
                </span>
              ))}
            </div>
          )}
        </div>
        <ChevronDown
          className={cn(
            "h-4 w-4 shrink-0 text-muted transition-transform duration-200",
            open && "rotate-180",
          )}
        />
      </button>

      {open && (
        <div className="overflow-visible rounded-b-[1.25rem] border-t border-border px-4 py-3 sm:px-5 sm:py-4">
          <AchievementBadges earnedBadges={earnedBadges} />
        </div>
      )}
    </div>
  );
}
