import {
  DASHBOARD_SUBDOMAINS,
  FRENCH_DOMAIN_CONFIG,
  FRENCH_DOMAIN_ORDER,
  MATH_DASHBOARD_SUBDOMAINS,
  MATH_DOMAIN_CONFIG,
  MATH_DOMAIN_ORDER,
  SUBDOMAIN_LABELS,
  SUBJECT_LABELS,
  getFrenchDomainKey,
  getMathDomainKey,
} from "@/lib/constants";
import { getStartOfDayParis } from "@/lib/daily-streak";
import { getDailyRemainingQuota } from "@/lib/freemium";
import type {
  DashboardActivity,
  DashboardData,
  DashboardDomainDirectoryItem,
  DashboardDomainProgress,
  DashboardFrequentMistake,
  DashboardSessionProgress,
  DashboardSubdomainProgress,
  DomainKey,
  ExerciseSubdomain,
  RevisionSession,
  Subject,
} from "@/types/domain";

import { buildDailyActivity, buildScoreEvolution } from "./activity";
import { computeEarnedBadges } from "./badges";
import { getReviewReason, getSessionStatus, getStatus } from "./status";
import type { AttemptInput, DomainStats, SessionStats, SubdomainStats } from "./types";
import { STATUS_ORDER, getCorrectRate, getLatestTimestamp } from "./utils";

