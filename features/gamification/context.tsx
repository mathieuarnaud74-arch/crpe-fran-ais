"use client";

import {
  createContext,
  useCallback,
  useContext,
  useMemo,
  useState,
  type ReactNode,
} from "react";

import { useGameSounds } from "@/components/hooks/use-game-sounds";
import type { SoundId } from "@/lib/sounds";
import { getLevelForXp, getXpForNextLevel } from "@/lib/xp";
import type { UserGamification } from "@/types/domain";

type GamificationContextValue = {
  gamification: UserGamification;
  addXp: (amount: number) => { leveledUp: boolean; newLevel: number };
  playSound: (id: SoundId) => void;
  setStreak: (streak: number) => void;
  setDailyStreak: (streak: number) => void;
  xpProgress: ReturnType<typeof getXpForNextLevel>;
};

const GamificationContext = createContext<GamificationContextValue | null>(null);

export function GamificationProvider({
  children,
  initial,
}: {
  children: ReactNode;
  initial: UserGamification;
}) {
  const [gamification, setGamification] = useState<UserGamification>(initial);
  const { playSound } = useGameSounds({ enabled: gamification.sound_enabled });

  const addXp = useCallback(
    (amount: number) => {
      let leveledUp = false;
      let newLevel = gamification.level;

      setGamification((prev) => {
        const newXp = prev.xp + amount;
        newLevel = getLevelForXp(newXp);
        leveledUp = newLevel > prev.level;
        return { ...prev, xp: newXp, level: newLevel };
      });

      return { leveledUp, newLevel };
    },
    [gamification.level],
  );

  const setStreak = useCallback((streak: number) => {
    setGamification((prev) => ({
      ...prev,
      current_streak: streak,
      longest_streak: Math.max(prev.longest_streak, streak),
    }));
  }, []);

  const setDailyStreak = useCallback((streak: number) => {
    setGamification((prev) => ({
      ...prev,
      daily_streak: streak,
      longest_daily_streak: Math.max(prev.longest_daily_streak, streak),
    }));
  }, []);

  const xpProgress = useMemo(
    () => getXpForNextLevel(gamification.xp),
    [gamification.xp],
  );

  const value = useMemo(
    () => ({ gamification, addXp, playSound, setStreak, setDailyStreak, xpProgress }),
    [gamification, addXp, playSound, setStreak, setDailyStreak, xpProgress],
  );

  return (
    <GamificationContext.Provider value={value}>
      {children}
    </GamificationContext.Provider>
  );
}

export function useGamification(): GamificationContextValue {
  const ctx = useContext(GamificationContext);
  if (!ctx) {
    throw new Error("useGamification must be used within GamificationProvider");
  }
  return ctx;
}
