"use client";

import { motion } from "framer-motion";

import { XpBar } from "@/components/ui/xp-bar";
import { LEVEL_LABELS, getXpForNextLevel } from "@/lib/xp";
import { cn } from "@/lib/utils";
import type { UserGamification } from "@/types/domain";

type XpLevelCardProps = {
  gamification: UserGamification;
};

export function XpLevelCard({ gamification }: XpLevelCardProps) {
  const xpInfo = getXpForNextLevel(gamification.xp);
  const label = LEVEL_LABELS[gamification.level] ?? `Niveau ${gamification.level}`;
  const isStreakActive = gamification.current_streak > 0;

  return (
    <motion.div
      initial={{ opacity: 0, y: 10 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.4 }}
      className="rounded-card border border-border bg-card px-4 py-3 shadow-subtle"
    >
      <div className="flex items-center gap-3">
        {/* Level circle — compact */}
        <div className="flex h-9 w-9 shrink-0 items-center justify-center rounded-full bg-gradient-to-br from-accent to-accentDark font-serif text-sm font-bold text-white">
          {gamification.level}
        </div>

        {/* XP bar — fills remaining space */}
        <div className="min-w-0 flex-1">
          <XpBar
            currentLevel={xpInfo.currentLevel}
            xpInCurrentLevel={xpInfo.xpInCurrentLevel}
            xpNeededForNext={xpInfo.xpNeededForNext}
            progress={xpInfo.progress}
            totalXp={gamification.xp}
            size="sm"
            compact
          />
        </div>

        {/* Streak + Record — compact stats */}
        <div className="hidden shrink-0 items-center gap-3 sm:flex">
          <div className="flex items-center gap-1.5 rounded-pill border border-border bg-paper px-2.5 py-1">
            <span className="text-sm">{isStreakActive ? "🔥" : "💤"}</span>
            <span className={cn(
              "text-xs font-bold tabular-nums",
              isStreakActive ? "text-accentSecondary" : "text-muted",
            )}>
              {gamification.current_streak}j
            </span>
          </div>
          {gamification.longest_streak > 0 && (
            <div className="flex items-center gap-1 rounded-pill border border-border bg-paper px-2.5 py-1">
              <span className="text-xs text-muted">🏆</span>
              <span className="text-xs font-bold tabular-nums text-muted">
                {gamification.longest_streak}j
              </span>
            </div>
          )}
        </div>
      </div>

      {/* Mobile streak — visible only on small screens */}
      <div className="mt-2 flex items-center gap-2 sm:hidden">
        <div className="flex items-center gap-1.5 rounded-pill border border-border bg-paper px-2.5 py-1">
          <span className="text-sm">{isStreakActive ? "🔥" : "💤"}</span>
          <span className={cn(
            "text-xs font-bold tabular-nums",
            isStreakActive ? "text-accentSecondary" : "text-muted",
          )}>
            {gamification.current_streak} jour{gamification.current_streak > 1 ? "s" : ""}
          </span>
        </div>
        {gamification.longest_streak > 0 && (
          <span className="text-[10px] text-muted">
            Record : {gamification.longest_streak}j
          </span>
        )}
      </div>
    </motion.div>
  );
}
