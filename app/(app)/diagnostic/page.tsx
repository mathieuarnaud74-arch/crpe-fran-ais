"use client";

import Link from "next/link";
import { useEffect, useState } from "react";

import {
  buildBalancedFrenchDiagnosticSession,
  FRENCH_DIAGNOSTIC_BANK_SIZE,
  FRENCH_DIAGNOSTIC_SESSION_SIZE,
  type FrenchDiagnosticQuestion,
  type FrenchDiagnosticSubdomainKey,
} from "@/content/french-diagnostic-questions";
import { Mocca } from "@/components/mascot/mocca";
import { Badge } from "@/components/ui/badge";
import { Button, ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { cn, formatDate } from "@/lib/utils";
import {
  saveDiagnosticResult,
  loadDiagnosticHistory,
  type DiagnosticResult,
} from "@/lib/diagnostic-storage";

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
  const [previousResults, setPreviousResults] = useState<DiagnosticResult[]>([]);
  const [showingPrevious, setShowingPrevious] = useState(false);

  useEffect(() => {
    setPreviousResults(loadDiagnosticHistory());
  }, []);

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

      const finalSummaries = subdomainSummaries;
      const finalProfile = getProfileLabel(score, questions.length);
      saveDiagnosticResult({
        completedAt: new Date().toISOString(),
        score,
        total: questions.length,
        profileLabel: finalProfile.label,
        profileDetail: finalProfile.detail,
        subdomains: finalSummaries.map((item) => ({
          key: item.key,
          label: item.label,
          href: item.href,
          correct: item.correct,
          total: item.total,
          mastery: item.mastery,
          recommendation: item.recommendation,
        })),
      });
      setPreviousResults(loadDiagnosticHistory());
      return;
    }

    setCurrentQuestion((value) => value + 1);
  }

  if (completed) {
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
              size="lg"
              className="hidden shrink-0 rounded-full sm:block"
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
                  {questions.length} questions tirées d&apos;une banque de {FRENCH_DIAGNOSTIC_BANK_SIZE}
                </Badge>
              </div>
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
            <Button variant="ghost" onClick={() => { setCompleted(false); setShowingPrevious(true); }}>
              Historique des diagnostics
            </Button>
          </div>
        </Panel>
      </div>
    );
  }

  if (showingPrevious && previousResults.length > 0) {
    return (
      <div className="space-y-8">
        <Panel>
          <div className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
            <div>
              <Badge tone="accentSecondary">Historique</Badge>
              <h1 className="mt-2 font-serif text-4xl font-semibold text-ink">
                Diagnostics précédents
              </h1>
              <p className="mt-3 text-sm leading-7 text-muted">
                Vos {previousResults.length} dernier(s) diagnostic(s) conservé(s). Comparez votre progression.
              </p>
            </div>
            <Button onClick={() => setShowingPrevious(false)}>
              Nouveau diagnostic
            </Button>
          </div>
        </Panel>

        {previousResults.map((result, resultIndex) => {
          const rate = Math.round((result.score / result.total) * 100);
          const strengths = result.subdomains.filter((s) => s.mastery === "solide");
          const weaknesses = result.subdomains.filter((s) => s.mastery !== "solide");

          return (
            <Panel key={result.completedAt}>
              <div className="flex flex-wrap items-center justify-between gap-3">
                <div>
                  <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">
                    {resultIndex === 0 ? "Dernier diagnostic" : `Diagnostic ${resultIndex + 1}`}
                  </p>
                  <p className="mt-1 text-sm text-muted">{formatDate(result.completedAt)}</p>
                </div>
                <div className="flex flex-wrap gap-2">
                  <Badge tone="neutral" size="sm">{result.profileLabel}</Badge>
                  <Badge tone={rate >= 75 ? "success" : rate >= 50 ? "accentSecondary" : "warning"} size="sm">
                    {result.score}/{result.total} — {rate} %
                  </Badge>
                </div>
              </div>

              <p className="mt-4 text-sm leading-7 text-muted">{result.profileDetail}</p>

              <div className="mt-5 grid gap-3 sm:grid-cols-2">
                <div className="space-y-2">
                  <p className="text-xs font-semibold uppercase tracking-[0.14em] text-pine">
                    Points d&apos;appui ({strengths.length})
                  </p>
                  {strengths.length > 0 ? (
                    strengths.map((s) => (
                      <div
                        key={s.key}
                        className="rounded-[1rem] border border-successBorder bg-successBg px-3 py-2"
                      >
                        <p className="text-sm font-medium text-ink">{s.label}</p>
                        <p className="text-xs text-muted">{s.correct}/{s.total}</p>
                      </div>
                    ))
                  ) : (
                    <p className="text-sm text-muted">Aucun sous-domaine sécurisé.</p>
                  )}
                </div>
                <div className="space-y-2">
                  <p className="text-xs font-semibold uppercase tracking-[0.14em] text-accentSecondary">
                    À travailler ({weaknesses.length})
                  </p>
                  {weaknesses.map((s) => (
                    <Link
                      key={s.key}
                      href={s.href}
                      className="block rounded-[1rem] border border-warningBorder bg-warningBg px-3 py-2 transition-colors hover:border-accent"
                    >
                      <p className="text-sm font-medium text-ink">{s.label}</p>
                      <p className="text-xs text-muted">
                        {s.correct}/{s.total} —{" "}
                        {s.mastery === "prioritaire" ? "Prioritaire" : "À consolider"}
                      </p>
                    </Link>
                  ))}
                </div>
              </div>
            </Panel>
          );
        })}
      </div>
    );
  }

  return (
    <div className="space-y-8">
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
          <div className="mt-6 rounded-[1.25rem] border border-border bg-secondary px-5 py-4">
            <div className="flex items-start gap-4">
              <Mocca
                variant={isCorrect ? "happy" : "grumpy"}
                size="sm"
                className="hidden shrink-0 rounded-full sm:block"
              />
              <div className="flex-1 space-y-5">
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
            </div>
          </div>
        ) : null}
      </Panel>
    </div>
  );
}
