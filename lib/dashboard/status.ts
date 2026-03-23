import type { DashboardSessionProgress, ProgressStatus } from "@/types/domain";

import { MASTERY_THRESHOLD } from "./utils";

export function getStatus(
  attempts: number,
  correct: number,
  completedSeries: number,
  totalSeries: number,
): ProgressStatus {
  if (totalSeries === 0 || attempts === 0) {
    return "non_commencee";
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

export function getReviewReason(item: {
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

export function getSessionStatus(
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
