"use client";

import { useState } from "react";
import { LazyMotion, domAnimation, m } from "framer-motion";

import { Badge } from "@/components/ui/badge";
import { FAST_MODE_EXERCISE_TYPES } from "@/lib/constants";
import { cn } from "@/lib/utils";
import type { ExerciseMode, RevisionSession } from "@/types/domain";

type ModeSelectorProps = {
  session: RevisionSession;
  onSelect: (mode: ExerciseMode, options?: { timerDuration?: number }) => void;
};

type ModeOption = {
  mode: ExerciseMode;
  label: string;
  description: string;
  icon: string;
  xpMultiplier: string;
  estimatedTime: string;
  /** Returns the number of compatible questions for this mode in the given session */
  compatibleCount: (session: RevisionSession) => number;
};

/** @deprecated Use FAST_MODE_EXERCISE_TYPES from @/lib/constants */
export const FAST_MODE_TYPES = FAST_MODE_EXERCISE_TYPES;

function countFastModeCompatible(session: RevisionSession): number {
  return session.questions.filter((q) => FAST_MODE_TYPES.has(q.exercise_type)).length;
}

function countVraiFaux(session: RevisionSession): number {
  return session.questions.filter((q) => q.exercise_type === "vrai_faux").length;
}

const MODES: ModeOption[] = [
  {
    mode: "standard",
    label: "Standard",
    description: "Répondez à votre rythme avec explications détaillées après chaque question.",
    icon: "📖",
    xpMultiplier: "×1",
    estimatedTime: "~10 min",
    compatibleCount: (session) => session.questions.length,
  },
  {
    mode: "timed",
    label: "Chrono",
    description: "Un compte à rebours par question. Bonus XP pour les réponses rapides !",
    icon: "⏱️",
    xpMultiplier: "×1.5",
    estimatedTime: "~5 min",
    compatibleCount: countFastModeCompatible,
  },
  {
    mode: "sprint",
    label: "Sprint",
    description: "Répondez le plus vite possible. Pas d'explications, juste la vitesse !",
    icon: "🏃",
    xpMultiplier: "×2",
    estimatedTime: "~2 min",
    compatibleCount: countFastModeCompatible,
  },
  {
    mode: "swipe",
    label: "Swipe",
    description: "Swipez à droite pour Vrai, à gauche pour Faux. Rapide et intuitif !",
    icon: "👆",
    xpMultiplier: "×1.2",
    estimatedTime: "~3 min",
    compatibleCount: countVraiFaux,
  },
];

const TIMER_OPTIONS = [
  { value: 30, label: "30s" },
  { value: 60, label: "60s" },
  { value: 90, label: "90s" },
];

export function ModeSelector({ session, onSelect }: ModeSelectorProps) {
  const [selectedMode, setSelectedMode] = useState<ExerciseMode | null>(null);
  const [timerDuration, setTimerDuration] = useState(60);

  function handleConfirm() {
    if (!selectedMode) return;
    onSelect(selectedMode, { timerDuration });
  }

  return (
    <LazyMotion features={domAnimation}>
    <div className="space-y-6">
      <div>
        <h2 className="font-serif text-2xl font-semibold text-ink">
          Choisissez votre mode
        </h2>
        <p className="mt-1 text-sm text-muted">
          {session.questionCount} questions — {session.title}
        </p>
      </div>

      <div className="grid gap-4 sm:grid-cols-2">
        {MODES.map((opt) => {
          const count = opt.compatibleCount(session);
          const minQuestions = opt.mode === "standard" ? 1 : 3;
          const disabled = count < minQuestions;
          const partial = count < session.questions.length && count >= minQuestions && opt.mode !== "standard";

          return (
            <m.button
              key={opt.mode}
              type="button"
              disabled={disabled}
              onClick={() => !disabled && setSelectedMode(opt.mode)}
              whileHover={!disabled ? { scale: 1.02 } : undefined}
              whileTap={!disabled ? { scale: 0.98 } : undefined}
              className={cn(
                "flex flex-col gap-3 rounded-panel border-2 p-5 text-left transition-colors",
                disabled
                  ? "cursor-not-allowed border-border bg-secondary/50 opacity-50"
                  : selectedMode === opt.mode
                    ? "border-accent bg-accent/5 shadow-panel"
                    : "border-border bg-card hover:border-accent/50",
              )}
            >
              <div className="flex items-center justify-between">
                <div className="flex items-center gap-2">
                  <span className="text-2xl">{opt.icon}</span>
                  <span className="font-serif text-lg font-semibold text-ink">{opt.label}</span>
                </div>
                <Badge tone={disabled ? "neutral" : "accent"} size="sm">{opt.xpMultiplier} XP</Badge>
              </div>
              <p className="text-sm leading-relaxed text-muted">{opt.description}</p>
              <div className="flex items-center justify-between">
                <p className="text-xs text-muted">Durée estimée : {opt.estimatedTime}</p>
                {partial && (
                  <p className="text-xs text-accentSecondary">{count}/{session.questions.length} questions</p>
                )}
                {disabled && (
                  <p className="text-xs text-muted">
                    {count === 0 ? "Aucune question compatible" : `Trop peu de questions (${count})`}
                  </p>
                )}
              </div>
            </m.button>
          );
        })}
      </div>

      {/* Timer duration selector for timed mode */}
      {selectedMode === "timed" && (
        <m.div
          initial={{ opacity: 0, height: 0 }}
          animate={{ opacity: 1, height: "auto" }}
          className="rounded-card border border-border bg-card p-4"
        >
          <p className="text-sm font-semibold text-ink">Durée par question</p>
          <div className="mt-2 flex gap-2">
            {TIMER_OPTIONS.map((opt) => (
              <button
                key={opt.value}
                type="button"
                onClick={() => setTimerDuration(opt.value)}
                className={cn(
                  "rounded-pill px-4 py-1.5 text-sm font-medium transition-colors",
                  timerDuration === opt.value
                    ? "bg-accent text-white"
                    : "border border-border bg-paper text-muted hover:bg-secondary",
                )}
              >
                {opt.label}
              </button>
            ))}
          </div>
        </m.div>
      )}

      <m.button
        type="button"
        onClick={handleConfirm}
        disabled={!selectedMode}
        whileHover={selectedMode ? { scale: 1.02 } : undefined}
        whileTap={selectedMode ? { scale: 0.98 } : undefined}
        className={cn(
          "w-full rounded-inner px-6 py-3 text-base font-semibold transition-colors",
          selectedMode
            ? "bg-accent text-white hover:bg-accentDark"
            : "cursor-not-allowed bg-secondary text-muted",
        )}
      >
        {selectedMode ? `Commencer en mode ${MODES.find((opt) => opt.mode === selectedMode)?.label}` : "Sélectionnez un mode"}
      </m.button>
    </div>
    </LazyMotion>
  );
}
