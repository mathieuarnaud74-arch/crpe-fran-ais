import {
  DASHBOARD_SUBDOMAINS,
  FRENCH_DOMAIN_CONFIG,
  FRENCH_DOMAIN_ORDER,
  SUBDOMAIN_LABELS,
  SUBJECT_LABEL,
  formatLevelLabel,
  getFrenchDomainKey,
} from "@/lib/constants";
import { getDailyRemainingQuota } from "@/lib/freemium";
import {
  DashboardActivity,
  DashboardData,
  DashboardDomainDirectoryItem,
  DashboardDomainProgress,
  DashboardFrequentMistake,
  DashboardSessionProgress,
  DashboardSubdomainProgress,
  ProgressStatus,
  RevisionSession,
} from "@/types/domain";

type AttemptInput = {
  id: string;
  exercise_id: string;
  is_correct: boolean;
  answered_at: string;
};

type SessionStats = {
  attempts: number;
  correct: number;
  answeredQuestionIds: Set<string>;
  lastAnsweredAt: string | null;
};

type SubdomainStats = {
  key: string;
  label: string;
  domain: RevisionSession["subdomain"];
  totalSeries: number;
  completedSeries: number;
  inProgressSeries: number;
  attemptedQuestions: number;
  attempts: number;
  correct: number;
  lastAnsweredAt: string | null;
};

type DomainStats = {
  domain: RevisionSession["subdomain"];
  totalSeries: number;
  completedSeries: number;
  inProgressSeries: number;
  attemptedQuestions: number;
  attempts: number;
  correct: number;
  lastAnsweredAt: string | null;
};

export const MASTERY_THRESHOLD = 85;

const STATUS_ORDER: Record<ProgressStatus, number> = {
  prioritaire: 0,
  fragile: 1,
  en_cours: 2,
  acquis: 3,
};

function getCorrectRate(attempts: number, correct: number) {
  return attempts === 0 ? null : Math.round((correct / attempts) * 100);
}

function getLatestTimestamp(current: string | null, next: string) {
  if (!current) {
    return next;
  }

  return new Date(next).getTime() > new Date(current).getTime() ? next : current;
}

function getStatus(
  attempts: number,
  correct: number,
  completedSeries: number,
  totalSeries: number,
): ProgressStatus {
  if (totalSeries === 0 || attempts === 0) {
    return "en_cours";
  }

  const accuracy = (correct / attempts) * 100;

  if (completedSeries === totalSeries && accuracy >= MASTERY_THRESHOLD) {
    return "acquis";
  }

  if (accuracy < 50) {
    return "prioritaire";
  }

  if (accuracy < 70) {
    return "fragile";
  }

  return "en_cours";
}

function getReviewReason(item: {
  attempts: number;
  status: ProgressStatus;
  inProgressSeries: number;
  completedSeries: number;
  totalSeries: number;
}) {
  if (item.attempts === 0) {
    return "";
  }

  if (item.status === "prioritaire") {
    return "Erreurs récurrentes : reprendre cette notion rapidement.";
  }

  if (item.status === "fragile") {
    return "Résultats encore instables : consolider la règle et refaire une série ciblée.";
  }

  if (item.inProgressSeries > 0) {
    return "Une série a déjà été commencée sur cette notion.";
  }

  if (item.completedSeries < item.totalSeries) {
    return "Progression engagée, mais encore partielle.";
  }

  return "";
}

function getSessionStatus(
  answeredQuestions: number,
  questionCount: number,
  correctRate: number | null,
): DashboardSessionProgress["status"] {
  if (answeredQuestions === 0) {
    return "non_commencee";
  }

  if (answeredQuestions < questionCount) {
    return "en_cours";
  }

  if ((correctRate ?? 0) >= MASTERY_THRESHOLD) {
    return "maitrisee";
  }

  return "a_revoir";
}

