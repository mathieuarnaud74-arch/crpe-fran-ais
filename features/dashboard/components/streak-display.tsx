"use client";

import { motion } from "framer-motion";

import { cn } from "@/lib/utils";

type StreakDisplayProps = {
  currentStreak: number;
  longestStreak: number;
  className?: string;
};

export function StreakDisplay({ currentStreak, longestStreak, className }: StreakDisplayProps) {
  const isActive = currentStreak > 0;

  return (
    <div className={cn("flex items-center gap-4", className)}>
      <motion.div
        animate={isActive ? { scale: [1, 1.15, 1] } : undefined}
        transition={{ repeat: Infinity, duration: 1.5 }}
        className={cn(
          "flex h-14 w-14 items-center justify-center rounded-full",
          isActive
            ? "bg-gradient-to-br from-accentSecondary to-accentSecondaryDark shadow-elevated"
            : "bg-secondary",
        )}
      >
        <span className="text-2xl">{isActive ? "🔥" : "💤"}</span>
      </motion.div>
      <div>
        <p className="font-serif text-2xl font-bold text-ink">
          {currentStreak} jour{currentStreak > 1 ? "s" : ""}
        </p>
        <p className="text-xs text-muted">
          {isActive ? "Streak en cours" : "Pas de streak actif"}
          {longestStreak > 0 && ` · Record : ${longestStreak}j`}
        </p>
      </div>
    </div>
  );
}
