"use client";

import { AnimatePresence, motion } from "framer-motion";

import { LEVEL_LABELS } from "@/lib/xp";
import { cn } from "@/lib/utils";

type LevelBadgeProps = {
  level: number;
  size?: "sm" | "md" | "lg";
  className?: string;
};

export function LevelBadge({ level, size = "md", className }: LevelBadgeProps) {
  const label = LEVEL_LABELS[level] ?? `Niveau ${level}`;
  const sizes = {
    sm: "h-8 w-8 text-xs",
    md: "h-10 w-10 text-sm",
    lg: "h-14 w-14 text-lg",
  };

  return (
    <div className={cn("flex items-center gap-2", className)}>
      <AnimatePresence mode="wait">
        <motion.div
          key={level}
          initial={{ scale: 0.5, rotate: -180 }}
          animate={{ scale: 1, rotate: 0 }}
          exit={{ scale: 0.5, rotate: 180 }}
          transition={{ type: "spring", stiffness: 260, damping: 20 }}
          className={cn(
            "flex items-center justify-center rounded-full bg-gradient-to-br from-accent to-accentDark font-serif font-bold text-white shadow-elevated",
            sizes[size],
          )}
        >
          {level}
        </motion.div>
      </AnimatePresence>
      <span className="text-sm font-medium text-ink">{label}</span>
    </div>
  );
}
