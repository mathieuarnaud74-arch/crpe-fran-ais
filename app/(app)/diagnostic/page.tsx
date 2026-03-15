"use client";

import Link from "next/link";
import { useState } from "react";

import {
  buildBalancedFrenchDiagnosticSession,
  FRENCH_DIAGNOSTIC_BANK_SIZE,
  FRENCH_DIAGNOSTIC_SESSION_SIZE,
  type FrenchDiagnosticQuestion,
  type FrenchDiagnosticSubdomainKey,
} from "@/content/french-diagnostic-questions";
import { Badge } from "@/components/ui/badge";
import { Button, ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { cn } from "@/lib/utils";

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
      detail: "Le diagnostic montre des fondations stables. L'enjeu principal est maintenant de monter en finesse.",
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
    detail: "Le diagnostic suggère de reprendre les fondamentaux avant de viser des séries plus ambitieuses.",
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

export default function DiagnosticPage() {
  const [questions] = useState<FrenchDiagnosticQuestion[]>(() => buildBalancedFrenchDiagnosticSession());
  const [currentQuestion, setCurrentQuestion] = useState(0);
  const [answers, setAnswers] = useState<(number | null)[]>(
    () => Array(FRENCH_DIAGNOSTIC_SESSION_SIZE).fill(null),
  );
  const [completed, setCompleted] = useState(false);

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
      const order = {
        prioritaire: 0,
        a_consolider: 1,
        solide: 2,
      };

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

  function handleNext() {
    if (isLast) {
      setCompleted(true);
      return;
    }

    setCurrentQuestion((value) => value + 1);
  }

  if (completed) {
    return (
      <div className="space-y-8">
        <Panel>
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
                {Math.round((score / questions.length) * 100)} % de reussite
              </Badge>
              <Badge tone="neutral" size="sm">
                {questions.length} questions tirees d&apos;une banque de {FRENCH_DIAGNOSTIC_BANK_SIZE}
              </Badge>
            </div>
          </div>
        </Panel>

        <div className="grid gap-6 xl:grid-cols-[1.15fr_0.85fr]">
          <Panel>
            <h2 className="font-serif text-2xl font-semibold text-ink">Lecture par sous-domaine</h2>
            <p className="mt-2 text-sm leading-7 text-muted">
              Le diagnostic devient utile quand il dit où reprendre, et pas seulement combien vous avez réussi.
            </p>
            <div className="mt-6 space-y-3">
              {subdomainSummaries.map((item) => (
                <Link
                  key={item.key}
                  href={item.href}
                  className="block rounded-[1.25rem] border border-border bg-paper px-5 py-4 transition-colors hover:border-accent"
                >
                  <div className="flex flex-wrap items-start justify-between gap-3">
                    <div>
                      <p className="text-sm font-semibold text-ink">{item.label}</p>
                      <p className="mt-1 text-sm text-muted">
                        {item.correct}/{item.total} bonnes réponses
                      </p>
                    </div>
                    <Badge tone={getMasteryTone(item.mastery)} size="sm">
                      {item.mastery === "solide"
                        ? "Solide"
                        : item.mastery === "a_consolider"
                          ? "À consolider"
                          : "Prioritaire"}
                    </Badge>
                  </div>
                  <p className="mt-3 text-sm leading-7 text-muted">{item.recommendation}</p>
                </Link>
              ))}
            </div>
          </Panel>

          <div className="space-y-6">
            <Panel className="border-successBorder bg-successBg">
              <h2 className="font-serif text-2xl font-semibold text-ink">Points d&apos;appui</h2>
              <p className="mt-2 text-sm leading-7 text-muted">
                Ce sont les zones sur lesquelles vous pouvez vous appuyer pour aller vite ensuite.
              </p>
              <div className="mt-5 space-y-3">
                {strengths.length > 0 ? (
                  strengths.map((item) => (
                    <div
                      key={item.key}
                      className="rounded-[1.25rem] border border-successBorder bg-paper px-4 py-3"
                    >
                      <p className="text-sm font-semibold text-ink">{item.label}</p>
                      <p className="mt-1 text-sm text-muted">
                        {item.correct}/{item.total} réponses justes
                      </p>
                    </div>
                  ))
                ) : (
                  <p className="text-sm leading-7 text-muted">
                    Aucun sous-domaine n&apos;est encore totalement sécurisé. Ce n&apos;est pas bloquant : le plus utile est de commencer par les priorités ci-dessous.
                  </p>
                )}
              </div>
            </Panel>

            <Panel>
              <h2 className="font-serif text-2xl font-semibold text-ink">Priorités immédiates</h2>
              <p className="mt-2 text-sm leading-7 text-muted">
                Commencez par les zones les plus fragiles pour obtenir un gain rapide.
              </p>
              <div className="mt-5 space-y-3">
                {priorities.map((item) => (
                  <Link
                    key={item.key}
                    href={item.href}
                    className="flex items-center justify-between rounded-[1.25rem] border border-warningBorder bg-paper px-4 py-3 transition-colors hover:border-accent"
                  >
                    <div>
                      <p className="text-sm font-semibold text-ink">{item.label}</p>
                      <p className="mt-1 text-sm text-muted">
                        {item.correct}/{item.total} réponses justes
                      </p>
                    </div>
                    <Badge tone="warning" size="sm">
                      {item.mastery === "prioritaire" ? "À reprendre" : "À consolider"}
                    </Badge>
                  </Link>
                ))}
              </div>
            </Panel>
          </div>
        </div>

        <Panel>
          <div className="flex flex-wrap gap-3">
            <ButtonLink href="/revisions-ciblees">Commencer par mes priorités</ButtonLink>
            <ButtonLink href="/francais" variant="secondary">
              Explorer le module Français
            </ButtonLink>
          </div>
        </Panel>
      </div>
    );
  }

  return (
    <div className="space-y-8">
      <Panel>
        <div className="space-y-3">
          <Badge tone="accentSecondary">Positionnement</Badge>
          <h1 className="font-serif text-4xl font-semibold text-ink">Diagnostic de niveau</h1>
          <p className="max-w-3xl text-sm leading-7 text-muted">
            {questions.length} questions ciblées, tirées d&apos;une banque de {FRENCH_DIAGNOSTIC_BANK_SIZE}, pour repérer vos automatismes solides, vos fragilités et les sous-domaines à prioriser avant de lancer les révisions.
          </p>
          <p className="text-sm text-muted">
            Durée estimée : environ {Math.ceil(questions.length * 0.75)} minutes · Résultats détaillés par sous-domaine à la fin.
          </p>
        </div>
      </Panel>

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

        <div className="mb-2 h-1.5 w-full overflow-hidden rounded-full bg-secondary">
          <div
            className="h-full rounded-full bg-accent transition-all duration-300"
            style={{ width: `${progressValue}%` }}
          />
        </div>

        <p className="mt-8 font-serif text-2xl font-semibold leading-snug text-ink">
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
                <span className="mr-3 font-semibold text-muted">{String.fromCharCode(65 + index)}.</span>
                {choice}
              </button>
            );
          })}
        </div>

        {hasAnswered ? (
          <div className="mt-6 space-y-5 rounded-[1.25rem] border border-border bg-secondary px-5 py-4">
            <div className="flex flex-wrap items-center gap-3">
              <Badge tone={isCorrect ? "accentSecondary" : "warning"} size="sm">
                {isCorrect ? "Bonne réponse" : "Point de vigilance"}
              </Badge>
              <p className="text-sm text-muted">
                Réponse attendue : <strong className="text-ink">{question.choices[question.correctIndex]}</strong>
              </p>
            </div>
            <p className="text-sm leading-7 text-muted">{question.explanation}</p>
            <p className="text-sm leading-7 text-muted">
              <strong className="text-ink">Conseil de reprise :</strong> {question.retryAdvice}
            </p>
            <div className="flex justify-end">
              <Button onClick={handleNext}>{isLast ? "Voir mon profil" : "Question suivante"}</Button>
            </div>
          </div>
        ) : null}
      </Panel>
    </div>
  );
}
