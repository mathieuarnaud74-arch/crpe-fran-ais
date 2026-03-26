"use client";

import { useState } from "react";
import { LazyMotion, domAnimation, m } from "framer-motion";
import { BookOpen, Calculator } from "lucide-react";

import { Badge } from "@/components/ui/badge";
import { cn } from "@/lib/utils";

type SubjectOption = {
  subject: "Francais" | "Mathematiques";
  label: string;
  description: string;
  icon: typeof BookOpen;
  tone: "accent" | "accentSecondary";
  available: boolean;
  questionCount: number;
};

type RandomSubjectPickerProps = {
  frenchCount: number;
  mathCount: number;
  onSelect: (subject: "Francais" | "Mathematiques") => void;
};

export function RandomSubjectPicker({ frenchCount, mathCount, onSelect }: RandomSubjectPickerProps) {
  const [selected, setSelected] = useState<"Francais" | "Mathematiques" | null>(null);

  const subjects: SubjectOption[] = [
    {
      subject: "Francais",
      label: "Français",
      description: "Grammaire, conjugaison, orthographe, vocabulaire et compréhension de texte.",
      icon: BookOpen,
      tone: "accent",
      available: frenchCount > 0,
      questionCount: frenchCount,
    },
    {
      subject: "Mathematiques",
      label: "Mathématiques",
      description: "Nombres et calcul, géométrie, grandeurs et mesures, organisation de données.",
      icon: Calculator,
      tone: "accentSecondary",
      available: mathCount > 0,
      questionCount: mathCount,
    },
  ];

  function handleConfirm() {
    if (!selected) return;
    onSelect(selected);
  }

  return (
    <LazyMotion features={domAnimation}>
      <div className="mx-auto max-w-2xl space-y-6">
        <div>
          <h1 className="font-serif text-3xl font-semibold text-ink">
            Exercice aléatoire
          </h1>
          <p className="mt-2 text-sm leading-7 text-muted">
            10 questions piochées au hasard. Choisissez votre matière puis votre
            mode de jeu !
          </p>
        </div>

        <div className="grid gap-4 sm:grid-cols-2">
          {subjects.map((opt) => {
            const Icon = opt.icon;
            const isDisabled = !opt.available;
            const isSelected = selected === opt.subject;

            return (
              <m.button
                key={opt.subject}
                type="button"
                disabled={isDisabled}
                onClick={() => setSelected(opt.subject)}
                whileHover={isDisabled ? undefined : { scale: 1.02 }}
                whileTap={isDisabled ? undefined : { scale: 0.98 }}
                className={cn(
                  "flex flex-col gap-3 rounded-panel border-2 p-6 text-left transition-colors",
                  isDisabled && "cursor-not-allowed opacity-50",
                  isSelected
                    ? "border-accent bg-accent/5 shadow-panel"
                    : "border-border bg-card hover:border-accent/50",
                  isDisabled && "hover:border-border",
                )}
              >
                <div className="flex items-center justify-between">
                  <div className="flex items-center gap-3">
                    <div
                      className={cn(
                        "flex h-10 w-10 items-center justify-center rounded-inner",
                        opt.tone === "accent"
                          ? "bg-accent/10 text-accent"
                          : "bg-accentSecondarySoft text-accentSecondary",
                      )}
                    >
                      <Icon className="h-5 w-5" />
                    </div>
                    <span className="font-serif text-lg font-semibold text-ink">
                      {opt.label}
                    </span>
                  </div>
                  {isDisabled ? (
                    <Badge tone="neutral" size="sm">Bientôt</Badge>
                  ) : (
                    <Badge tone={opt.tone} size="sm">
                      {opt.questionCount} questions
                    </Badge>
                  )}
                </div>
                <p className="text-sm leading-relaxed text-muted">
                  {opt.description}
                </p>
              </m.button>
            );
          })}
        </div>

        <m.button
          type="button"
          onClick={handleConfirm}
          disabled={!selected}
          whileHover={selected ? { scale: 1.02 } : undefined}
          whileTap={selected ? { scale: 0.98 } : undefined}
          className={cn(
            "flex w-full items-center justify-center gap-2 rounded-inner px-6 py-3 text-base font-semibold transition-colors",
            selected
              ? "bg-accent text-white hover:bg-accentDark"
              : "cursor-not-allowed bg-secondary text-muted",
          )}
        >
          {selected
            ? `Continuer — ${subjects.find((s) => s.subject === selected)?.label}`
            : "Choisissez une matière"}
        </m.button>
      </div>
    </LazyMotion>
  );
}
