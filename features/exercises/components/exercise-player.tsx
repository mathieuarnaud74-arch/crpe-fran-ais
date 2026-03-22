"use client";

import { useEffect, useMemo, useRef, useState, useTransition } from "react";
import { toast } from "sonner";

import { useGameSounds } from "@/components/hooks/use-game-sounds";
import { Mocca } from "@/components/mascot/mocca";
import { Badge } from "@/components/ui/badge";
import { Confetti } from "@/components/ui/confetti";
import { Button, ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { Textarea } from "@/components/ui/textarea";
import { XpBar } from "@/components/ui/xp-bar";
import { XpPopup } from "@/components/ui/xp-popup";
import { ExerciseTimer } from "@/features/exercises/components/exercise-timer";
import { submitAttemptAction } from "@/features/exercises/server/actions";
import {
  evaluateExerciseAnswer,
  getAnswerValidationRule,
} from "@/features/exercises/shared/evaluation";
import { HighlightPropositionsInput } from "@/features/exercises/components/highlight-propositions-input";
import { TriCategoriesInput } from "@/features/exercises/components/tri-categories-input";
import {
  EXERCISE_TYPE_LABELS,
  SUBDOMAIN_LABELS,
  formatLevelLabel,
} from "@/lib/constants";
import { MASTERY_THRESHOLD } from "@/lib/dashboard";
import { cn } from "@/lib/utils";
import { calculateXpEarned, getXpForNextLevel } from "@/lib/xp";
import { RevisionSession, type ExerciseMode } from "@/types/domain";

type SessionResult = {
  answer: string;
  isCorrect: boolean;
  reason: "correct" | "incorrect" | "accent_only";
  expectedAnswerLabel: string;
  validationRule: string | null;
};

type ExercisePlayerProps = {
  session: RevisionSession;
  disabledReason?: string | null;
  nextSession?: { id: string; title: string } | null;
  mode?: ExerciseMode;
  timerDuration?: number; // seconds, for timed mode
  initialXp?: number;
};

export function ExercisePlayer({
  session,
  disabledReason = null,
  nextSession = null,
  mode = "standard",
  timerDuration = 60,
  initialXp = 0,
}: ExercisePlayerProps) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [draftAnswer, setDraftAnswer] = useState("");
  const [results, setResults] = useState<Record<string, SessionResult>>({});
  const [, startTransition] = useTransition();
  const [showFullExplanation, setShowFullExplanation] = useState(false);
  const [showSessionDetails, setShowSessionDetails] = useState(false);
  const [expandedReviewCard, setExpandedReviewCard] = useState<string | null>(null);
  const [triResetKey, setTriResetKey] = useState(0);
  const [consecutiveCorrect, setConsecutiveCorrect] = useState(0);
  const [showConfetti, setShowConfetti] = useState(false);
  const [streakCelebration, setStreakCelebration] = useState<number | null>(null);
  const [sessionXp, setSessionXp] = useState(0);
  const [lastXpEarned, setLastXpEarned] = useState(0);
  const [xpTrigger, setXpTrigger] = useState(0);
  const [runningXp, setRunningXp] = useState(initialXp);
  const [questionStartTime, setQuestionStartTime] = useState(Date.now());
  const prevResultsCount = useRef(0);
  const containerRef = useRef<HTMLDivElement>(null);
  const feedbackRef = useRef<HTMLDivElement>(null);
  const { playSound } = useGameSounds();

  const currentQuestion = session.questions[currentIndex];
  const currentResult = currentQuestion ? results[currentQuestion.id] : undefined;
  const answeredCount = Object.keys(results).length;
  const completed = answeredCount === session.questions.length;
  const score = Object.values(results).filter((result) => result.isCorrect).length;
  const incorrectCount = answeredCount - score;
  const remainingCount = session.questionCount - answeredCount;
  const correctPercent = (score / session.questionCount) * 100;
  const incorrectPercent = (incorrectCount / session.questionCount) * 100;

  const weakAreas = useMemo(() => {
    const incorrectQuestions = session.questions.filter((question) => !results[question.id]?.isCorrect);
    const groups = new Map<string, number>();
    for (const question of incorrectQuestions) {
      const label = SUBDOMAIN_LABELS[question.subdomain] ?? question.subdomain;
      groups.set(label, (groups.get(label) ?? 0) + 1);
    }
    return Array.from(groups.entries()).map(([label, count]) => ({ label, count }));
  }, [results, session.questions]);

  useEffect(() => {
    setShowFullExplanation(false);
    setQuestionStartTime(Date.now());
  }, [currentQuestion?.id]);

  // Scroll to top when series is completed
  useEffect(() => {
    if (completed) {
      scrollToContainer();
    }
  }, [completed]);

  // Track consecutive correct answers and trigger celebrations
  useEffect(() => {
    const currentCount = Object.keys(results).length;
    if (currentCount <= prevResultsCount.current) {
      prevResultsCount.current = currentCount;
      return;
    }
    prevResultsCount.current = currentCount;

    // Find the most recently added result
    const orderedResults = session.questions
      .filter((q) => results[q.id])
      .map((q) => results[q.id]);
    const lastResult = orderedResults[orderedResults.length - 1];

    if (lastResult?.isCorrect) {
      setConsecutiveCorrect((prev) => {
        const newStreak = prev + 1;
        if (newStreak === 5 || newStreak === 10) {
          setStreakCelebration(newStreak);
          playSound("streak");
          setTimeout(() => setStreakCelebration(null), 2500);
        }
        return newStreak;
      });
      playSound("correct");
    } else {
      setConsecutiveCorrect(0);
      if (lastResult) playSound("incorrect");
    }

    // Trigger confetti when series is completed with mastery
    if (currentCount === session.questions.length) {
      const finalScore = Object.values(results).filter((r) => r.isCorrect).length;
      const finalPercent = (finalScore / session.questions.length) * 100;
      if (finalPercent >= MASTERY_THRESHOLD) {
        setShowConfetti(true);
        playSound("streak");
      }
      if (finalPercent === 100) {
        playSound("levelUp");
      }
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [results, session.questions, playSound]);

  if (!currentQuestion) {
    return null;
  }

  const validationHint =
    currentQuestion.expected_answer.mode === "text"
      ? getAnswerValidationRule(currentQuestion.exercise_type)
      : null;

  const expectedChoiceId = getExpectedChoiceId(currentQuestion.expected_answer);

  function submitCurrentQuestion() {
    if (!draftAnswer.trim()) {
      return;
    }

    const evaluation = evaluateExerciseAnswer(currentQuestion, draftAnswer);
    const timeSpentMs = Date.now() - questionStartTime;

    // Calculate XP locally for instant feedback
    const xp = calculateXpEarned(
      evaluation.isCorrect,
      evaluation.isCorrect ? consecutiveCorrect : 0,
      timeSpentMs,
      mode,
    );
    setSessionXp((prev) => prev + xp);
    setLastXpEarned(xp);
    setXpTrigger((t) => t + 1);
    setRunningXp((prev) => prev + xp);

    setResults((previous) => ({
      ...previous,
      [currentQuestion.id]: {
        answer: draftAnswer,
        isCorrect: evaluation.isCorrect,
        reason: evaluation.reason,
        expectedAnswerLabel: evaluation.expectedAnswerLabel,
        validationRule: evaluation.validationRule,
      },
    }));

    scrollToFeedback();

    startTransition(async () => {
      const formData = new FormData();
      formData.append("exerciseId", currentQuestion.id);
      formData.append("answer", draftAnswer);
      formData.append("sessionId", session.id);
      formData.append("timeSpentMs", String(timeSpentMs));
      formData.append("exerciseMode", mode);
      formData.append("streak", String(evaluation.isCorrect ? consecutiveCorrect : 0));
      try {
        const result = await submitAttemptAction({ status: "idle" }, formData);
        if (result.previousLevel && result.newLevel && result.newLevel > result.previousLevel) {
          playSound("levelUp");
          toast.success(`🎉 Niveau ${result.newLevel} atteint !`, { duration: 3000 });
        }
        if (result.dailyStreakIncremented && result.newDailyStreak) {
          const { isStreakMilestone } = await import("@/lib/daily-streak");
          if (isStreakMilestone(result.newDailyStreak)) {
            toast(`🔥 ${result.newDailyStreak} jours d'affilée !`, {
              description: "Votre régularité paie, continuez comme ça !",
              duration: 4000,
            });
          }
        }
      } catch {
        toast.error("Votre réponse n'a pas pu être enregistrée.");
      }
    });
  }

  function scrollToContainer() {
    setTimeout(() => {
      containerRef.current?.scrollIntoView({ behavior: "smooth", block: "start" });
    }, 80);
  }

  function scrollToFeedback() {
    setTimeout(() => {
      feedbackRef.current?.scrollIntoView({ behavior: "smooth", block: "nearest" });
    }, 150);
  }

  function goToNextQuestion() {
    if (currentIndex < session.questions.length - 1) {
      // Skip forward to the next unanswered question (or the very next one if all are answered)
      let nextIdx = currentIndex + 1;
      const unansweredAfter = session.questions.findIndex(
        (q, i) => i > currentIndex && !results[q.id],
      );
      if (unansweredAfter !== -1) {
        nextIdx = unansweredAfter;
      }
      setCurrentIndex(nextIdx);
      setDraftAnswer(results[session.questions[nextIdx].id]?.answer ?? "");
      scrollToContainer();
    } else {
      // Last question — navigate to first unanswered question if any
      const firstUnansweredIndex = session.questions.findIndex((q) => !results[q.id]);
      if (firstUnansweredIndex !== -1) {
        setCurrentIndex(firstUnansweredIndex);
        setDraftAnswer("");
        scrollToContainer();
      }
    }
  }

  function goToPreviousQuestion() {
    if (currentIndex > 0) {
      // Go back to the nearest previously answered question
      let prevIdx = currentIndex - 1;
      for (let i = currentIndex - 1; i >= 0; i--) {
        if (results[session.questions[i].id]) {
          prevIdx = i;
          break;
        }
      }
      setCurrentIndex(prevIdx);
      setDraftAnswer(results[session.questions[prevIdx].id]?.answer ?? "");
      scrollToContainer();
    }
  }

  function retryCurrentQuestion() {
    setResults((previous) => {
      const next = { ...previous };
      delete next[currentQuestion.id];
      return next;
    });
    setDraftAnswer("");
    setTriResetKey((k) => k + 1);
  }

  function resetSession() {
    setResults({});
    setCurrentIndex(0);
    setDraftAnswer("");
    setConsecutiveCorrect(0);
    setShowConfetti(false);
    setStreakCelebration(null);
    prevResultsCount.current = 0;
    scrollToContainer();
  }

  function renderFeedbackTitle() {
    if (!currentResult) {
      return null;
    }

    if (currentResult.isCorrect) {
      if (consecutiveCorrect >= 5) return "Impressionnant, quelle s\u00e9rie !";
      if (consecutiveCorrect >= 3) return "Encore juste, bien jou\u00e9 !";
      const correctTitles = [
        "Bonne r\u00e9ponse !",
        "Exactement !",
        "Bien vu !",
        "C\u2019est correct !",
      ];
      return correctTitles[currentIndex % correctTitles.length];
    }

    if (currentResult.reason === "accent_only") {
      return "Presque ! L\u2019accent fait la diff\u00e9rence.";
    }

    const incorrectTitles = [
      "Pas tout \u00e0 fait. Regardons ensemble.",
      "Ce n\u2019est pas \u00e7a, mais c\u2019est formateur.",
      "Pas cette fois. Voyons pourquoi.",
    ];
    return incorrectTitles[currentIndex % incorrectTitles.length];
  }

  function renderFeedbackBody() {
    if (!currentResult) {
      return null;
    }

    if (currentResult.isCorrect) {
      return null;
    }

    if (currentResult.reason === "accent_only") {
      return (
        <>
          <p className="mt-2">
            Le raisonnement est bon ! Cet exercice exige cependant la graphie exacte avec les
            accents. C&apos;est un automatisme qui viendra avec la pratique.
          </p>
          <p className="mt-2">
            <span className="font-semibold">Forme attendue :</span>{" "}
            {currentResult.expectedAnswerLabel}
          </p>
        </>
      );
    }

    return (
      <p className="mt-2">
        <span className="font-semibold">R&eacute;ponse attendue :</span>{" "}
        {currentResult.expectedAnswerLabel}
      </p>
    );
  }

  function getMoccaEncouragement(): string | null {
    if (currentResult) return null;
    const remaining = session.questionCount - answeredCount;
    if (remaining === 1) return "Derni\u00e8re question, donnez tout !";
    if (remaining === 2) return "Plus que 2 questions, vous y \u00eates presque !";
    if (remaining === 3) return "Plus que 3 ! La fin est proche.";
    if (consecutiveCorrect >= 5) return "S\u00e9rie en or ! Continuez comme \u00e7a.";
    if (consecutiveCorrect >= 3) return "Vous \u00eates en forme ! Continuez.";
    if (answeredCount === Math.floor(session.questionCount / 2) && answeredCount > 0) {
      return "Mi-parcours ! Vous avancez bien.";
    }
    return null;
  }

  const moccaEncouragement = getMoccaEncouragement();

  const xpInfo = getXpForNextLevel(runningXp);

  return (
    <div ref={containerRef} className="scroll-mt-20 space-y-6">
      <Confetti trigger={showConfetti} />

      {/* XP Bar */}
      <div className="relative">
        <XpBar
          currentLevel={xpInfo.currentLevel}
          xpInCurrentLevel={xpInfo.xpInCurrentLevel}
          xpNeededForNext={xpInfo.xpNeededForNext}
          progress={xpInfo.progress}
          totalXp={runningXp}
          size="sm"
        />
        <XpPopup xp={lastXpEarned} trigger={xpTrigger} />
        {sessionXp > 0 && (
          <p className="mt-1 text-right text-xs text-muted">
            +{sessionXp} XP cette série
          </p>
        )}
      </div>

      <Panel className="border-border bg-card">
        <div className="flex flex-col gap-5 lg:flex-row lg:items-start lg:justify-between">
          <div className="space-y-3">
            <div className="flex flex-wrap items-center gap-2">
              <Badge tone={session.access_tier === "premium" ? "accent" : "neutral"}>
                {session.access_tier === "premium" ? "Premium" : "Gratuit"}
              </Badge>
              <Badge>{formatLevelLabel(session.level)}</Badge>
              <Badge>{session.questionCount} questions</Badge>
              {consecutiveCorrect >= 3 && !completed && (
                <span className={cn(
                  "inline-flex items-center gap-1 rounded-full border px-2.5 py-0.5 text-[0.65rem] font-bold uppercase tracking-[0.10em]",
                  consecutiveCorrect >= 5
                    ? "animate-fire-glow border-accentSecondary/40 bg-accentSecondarySoft text-accentSecondaryDark"
                    : "border-accent/25 bg-accent/10 text-accent",
                )}>
                  <span aria-hidden="true">{consecutiveCorrect >= 5 ? "\uD83D\uDD25" : "\u26A1"}</span>
                  {consecutiveCorrect} d&apos;affil&eacute;e
                </span>
              )}
            </div>
            <div>
              <h1 className="break-words font-serif text-2xl font-semibold text-ink sm:text-4xl">
                {session.title}
              </h1>
              <button
                type="button"
                onClick={() => setShowSessionDetails((v) => !v)}
                className="mt-2 flex items-center gap-1 text-xs font-semibold text-accent underline lg:hidden"
              >
                {showSessionDetails ? "Masquer les détails ▴" : "Voir les détails ▾"}
              </button>
              <div className={cn("space-y-2", !showSessionDetails && "hidden lg:block")}>
                <p className="mt-3 max-w-3xl text-base leading-8 text-muted">{session.summary}</p>
                <p className="mt-3 max-w-3xl text-sm leading-7 text-muted">
                  <span className="font-semibold text-ink">Objectif :</span> {session.objective}
                </p>
                <p className="mt-2 max-w-3xl text-sm leading-7 text-muted">{session.introduction}</p>
              </div>
            </div>
          </div>
          <div className="w-full rounded-[1.5rem] border border-border bg-paper px-4 py-3 sm:min-w-[220px] sm:w-auto sm:px-5 sm:py-4">
            <p className="text-sm font-semibold text-ink" id="progress-label">
              Progression de la s&eacute;rie
            </p>
            <div
              role="progressbar"
              aria-labelledby="progress-label"
              aria-valuenow={answeredCount}
              aria-valuemin={0}
              aria-valuemax={session.questionCount}
              className="mt-4 flex h-3 overflow-hidden rounded-full bg-secondary"
            >
              <div
                className="h-3 rounded-l-full bg-accent transition-[width] duration-300 ease-out"
                style={{ width: `${correctPercent}%` }}
              />
              <div
                className="h-3 bg-error/70 transition-[width] duration-300 ease-out"
                style={{ width: `${incorrectPercent}%` }}
              />
            </div>
            <div className="mt-4 flex items-center justify-between gap-2">
              <span className="text-sm text-muted">
                Question {Math.min(currentIndex + 1, session.questionCount)} / {session.questionCount}
              </span>
              <div className="flex items-center gap-3 text-xs text-muted">
                {score > 0 && (
                  <span className="flex items-center gap-1">
                    <span className="inline-block h-2 w-2 rounded-full bg-accent" />
                    {score}
                  </span>
                )}
                {incorrectCount > 0 && (
                  <span className="flex items-center gap-1">
                    <span className="inline-block h-2 w-2 rounded-full bg-error/70" />
                    {incorrectCount}
                  </span>
                )}
                {remainingCount > 0 && (
                  <span className="flex items-center gap-1">
                    <span className="inline-block h-2 w-2 rounded-full bg-secondary" />
                    {remainingCount}
                  </span>
                )}
              </div>
            </div>
          </div>
        </div>
      </Panel>

      {completed ? (
        <Panel
          className={cn(
            "border-border bg-card",
            correctPercent >= MASTERY_THRESHOLD && "border-successBorder/50",
          )}
        >
          <div className="space-y-6">
            {/* Mastery celebration banner */}
            {correctPercent >= MASTERY_THRESHOLD && (
              <div className="animate-score-reveal flex items-center gap-3 rounded-[1.25rem] border border-successBorder bg-successBg px-5 py-4">
                <span className="text-2xl" aria-hidden="true">{score === session.questionCount ? "\uD83C\uDFC6" : "\uD83C\uDF1F"}</span>
                <div>
                  <p className="text-sm font-bold text-pine">
                    {score === session.questionCount
                      ? "Score parfait ! Vous ma\u00eetrisez ce sujet."
                      : "S\u00e9rie ma\u00eetris\u00e9e ! Beau travail."}
                  </p>
                  <p className="text-xs text-pine/70">
                    {score === session.questionCount
                      ? "Toutes les r\u00e9ponses sont correctes. Impressionnant !"
                      : `${score}/${session.questionCount} bonnes r\u00e9ponses \u2014 vous avez d\u00e9pass\u00e9 le seuil de ${MASTERY_THRESHOLD}\u00a0%.`}
                  </p>
                </div>
              </div>
            )}

            <div className="flex flex-col gap-4 lg:flex-row lg:items-end lg:justify-between">
              <div className="flex items-start gap-5">
                <Mocca
                  variant={
                    correctPercent >= 80
                      ? "happy"
                      : correctPercent >= 50
                        ? "neutral"
                        : "grumpy"
                  }
                  size="xl"
                  className="hidden shrink-0 sm:block"
                />
                <div>
                  <div className="flex flex-wrap items-center gap-2">
                    <Badge tone={score === session.questionCount ? "success" : "accent"}>
                      S&eacute;rie termin&eacute;e
                    </Badge>
                    {correctPercent >= MASTERY_THRESHOLD ? (
                      <Badge tone="success" className="animate-mastery-shine">S&eacute;rie ma&icirc;tris&eacute;e ✓</Badge>
                    ) : (
                      <Badge tone="neutral">
                        Objectif ma&icirc;trise&nbsp;: {MASTERY_THRESHOLD}&nbsp;%
                      </Badge>
                    )}
                  </div>
                  <h2 className="animate-score-reveal mt-3 font-serif text-2xl sm:text-3xl font-semibold text-ink">
                    Score final : {score} / {session.questionCount}
                  </h2>
                  <p className="mt-2 text-sm font-medium text-muted">
                    {correctPercent >= 90
                      ? "Excellent ! Vous ma\u00eetrisez ce domaine. Continuez \u00e0 consolider vos acquis."
                      : correctPercent >= 80
                        ? "Tr\u00e8s bon travail ! Mocca est impressionn\u00e9. Quelques ajustements et ce sera parfait."
                        : correctPercent >= 60
                          ? "Bon effort ! Vous \u00eates sur la bonne voie. Retravaillez les points fragiles ci-dessous."
                          : correctPercent >= 40
                            ? "C\u2019est un d\u00e9but. Relisez les corrections et r\u00e9essayez \u2014 chaque erreur est une le\u00e7on."
                            : "Courage ! Ce sujet demande du travail, mais la persévérance paie. Mocca croit en vous."}
                  </p>
                  <p className="mt-2 max-w-2xl text-sm leading-7 text-muted">
                    Retrouvez ci-dessous les corrections compl&egrave;tes, les erreurs
                    fr&eacute;quentes et les points essentiels &agrave; retenir.
                  </p>
                </div>
              </div>
              <div className="flex flex-wrap gap-3">
                {nextSession && (
                  <ButtonLink href={`/exercices/${nextSession.id}`} className="w-full sm:w-auto">
                    Série suivante &rarr;
                  </ButtonLink>
                )}
                <Button type="button" onClick={resetSession} variant="secondary" className="w-full sm:w-auto">
                  Recommencer la s&eacute;rie
                </Button>
              </div>
            </div>

            <div className="grid gap-4 lg:grid-cols-2">
              <div className="space-y-4">
                <div className="rounded-[1.5rem] border border-border bg-paper p-5">
                  <h3 className="font-serif text-2xl font-semibold text-ink">Bilan de la s&eacute;rie</h3>
                  <p className="mt-3 text-sm leading-7 text-muted">
                    <span className="font-semibold text-ink">Comp&eacute;tence travaill&eacute;e :</span>{" "}
                    {session.completionSummary.skill}
                  </p>
                  <ul className="mt-4 space-y-3 text-sm leading-7 text-muted">
                    {session.completionSummary.keyPoints.map((item) => (
                      <li key={item} className="rounded-xl border border-border bg-card px-4 py-3">
                        {item}
                      </li>
                    ))}
                  </ul>
                  <p className="mt-4 text-sm leading-7 text-muted">
                    <span className="font-semibold text-ink">Conseil de reprise :</span>{" "}
                    {session.completionSummary.retryAdvice}
                  </p>
                </div>
                <div className="rounded-[1.5rem] border border-border bg-paper p-5">
                  <h3 className="font-serif text-2xl font-semibold text-ink">Axes de reprise</h3>
                  {weakAreas.length === 0 ? (
                    <div className="mt-3 flex items-center gap-3 rounded-xl border border-successBorder bg-successBg px-4 py-3">
                      <span className="text-lg" aria-hidden="true">&#x2728;</span>
                      <p className="text-sm leading-7 text-pine">
                        Z&eacute;ro erreur ! Vous pouvez passer &agrave; une
                        s&eacute;rie plus exigeante ou consolider avec une r&eacute;vision.
                      </p>
                    </div>
                  ) : (
                    <ul className="mt-4 space-y-3 text-sm leading-7 text-muted">
                      {weakAreas.map(({ label, count }) => (
                        <li key={label} className="rounded-xl border border-border bg-card px-4 py-3">
                          <span className="font-semibold text-ink">{label}</span>
                          <span className="ml-2 text-xs text-muted">
                            — {count} question{count > 1 ? "s" : ""} à retravailler
                          </span>
                        </li>
                      ))}
                    </ul>
                  )}
                </div>
              </div>
              <div className="space-y-4">
                {session.questions.map((question, index) => (
                  <div key={question.id} className="rounded-[1.5rem] border border-border bg-paper p-5">
                    <div className="flex flex-wrap items-center gap-3">
                      <Badge tone={results[question.id]?.isCorrect ? "success" : "warning"}>
                        {results[question.id]?.isCorrect ? "Correct" : "\u00c0 revoir"}
                      </Badge>
                      <span className="text-sm font-medium text-muted">Question {index + 1}</span>
                    </div>
                    <p className="mt-4 text-base font-medium leading-7 text-ink">
                      {question.instruction}
                    </p>
                    <button
                      type="button"
                      className="mt-2 text-xs font-semibold text-accent underline sm:hidden"
                      onClick={() => setExpandedReviewCard((v) => (v === question.id ? null : question.id))}
                    >
                      {expandedReviewCard === question.id ? "Masquer ▴" : "Voir la correction ▾"}
                    </button>
                    <div className={cn("mt-4", expandedReviewCard !== question.id && "hidden sm:block")}>
                      {question.support_text ? (
                        <div className="mb-4 rounded-xl border border-border bg-card px-4 py-4 text-sm leading-7 text-muted">
                          {question.support_text}
                        </div>
                      ) : null}
                      <p className="text-sm leading-7 text-muted">
                        <span className="font-semibold text-ink">Votre r&eacute;ponse :</span>{" "}
                        {question.exercise_type === "tri_categories" || question.exercise_type === "surlignage_propositions"
                          ? "Classement soumis"
                          : results[question.id]?.answer}
                      </p>
                      <p className="mt-2 text-sm leading-7 text-muted">
                        <span className="font-semibold text-ink">Correction :</span>{" "}
                        {question.detailed_explanation}
                      </p>
                      {question.common_mistake ? (
                        <p className="mt-2 text-sm leading-7 text-muted">
                          <span className="font-semibold text-ink">Erreur fr&eacute;quente :</span>{" "}
                          {question.common_mistake}
                        </p>
                      ) : null}
                    </div>
                  </div>
                ))}
              </div>
            </div>
          </div>
        </Panel>
      ) : (
        <Panel className="border-border bg-card">
          {/* Streak celebration toast */}
          {streakCelebration !== null && (
            <div className="animate-score-reveal mb-4 flex items-center gap-3 rounded-[1.25rem] border border-accentSecondary/30 bg-accentSecondarySoft px-4 py-3">
              <Mocca variant="happy" size="sm" className="shrink-0" />
              <p className="text-sm font-semibold text-accentSecondaryDark">
                {streakCelebration >= 10
                  ? "\uD83C\uDF1F Incroyable ! 10 bonnes r\u00e9ponses cons\u00e9cutives !"
                  : "\uD83D\uDD25 5 bonnes r\u00e9ponses d\u2019affil\u00e9e ! Tu g\u00e8res !"}
              </p>
            </div>
          )}

          {/* Mocca contextual encouragement */}
          {moccaEncouragement && !currentResult && (
            <div className="animate-question-stage mb-4 flex items-center gap-2.5 rounded-xl border border-accent/15 bg-accent/5 px-4 py-2.5">
              <Mocca variant={consecutiveCorrect >= 3 ? "happy" : "neutral"} size="sm" className="shrink-0" />
              <p className="text-sm font-medium text-accent">{moccaEncouragement}</p>
            </div>
          )}

          <div key={currentQuestion.id} className="animate-question-stage space-y-6">
            <div className="flex flex-wrap items-center justify-between gap-3">
              <div className="flex flex-wrap items-center gap-3">
                <Badge>{SUBDOMAIN_LABELS[currentQuestion.subdomain]}</Badge>
                <Badge>{EXERCISE_TYPE_LABELS[currentQuestion.exercise_type]}</Badge>
                {mode === "timed" && <Badge tone="accent">Chrono</Badge>}
              </div>
              {mode === "timed" && !currentResult && (
                <ExerciseTimer
                  key={currentQuestion.id}
                  duration={timerDuration}
                  isPlaying={!currentResult}
                  size={60}
                  onComplete={() => {
                    if (!currentResult) {
                      if (draftAnswer.trim()) {
                        submitCurrentQuestion();
                      } else {
                        // Time's up with no answer — mark as incorrect
                        const qId = currentQuestion.id;
                        const qIdx = currentIndex;
                        setResults((prev) => ({
                          ...prev,
                          [qId]: {
                            answer: "",
                            isCorrect: false,
                            reason: "incorrect",
                            expectedAnswerLabel: "",
                            validationRule: null,
                          },
                        }));
                        playSound("incorrect");
                        setConsecutiveCorrect(0);
                        // Advance after a short delay — use captured index to avoid stale closure
                        setTimeout(() => {
                          setCurrentIndex((idx) => {
                            // Only advance if we're still on the same question
                            if (idx !== qIdx) return idx;
                            return Math.min(idx + 1, session.questions.length - 1);
                          });
                          setDraftAnswer("");
                          scrollToContainer();
                        }, 800);
                      }
                    }
                  }}
                  onWarning={() => playSound("timerWarning")}
                />
              )}
            </div>
            <div>
              <p className="text-sm font-semibold uppercase tracking-[0.14em] text-muted">
                Question {currentIndex + 1}
              </p>
              <h2 className="mt-3 break-words font-serif text-2xl font-semibold text-ink sm:text-3xl">
                {currentQuestion.instruction}
              </h2>
              {currentQuestion.support_text ? (
                <div className="mt-5 rounded-[1.5rem] border border-border bg-paper px-5 py-5 text-sm leading-7 text-muted">
                  {currentQuestion.support_text}
                </div>
              ) : null}
            </div>

            {currentQuestion.exercise_type === "surlignage_propositions" &&
            currentQuestion.expected_answer.mode === "highlight_groups" ? (
              <HighlightPropositionsInput
                key={`${currentQuestion.id}-${triResetKey}`}
                segments={currentQuestion.choices ?? []}
                groups={currentQuestion.expected_answer.groups}
                onChange={setDraftAnswer}
                result={currentResult}
                expectedMapping={currentQuestion.expected_answer.mapping}
                disabled={Boolean(disabledReason) || Boolean(currentResult)}
              />
            ) : currentQuestion.exercise_type === "tri_categories" &&
            currentQuestion.expected_answer.mode === "categorization" ? (
              <TriCategoriesInput
                key={`${currentQuestion.id}-${triResetKey}`}
                items={currentQuestion.choices ?? []}
                categories={currentQuestion.expected_answer.categories}
                onChange={setDraftAnswer}
                result={currentResult}
                expectedMapping={currentQuestion.expected_answer.mapping}
                disabled={Boolean(disabledReason) || Boolean(currentResult)}
              />
            ) : currentQuestion.choices ? (
              <div className="space-y-3">
                {currentQuestion.choices.map((choice) => {
                  const isSelected = draftAnswer === choice.id;
                  const isExpected = expectedChoiceId === choice.id;
                  const showCorrect = Boolean(currentResult) && isExpected;
                  const showIncorrect = Boolean(currentResult && isSelected && !currentResult.isCorrect);

                  return (
                    <button
                      key={choice.id}
                      type="button"
                      aria-pressed={isSelected}
                      disabled={Boolean(disabledReason) || Boolean(currentResult)}
                      onClick={() => setDraftAnswer(choice.id)}
                      className={cn(
                        "flex w-full items-start gap-3 rounded-[1.25rem] border px-4 py-4 text-left transition-all duration-200",
                        !currentResult &&
                          (isSelected
                            ? "border-accent bg-secondary"
                            : "border-border bg-paper hover:border-accent"),
                        showCorrect && "border-successBorder bg-successBg shadow-subtle",
                        showIncorrect && "border-errorBorder bg-errorBg",
                        currentResult &&
                          !showCorrect &&
                          !showIncorrect &&
                          "border-border bg-paper/90",
                        (disabledReason || currentResult) && "cursor-default",
                      )}
                    >
                      {currentQuestion.exercise_type !== "vrai_faux" && (
                        <span
                          className={cn(
                            "mt-0.5 flex h-6 w-6 shrink-0 items-center justify-center rounded-full border text-xs font-semibold transition-colors duration-200",
                            !currentResult &&
                              (isSelected
                                ? "border-accent bg-accent text-paper"
                                : "border-border text-muted"),
                            showCorrect && "border-successBorder bg-card text-pine",
                            showIncorrect && "border-errorBorder bg-card text-error",
                            currentResult &&
                              !showCorrect &&
                              !showIncorrect &&
                              "border-border text-muted",
                          )}
                        >
                          {choice.id.toUpperCase()}
                        </span>
                      )}
                      <span
                        className={cn(
                          "min-w-0 flex-1 text-sm leading-7 text-ink",
                          currentQuestion.exercise_type === "vrai_faux" && "font-semibold",
                        )}
                      >
                        {choice.label}
                      </span>
                      {showCorrect ? (
                        <span
                          aria-hidden="true"
                          className="animate-feedback-icon mt-0.5 flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-card text-pine"
                        >
                          <StatusGlyph tone="success" />
                        </span>
                      ) : showIncorrect ? (
                        <span
                          aria-hidden="true"
                          className="animate-feedback-icon mt-0.5 flex h-6 w-6 shrink-0 items-center justify-center rounded-full bg-card text-error"
                        >
                          <StatusGlyph tone="error" />
                        </span>
                      ) : null}
                    </button>
                  );
                })}
              </div>
            ) : (
              <label className="block space-y-2">
                <span className="text-sm font-semibold text-ink">Votre r&eacute;ponse</span>
                <Textarea
                  value={draftAnswer}
                  onChange={(event) => setDraftAnswer(event.target.value)}
                  disabled={Boolean(disabledReason) || Boolean(currentResult)}
                  rows={4}
                  className="leading-7"
                  placeholder={"Saisissez votre r\u00e9ponse"}
                />
                {validationHint ? (
                  <p className="text-xs leading-6 text-muted">{validationHint}</p>
                ) : null}
              </label>
            )}

            {disabledReason ? (
              <div className="rounded-[1.25rem] border border-border bg-secondary px-4 py-4 text-sm leading-7 text-ink">
                {disabledReason}
              </div>
            ) : null}

            <div ref={feedbackRef} aria-live="polite" aria-atomic="true">
              {currentResult ? (
                <div
                  className={cn(
                    "relative overflow-hidden rounded-[1.5rem] border-2 px-6 py-6 text-sm leading-7 transition-colors duration-200",
                    currentResult.isCorrect
                      ? "animate-feedback-success border-successBorder bg-successBg text-ink shadow-panel"
                      : currentResult.reason === "accent_only"
                        ? "animate-feedback-soft border-warningBorder bg-warningBg text-ink shadow-panel"
                        : "animate-feedback-soft border-errorBorder bg-errorBg text-ink shadow-panel",
                  )}
                >
                  <div
                    aria-hidden="true"
                    className={cn(
                      "absolute inset-y-0 left-0 w-1.5",
                      currentResult.isCorrect
                        ? "bg-accent"
                        : currentResult.reason === "accent_only"
                          ? "bg-warning"
                          : "bg-error",
                    )}
                  />
                  <div className="flex items-end gap-4">
                    <span
                      aria-hidden="true"
                      className={cn(
                        "mt-0.5 flex h-11 w-11 shrink-0 items-center justify-center rounded-full",
                        currentResult.isCorrect
                          ? "animate-feedback-icon bg-accent/15 text-pine"
                          : currentResult.reason === "accent_only"
                            ? "animate-feedback-icon bg-warning/15 text-warning"
                            : "animate-feedback-icon bg-error/15 text-error",
                      )}
                    >
                      <StatusGlyph
                        tone={
                          currentResult.isCorrect
                            ? "success"
                            : currentResult.reason === "accent_only"
                              ? "warning"
                              : "error"
                        }
                        size="lg"
                      />
                    </span>
                    <div className="min-w-0 flex-1">
                      <p
                        className={cn(
                          "text-base font-bold",
                          currentResult.isCorrect
                            ? "text-pine"
                            : currentResult.reason === "accent_only"
                              ? "text-warning"
                              : "text-error",
                        )}
                      >
                        {renderFeedbackTitle()}
                      </p>
                      {renderFeedbackBody()}
                      <div className="mt-4 flex items-start gap-3">
                        <Mocca
                          variant={
                            currentResult.isCorrect
                              ? "happy"
                              : currentResult.reason === "accent_only"
                                ? "neutral"
                                : "grumpy"
                          }
                          size="portrait"
                          className="hidden shrink-0 sm:block"
                        />
                        <div className="relative flex-1 rounded-[1rem] border border-border/50 bg-card/60 px-4 py-3">
                          <div className="absolute -left-2.5 top-5 hidden h-0 w-0 border-y-[8px] border-r-[10px] border-y-transparent border-r-card/60 sm:block" />
                          <p className="text-xs font-semibold uppercase tracking-[0.12em] text-muted">Mocca t&apos;explique</p>
                          <p className={cn("mt-1", !showFullExplanation && "line-clamp-3 sm:line-clamp-none")}>{currentQuestion.detailed_explanation}</p>
                          {currentResult.validationRule ? (
                            <p className={cn("mt-3 text-sm", !showFullExplanation && "hidden sm:block")}>
                              <span className="font-semibold">R&egrave;gle :</span>{" "}
                              {currentResult.validationRule}
                            </p>
                          ) : null}
                          {currentQuestion.common_mistake ? (
                            <p className={cn("mt-2 text-sm", !showFullExplanation && "hidden sm:block")}>
                              <span className="font-semibold">Erreur fr&eacute;quente :</span>{" "}
                              {currentQuestion.common_mistake}
                            </p>
                          ) : null}
                          <button
                            type="button"
                            onClick={() => setShowFullExplanation((v) => !v)}
                            className="mt-2 text-xs font-semibold text-accent underline sm:hidden"
                          >
                            {showFullExplanation ? "Réduire ▴" : "Lire l'explication complète ▾"}
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              ) : null}
            </div>

            <div className="flex flex-col-reverse gap-3 border-t border-border pt-4 sm:flex-row sm:flex-wrap sm:items-center sm:justify-between">
              <Button
                type="button"
                variant="ghost"
                disabled={currentIndex === 0 || !session.questions.slice(0, currentIndex).some((q) => results[q.id])}
                onClick={goToPreviousQuestion}
                className="w-full sm:w-auto"
              >
                Question pr&eacute;c&eacute;dente
              </Button>
              <div className="flex flex-col gap-3 sm:flex-row sm:flex-wrap">
                {!currentResult ? (
                  <Button
                    type="button"
                    disabled={!draftAnswer.trim() || Boolean(disabledReason)}
                    onClick={submitCurrentQuestion}
                    className="w-full sm:w-auto"
                  >
                    Corriger cette question
                  </Button>
                ) : currentResult.isCorrect ? (
                  <Button type="button" onClick={goToNextQuestion} className="w-full sm:w-auto">
                    {currentIndex === session.questions.length - 1
                      ? "Terminer la s\u00e9rie"
                      : "Question suivante"}
                  </Button>
                ) : (
                  <>
                    <Button type="button" variant="secondary" onClick={retryCurrentQuestion} className="w-full sm:w-auto">
                      R&eacute;essayer
                    </Button>
                    <Button type="button" onClick={goToNextQuestion} className="w-full sm:w-auto">
                      {currentIndex === session.questions.length - 1
                        ? "Terminer la s\u00e9rie"
                        : "Passer \u00e0 la suivante"}
                    </Button>
                  </>
                )}
              </div>
            </div>
          </div>
        </Panel>
      )}
    </div>
  );
}

function getExpectedChoiceId(expectedAnswer: RevisionSession["questions"][number]["expected_answer"]) {
  if (expectedAnswer.mode === "single_choice") {
    return expectedAnswer.value;
  }

  if (expectedAnswer.mode === "boolean") {
    return String(expectedAnswer.value);
  }

  return null;
}

function StatusGlyph({ tone, size = "md" }: { tone: "success" | "warning" | "error"; size?: "md" | "lg" }) {
  const sizeClass = size === "lg" ? "h-5 w-5" : "h-4 w-4";

  if (tone === "success") {
    return (
      <svg viewBox="0 0 20 20" fill="none" stroke="currentColor" strokeWidth="1.8" className={sizeClass}>
        <path d="M4.75 10.25 8.25 13.75 15.25 6.75" strokeLinecap="round" strokeLinejoin="round" />
      </svg>
    );
  }

  if (tone === "warning") {
    return (
      <svg viewBox="0 0 20 20" fill="none" stroke="currentColor" strokeWidth="1.8" className={sizeClass}>
        <path d="M10 6.25v4.5" strokeLinecap="round" />
        <circle cx="10" cy="13.75" r="0.8" fill="currentColor" stroke="none" />
      </svg>
    );
  }

  return (
    <svg viewBox="0 0 20 20" fill="none" stroke="currentColor" strokeWidth="1.8" className={sizeClass}>
      <path d="m6.5 6.5 7 7" strokeLinecap="round" />
      <path d="m13.5 6.5-7 7" strokeLinecap="round" />
    </svg>
  );
}
