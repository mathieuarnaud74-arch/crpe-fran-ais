// ─── XP & Leveling System ─────────────────────────────────

import type { ExerciseMode } from "@/types/domain";

export const XP_PER_CORRECT = 10;
export const XP_PER_INCORRECT = 2; // participation XP

/** Level thresholds: index = level number, value = cumulative XP needed */
export const LEVEL_THRESHOLDS = [
  0,     // Level 1: 0 XP
  100,   // Level 2: 100 XP
  300,   // Level 3: 300 XP
  600,   // Level 4: 600 XP
  1000,  // Level 5: 1000 XP
  1500,  // Level 6
  2200,  // Level 7
  3000,  // Level 8
  4000,  // Level 9
  5200,  // Level 10
  6600,  // Level 11
  8200,  // Level 12
  10000, // Level 13
  12000, // Level 14
  14500, // Level 15
  17500, // Level 16
  21000, // Level 17
  25000, // Level 18
  30000, // Level 19
  36000, // Level 20
];

export const XP_LEVEL_LABELS: Record<number, string> = {
  1: "Débutant",
  2: "Apprenti",
  3: "Élève",
  4: "Étudiant",
  5: "Candidat",
  6: "Préparé",
  7: "Compétent",
  8: "Confirmé",
  9: "Avancé",
  10: "Expert",
  11: "Maître",
  12: "Virtuose",
  13: "Érudit",
  14: "Savant",
  15: "Professeur",
  16: "Mentor",
  17: "Académicien",
  18: "Sommité",
  19: "Légende",
  20: "Grand Maître",
};

export function getLevelForXp(xp: number): number {
  for (let i = LEVEL_THRESHOLDS.length - 1; i >= 0; i--) {
    if (xp >= LEVEL_THRESHOLDS[i]) return i + 1;
  }
  return 1;
}

export function getXpForNextLevel(currentXp: number): {
  currentLevel: number;
  xpInCurrentLevel: number;
  xpNeededForNext: number;
  progress: number;
} {
  const level = getLevelForXp(currentXp);
  const currentThreshold = LEVEL_THRESHOLDS[level - 1] ?? 0;
  const nextThreshold = LEVEL_THRESHOLDS[level] ?? LEVEL_THRESHOLDS[LEVEL_THRESHOLDS.length - 1] + 5000;
  const xpInCurrentLevel = currentXp - currentThreshold;
  const xpNeededForNext = nextThreshold - currentThreshold;

  return {
    currentLevel: level,
    xpInCurrentLevel,
    xpNeededForNext,
    progress: Math.min(xpInCurrentLevel / xpNeededForNext, 1),
  };
}

export function calculateStreakMultiplier(streak: number): number {
  if (streak >= 10) return 2;
  if (streak >= 5) return 1.5;
  return 1;
}

export function calculateSpeedBonus(timeSpentMs: number | null, maxTimeMs: number): number {
  if (!timeSpentMs || timeSpentMs <= 0) return 0;
  const ratio = 1 - timeSpentMs / maxTimeMs;
  if (ratio <= 0) return 0;
  return Math.round(ratio * 5); // up to 5 bonus XP
}

const MODE_MULTIPLIERS: Record<ExerciseMode, number> = {
  standard: 1,
  timed: 1.5,
  sprint: 2,
  swipe: 1.2,
};

export function calculateDailyStreakMultiplier(dailyStreak: number): number {
  if (dailyStreak >= 30) return 1.5;
  if (dailyStreak >= 14) return 1.3;
  if (dailyStreak >= 7) return 1.2;
  if (dailyStreak >= 3) return 1.1;
  return 1;
}

export function calculateXpEarned(
  isCorrect: boolean,
  streak: number,
  timeSpentMs: number | null,
  mode: ExerciseMode = "standard",
  maxTimeMs: number = 60_000,
  dailyStreak: number = 0,
): number {
  const base = isCorrect ? XP_PER_CORRECT : XP_PER_INCORRECT;
  const streakMult = isCorrect ? calculateStreakMultiplier(streak) : 1;
  const speedBonus = isCorrect ? calculateSpeedBonus(timeSpentMs, maxTimeMs) : 0;
  const modeMult = MODE_MULTIPLIERS[mode];
  const dailyMult = isCorrect ? calculateDailyStreakMultiplier(dailyStreak) : 1;

  return Math.round((base * streakMult + speedBonus) * modeMult * dailyMult);
}
