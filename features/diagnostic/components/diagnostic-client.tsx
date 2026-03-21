"use client";

import Link from "next/link";
import { useState } from "react";
import { toast } from "sonner";

import {
  buildDiagnosticSession,
  FRENCH_DIAGNOSTIC_SESSION_SIZE,
  type FrenchDiagnosticQuestion,
  type FrenchDiagnosticSubdomainKey,
} from "@/content/french-diagnostic-questions";
import { ArrowRight, BookOpen, Clock, ShieldCheck, Target } from "lucide-react";
import { Mocca } from "@/components/mascot/mocca";
import { Badge } from "@/components/ui/badge";
import { Button, ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { cn } from "@/lib/utils";
import type { DiagnosticResult } from "@/features/diagnostic/types";
import { DiagnosticRadarChart } from "./radar-chart";

type SubdomainSummary = {
  key: FrenchDiagnosticSubdomainKey;
  label: string;
  href: string;
  correct: number;
  total: number;
  mastery: "solide" | "a_consolider" | "prioritaire";
  recommendation: string;
};

function getMastery(correct: number, total: number): SubdomainSummary["mastery"] {
  const rate = total === 0 ? 0 : correct / total;

  if (rate >= 0.75) {
    return "solide";
  }

  if (rate < 0.4) {
    return "prioritaire";
  }

  return "a_consolider";
}

function getRecommendation(subdomain: string, mastery: SubdomainSummary["mastery"]) {
  if (mastery === "solide") {
    return `Base rassurante en ${subdomain.toLowerCase()}. Vous pouvez passer vite à des séries plus exigeantes.`;
  }

  if (mastery === "a_consolider") {
    return `Le repère est présent, mais encore instable en ${subdomain.toLowerCase()}. Une ou deux séries ciblées seront rentables.`;
  }

  return "Sous-domaine prioritaire : reprenez les notions fondamentales avant d'augmenter la difficulté.";
}

function getProfileLabel(score: number, total: number) {
  const rate = score / total;

  if (rate >= 0.8) {
    return {
      label: "Base déjà solide",
      detail:
        "Le diagnostic montre des fondations stables. L'enjeu principal est maintenant de monter en finesse.",
    };
  }

  if (rate >= 0.5) {
    return {
      label: "Base hétérogène",
      detail: "Certaines notions sont présentes, mais le niveau reste inégal selon les sous-domaines.",
    };
  }

  return {
    label: "Base à structurer",
    detail:
      "Le diagnostic suggère de reprendre les fondamentaux avant de viser des séries plus ambitieuses.",
  };
}

function getMasteryTone(mastery: SubdomainSummary["mastery"]) {
  if (mastery === "solide") {
    return "accentSecondary" as const;
  }

  if (mastery === "a_consolider") {
    return "neutral" as const;
  }

  return "warning" as const;
}

export function DiagnosticClient({ isAuthenticated = true }: { isAuthenticated?: boolean }) {
  const [questions] = useState<FrenchDiagnosticQuestion[]>(() =>
    buildDiagnosticSession(),
  );
  const [currentQuestion, setCurrentQuestion] = useState(0);
  const [answers, setAnswers] = useState<(number | null)[]>(() =>
    Array(FRENCH_DIAGNOSTIC_SESSION_SIZE).fill(null),
  );
  const [phase, setPhase] = useState<'intro' | 'passation' | 'results'>('intro');

  const question = questions[currentQuestion];
  const selectedIndex = answers[currentQuestion];
  const hasAnswered = selectedIndex !== null;
  const isLast = currentQuestion === questions.length - 1;
  const isCorrect = selectedIndex === question.correctIndex;
  const score = answers.reduce<number>((total, answer, index) => {
    if (answer === questions[index]?.correctIndex) {
      return total + 1;
    }

    return total;
  }, 0);
  const profile = getProfileLabel(score, questions.length);

  const summaries = questions.reduce<SubdomainSummary[]>((acc, item, index) => {
    const existing = acc.find((entry) => entry.key === item.subdomain);
    const isQuestionCorrect = answers[index] === item.correctIndex;

    if (existing) {
      existing.total += 1;
      existing.correct += isQuestionCorrect ? 1 : 0;
      return acc;
    }

    acc.push({
      key: item.subdomain,
      label: item.subdomainLabel,
      href: item.href,
      correct: isQuestionCorrect ? 1 : 0,
      total: 1,
      mastery: "a_consolider",
      recommendation: "",
    });

    return acc;
  }, []);

  const subdomainSummaries = summaries
    .map((item) => {
      const mastery = getMastery(item.correct, item.total);

      return {
        ...item,
        mastery,
        recommendation: getRecommendation(item.label, mastery),
      };
    })
    .sort((left, right) => {
      const order = { prioritaire: 0, a_consolider: 1, solide: 2 };
      return order[left.mastery] - order[right.mastery];
    });

  const strengths = subdomainSummaries.filter((item) => item.mastery === "solide");
  const priorities = subdomainSummaries.filter((item) => item.mastery !== "solide");
  const progressValue = ((currentQuestion + (hasAnswered ? 1 : 0)) / questions.length) * 100;

  function handleSelect(index: number) {
    if (hasAnswered) {
      return;
    }

    const nextAnswers = [...answers];
    nextAnswers[currentQuestion] = index;
    setAnswers(nextAnswers);
  }

  async function handleNext() {
    if (isLast) {
      setPhase('results');

      if (isAuthenticated) {
        const result: DiagnosticResult = {
          completedAt: new Date().toISOString(),
          score,
          total: questions.length,
          profileLabel: profile.label,
          profileDetail: profile.detail,
          subdomains: subdomainSummaries.map((item) => ({
            key: item.key,
            label: item.label,
            href: item.href,
            correct: item.correct,
            total: item.total,
            mastery: item.mastery,
            recommendation: item.recommendation,
          })),
        };

        try {
          const res = await fetch("/api/diagnostic/complete", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(result),
          });
          if (!res.ok) {
            toast.error("Vos résultats sont affichés mais n'ont pas pu être sauvegardés.");
          }
        } catch {
          toast.error("Erreur de connexion — résultats non sauvegardés.");
        }
      }

      return;
    }

    setCurrentQuestion((value) => value + 1);
  }

  if (phase === 'results') {
    return (
      <div className="space-y-8">
        <Panel>
          <div className="flex items-start gap-6">
            <Mocca
              variant={
                score / questions.length >= 0.8
                  ? "happy"
                  : score / questions.length >= 0.5
                    ? "neutral"
                    : "grumpy"
              }
              size="xl"
              className="hidden shrink-0 sm:block"
            />
            <div className="space-y-4">
              <Badge tone="accentSecondary">Résultats</Badge>
              <h1 className="font-serif text-4xl font-semibold text-ink">Votre profil de départ</h1>
              <p className="max-w-3xl text-sm leading-7 text-muted">
                Vous avez réussi{" "}
                <strong className="text-ink">
                  {score} question{score > 1 ? "s" : ""} sur {questions.length}
                </strong>
                . {profile.detail}
              </p>
              <div className="flex flex-wrap gap-3">
                <Badge tone="neutral" size="sm">
                  {profile.label}
                </Badge>
                <Badge tone="neutral" size="sm">
                  {Math.round((score / questions.length) * 100)} % de réussite
                </Badge>
                <Badge tone="neutral" size="sm">
                  {questions.length} questions
                </Badge>
              </div>
            </div>
          </div>
        </Panel>

        <Panel>
          <h2 className="font-serif text-2xl font-semibold text-ink">Profil par sous-domaine</h2>
          <p className="mt-2 text-sm leading-7 text-muted">
            Plus la zone colorée est proche du bord, plus la maîtrise est solide sur ce sous-domaine.
          </p>
          <div className="mt-6">
            <DiagnosticRadarChart
              data={subdomainSummaries.map((item) => ({
                label: item.label,
                value: item.total > 0 ? item.correct / item.total : 0,
                mastery: item.mastery,
              }))}
            />
          </div>
          <div className="mt-5 flex flex-wrap justify-center gap-5">
            <span className="flex items-center gap-2 text-xs text-muted">
              <span className="inline-block h-2.5 w-2.5 rounded-full bg-[#059669]" />
              Solide
            </span>
            <span className="flex items-center gap-2 text-xs text-muted">
              <span className="inline-block h-2.5 w-2.5 rounded-full bg-[#F59E0B]" />
              À consolider
            </span>
            <span className="flex items-center gap-2 text-xs text-muted">
              <span className="inline-block h-2.5 w-2.5 rounded-full bg-[#EF4444]" />
              Prioritaire
            </span>
          </div>
        </Panel>

        <Panel>
          <h2 className="font-serif text-2xl font-semibold text-ink">Bilan par sous-domaine</h2>
          <p className="mt-2 text-sm leading-7 text-muted">
            Classé du plus fragile au plus solide.{isAuthenticated ? " Cliquez sur un sous-domaine pour commencer à réviser." : ""}
          </p>
          <div className="mt-5 divide-y divide-border">
            {subdomainSummaries.map((item) => (
              <Link
                key={item.key}
                href={isAuthenticated ? item.href : `/inscription?from=diagnostic`}
                className="flex items-center justify-between gap-3 py-3 transition-colors hover:bg-secondary/40 -mx-2 px-2 rounded-lg"
              >
                <div className="min-w-0">
                  <p className="text-sm font-semibold text-ink">{item.label}</p>
                  <p className="mt-0.5 text-xs text-muted">
                    {item.correct}/{item.total} réponses justes
                  </p>
                </div>
                <Badge tone={getMasteryTone(item.mastery)} size="sm" className="shrink-0">
                  {item.mastery === "solide" ? "Solide" : item.mastery === "prioritaire" ? "À reprendre" : "À consolider"}
                </Badge>
              </Link>
            ))}
          </div>
        </Panel>

        {isAuthenticated ? (
          <Panel>
            <div className="flex flex-wrap gap-3">
              <ButtonLink href="/tableau-de-bord">Voir mon tableau de bord</ButtonLink>
              <ButtonLink href="/francais" variant="secondary">
                Explorer le module Français
              </ButtonLink>
            </div>
          </Panel>
        ) : (
          <Panel>
            <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">
              Prochaine étape
            </p>
            <h2 className="mt-2 font-serif text-2xl font-semibold text-ink">
              Créez votre compte gratuit pour accéder à votre plan
            </h2>
            <p className="mt-2 text-sm leading-7 text-muted">
              Créez un compte pour retrouver vos résultats et accéder à 20 exercices ciblés par jour —
              sans carte bancaire.
            </p>
            <div className="mt-5 flex flex-wrap gap-3">
              <ButtonLink href="/inscription?from=diagnostic" variant="primary">
                Créer mon compte gratuit
              </ButtonLink>
              <ButtonLink href="/connexion" variant="secondary">
                J&apos;ai déjà un compte
              </ButtonLink>
            </div>
          </Panel>
        )}
      </div>
    );
  }

  if (phase === 'intro') {
    return (
      <div className="space-y-6">
        <Panel>
          <div className="mx-auto max-w-2xl">
            <Badge tone="accentSecondary">Diagnostic gratuit</Badge>
            <h1 className="mt-5 font-serif text-3xl font-semibold text-ink sm:text-4xl">
              Identifiez vos lacunes en 15 minutes
            </h1>
            <p className="mt-4 text-sm leading-7 text-muted">
              {FRENCH_DIAGNOSTIC_SESSION_SIZE} questions couvrant les sous-domaines du CRPE Français.
              À la fin, vous obtenez un profil personnalisé avec vos priorités de révision — pas une note globale.
            </p>

            <div className="mt-8 grid gap-3 sm:grid-cols-2">
              <div className="flex items-center gap-3 rounded-[1.25rem] border border-border bg-paper px-4 py-3">
                <BookOpen className="h-5 w-5 shrink-0 text-accentSecondaryDark" />
                <div>
                  <p className="text-sm font-semibold text-ink">{FRENCH_DIAGNOSTIC_SESSION_SIZE} questions</p>
                  <p className="text-xs text-muted">Niveau CRPE, tous sous-domaines</p>
                </div>
              </div>
              <div className="flex items-center gap-3 rounded-[1.25rem] border border-border bg-paper px-4 py-3">
                <Clock className="h-5 w-5 shrink-0 text-accentSecondaryDark" />
                <div>
                  <p className="text-sm font-semibold text-ink">~15 minutes</p>
                  <p className="text-xs text-muted">Durée estimée de la passation</p>
                </div>
              </div>
              <div className="flex items-center gap-3 rounded-[1.25rem] border border-border bg-paper px-4 py-3">
                <ShieldCheck className="h-5 w-5 shrink-0 text-accentSecondaryDark" />
                <div>
                  <p className="text-sm font-semibold text-ink">100 % gratuit</p>
                  <p className="text-xs text-muted">Aucune carte bancaire requise</p>
                </div>
              </div>
              <div className="flex items-center gap-3 rounded-[1.25rem] border border-border bg-paper px-4 py-3">
                <Target className="h-5 w-5 shrink-0 text-accentSecondaryDark" />
                <div>
                  <p className="text-sm font-semibold text-ink">Profil personnalisé</p>
                  <p className="text-xs text-muted">Priorités de révision en sortie</p>
                </div>
              </div>
            </div>

            <div className="mt-8">
              <Button onClick={() => setPhase('passation')} size="lg">
                Commencer le diagnostic
                <ArrowRight className="h-4 w-4" />
              </Button>
            </div>

            <p className="mt-4 text-xs text-muted">
              Aucune inscription requise pour commencer. Vos résultats s&apos;affichent immédiatement à la fin.
            </p>
          </div>
        </Panel>
      </div>
    );
  }

  return (
    <div className="fixed inset-0 z-50 flex flex-col overflow-y-auto bg-paper">
      <div className="sticky top-0 z-10 border-b border-border/50 bg-paper/90 backdrop-blur-md">
        <div className="mx-auto flex max-w-4xl items-center justify-between px-6 py-3">
          <span className="font-serif text-lg font-semibold text-ink">CRPE Français</span>
          <button
            onClick={() => {
              setPhase('intro');
              setCurrentQuestion(0);
              setAnswers(Array(FRENCH_DIAGNOSTIC_SESSION_SIZE).fill(null));
            }}
            className="rounded-full px-4 py-2 text-sm text-muted transition-colors hover:bg-secondary hover:text-ink"
          >
            Quitter
          </button>
        </div>
        <div className="h-1 w-full bg-secondary">
          <div
            className="h-full bg-accent transition-all duration-300"
            style={{ width: `${progressValue}%` }}
          />
        </div>
      </div>

      <div className="mx-auto w-full max-w-4xl flex-1 px-4 py-5 sm:px-6 sm:py-8">
      <Panel>
        <div className="mb-6 flex items-center justify-between gap-4">
          <div>
            <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">
              Question {currentQuestion + 1} / {questions.length}
            </p>
            <p className="mt-2 text-sm text-muted">{question.competency}</p>
          </div>
          <Badge tone="neutral" size="sm">
            {question.subdomainLabel}
          </Badge>
        </div>

        <p className="mt-2 font-serif text-2xl font-semibold leading-snug text-ink">
          {question.instruction}
        </p>

        <div className="mt-8 space-y-3">
          {question.choices.map((choice, index) => {
            const choiceIsSelected = selectedIndex === index;
            const choiceIsCorrect = index === question.correctIndex;

            let stateClasses = "border-border bg-paper hover:border-accent";
            if (hasAnswered && choiceIsCorrect) {
              stateClasses = "border-successBorder bg-successBg";
            } else if (hasAnswered && choiceIsSelected && !choiceIsCorrect) {
              stateClasses = "border-warningBorder bg-warningBg";
            } else if (!hasAnswered && choiceIsSelected) {
              stateClasses = "border-accent bg-secondary";
            }

            return (
              <button
                key={`${question.id}-${choice}`}
                onClick={() => handleSelect(index)}
                disabled={hasAnswered}
                className={cn(
                  "w-full rounded-[1.25rem] border px-5 py-4 text-left text-sm font-medium text-ink transition-all duration-150 disabled:cursor-default",
                  stateClasses,
                )}
              >
                <span className="mr-3 font-semibold text-muted">
                  {String.fromCharCode(65 + index)}.
                </span>
                {choice}
              </button>
            );
          })}
        </div>

        {hasAnswered ? (
          <div className="mt-5 rounded-[1.25rem] border border-border bg-secondary px-4 py-3 sm:mt-6 sm:px-5 sm:py-4">
            <div className="flex items-start gap-3 sm:gap-4">
              <Mocca
                variant={isCorrect ? "happy" : "grumpy"}
                size="portrait"
                className="hidden shrink-0 sm:block"
              />
              <div className="flex-1 space-y-4 sm:space-y-5">
                <div className="flex flex-wrap items-center gap-3">
                  <Badge tone={isCorrect ? "accentSecondary" : "warning"} size="sm">
                    {isCorrect ? "Bonne réponse" : "Point de vigilance"}
                  </Badge>
                  <p className="text-sm text-muted">
                    Réponse attendue :{" "}
                    <strong className="text-ink">{question.choices[question.correctIndex]}</strong>
                  </p>
                </div>
                <p className="text-sm leading-7 text-muted">{question.explanation}</p>
                <p className="text-sm leading-7 text-muted">
                  <strong className="text-ink">Conseil de reprise :</strong> {question.retryAdvice}
                </p>
                <div className="flex justify-end">
                  <Button onClick={handleNext}>
                    {isLast ? "Voir mon profil" : "Question suivante"}
                  </Button>
                </div>
              </div>
            </div>
          </div>
        ) : null}
      </Panel>
      </div>
    </div>
  );
}
