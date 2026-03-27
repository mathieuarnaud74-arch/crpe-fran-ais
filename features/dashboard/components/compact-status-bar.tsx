"use client";

import Link from "next/link";
import { motion } from "framer-motion";

import { Badge } from "@/components/ui/badge";
import { XpBar } from "@/components/ui/xp-bar";
import { XP_LEVEL_LABELS, getXpForNextLevel } from "@/lib/xp";
import { cn } from "@/lib/utils";
import type { UserGamification } from "@/types/domain";

function MiniGoalRing({ current, goal }: { current: number; goal: number }) {
  const pct = Math.min(current / goal, 1);
  const radius = 13;
  const circumference = 2 * Math.PI * radius;
  const strokeDashoffset = circumference * (1 - pct);
  const isComplete = pct >= 1;

  return (
    <div className="relative h-8 w-8 shrink-0">
      <svg viewBox="0 0 32 32" className="h-8 w-8 -rotate-90" aria-hidden="true">
        <circle cx="16" cy="16" r={radius} fill="none" stroke="currentColor" className="text-border" strokeWidth="2.5" />
        <circle
          cx="16" cy="16" r={radius} fill="none"
          stroke={isComplete ? "#6EE7B7" : "#A46849"}
          strokeWidth="2.5" strokeLinecap="round"
          strokeDasharray={circumference} strokeDashoffset={strokeDashoffset}
          style={{ transition: "stroke-dashoffset 0.5s ease-out" }}
        />
      </svg>
      {isComplete && (
        <span className="absolute inset-0 flex items-center justify-center text-[10px]">&#x2714;</span>
      )}
    </div>
  );
}

type CompactStatusBarProps = {
  gamification: UserGamification;
  overallScore: number | null;
  dailyProgress: number;
  dailyGoal: number;
  isPremium: boolean;
  masteredSessions: number;
  totalSeries: number;
  srsDueCount?: number;
};

export function CompactStatusBar({
  gamification,
  overallScore,
  dailyProgress,
  dailyGoal,
  isPremium,
  masteredSessions,
  totalSeries,
  srsDueCount,
}: CompactStatusBarProps) {
  const xpInfo = getXpForNextLevel(gamification.xp);
  const label = XP_LEVEL_LABELS[gamification.level] ?? `Niveau ${gamification.level}`;
  const isStreakActive = gamification.daily_streak > 0;
  const masteryPct = totalSeries > 0 ? Math.round((masteredSessions / totalSeries) * 100) : 0;

  return (
    <motion.div
      initial={{ opacity: 0, y: 8 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.35 }}
      data-tour="stats-strip"
      className="overflow-x-auto rounded-card border border-border bg-card shadow-subtle scrollbar-none"
    >
      <div className="flex min-w-max items-center gap-3 px-4 py-2.5 sm:gap-4 sm:px-5">
        {/* Level circle */}
        <div className="flex items-center gap-2.5 shrink-0">
          <div className="flex h-9 w-9 shrink-0 items-center justify-center rounded-full bg-gradient-to-br from-accent to-accentDark font-serif text-sm font-bold text-white">
            {gamification.level}
          </div>
          <div className="min-w-0" style={{ width: "clamp(100px, 14vw, 180px)" }}>
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
        </div>

        {/* Separator */}
        <span aria-hidden className="h-6 w-px bg-border shrink-0" />

        {/* Streak */}
        <div className="flex items-center gap-1.5 shrink-0">
          <span className="text-sm">{isStreakActive ? "\uD83D\uDD25" : "\uD83D\uDCA4"}</span>
          <span className={cn(
            "text-xs font-bold tabular-nums",
            isStreakActive ? "text-accentSecondary" : "text-muted",
          )}>
            {gamification.daily_streak}j
          </span>
        </div>

        <span aria-hidden className="h-6 w-px bg-border shrink-0" />

        {/* Score global */}
        <div className="flex items-center gap-1.5 shrink-0">
          <span className="text-xs text-muted">Score</span>
          <span className="text-sm font-bold tabular-nums text-accent">
            {overallScore !== null ? `${overallScore}%` : "\u2014"}
          </span>
        </div>

        <span aria-hidden className="h-6 w-px bg-border shrink-0" />

        {/* Mastery */}
        <div className="flex items-center gap-1.5 shrink-0">
          <span className="text-xs text-muted">Acquis</span>
          <span className="text-sm font-bold tabular-nums text-pine">
            {masteredSessions}/{totalSeries}
          </span>
        </div>

        <span aria-hidden className="h-6 w-px bg-border shrink-0" />

        {/* Daily goal ring */}
        <div className="flex items-center gap-2 shrink-0">
          <MiniGoalRing current={dailyProgress} goal={dailyGoal} />
          <div className="leading-none">
            <span className="text-xs font-bold tabular-nums text-ink">
              {Math.min(dailyProgress, dailyGoal)}/{dailyGoal}
            </span>
          </div>
        </div>

        {/* SRS due */}
        {srsDueCount != null && srsDueCount > 0 && (
          <>
            <span aria-hidden className="h-6 w-px bg-border shrink-0" />
            <Link
              href="/revision"
              className="flex items-center gap-1.5 shrink-0 rounded-full border border-accent/25 bg-accent/5 px-2.5 py-1 transition hover:bg-accent/10"
            >
              <span className="text-xs" aria-hidden>&#x1F9E0;</span>
              <span className="text-xs font-bold tabular-nums text-accent">{srsDueCount}</span>
              <span className="text-xs text-accent/70">&agrave; r&eacute;viser</span>
            </Link>
          </>
        )}

        {/* Premium badge */}
        {isPremium && (
          <>
            <span aria-hidden className="h-6 w-px bg-border shrink-0" />
            <Badge tone="accentSecondary" size="sm">Premium</Badge>
          </>
        )}
      </div>
    </motion.div>
  );
}
