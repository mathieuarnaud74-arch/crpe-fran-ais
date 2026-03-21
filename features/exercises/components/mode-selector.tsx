"use client";

import { useState } from "react";
import { motion } from "framer-motion";

import { Badge } from "@/components/ui/badge";
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
  available: (session: RevisionSession) => boolean;
};

/** Types d'exercices compatibles avec les modes rapides (chrono/sprint) */
const FAST_MODE_TYPES = new Set([
  "qcm",
  "vrai_faux",
  "reponse_courte",
  "identification_grammaticale",
  "correction_orthographique",
  "analyse_texte",
]);

function isSeriesFastModeCompatible(session: RevisionSession): boolean {
  return session.questions.every((q) => FAST_MODE_TYPES.has(q.exercise_type));
}

const MODES: ModeOption[] = [
  {
    mode: "standard",
    label: "Standard",
    description: "Répondez à votre rythme avec explications détaillées après chaque question.",
    icon: "📖",
    xpMultiplier: "×1",
    estimatedTime: "~10 min",
    available: () => true,
  },
  {
    mode: "timed",
    label: "Chrono",
    description: "Un compte à rebours par question. Bonus XP pour les réponses rapides !",
    icon: "⏱️",
    xpMultiplier: "×1.5",
    estimatedTime: "~5 min",
    available: (session) => isSeriesFastModeCompatible(session),
  },
  {
    mode: "sprint",
    label: "Sprint",
    description: "Répondez le plus vite possible. Pas d'explications, juste la vitesse !",
    icon: "🏃",
    xpMultiplier: "×2",
    estimatedTime: "~2 min",
    available: (session) => isSeriesFastModeCompatible(session),
  },
  {
    mode: "swipe",
    label: "Swipe",
    description: "Swipez à droite pour Vrai, à gauche pour Faux. Rapide et intuitif !",
    icon: "👆",
    xpMultiplier: "×1.2",
    estimatedTime: "~3 min",
    available: (session) =>
      session.questions.every((q) => q.exercise_type === "vrai_faux"),
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

  const availableModes = MODES.filter((m) => m.available(session));

  function handleConfirm() {
    if (!selectedMode) return;
    onSelect(selectedMode, { timerDuration });
  }

  return (
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
        {availableModes.map((m) => (
          <motion.button
            key={m.mode}
            type="button"
            onClick={() => setSelectedMode(m.mode)}
            whileHover={{ scale: 1.02 }}
            whileTap={{ scale: 0.98 }}
            className={cn(
              "flex flex-col gap-3 rounded-panel border-2 p-5 text-left transition-colors",
              selectedMode === m.mode
                ? "border-accent bg-accent/5 shadow-panel"
                : "border-border bg-card hover:border-accent/50",
            )}
          >
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2">
                <span className="text-2xl">{m.icon}</span>
                <span className="font-serif text-lg font-semibold text-ink">{m.label}</span>
              </div>
              <Badge tone="accent" size="sm">{m.xpMultiplier} XP</Badge>
            </div>
            <p className="text-sm leading-relaxed text-muted">{m.description}</p>
            <p className="text-xs text-muted">Durée estimée : {m.estimatedTime}</p>
          </motion.button>
        ))}
      </div>

      {/* Timer duration selector for timed mode */}
      {selectedMode === "timed" && (
        <motion.div
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
        </motion.div>
      )}

      <motion.button
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
        {selectedMode ? `Commencer en mode ${MODES.find((m) => m.mode === selectedMode)?.label}` : "Sélectionnez un mode"}
      </motion.button>
    </div>
  );
}
