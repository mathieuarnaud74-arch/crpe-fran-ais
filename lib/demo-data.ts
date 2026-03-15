import { frenchCrpeSeriesSeed } from "@/content/french-crpe-series";
import { buildDashboardData } from "@/lib/dashboard";

export const demoUser = {
  id: "demo-user",
  email: "demo@crpe-francais.local",
};

export const demoSessions = frenchCrpeSeriesSeed;

export const demoExercises = demoSessions.flatMap((session) => session.questions);

export const demoAttempts = [
  {
    id: "demo-attempt-1",
    user_id: demoUser.id,
    exercise_id: "asv-1",
    submitted_answer: { value: "Les eleves de cette classe travaillent serieusement." },
    is_correct: true,
    score: 1,
    answered_at: "2026-03-12T08:10:00.000Z",
  },
  {
    id: "demo-attempt-2",
    user_id: demoUser.id,
    exercise_id: "asv-2",
    submitted_answer: { value: "b" },
    is_correct: true,
    score: 1,
    answered_at: "2026-03-12T08:18:00.000Z",
  },
  {
    id: "demo-attempt-3",
    user_id: demoUser.id,
    exercise_id: "asv-3",
    submitted_answer: { value: true },
    is_correct: true,
    score: 1,
    answered_at: "2026-03-12T08:26:00.000Z",
  },
  {
    id: "demo-attempt-4",
    user_id: demoUser.id,
    exercise_id: "asv-4",
    submitted_answer: { value: "La plupart des candidats reussit cette etape." },
    is_correct: false,
    score: 0,
    answered_at: "2026-03-12T08:33:00.000Z",
  },
  {
    id: "demo-attempt-5",
    user_id: demoUser.id,
    exercise_id: "asv-5",
    submitted_answer: { value: "sens" },
    is_correct: true,
    score: 1,
    answered_at: "2026-03-12T08:40:00.000Z",
  },
  {
    id: "demo-attempt-6",
    user_id: demoUser.id,
    exercise_id: "asv-6",
    submitted_answer: { value: "Toi qui relis ce chapitre, tu comprends mieux la regle." },
    is_correct: true,
    score: 1,
    answered_at: "2026-03-12T08:48:00.000Z",
  },
  {
    id: "demo-attempt-7",
    user_id: demoUser.id,
    exercise_id: "fct-1",
    submitted_answer: { value: "sujet" },
    is_correct: true,
    score: 1,
    answered_at: "2026-03-12T09:10:00.000Z",
  },
  {
    id: "demo-attempt-8",
    user_id: demoUser.id,
    exercise_id: "fct-4",
    submitted_answer: { value: "c" },
    is_correct: false,
    score: 0,
    answered_at: "2026-03-12T09:20:00.000Z",
  },
  {
    id: "demo-attempt-9",
    user_id: demoUser.id,
    exercise_id: "fct-5",
    submitted_answer: { value: "parce qu'il y a une preposition" },
    is_correct: true,
    score: 1,
    answered_at: "2026-03-12T09:28:00.000Z",
  },
  {
    id: "demo-attempt-10",
    user_id: demoUser.id,
    exercise_id: "hg-1",
    submitted_answer: { value: "a" },
    is_correct: true,
    score: 1,
    answered_at: "2026-03-12T09:40:00.000Z",
  },
  {
    id: "demo-attempt-11",
    user_id: demoUser.id,
    exercise_id: "hg-2",
    submitted_answer: { value: "a" },
    is_correct: false,
    score: 0,
    answered_at: "2026-03-12T09:48:00.000Z",
  },
  {
    id: "demo-attempt-12",
    user_id: demoUser.id,
    exercise_id: "hg-6",
    submitted_answer: { value: "b" },
    is_correct: true,
    score: 1,
    answered_at: "2026-03-12T09:55:00.000Z",
  },
  {
    id: "demo-attempt-13",
    user_id: demoUser.id,
    exercise_id: "tdb-1",
    submitted_answer: { value: "a" },
    is_correct: true,
    score: 1,
    answered_at: "2026-03-12T10:05:00.000Z",
  },
  {
    id: "demo-attempt-14",
    user_id: demoUser.id,
    exercise_id: "lex-4",
    submitted_answer: { value: "a" },
    is_correct: true,
    score: 1,
    answered_at: "2026-03-12T10:12:00.000Z",
  },
  {
    id: "demo-attempt-15",
    user_id: demoUser.id,
    exercise_id: "nof-3",
    submitted_answer: { value: "epithete" },
    is_correct: false,
    score: 0,
    answered_at: "2026-03-12T10:20:00.000Z",
  },
];

export const demoSubscription = {
  id: "demo-subscription",
  user_id: demoUser.id,
  stripe_customer_id: null,
  stripe_subscription_id: null,
  stripe_price_id: null,
  status: "inactive",
  current_period_end: null,
  cancel_at_period_end: false,
  created_at: "2026-03-12T08:00:00.000Z",
  updated_at: "2026-03-12T08:00:00.000Z",
};

export function getDemoExerciseById(id: string) {
  return demoExercises.find((exercise) => exercise.id === id) ?? null;
}

export function getDemoSessionById(id: string) {
  return demoSessions.find((session) => session.id === id) ?? null;
}

export function getDemoSessions(filters: {
  subdomain?: string;
  type?: string;
  level?: string;
}) {
  return demoSessions
    .filter((session) => {
      if (filters.subdomain && session.subdomain !== filters.subdomain) {
        return false;
      }

      if (filters.level && session.level !== filters.level) {
        return false;
      }

      if (filters.type) {
        return session.questions.some((question) => question.exercise_type === filters.type);
      }

      return true;
    })
    .sort((left, right) => left.recommendedOrder - right.recommendedOrder);
}

export function getDemoHistory(limit?: number) {
  const rows = demoAttempts
    .slice()
    .sort((a, b) => (a.answered_at < b.answered_at ? 1 : -1))
    .map((attempt) => ({
      ...attempt,
      exercises: {
        instruction: getDemoExerciseById(attempt.exercise_id)?.instruction ?? "",
        subdomain: getDemoExerciseById(attempt.exercise_id)?.subdomain ?? "",
      },
    }));

  return typeof limit === "number" ? rows.slice(0, limit) : rows;
}

export function getDemoDashboard(isPremium: boolean) {
  return buildDashboardData(
    demoSessions,
    demoAttempts.map((attempt) => ({
      id: attempt.id,
      exercise_id: attempt.exercise_id,
      is_correct: attempt.is_correct,
      answered_at: attempt.answered_at,
    })),
    isPremium,
  );
}