export function buildDashboardData(
  sessions: RevisionSession[],
  attempts: AttemptInput[],
  isPremium: boolean,
  subject: Subject = "Francais",
): DashboardData {
  type DomainConfigEntry = { label: string; description: string; href: string; subdomains: ExerciseSubdomain[] };
  const dashboardSubdomains = subject === "Mathematiques" ? MATH_DASHBOARD_SUBDOMAINS : DASHBOARD_SUBDOMAINS;
  const domainOrder: DomainKey[] = subject === "Mathematiques" ? [...MATH_DOMAIN_ORDER] : [...FRENCH_DOMAIN_ORDER];
  const domainConfig: Record<string, DomainConfigEntry> = subject === "Mathematiques" ? MATH_DOMAIN_CONFIG : FRENCH_DOMAIN_CONFIG;
  const resolveDomainKey = (subdomain: RevisionSession["subdomain"]): DomainKey =>
    (subject === "Mathematiques" ? getMathDomainKey(subdomain) : getFrenchDomainKey(subdomain)) as DomainKey;
  const visibleSessions = sessions;

  const questionMap = new Map<
    string,
    {
      session: RevisionSession;
      instruction: string;
      commonMistake: string | null;
    }
  >();

  const sessionStats = new Map<string, SessionStats>();
  const subdomainStats = new Map<string, SubdomainStats>();
  const domainStats = new Map<RevisionSession["subdomain"], DomainStats>();

  for (const domain of dashboardSubdomains) {
    domainStats.set(domain, {
      domain,
      totalSeries: 0,
      completedSeries: 0,
      inProgressSeries: 0,
      attemptedQuestions: 0,
      attempts: 0,
      correct: 0,
      lastAnsweredAt: null,
    });
  }

  for (const session of visibleSessions) {
    sessionStats.set(session.id, {
      attempts: 0,
      correct: 0,
      answeredQuestionIds: new Set<string>(),
      lastAnsweredAt: null,
    });

    for (const question of session.questions) {
      questionMap.set(question.id, {
        session,
        instruction: question.instruction,
        commonMistake: question.common_mistake ?? null,
      });
    }

    const currentSubdomain = subdomainStats.get(session.topicKey);

    if (currentSubdomain) {
      currentSubdomain.totalSeries += 1;
    } else {
      subdomainStats.set(session.topicKey, {
        key: session.topicKey,
        label: session.topicLabel,
        domain: session.subdomain,
        totalSeries: 1,
        completedSeries: 0,
        inProgressSeries: 0,
        attemptedQuestions: 0,
        attempts: 0,
        correct: 0,
        lastAnsweredAt: null,
      });
    }

    const currentDomain = domainStats.get(session.subdomain);

    if (currentDomain) {
      currentDomain.totalSeries += 1;
    }
  }

  const scopedAttempts = attempts
    .filter((attempt) => questionMap.has(attempt.exercise_id))
    .sort((left, right) => (left.answered_at < right.answered_at ? 1 : -1));

  for (const attempt of scopedAttempts) {
    const questionEntry = questionMap.get(attempt.exercise_id);

    if (!questionEntry) {
      continue;
    }

    const session = questionEntry.session;
    const currentSession = sessionStats.get(session.id);
    const currentSubdomain = subdomainStats.get(session.topicKey);
    const currentDomain = domainStats.get(session.subdomain);

    if (!currentSession || !currentSubdomain || !currentDomain) {
      continue;
    }

    currentSession.attempts += 1;
    currentSession.correct += attempt.is_correct ? 1 : 0;
    currentSession.answeredQuestionIds.add(attempt.exercise_id);
    currentSession.lastAnsweredAt = getLatestTimestamp(currentSession.lastAnsweredAt, attempt.answered_at);

    currentSubdomain.attempts += 1;
    currentSubdomain.correct += attempt.is_correct ? 1 : 0;
    currentSubdomain.lastAnsweredAt = getLatestTimestamp(
      currentSubdomain.lastAnsweredAt,
      attempt.answered_at,
    );

    currentDomain.attempts += 1;
    currentDomain.correct += attempt.is_correct ? 1 : 0;
    currentDomain.lastAnsweredAt = getLatestTimestamp(currentDomain.lastAnsweredAt, attempt.answered_at);
  }

  let completedSeries = 0;
  let inProgressSeries = 0;

  for (const session of visibleSessions) {
    const currentSession = sessionStats.get(session.id);
    const currentSubdomain = subdomainStats.get(session.topicKey);
    const currentDomain = domainStats.get(session.subdomain);

    if (!currentSession || !currentSubdomain || !currentDomain) {
      continue;
    }

    const answeredCount = currentSession.answeredQuestionIds.size;
    const isCompleted = answeredCount >= session.questionCount;
    const isInProgress = answeredCount > 0 && !isCompleted;

    currentSubdomain.attemptedQuestions += answeredCount;
    currentDomain.attemptedQuestions += answeredCount;

    if (isCompleted) {
      completedSeries += 1;
      currentSubdomain.completedSeries += 1;
      currentDomain.completedSeries += 1;
    } else if (isInProgress) {
      inProgressSeries += 1;
      currentSubdomain.inProgressSeries += 1;
      currentDomain.inProgressSeries += 1;
    }
  }

  const subdomainProgress: DashboardSubdomainProgress[] = Array.from(subdomainStats.values())
    .map((item) => {
      const status = getStatus(item.attempts, item.correct, item.completedSeries, item.totalSeries);

      return {
        key: item.key,
        label: item.label,
        domain: item.domain,
        domainLabel: SUBDOMAIN_LABELS[item.domain],
        attempts: item.attempts,
        attemptedQuestions: item.attemptedQuestions,
        completedSeries: item.completedSeries,
        inProgressSeries: item.inProgressSeries,
        totalSeries: item.totalSeries,
        correctRate: getCorrectRate(item.attempts, item.correct),
        status,
        lastAnsweredAt: item.lastAnsweredAt,
        reviewReason: getReviewReason({
          attempts: item.attempts,
          status,
          inProgressSeries: item.inProgressSeries,
          completedSeries: item.completedSeries,
          totalSeries: item.totalSeries,
        }),
      };
    })
    .sort((left, right) => {
      if (STATUS_ORDER[left.status] !== STATUS_ORDER[right.status]) {
        return STATUS_ORDER[left.status] - STATUS_ORDER[right.status];
      }

      if (right.attempts !== left.attempts) {
        return right.attempts - left.attempts;
      }

      return left.label.localeCompare(right.label);
    });

  const domainProgress: DashboardDomainProgress[] = dashboardSubdomains.map((domain) => {
    const currentDomain =
      domainStats.get(domain) ??
      ({
        domain,
        totalSeries: 0,
        completedSeries: 0,
        inProgressSeries: 0,
        attemptedQuestions: 0,
        attempts: 0,
        correct: 0,
        lastAnsweredAt: null,
      } satisfies DomainStats);

    const currentSubdomains = subdomainProgress.filter((item) => item.domain === domain);

    let startedCount = 0;
    let acquiredCount = 0;
    let fragileCount = 0;
    let priorityCount = 0;
    for (const item of currentSubdomains) {
      if (item.attempts > 0) startedCount++;
      if (item.status === "acquis") acquiredCount++;
      else if (item.status === "fragile") fragileCount++;
      else if (item.status === "prioritaire") priorityCount++;
    }

    const status = getStatus(
      currentDomain.attempts,
      currentDomain.correct,
      currentDomain.completedSeries,
      currentDomain.totalSeries,
    );

    return {
      domain,
      label: SUBDOMAIN_LABELS[domain],
      totalSeries: currentDomain.totalSeries,
      completedSeries: currentDomain.completedSeries,
      inProgressSeries: currentDomain.inProgressSeries,
      attemptedQuestions: currentDomain.attemptedQuestions,
      attempts: currentDomain.attempts,
      correctRate: getCorrectRate(currentDomain.attempts, currentDomain.correct),
      status,
      lastAnsweredAt: currentDomain.lastAnsweredAt,
      startedSubdomains: startedCount,
      acquiredSubdomains: acquiredCount,
      fragileSubdomains: fragileCount,
      prioritySubdomains: priorityCount,
      subdomains: currentSubdomains,
    };
  });

  const sessionProgress: DashboardSessionProgress[] = visibleSessions
    .map((session) => {
      const stats = sessionStats.get(session.id);
      const answeredQuestions = stats?.answeredQuestionIds.size ?? 0;
      const correctAnswers = stats?.correct ?? 0;
      const attemptsCount = stats?.attempts ?? 0;
      const correctRate = getCorrectRate(attemptsCount, correctAnswers);
      const domainKey = resolveDomainKey(session.subdomain);

      return {
        id: session.id,
        title: session.title,
        summary: session.summary,
        topicKey: session.topicKey,
        topicLabel: session.topicLabel,
        domainKey,
        domainLabel: domainConfig[domainKey ].label,
        subdomain: session.subdomain,
        subdomainLabel: SUBDOMAIN_LABELS[session.subdomain],
        questionCount: session.questionCount,
        recommendedOrder: session.recommendedOrder,
        attempts: attemptsCount,
        answeredQuestions,
        correctAnswers,
        correctRate,
        lastAnsweredAt: stats?.lastAnsweredAt ?? null,
        status: getSessionStatus(answeredQuestions, session.questionCount, correctRate),
      };
    })
    .sort((left, right) => left.recommendedOrder - right.recommendedOrder);

  const domainDirectory: DashboardDomainDirectoryItem[] = domainOrder.map((domainKey) => {
    const cfg = domainConfig[domainKey ];
    const domainSessions = sessionProgress.filter((session) => session.domainKey === domainKey);

    let attemptsCount = 0;
    let correctCount = 0;
    let lastAnsweredAt: string | null = null;
    let notStarted = 0;
    let inProg = 0;
    let toReview = 0;
    let mastered = 0;
    for (const session of domainSessions) {
      attemptsCount += session.attempts;
      correctCount += session.correctAnswers;
      if (session.lastAnsweredAt) lastAnsweredAt = getLatestTimestamp(lastAnsweredAt, session.lastAnsweredAt);
      if (session.status === "non_commencee") notStarted++;
      else if (session.status === "en_cours") inProg++;
      else if (session.status === "a_revoir") toReview++;
      else if (session.status === "maitrisee") mastered++;
    }

    return {
      key: domainKey,
      label: cfg.label,
      description: cfg.description,
      href: cfg.href,
      subdomainLabels: cfg.subdomains.map(
        (subdomain) => SUBDOMAIN_LABELS[subdomain],
      ),
      totalSeries: domainSessions.length,
      notStartedSeries: notStarted,
      inProgressSeries: inProg,
      toReviewSeries: toReview,
      masteredSeries: mastered,
      correctRate: getCorrectRate(attemptsCount, correctCount),
      lastAnsweredAt,
    };
  });

  const subdomainsToReview = subdomainProgress
    .filter((item) => item.attempts > 0 && item.status !== "acquis")
    .slice(0, 8);

  const priorityItems = subdomainProgress
    .filter((item) => item.status === "prioritaire")
    .slice(0, 4);

  const fragileItems = subdomainProgress
    .filter((item) => item.status === "fragile")
    .slice(0, 4);

  const resumeSessions = sessionProgress
    .filter((session) => session.status === "en_cours")
    .sort((left, right) => {
      if (!left.lastAnsweredAt) {
        return 1;
      }

      if (!right.lastAnsweredAt) {
        return -1;
      }

      return new Date(right.lastAnsweredAt).getTime() - new Date(left.lastAnsweredAt).getTime();
    })
    .slice(0, 4);

  const domainAttemptCounts = new Map<string, number>();
  for (const session of sessionProgress) {
    domainAttemptCounts.set(session.domainKey, (domainAttemptCounts.get(session.domainKey) ?? 0) + session.attempts);
  }
  const mostWorkedDomains = domainDirectory
    .map((domain) => ({
      label: domain.label,
      attempts: domainAttemptCounts.get(domain.key) ?? 0,
      correctRate: domain.correctRate,
    }))
    .filter((domain) => domain.attempts > 0)
    .sort((left, right) => right.attempts - left.attempts)
    .slice(0, 3);

  const frequentMistakesMap = new Map<string, DashboardFrequentMistake>();

  for (const attempt of scopedAttempts) {
    if (attempt.is_correct) {
      continue;
    }

    const questionEntry = questionMap.get(attempt.exercise_id);

    if (!questionEntry) {
      continue;
    }

    const title = questionEntry.commonMistake?.trim() || questionEntry.instruction;
    const key = `${questionEntry.session.topicKey}::${title}`;
    const existing = frequentMistakesMap.get(key);

    if (existing) {
      existing.occurrences += 1;
      existing.lastAnsweredAt =
        getLatestTimestamp(existing.lastAnsweredAt, attempt.answered_at) ?? attempt.answered_at;
      continue;
    }

    frequentMistakesMap.set(key, {
      key,
      title,
      exampleInstruction: questionEntry.instruction,
      occurrences: 1,
      lastAnsweredAt: attempt.answered_at,
      domainLabel: domainConfig[resolveDomainKey(questionEntry.session.subdomain) ].label,
      subdomainLabel: questionEntry.session.topicLabel,
    });
  }

  const frequentMistakes = Array.from(frequentMistakesMap.values())
    .sort((left, right) => {
      if (right.occurrences !== left.occurrences) {
        return right.occurrences - left.occurrences;
      }

      return new Date(right.lastAnsweredAt).getTime() - new Date(left.lastAnsweredAt).getTime();
    })
    .slice(0, 4);

  const recentActivity: DashboardActivity[] = scopedAttempts.slice(0, 6).flatMap((attempt) => {
    const questionEntry = questionMap.get(attempt.exercise_id);

    if (!questionEntry) {
      return [];
    }

    return [
      {
        attemptId: attempt.id,
        instruction: questionEntry.instruction,
        domainLabel: domainConfig[resolveDomainKey(questionEntry.session.subdomain) ].label,
        subdomainLabel: questionEntry.session.topicLabel,
        sessionTitle: questionEntry.session.title,
        isCorrect: attempt.is_correct,
        answeredAt: attempt.answered_at,
      },
    ];
  });

  const startOfDayMs = getStartOfDayParis().getTime();

  let attemptsToday = 0;
  for (const attempt of attempts) {
    if (new Date(attempt.answered_at).getTime() >= startOfDayMs) attemptsToday++;
  }

  const totalAttempts = scopedAttempts.length;
  let totalCorrect = 0;
  for (const attempt of scopedAttempts) {
    if (attempt.is_correct) totalCorrect++;
  }

  const dailyActivity = buildDailyActivity(scopedAttempts);
  const scoreEvolution = buildScoreEvolution(scopedAttempts);
  const masteredCount = sessionProgress.filter((session) => session.status === "maitrisee").length;
  const earnedBadges = computeEarnedBadges({
    totalAttempts,
    completedSeries,
    masteredSessions: masteredCount,
    totalSeries: visibleSessions.length,
    overallCorrectRate: getCorrectRate(totalAttempts, totalCorrect),
    domainProgress,
    dailyActivity,
    sessionProgress,
  });

  const lastActivityDate =
    scopedAttempts.length > 0 ? scopedAttempts[0].answered_at : null;

  return {
    subjectLabel: SUBJECT_LABELS[subject],
    totalSeries: visibleSessions.length,
    completedSeries,
    inProgressSeries,
    masteredSessions: masteredCount,
    notStartedSessions: sessionProgress.filter((session) => session.status === "non_commencee").length,
    totalAttempts,
    attemptsToday,
    overallCorrectRate: getCorrectRate(totalAttempts, totalCorrect),
    remainingToday: getDailyRemainingQuota(attemptsToday, isPremium),
    domainProgress,
    domainDirectory,
    subdomainsToReview,
    priorityItems,
    fragileItems,
    mostWorkedDomains,
    sessionProgress,
    resumeSessions,
    frequentMistakes,
    recentActivity,
    dailyActivity,
    scoreEvolution,
    earnedBadges,
    lastActivityDate,
  };
}
