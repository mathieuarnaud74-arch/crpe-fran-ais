"use client";

import { useCallback, useEffect, useRef } from "react";
import useSound from "use-sound";

import { type SoundId, SOUND_FILES } from "@/lib/sounds";

type UseGameSoundsOptions = {
  enabled?: boolean;
};

/**
 * Hook for playing game sounds.
 * Lazy-loads audio files and respects user sound preferences + reduced motion.
 */
export function useGameSounds({ enabled = true }: UseGameSoundsOptions = {}) {
  const prefersReduced = useRef(false);

  useEffect(() => {
    prefersReduced.current = window.matchMedia("(prefers-reduced-motion: reduce)").matches;
  }, []);

  const [playCorrect] = useSound(SOUND_FILES.correct, { volume: 0.5 });
  const [playIncorrect] = useSound(SOUND_FILES.incorrect, { volume: 0.4 });
  const [playStreak] = useSound(SOUND_FILES.streak, { volume: 0.6 });
  const [playLevelUp] = useSound(SOUND_FILES.levelUp, { volume: 0.7 });
  const [playTimerWarning] = useSound(SOUND_FILES.timerWarning, { volume: 0.5 });
  const [playBadgeUnlock] = useSound(SOUND_FILES.badgeUnlock, { volume: 0.6 });

  const players: Record<SoundId, () => void> = {
    correct: playCorrect,
    incorrect: playIncorrect,
    streak: playStreak,
    levelUp: playLevelUp,
    timerWarning: playTimerWarning,
    badgeUnlock: playBadgeUnlock,
  };

  const playSound = useCallback(
    (id: SoundId) => {
      if (!enabled || prefersReduced.current) return;
      players[id]?.();
    },
    // eslint-disable-next-line react-hooks/exhaustive-deps
    [enabled, playCorrect, playIncorrect, playStreak, playLevelUp, playTimerWarning, playBadgeUnlock],
  );

  return { playSound };
}
