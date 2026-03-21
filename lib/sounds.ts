// ─── Sound System ─────────────────────────────────────────

export type SoundId =
  | "correct"
  | "incorrect"
  | "streak"
  | "levelUp"
  | "timerWarning"
  | "badgeUnlock";

export const SOUND_FILES: Record<SoundId, string> = {
  correct: "/sounds/correct.mp3",
  incorrect: "/sounds/incorrect.mp3",
  streak: "/sounds/streak.mp3",
  levelUp: "/sounds/level-up.mp3",
  timerWarning: "/sounds/timer-warning.mp3",
  badgeUnlock: "/sounds/badge-unlock.mp3",
};
