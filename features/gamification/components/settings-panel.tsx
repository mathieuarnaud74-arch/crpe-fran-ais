"use client";

import { useState, useTransition } from "react";

import { cn } from "@/lib/utils";
import type { UserGamification } from "@/types/domain";

type SettingsPanelProps = {
  initial: UserGamification;
  onSave: (settings: {
    sound_enabled: boolean;
    reduced_animations: boolean;
    daily_goal: number;
  }) => Promise<void>;
};

const GOAL_OPTIONS = [10, 15, 20, 30, 50];

export function GamificationSettingsPanel({ initial, onSave }: SettingsPanelProps) {
  const [soundEnabled, setSoundEnabled] = useState(initial.sound_enabled);
  const [reducedAnimations, setReducedAnimations] = useState(initial.reduced_animations);
  const [dailyGoal, setDailyGoal] = useState(initial.daily_goal);
  const [isPending, startTransition] = useTransition();

  function handleSave() {
    startTransition(async () => {
      await onSave({
        sound_enabled: soundEnabled,
        reduced_animations: reducedAnimations,
        daily_goal: dailyGoal,
      });
    });
  }

  return (
    <div className="rounded-card border border-border bg-card p-6 shadow-panel">
      <h3 className="mb-4 font-serif text-lg font-semibold text-ink">
        Paramètres de gamification
      </h3>

      <div className="space-y-4">
        {/* Sound toggle */}
        <label className="flex items-center justify-between">
          <span className="text-sm text-ink">Effets sonores</span>
          <button
            type="button"
            role="switch"
            aria-checked={soundEnabled}
            onClick={() => setSoundEnabled(!soundEnabled)}
            className={cn(
              "relative inline-flex h-6 w-11 items-center rounded-full transition-colors",
              soundEnabled ? "bg-accent" : "bg-border",
            )}
          >
            <span
              className={cn(
                "inline-block h-4 w-4 rounded-full bg-white transition-transform",
                soundEnabled ? "translate-x-6" : "translate-x-1",
              )}
            />
          </button>
        </label>

        {/* Reduced animations toggle */}
        <label className="flex items-center justify-between">
          <span className="text-sm text-ink">Animations réduites</span>
          <button
            type="button"
            role="switch"
            aria-checked={reducedAnimations}
            onClick={() => setReducedAnimations(!reducedAnimations)}
            className={cn(
              "relative inline-flex h-6 w-11 items-center rounded-full transition-colors",
              reducedAnimations ? "bg-accent" : "bg-border",
            )}
          >
            <span
              className={cn(
                "inline-block h-4 w-4 rounded-full bg-white transition-transform",
                reducedAnimations ? "translate-x-6" : "translate-x-1",
              )}
            />
          </button>
        </label>

        {/* Daily goal */}
        <div>
          <p className="mb-2 text-sm text-ink">Objectif quotidien</p>
          <div className="flex gap-2">
            {GOAL_OPTIONS.map((goal) => (
              <button
                key={goal}
                type="button"
                onClick={() => setDailyGoal(goal)}
                className={cn(
                  "rounded-pill px-3 py-1 text-sm font-medium transition-colors",
                  dailyGoal === goal
                    ? "bg-accent text-white"
                    : "border border-border bg-paper text-muted hover:bg-secondary",
                )}
              >
                {goal}
              </button>
            ))}
          </div>
          <p className="mt-1 text-xs text-muted">questions par jour</p>
        </div>

        <button
          type="button"
          onClick={handleSave}
          disabled={isPending}
          className="mt-2 w-full rounded-inner bg-accent px-4 py-2 text-sm font-semibold text-white transition-colors hover:bg-accentDark disabled:opacity-50"
        >
          {isPending ? "Enregistrement…" : "Enregistrer"}
        </button>
      </div>
    </div>
  );
}
