import type {
  DailyActivityEntry,
  DashboardDomainProgress,
  DashboardSessionProgress,
  EarnedBadge,
} from "@/types/domain";

import { MASTERY_THRESHOLD } from "./utils";

export function computeEarnedBadges(ctx: {
  totalAttempts: number;
  completedSeries: number;
  masteredSessions: number;
  totalSeries: number;
  overallCorrectRate: number | null;
  domainProgress: DashboardDomainProgress[];
  dailyActivity: DailyActivityEntry[];
  sessionProgress: DashboardSessionProgress[];
}): EarnedBadge[] {
  // ── Pre-compute metrics ──
  const totalCorrect = ctx.sessionProgress.reduce((sum, s) => sum + s.correctAnswers, 0);
  const totalErrors = ctx.totalAttempts - totalCorrect;
  const activeDays = ctx.dailyActivity.length;
  const rate = ctx.overallCorrectRate ?? 0;
  const minAttemptsForRate = 20;

  const completedSessions = ctx.sessionProgress.filter(
    (s) => s.answeredQuestions >= s.questionCount,
  );
  const perfectCount = completedSessions.filter((s) => s.correctRate === 100).length;
  const series90 = completedSessions.filter((s) => (s.correctRate ?? 0) >= 90).length;
  const masteredSessions = ctx.sessionProgress.filter((s) => s.status === "maitrisee");
  const reviewedSeries = ctx.sessionProgress.filter(
    (s) => s.attempts > s.questionCount,
  ).length;
  const startedSeries = ctx.sessionProgress.filter((s) => s.attempts > 0).length;

  const maxDailyCount = ctx.dailyActivity.reduce((max, d) => Math.max(max, d.count), 0);
  const maxDailyCorrect = ctx.dailyActivity.reduce((max, d) => Math.max(max, d.correctCount), 0);
  const perfectDays = ctx.dailyActivity.filter(
    (d) => d.count >= 5 && d.correctCount === d.count,
  ).length;
  const longSessionDays = ctx.dailyActivity.filter((d) => d.count >= 15).length;

  // Domain mastery (group sessions by domainKey)
  const domainMap = new Map<string, { total: number; mastered: number; attempts: number }>();
  for (const s of ctx.sessionProgress) {
    const entry = domainMap.get(s.domainKey) ?? { total: 0, mastered: 0, attempts: 0 };
    entry.total += 1;
    if (s.status === "maitrisee") entry.mastered += 1;
    entry.attempts += s.attempts;
    domainMap.set(s.domainKey, entry);
  }
  const domainsFullyMastered = Array.from(domainMap.entries()).filter(
    ([, v]) => v.total > 0 && v.mastered === v.total,
  );
  const domainsWithAttempts = Array.from(domainMap.entries()).filter(
    ([, v]) => v.attempts > 0,
  );

  // Comeback detection (gap of 3+ days in activity)
  const sortedDays = [...ctx.dailyActivity].sort((a, b) => a.date.localeCompare(b.date));
  let hasComeback = false;
  for (let i = 1; i < sortedDays.length; i++) {
    const diff =
      (new Date(sortedDays[i].date).getTime() - new Date(sortedDays[i - 1].date).getTime()) /
      (1000 * 60 * 60 * 24);
    if (diff >= 3) {
      hasComeback = true;
      break;
    }
  }

  // Weekend activity
  const hasWeekendActivity = ctx.dailyActivity.some((d) => {
    const day = new Date(d.date + "T00:00:00").getDay();
    return day === 0 || day === 6;
  });

  // Consecutive active days (longest streak)
  let maxConsecutiveDays = 0;
  let currentConsecutive = 1;
  for (let i = 1; i < sortedDays.length; i++) {
    const diff =
      (new Date(sortedDays[i].date).getTime() - new Date(sortedDays[i - 1].date).getTime()) /
      (1000 * 60 * 60 * 24);
    if (diff === 1) {
      currentConsecutive += 1;
      maxConsecutiveDays = Math.max(maxConsecutiveDays, currentConsecutive);
    } else {
      currentConsecutive = 1;
    }
  }
  if (sortedDays.length === 1) maxConsecutiveDays = 1;

  // High volume week: any 7-day window with 40+ answers
  let hasHighVolumeWeek = false;
  for (let i = 0; i < sortedDays.length; i++) {
    let weekTotal = 0;
    for (let j = i; j < sortedDays.length; j++) {
      const diff =
        (new Date(sortedDays[j].date).getTime() - new Date(sortedDays[i].date).getTime()) /
        (1000 * 60 * 60 * 24);
      if (diff > 7) break;
      weekTotal += sortedDays[j].count;
    }
    if (weekTotal >= 40) {
      hasHighVolumeWeek = true;
      break;
    }
  }

  // Perfect week: any 7-day window with ≥90% and 20+ answers
  let hasPerfectWeek = false;
  for (let i = 0; i < sortedDays.length; i++) {
    let weekTotal = 0;
    let weekCorrect = 0;
    for (let j = i; j < sortedDays.length; j++) {
      const diff =
        (new Date(sortedDays[j].date).getTime() - new Date(sortedDays[i].date).getTime()) /
        (1000 * 60 * 60 * 24);
      if (diff > 7) break;
      weekTotal += sortedDays[j].count;
      weekCorrect += sortedDays[j].correctCount;
    }
    if (weekTotal >= 20 && weekCorrect / weekTotal >= 0.9) {
      hasPerfectWeek = true;
      break;
    }
  }

  // Improvement: any reviewed session where latest rate > first-pass estimate
  // Approximation: sessions with attempts > questionCount and correctRate >= MASTERY_THRESHOLD
  const hasImprovement = ctx.sessionProgress.some(
    (s) => s.attempts > s.questionCount && (s.correctRate ?? 0) >= MASTERY_THRESHOLD,
  );

  // Exercise type diversity (count distinct exercise types from session topicLabels/types)
  // Approximation: count sessions started in different domains as proxy
  const exerciseTypesUsed = new Set<string>();
  for (const s of ctx.sessionProgress) {
    if (s.attempts > 0) {
      exerciseTypesUsed.add(s.domainKey);
    }
  }

  // ── Badge definition: [condition, badge] ──
  type B = EarnedBadge;
  const push = (condition: boolean, badge: B) => {
    if (condition) badges.push(badge);
  };
  const badges: B[] = [];

  // ────────────────────────────────────────
  // MILESTONE — Jalons quantitatifs
  // ────────────────────────────────────────
  push(ctx.totalAttempts >= 1, { id: "first-answer", label: "Premier pas", description: "Répondre à sa première question", icon: "\uD83C\uDF31", category: "milestone" });
  push(ctx.totalAttempts >= 10, { id: "10-answers", label: "Curieux", description: "10 réponses données", icon: "\uD83D\uDD0D", category: "milestone" });
  push(ctx.totalAttempts >= 25, { id: "25-answers", label: "Lancé", description: "25 réponses données", icon: "\uD83C\uDFAF", category: "milestone" });
  push(ctx.totalAttempts >= 50, { id: "50-answers", label: "Persévérant", description: "50 réponses données", icon: "\uD83D\uDCAA", category: "milestone" });
  push(ctx.totalAttempts >= 100, { id: "100-answers", label: "Centurion", description: "100 réponses données", icon: "\uD83C\uDFC5", category: "milestone" });
  push(ctx.totalAttempts >= 200, { id: "200-answers", label: "Infatigable", description: "200 réponses données", icon: "\uD83D\uDCA8", category: "milestone" });
  push(ctx.totalAttempts >= 300, { id: "300-answers", label: "Endurant", description: "300 réponses données", icon: "\uD83C\uDFC3", category: "milestone" });
  push(ctx.totalAttempts >= 500, { id: "500-answers", label: "Marathonien", description: "500 réponses données", icon: "\uD83C\uDFC6", category: "milestone" });
  push(ctx.totalAttempts >= 750, { id: "750-answers", label: "Titan", description: "750 réponses données", icon: "\uD83D\uDDFF", category: "milestone" });
  push(ctx.totalAttempts >= 1000, { id: "1000-answers", label: "Millénaire", description: "1 000 réponses données", icon: "\uD83D\uDC51", category: "milestone" });
  push(ctx.totalAttempts >= 1500, { id: "1500-answers", label: "Légende", description: "1 500 réponses données", icon: "\uD83C\uDF1E", category: "milestone" });
  push(ctx.totalAttempts >= 2000, { id: "2000-answers", label: "Immortel", description: "2 000 réponses données", icon: "\u267E\uFE0F", category: "milestone" });

  push(ctx.completedSeries >= 1, { id: "first-series", label: "Première série", description: "Terminer sa première série", icon: "\u2705", category: "milestone" });
  push(ctx.completedSeries >= 3, { id: "3-series", label: "Triplé", description: "3 séries terminées", icon: "\uD83C\uDFB2", category: "milestone" });
  push(ctx.completedSeries >= 5, { id: "5-series", label: "Cinq étoiles", description: "5 séries terminées", icon: "\u2B50", category: "milestone" });
  push(ctx.completedSeries >= 10, { id: "10-series", label: "Régulier", description: "10 séries terminées", icon: "\uD83D\uDCDA", category: "milestone" });
  push(ctx.completedSeries >= 15, { id: "15-series", label: "Méthodique", description: "15 séries terminées", icon: "\uD83D\uDCCB", category: "milestone" });
  push(ctx.completedSeries >= 20, { id: "20-series", label: "Studieux", description: "20 séries terminées", icon: "\uD83C\uDF93", category: "milestone" });
  push(ctx.completedSeries >= 25, { id: "25-series", label: "Appliqué", description: "25 séries terminées", icon: "\uD83D\uDCDD", category: "milestone" });
  push(ctx.completedSeries >= 30, { id: "30-series", label: "Sérieux", description: "30 séries terminées", icon: "\uD83C\uDFAD", category: "milestone" });
  push(ctx.completedSeries >= 40, { id: "40-series", label: "Acharné", description: "40 séries terminées", icon: "\uD83E\uDD81", category: "milestone" });
  push(ctx.completedSeries >= 50, { id: "50-series", label: "Vétéran", description: "50 séries terminées", icon: "\uD83C\uDF96\uFE0F", category: "milestone" });

  push(totalCorrect >= 10, { id: "10-correct", label: "Dizaine dorée", description: "10 bonnes réponses cumulées", icon: "\uD83D\uDD1F", category: "milestone" });
  push(totalCorrect >= 50, { id: "50-correct", label: "Demi-centurion", description: "50 bonnes réponses cumulées", icon: "\uD83D\uDEE1\uFE0F", category: "milestone" });
  push(totalCorrect >= 100, { id: "100-correct", label: "Centenaire juste", description: "100 bonnes réponses cumulées", icon: "\uD83D\uDCAF", category: "milestone" });
  push(totalCorrect >= 250, { id: "250-correct", label: "Éclaireur", description: "250 bonnes réponses cumulées", icon: "\uD83D\uDD26", category: "milestone" });
  push(totalCorrect >= 500, { id: "500-correct", label: "Sage", description: "500 bonnes réponses cumulées", icon: "\uD83E\uDD89", category: "milestone" });
  push(totalCorrect >= 1000, { id: "1000-correct", label: "Grand Sage", description: "1 000 bonnes réponses cumulées", icon: "\uD83E\uDDD9", category: "milestone" });

  push(reviewedSeries >= 1, { id: "first-review", label: "Retour aux sources", description: "Refaire une série déjà terminée", icon: "\u267B\uFE0F", category: "milestone" });
  push(reviewedSeries >= 5, { id: "5-reviews", label: "Réviseur", description: "5 séries refaites", icon: "\uD83D\uDD04", category: "milestone" });

  // ────────────────────────────────────────
  // MASTERY — Qualité et excellence
  // ────────────────────────────────────────
  push(ctx.masteredSessions >= 1, { id: "first-mastery", label: "Première maîtrise", description: "Maîtriser sa première série", icon: "\u2B50", category: "mastery" });
  push(ctx.masteredSessions >= 3, { id: "3-mastery", label: "Solide", description: "3 séries maîtrisées", icon: "\uD83E\uDEA8", category: "mastery" });
  push(ctx.masteredSessions >= 5, { id: "5-mastery", label: "Érudit", description: "5 séries maîtrisées", icon: "\uD83C\uDF1F", category: "mastery" });
  push(ctx.masteredSessions >= 10, { id: "10-mastery", label: "Expert", description: "10 séries maîtrisées", icon: "\uD83D\uDC8E", category: "mastery" });
  push(ctx.masteredSessions >= 15, { id: "15-mastery", label: "Savant", description: "15 séries maîtrisées", icon: "\uD83D\uDCD6", category: "mastery" });
  push(ctx.masteredSessions >= 20, { id: "20-mastery", label: "Éminent", description: "20 séries maîtrisées", icon: "\uD83C\uDFA9", category: "mastery" });
  push(ctx.masteredSessions >= 25, { id: "25-mastery", label: "Virtuose", description: "25 séries maîtrisées", icon: "\uD83C\uDFBB", category: "mastery" });
  push(ctx.masteredSessions >= 30, { id: "30-mastery", label: "Maître absolu", description: "30 séries maîtrisées", icon: "\uD83E\uDD4B", category: "mastery" });

  push(perfectCount >= 1, { id: "perfect-score", label: "Sans faute", description: "100 % sur une série complète", icon: "\uD83C\uDFAF", category: "mastery" });
  push(perfectCount >= 3, { id: "3-perfect", label: "Triple parfait", description: "3 séries à 100 %", icon: "\uD83E\uDD47", category: "mastery" });
  push(perfectCount >= 5, { id: "5-perfect", label: "Main d'or", description: "5 séries à 100 %", icon: "\u270B", category: "mastery" });
  push(perfectCount >= 10, { id: "10-perfect", label: "Perfection incarnée", description: "10 séries à 100 %", icon: "\uD83D\uDC8E", category: "mastery" });

  push(series90 >= 1, { id: "series-90", label: "Frôler la perfection", description: "≥ 90 % sur une série", icon: "\uD83D\uDCC8", category: "mastery" });
  push(series90 >= 5, { id: "5-series-90", label: "Excellence constante", description: "5 séries ≥ 90 %", icon: "\uD83D\uDCCA", category: "mastery" });
  push(series90 >= 10, { id: "10-series-90", label: "Modèle de rigueur", description: "10 séries ≥ 90 %", icon: "\uD83C\uDFDB\uFE0F", category: "mastery" });

  push(rate >= 70 && ctx.totalAttempts >= minAttemptsForRate, { id: "accuracy-70", label: "Encourageant", description: "Score global ≥ 70 %", icon: "\uD83D\uDCC8", category: "mastery" });
  push(rate >= 75 && ctx.totalAttempts >= minAttemptsForRate, { id: "accuracy-75", label: "Prometteur", description: "Score global ≥ 75 %", icon: "\uD83C\uDF3F", category: "mastery" });
  push(rate >= 80 && ctx.totalAttempts >= minAttemptsForRate, { id: "high-accuracy", label: "Précision", description: "Score global ≥ 80 %", icon: "\uD83E\uDE90", category: "mastery" });
  push(rate >= 85 && ctx.totalAttempts >= minAttemptsForRate, { id: "accuracy-85", label: "Excellent", description: "Score global ≥ 85 %", icon: "\uD83D\uDD2C", category: "mastery" });
  push(rate >= 90 && ctx.totalAttempts >= minAttemptsForRate, { id: "accuracy-90", label: "Brillant", description: "Score global ≥ 90 %", icon: "\uD83D\uDCA1", category: "mastery" });
  push(rate >= 95 && ctx.totalAttempts >= minAttemptsForRate, { id: "accuracy-95", label: "Quasi parfait", description: "Score global ≥ 95 %", icon: "\uD83E\uDDE0", category: "mastery" });

  push(domainsFullyMastered.length >= 1, { id: "domain-mastery", label: "Domaine conquis", description: "Maîtriser un domaine entier", icon: "\uD83D\uDDFA\uFE0F", category: "mastery" });
  push(domainsFullyMastered.length >= 2, { id: "2-domains", label: "Bidisciplinaire", description: "2 domaines maîtrisés", icon: "\uD83D\uDCD0", category: "mastery" });
  push(domainsFullyMastered.length >= 3, { id: "3-domains", label: "Polyvalent", description: "3 domaines maîtrisés", icon: "\uD83D\uDD31", category: "mastery" });
  push(domainsFullyMastered.length >= 4, { id: "4-domains", label: "Presque complet", description: "4 domaines maîtrisés", icon: "\uD83E\uDDE9", category: "mastery" });
  push(domainsFullyMastered.length >= 5, { id: "5-domains", label: "Programme complet", description: "5 domaines maîtrisés", icon: "\uD83C\uDF08", category: "mastery" });

  // Domain-specific badges
  push(domainsFullyMastered.some(([k]) => k === "grammaire"), { id: "grammaire-expert", label: "Grammairien", description: "Domaine Grammaire maîtrisé", icon: "\uD83D\uDCCF", category: "mastery" });
  push(domainsFullyMastered.some(([k]) => k === "orthographe"), { id: "orthographe-expert", label: "Orthographiste", description: "Domaine Orthographe maîtrisé", icon: "\u270D\uFE0F", category: "mastery" });
  push(domainsFullyMastered.some(([k]) => k === "lexique"), { id: "lexique-expert", label: "Lexicographe", description: "Domaine Lexique maîtrisé", icon: "\uD83D\uDCDA", category: "mastery" });
  push(domainsFullyMastered.some(([k]) => k === "analyse-de-la-langue"), { id: "analyse-expert", label: "Analyste", description: "Domaine Analyse de la langue maîtrisé", icon: "\uD83D\uDD0E", category: "mastery" });
  push(domainsFullyMastered.some(([k]) => k === "didactique-du-francais"), { id: "didactique-expert", label: "Pédagogue", description: "Domaine Didactique maîtrisé", icon: "\uD83E\uDDD1\u200D\uD83C\uDFEB", category: "mastery" });

  push(ctx.totalSeries > 0 && ctx.masteredSessions >= Math.ceil(ctx.totalSeries / 2), { id: "half-mastery", label: "Mi-chemin", description: "50 % des séries maîtrisées", icon: "\uD83D\uDEE4\uFE0F", category: "mastery" });
  push(ctx.totalSeries > 0 && ctx.masteredSessions >= ctx.totalSeries, { id: "full-mastery", label: "Apothéose", description: "Toutes les séries maîtrisées", icon: "\uD83C\uDF1F", category: "mastery" });


  // ────────────────────────────────────────
  // STREAK — Régularité et records
  // ────────────────────────────────────────
  push(activeDays >= 3, { id: "3-active-days", label: "Habitude", description: "Actif sur 3 jours", icon: "\uD83D\uDD25", category: "streak" });
  push(activeDays >= 5, { id: "5-active-days", label: "Cinq jours", description: "Actif sur 5 jours", icon: "\uD83D\uDCC5", category: "streak" });
  push(activeDays >= 7, { id: "7-active-days", label: "Semaine complète", description: "Actif sur 7 jours", icon: "\uD83D\uDCC6", category: "streak" });
  push(activeDays >= 10, { id: "10-active-days", label: "Décade", description: "Actif sur 10 jours", icon: "\uD83D\uDDD3\uFE0F", category: "streak" });
  push(activeDays >= 14, { id: "14-active-days", label: "Deux semaines", description: "Actif sur 14 jours", icon: "\u26A1", category: "streak" });
  push(activeDays >= 21, { id: "21-active-days", label: "Trois semaines", description: "Actif sur 21 jours", icon: "\uD83C\uDF19", category: "streak" });
  push(activeDays >= 45, { id: "45-active-days", label: "Six semaines", description: "Actif sur 45 jours", icon: "\uD83C\uDF1C", category: "streak" });
  push(activeDays >= 60, { id: "60-active-days", label: "Deux mois", description: "Actif sur 60 jours", icon: "\uD83C\uDF17", category: "streak" });
  push(activeDays >= 90, { id: "90-active-days", label: "Trimestre", description: "Actif sur 90 jours", icon: "\uD83C\uDF0D", category: "streak" });
  push(activeDays >= 120, { id: "120-active-days", label: "Quatre mois", description: "Actif sur 120 jours", icon: "\uD83C\uDF0E", category: "streak" });
  push(activeDays >= 180, { id: "180-active-days", label: "Six mois", description: "Actif sur 180 jours", icon: "\u2600\uFE0F", category: "streak" });
  push(activeDays >= 365, { id: "365-active-days", label: "Un an !", description: "Actif sur 365 jours", icon: "\uD83C\uDF82", category: "streak" });

  push(maxDailyCount >= 10, { id: "10-in-a-day", label: "Sprint", description: "10 réponses en un jour", icon: "\uD83C\uDFC3\u200D\u2642\uFE0F", category: "streak" });
  push(maxDailyCount >= 20, { id: "20-in-a-day", label: "Course de fond", description: "20 réponses en un jour", icon: "\uD83C\uDFC3\u200D\u2640\uFE0F", category: "streak" });
  push(maxDailyCount >= 30, { id: "30-in-a-day", label: "Ultra", description: "30 réponses en un jour", icon: "\uD83C\uDFC5", category: "streak" });
  push(maxDailyCount >= 50, { id: "50-in-a-day", label: "Insatiable", description: "50 réponses en un jour", icon: "\uD83E\uDD29", category: "streak" });
  push(maxDailyCount >= 100, { id: "100-in-a-day", label: "Machine", description: "100 réponses en un jour", icon: "\uD83E\uDD16", category: "streak" });

  push(perfectDays >= 1, { id: "perfect-day", label: "Jour parfait", description: "100 % sur une journée (5+ réponses)", icon: "\u2600\uFE0F", category: "streak" });
  push(perfectDays >= 3, { id: "3-perfect-days", label: "Trinité parfaite", description: "3 jours à 100 %", icon: "\uD83C\uDF1F", category: "streak" });
  push(perfectDays >= 5, { id: "5-perfect-days", label: "Semaine d'or", description: "5 jours parfaits", icon: "\uD83D\uDC51", category: "streak" });
  push(perfectDays >= 10, { id: "10-perfect-days", label: "Mois d'or", description: "10 jours parfaits", icon: "\uD83C\uDFC6", category: "streak" });

  push(maxDailyCorrect >= 10, { id: "daily-10-correct", label: "Dix du jour", description: "10 bonnes réponses en un jour", icon: "\uD83C\uDFAF", category: "streak" });
  push(maxDailyCorrect >= 20, { id: "daily-20-correct", label: "Vingt du jour", description: "20 bonnes réponses en un jour", icon: "\uD83C\uDFAA", category: "streak" });
  push(maxDailyCorrect >= 30, { id: "daily-30-correct", label: "Trente du jour", description: "30 bonnes réponses en un jour", icon: "\uD83C\uDFA1", category: "streak" });

  push(hasHighVolumeWeek, { id: "high-volume-week", label: "Semaine intense", description: "40+ réponses en 7 jours", icon: "\uD83D\uDCC8", category: "streak" });
  push(hasPerfectWeek, { id: "perfect-week", label: "Semaine parfaite", description: "≥ 90 % sur 7 jours (20+ rép.)", icon: "\uD83C\uDF1F", category: "streak" });
  push(maxConsecutiveDays >= 7, { id: "longest-streak", label: "Régulier absolu", description: "Actif 7 jours consécutifs", icon: "\uD83D\uDD17", category: "streak" });

  // ────────────────────────────────────────
  // ENGAGEMENT — Comportement et exploration
  // ────────────────────────────────────────
  push(activeDays >= 30, { id: "30-active-days", label: "Un mois d'effort", description: "Actif sur 30 jours", icon: "\uD83D\uDE80", category: "engagement" });

  push(domainsWithAttempts.length >= 2, { id: "2-domains-started", label: "Touche-à-deux", description: "Travailler dans 2 domaines", icon: "\uD83D\uDC40", category: "engagement" });
  push(domainsWithAttempts.length >= 3, { id: "3-domains-started", label: "Explorateur", description: "Travailler dans 3 domaines", icon: "\uD83E\uDDED", category: "engagement" });
  push(domainsWithAttempts.length >= 4, { id: "4-domains-started", label: "Aventurier", description: "Travailler dans 4 domaines", icon: "\uD83D\uDDFA\uFE0F", category: "engagement" });
  push(domainsWithAttempts.length >= 5, { id: "all-domains-started", label: "Touche-à-tout", description: "Travailler dans les 5 domaines", icon: "\uD83C\uDFA8", category: "engagement" });

  push(totalErrors >= 1, { id: "first-error", label: "Errare humanum est", description: "Première mauvaise réponse", icon: "\u274C", category: "engagement" });
  push(totalErrors >= 10, { id: "10-errors", label: "Résilient", description: "10 erreurs surmontées", icon: "\uD83C\uDF3F", category: "engagement" });
  push(totalErrors >= 50, { id: "50-errors", label: "Persévérant face à l'erreur", description: "50 erreurs — et toujours là", icon: "\uD83C\uDF31", category: "engagement" });
  push(totalErrors >= 100, { id: "100-errors", label: "Indestructible", description: "100 erreurs ne vous arrêtent pas", icon: "\uD83D\uDEE1\uFE0F", category: "engagement" });
  push(totalErrors >= 200, { id: "200-errors", label: "Philosophe de l'échec", description: "200 erreurs transformées en leçons", icon: "\uD83E\uDDD8", category: "engagement" });

  push(hasWeekendActivity, { id: "weekend-warrior", label: "Guerrier du weekend", description: "Réviser un samedi ou dimanche", icon: "\uD83C\uDFD6\uFE0F", category: "engagement" });
  push(hasComeback, { id: "comeback", label: "Retour en force", description: "Revenir après 3+ jours d'absence", icon: "\uD83D\uDCAB", category: "engagement" });

  push(longSessionDays >= 1, { id: "long-session", label: "Longue session", description: "15+ réponses en une journée", icon: "\uD83D\uDCD6", category: "engagement" });
  push(longSessionDays >= 5, { id: "5-long-sessions", label: "Lecteur assidu", description: "5 jours avec 15+ réponses", icon: "\uD83D\uDCD5", category: "engagement" });

  push(startedSeries >= 10, { id: "10-series-started", label: "Dix entamées", description: "Commencer 10 séries différentes", icon: "\uD83D\uDE80", category: "engagement" });
  push(startedSeries >= 20, { id: "20-series-started", label: "Vingt entamées", description: "Commencer 20 séries différentes", icon: "\uD83D\uDEF8", category: "engagement" });

  push(ctx.totalSeries > 0 && startedSeries >= Math.ceil(ctx.totalSeries / 2), { id: "half-explored", label: "Demi-catalogue", description: "Commencer 50 % des séries", icon: "\uD83C\uDF10", category: "engagement" });
  push(ctx.totalSeries > 0 && startedSeries >= Math.ceil(ctx.totalSeries * 0.75), { id: "75-explored", label: "Trois quarts", description: "Commencer 75 % des séries", icon: "\uD83D\uDDFA\uFE0F", category: "engagement" });
  push(ctx.totalSeries > 0 && startedSeries >= ctx.totalSeries, { id: "full-explored", label: "Catalogue complet", description: "Commencer toutes les séries", icon: "\uD83C\uDFC1", category: "engagement" });

  push(reviewedSeries >= 10, { id: "10-reviews", label: "Révisionniste", description: "Refaire 10 séries terminées", icon: "\uD83D\uDD01", category: "engagement" });


  push(exerciseTypesUsed.size >= 4, { id: "diverse-types", label: "Caméléon", description: "Répondre à 4 types d'exercices", icon: "\uD83C\uDFAD", category: "engagement" });

  push(hasImprovement, { id: "improvement", label: "Progression visible", description: "Améliorer son score sur une série refaite", icon: "\uD83D\uDCC8", category: "engagement" });

  return badges;
}
