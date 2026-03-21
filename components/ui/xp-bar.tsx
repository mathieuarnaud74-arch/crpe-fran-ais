"use client";

import { motion } from "framer-motion";

import { LEVEL_LABELS } from "@/lib/xp";
import { cn } from "@/lib/utils";

type XpBarProps = {
  currentLevel: number;
  xpInCurrentLevel: number;
  xpNeededForNext: number;
  progress: number;
  totalXp: number;
  size?: "sm" | "md" | "lg";
  compact?: boolean;
  className?: string;
};

export function XpBar({
  currentLevel,
  xpInCurrentLevel,
  xpNeededForNext,
  progress,
  totalXp,
  size = "md",
  compact = false,
  className,
}: XpBarProps) {
  const label = LEVEL_LABELS[currentLevel] ?? `Niveau ${currentLevel}`;
  const heights = { sm: "h-1.5", md: "h-2.5", lg: "h-3.5" };

  if (compact) {
    return (
      <div className={cn("w-full", className)}>
        <div className="mb-0.5 flex items-baseline justify-between">
          <span className="text-[11px] font-semibold text-ink">{label}</span>
          <span className="text-[10px] tabular-nums text-muted">
            {xpInCurrentLevel}/{xpNeededForNext} XP
          </span>
        </div>
        <div className={cn("w-full overflow-hidden rounded-full bg-secondary", heights[size])}>
          <motion.div
            className="h-full rounded-full bg-gradient-to-r from-accent to-accentSecondary"
            initial={{ width: 0 }}
            animate={{ width: `${progress * 100}%` }}
            transition={{ duration: 0.8, ease: "easeOut" }}
          />
        </div>
      </div>
    );
  }

  return (
    <div className={cn("w-full", className)}>
      <div className="mb-1 flex items-center justify-between">
        <div className="flex items-center gap-2">
          <span className="rounded-pill bg-accent px-2.5 py-0.5 text-xs font-bold text-white">
            Niv. {currentLevel}
          </span>
          <span className="text-sm font-medium text-ink">{label}</span>
        </div>
        <span className="text-xs text-muted">
          {totalXp.toLocaleString("fr-FR")} XP
        </span>
      </div>

      <div className={cn("w-full overflow-hidden rounded-full bg-secondary", heights[size])}>
        <motion.div
          className="h-full rounded-full bg-gradient-to-r from-accent to-accentSecondary"
          initial={{ width: 0 }}
          animate={{ width: `${progress * 100}%` }}
          transition={{ duration: 0.8, ease: "easeOut" }}
        />
      </div>

      <div className="mt-0.5 flex justify-between">
        <span className="text-[10px] text-muted">
          {xpInCurrentLevel} / {xpNeededForNext} XP
        </span>
        <span className="text-[10px] text-muted">
          Niv. {currentLevel + 1}
        </span>
      </div>
    </div>
  );
}