export function buildDashboardData(
  sessions: RevisionSession[],
  attempts: AttemptInput[],
  isPremium: boolean,
): DashboardData {
  const visibleSessions = isPremium
    ? sessions
    : sessions.filter((session) => session.access_tier === "free");

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

  for (const domain of DASHBOARD_SUBDOMAINS) {
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

  const domainProgress: DashboardDomainProgress[] = DASHBOARD_SUBDOMAINS.map((domain) => {
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
      startedSubdomains: currentSubdomains.filter((item) => item.attempts > 0).length,
      acquiredSubdomains: currentSubdomains.filter((item) => item.status === "acquis").length,
      fragileSubdomains: currentSubdomains.filter((item) => item.status === "fragile").length,
      prioritySubdomains: currentSubdomains.filter((item) => item.status === "prioritaire").length,
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
      const domainKey = getFrenchDomainKey(session.subdomain);

      return {
        id: session.id,
        title: session.title,
        summary: session.summary,
        topicKey: session.topicKey,
        topicLabel: session.topicLabel,
        domainKey,
        domainLabel: FRENCH_DOMAIN_CONFIG[domainKey].label,
        subdomain: session.subdomain,
        subdomainLabel: SUBDOMAIN_LABELS[session.subdomain],
        level: formatLevelLabel(session.level),
        questionCount: session.questionCount,
        estimatedMinutes: session.estimatedMinutes,
        access_tier: session.access_tier,
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

  const domainDirectory: DashboardDomainDirectoryItem[] = FRENCH_DOMAIN_ORDER.map((domainKey) => {
    const domainSessions = sessionProgress.filter((session) => session.domainKey === domainKey);
    const attemptsCount = domainSessions.reduce((total, session) => total + session.attempts, 0);
    const correctCount = domainSessions.reduce((total, session) => total + session.correctAnswers, 0);
    const lastAnsweredAt = domainSessions.reduce<string | null>(
      (latest, session) =>
        session.lastAnsweredAt ? getLatestTimestamp(latest, session.lastAnsweredAt) : latest,
      null,
    );

    return {
      key: domainKey,
      label: FRENCH_DOMAIN_CONFIG[domainKey].label,
      description: FRENCH_DOMAIN_CONFIG[domainKey].description,
      href: FRENCH_DOMAIN_CONFIG[domainKey].href,
      subdomainLabels: FRENCH_DOMAIN_CONFIG[domainKey].subdomains.map(
        (subdomain) => SUBDOMAIN_LABELS[subdomain],
      ),
      totalSeries: domainSessions.length,
      notStartedSeries: domainSessions.filter((session) => session.status === "non_commencee").length,
      inProgressSeries: domainSessions.filter((session) => session.status === "en_cours").length,
      toReviewSeries: domainSessions.filter((session) => session.status === "a_revoir").length,
      masteredSeries: domainSessions.filter((session) => session.status === "maitrisee").length,
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

  const mostWorkedDomains = domainDirectory
    .map((domain) => {
      const attemptsCount = sessionProgress
        .filter((session) => session.domainKey === domain.key)
        .reduce((total, session) => total + session.attempts, 0);

      return {
        label: domain.label,
        attempts: attemptsCount,
        correctRate: domain.correctRate,
      };
    })
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
      domainLabel: FRENCH_DOMAIN_CONFIG[getFrenchDomainKey(questionEntry.session.subdomain)].label,
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
        domainLabel: FRENCH_DOMAIN_CONFIG[getFrenchDomainKey(questionEntry.session.subdomain)].label,
        subdomainLabel: questionEntry.session.topicLabel,
        sessionTitle: questionEntry.session.title,
        isCorrect: attempt.is_correct,
        answeredAt: attempt.answered_at,
      },
    ];
  });

  const startOfDay = new Date();
  startOfDay.setHours(0, 0, 0, 0);

  const attemptsToday = attempts.filter(
    (attempt) => new Date(attempt.answered_at).getTime() >= startOfDay.getTime(),
  ).length;

  const totalAttempts = scopedAttempts.length;
  const totalCorrect = scopedAttempts.filter((attempt) => attempt.is_correct).length;

  return {
    subjectLabel: SUBJECT_LABEL,
    totalSeries: visibleSessions.length,
    completedSeries,
    inProgressSeries,
    masteredSessions: sessionProgress.filter((session) => session.status === "maitrisee").length,
    notStartedSessions: sessionProgress.filter((session) => session.status === "non_commencee").length,
    totalAttempts,
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
  };
}
