"use client";

import { useState } from "react";
import { LazyMotion, domAnimation, m } from "framer-motion";

import { Badge } from "@/components/ui/badge";
import { cn } from "@/lib/utils";

type RandomMode = "standard" | "timed";

type ModeCard = {
  mode: RandomMode;
  label: string;
  description: string;
  icon: string;
  xpMultiplier: string;
  estimatedTime: string;
};

const MODES: ModeCard[] = [
  {
    mode: "standard",
    label: "Standard",
    description: "Répondez à votre rythme avec explications détaillées après chaque question.",
    icon: "📖",
    xpMultiplier: "×1",
    estimatedTime: "~10 min",
  },
  {
    mode: "timed",
    label: "Chrono",
    description: "Un compte à rebours par question. Bonus XP pour les réponses rapides !",
    icon: "⏱️",
    xpMultiplier: "×1.5",
    estimatedTime: "~5 min",
  },
];

type RandomModePickerProps = {
  onSelect: (mode: RandomMode) => void;
};

export function RandomModePicker({ onSelect }: RandomModePickerProps) {
  const [selectedMode, setSelectedMode] = useState<RandomMode | null>(null);

  function handleConfirm() {
    if (!selectedMode) return;
    onSelect(selectedMode);
  }

  return (
    <LazyMotion features={domAnimation}>
      <div className="space-y-6">
        <div className="grid gap-4 sm:grid-cols-2">
          {MODES.map((opt) => (
            <m.button
              key={opt.mode}
              type="button"
              onClick={() => setSelectedMode(opt.mode)}
              whileHover={{ scale: 1.02 }}
              whileTap={{ scale: 0.98 }}
              className={cn(
                "flex flex-col gap-3 rounded-panel border-2 p-5 text-left transition-colors",
                selectedMode === opt.mode
                  ? "border-accent bg-accent/5 shadow-panel"
                  : "border-border bg-card hover:border-accent/50",
              )}
            >
              <div className="flex items-center justify-between">
                <div className="flex items-center gap-2">
                  <span className="text-2xl">{opt.icon}</span>
                  <span className="font-serif text-lg font-semibold text-ink">{opt.label}</span>
                </div>
                <Badge tone="accent" size="sm">{opt.xpMultiplier} XP</Badge>
              </div>
              <p className="text-sm leading-relaxed text-muted">{opt.description}</p>
              <p className="text-xs text-muted">Durée estimée : {opt.estimatedTime}</p>
            </m.button>
          ))}
        </div>

        <m.button
          type="button"
          onClick={handleConfirm}
          disabled={!selectedMode}
          whileHover={selectedMode ? { scale: 1.02 } : undefined}
          whileTap={selectedMode ? { scale: 0.98 } : undefined}
          className={cn(
            "flex w-full items-center justify-center gap-2 rounded-inner px-6 py-3 text-base font-semibold transition-colors",
            selectedMode
              ? "bg-accent text-white hover:bg-accentDark"
              : "cursor-not-allowed bg-secondary text-muted",
          )}
        >
          {selectedMode
            ? `Lancer en mode ${MODES.find((m) => m.mode === selectedMode)?.label}`
            : "Sélectionnez un mode"}
        </m.button>
      </div>
    </LazyMotion>
  );
}
