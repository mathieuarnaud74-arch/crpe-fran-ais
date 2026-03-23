import type { DailyActivityEntry, ScoreEvolutionEntry } from "@/types/domain";

import type { AttemptInput } from "./types";

export function buildDailyActivity(attempts: AttemptInput[]): DailyActivityEntry[] {
  const dayMap = new Map<string, { count: number; correctCount: number }>();

  for (const attempt of attempts) {
    const date = attempt.answered_at.slice(0, 10);
    const entry = dayMap.get(date);
    if (entry) {
      entry.count += 1;
      entry.correctCount += attempt.is_correct ? 1 : 0;
    } else {
      dayMap.set(date, { count: 1, correctCount: attempt.is_correct ? 1 : 0 });
    }
  }

  return Array.from(dayMap.entries())
    .map(([date, data]) => ({ date, count: data.count, correctCount: data.correctCount }))
    .sort((a, b) => a.date.localeCompare(b.date));
}

export function buildScoreEvolution(attempts: AttemptInput[]): ScoreEvolutionEntry[] {
  const dayMap = new Map<string, { correct: number; total: number }>();

  for (const attempt of attempts) {
    const date = attempt.answered_at.slice(0, 10);
    const entry = dayMap.get(date);
    if (entry) {
      entry.total += 1;
      entry.correct += attempt.is_correct ? 1 : 0;
    } else {
      dayMap.set(date, { total: 1, correct: attempt.is_correct ? 1 : 0 });
    }
  }

  const sorted = Array.from(dayMap.entries()).sort((a, b) => a[0].localeCompare(b[0]));
  let cumulativeCorrect = 0;
  let cumulativeTotal = 0;

  return sorted.map(([date, data]) => {
    cumulativeCorrect += data.correct;
    cumulativeTotal += data.total;
    return {
      date,
      correctRate: Math.round((cumulativeCorrect / cumulativeTotal) * 100),
      cumulativeAttempts: cumulativeTotal,
    };
  });
}
