import type { Fiche } from "@/features/fiches/types";
import type {
  DashboardData,
  DashboardSessionProgress,
  DashboardSubdomainProgress,
} from "@/types/domain";

// ── Types ────────────────────────────────────────────────────

type FicheSummary = {
  slug: string;
  title: string;
  model: Fiche["model"];
  estimatedMinutes: number;
  accessTier: Fiche["accessTier"];
};

type ActionInfo = {
  /** "fiche" = lire une fiche, "exercise" = faire des exercices, "resume" = reprendre une série */
  action: "fiche" | "exercise" | "resume";
  title: string;
  href: string;
  subtitle: string;
};

export type SmartPlanItem =
  | {
      type: "action";
      action: ActionInfo;
      domain: string;
      domainKey: string;
      tone: "warning" | "warm" | "neutral";
      tag: string;
      reason: string;
    }
  | {
      type: "srs";
      dueCount: number;
    };

// ── Helpers ──────────────────────────────────────────────────

function pickBestFiche(
  fiches: Fiche[],
  completedSlugs: Set<string>,
  domainKey: string,
): { fiche: FicheSummary; isRead: boolean } | null {
  const candidates = fiches.filter((f) => f.domaine === domainKey);
  if (candidates.length === 0) return null;

  const unread = candidates.filter((f) => !completedSlugs.has(f.slug));
  const pool = unread.length > 0 ? unread : candidates;
  const isRead = unread.length === 0;

  pool.sort((a, b) => {
    if (a.utilite !== b.utilite) return a.utilite === "haute" ? -1 : 1;
    if (a.model !== b.model) return a.model === "sprint" ? -1 : 1;
    return a.estimatedMinutes - b.estimatedMinutes;
  });

  const f = pool[0];
  return {
    fiche: {
      slug: f.slug,
      title: f.title,
      model: f.model,
      estimatedMinutes: f.estimatedMinutes,
      accessTier: f.accessTier,
    },
    isRead,
  };
}

const MODEL_LABELS: Record<string, string> = {
  sprint: "Sprint",
  reference: "Fiche complète",
  operatoire: "Fiche opératoire",
};

function findExerciseForDomain(
  data: DashboardData,
  domainKey: string,
  ficheExercicesAssocies?: string[],
): { id: string; title: string; questionCount: number; topicKey: string } | null {
  if (ficheExercicesAssocies && ficheExercicesAssocies.length > 0) {
    for (const topicKey of ficheExercicesAssocies) {
      const session = data.sessionProgress.find(
        (s) =>
          s.topicKey === topicKey &&
          (s.status === "a_revoir" || s.status === "non_commencee" || s.status === "en_cours"),
      );
      if (session) {
        return {
          id: session.id,
          title: session.title,
          questionCount: session.questionCount,
          topicKey: session.topicKey,
        };
      }
    }
  }

  const session = data.sessionProgress.find(
    (s) =>
      s.subdomain === domainKey &&
      (s.status === "a_revoir" || s.status === "non_commencee" || s.status === "en_cours"),
  );
  if (session) {
    return {
      id: session.id,
      title: session.title,
      questionCount: session.questionCount,
      topicKey: session.topicKey,
    };
  }

  return null;
}

/** Flatten learn-then-practice: show only the relevant next action */
function buildItemFromSubdomain(
  item: DashboardSubdomainProgress,
  data: DashboardData,
  allFiches: Fiche[],
  completedSlugs: Set<string>,
  tone: "warning" | "neutral",
  tag: string,
  reason: string,
): SmartPlanItem | null {
  const ficheResult = pickBestFiche(allFiches, completedSlugs, item.domain);
  const matchedFiche = allFiches.find(
    (f) => f.domaine === item.domain && ficheResult?.fiche.slug === f.slug,
  );
  const exercise = findExerciseForDomain(
    data,
    item.domain,
    matchedFiche?.exercicesAssocies,
  );

  // If fiche exists and is NOT read → show fiche action
  if (ficheResult && !ficheResult.isRead) {
    const f = ficheResult.fiche;
    return {
      type: "action",
      action: {
        action: "fiche",
        title: f.title,
        href: `/fiches/${f.slug}`,
        subtitle: `${MODEL_LABELS[f.model] ?? f.model} · ${f.estimatedMinutes} min`,
      },
      domain: item.domainLabel,
      domainKey: item.domain,
      tone,
      tag,
      reason,
    };
  }

  // If fiche already read and exercise available → show exercise action
  if (exercise) {
    return {
      type: "action",
      action: {
        action: "exercise",
        title: exercise.title,
        href: `/exercices/${exercise.id}`,
        subtitle: `${exercise.questionCount} questions`,
      },
      domain: item.domainLabel,
      domainKey: item.domain,
      tone,
      tag,
      reason,
    };
  }

  // Fiche only (already read but no exercise available) — show fiche to re-read
  if (ficheResult) {
    const f = ficheResult.fiche;
    return {
      type: "action",
      action: {
        action: "fiche",
        title: f.title,
        href: `/fiches/${f.slug}`,
        subtitle: `${MODEL_LABELS[f.model] ?? f.model} · ${f.estimatedMinutes} min`,
      },
      domain: item.domainLabel,
      domainKey: item.domain,
      tone: "neutral",
      tag,
      reason,
    };
  }

  return null;
}

// ── Main algorithm ───────────────────────────────────────────

function getMaxActionItems(totalAttempts: number): number {
  if (totalAttempts < 100) return 1;
  if (totalAttempts <= 500) return 3;
  return 4;
}

export function buildSmartPlan(
  data: DashboardData,
  allFiches: Fiche[],
  completedFicheSlugs: Set<string>,
  srsDueCount: number,
  totalAttempts: number,
): SmartPlanItem[] {
  const maxItems = getMaxActionItems(totalAttempts);
  const plan: SmartPlanItem[] = [];
  const domainCounts = new Map<string, number>();

  const bumpDomain = (domain: string) => {
    domainCounts.set(domain, (domainCounts.get(domain) ?? 0) + 1);
  };
  const canUseDomain = (domain: string) => (domainCounts.get(domain) ?? 0) < 2;

  // 1. SRS banner if exercises are due (doesn't count toward maxItems)
  if (srsDueCount > 0) {
    plan.push({ type: "srs", dueCount: srsDueCount });
  }

  const actionItems: SmartPlanItem[] = [];

  // 2. One resume session (highest priority — user already invested)
  if (data.resumeSessions.length > 0) {
    const session = data.resumeSessions[0];
    actionItems.push({
      type: "action",
      action: {
        action: "resume",
        title: session.title,
        href: `/exercices/${session.id}`,
        subtitle: `${session.answeredQuestions}/${session.questionCount} questions · ${session.correctRate !== null ? `${session.correctRate}%` : "\u2014"}`,
      },
      domain: session.subdomainLabel,
      domainKey: session.subdomain,
      tone: "warm",
      tag: "À reprendre",
      reason: `${session.answeredQuestions}/${session.questionCount} questions faites — terminez cette série`,
    });
    bumpDomain(session.subdomain);
  }

  // 3. Priority items (accuracy < 50%)
  for (const item of data.priorityItems) {
    if (actionItems.length >= maxItems) break;
    if (!canUseDomain(item.domain)) continue;

    const rate = item.correctRate ?? 0;
    const reason = `${rate}% en ${item.domainLabel} — cette notion nécessite un renfort`;
    const planItem = buildItemFromSubdomain(
      item, data, allFiches, completedFicheSlugs, "warning", "Prioritaire", reason,
    );
    if (planItem) {
      actionItems.push(planItem);
      bumpDomain(item.domain);
    }
  }

  // 4. Fragile items (accuracy 50-70%)
  for (const item of data.fragileItems) {
    if (actionItems.length >= maxItems) break;
    if (!canUseDomain(item.domain)) continue;

    const rate = item.correctRate ?? 0;
    const reason = `Résultats fragiles (${rate}%) en ${item.domainLabel} — une révision ciblée va aider`;
    const planItem = buildItemFromSubdomain(
      item, data, allFiches, completedFicheSlugs, "neutral", "À consolider", reason,
    );
    if (planItem) {
      actionItems.push(planItem);
      bumpDomain(item.domain);
    }
  }

  // 5. Fill remaining slots with discovery items
  if (actionItems.length < maxItems) {
    const unreadFiches = allFiches
      .filter((f) => !completedFicheSlugs.has(f.slug) && (domainCounts.get(f.domaine) ?? 0) < 2)
      .sort((a, b) => {
        if (a.utilite !== b.utilite) return a.utilite === "haute" ? -1 : 1;
        if (a.model !== b.model) return a.model === "sprint" ? -1 : 1;
        return a.estimatedMinutes - b.estimatedMinutes;
      });

    const seenDomains = new Set<string>();
    for (const f of unreadFiches) {
      if (actionItems.length >= maxItems) break;
      if (seenDomains.has(f.domaine)) continue;
      seenDomains.add(f.domaine);

      actionItems.push({
        type: "action",
        action: {
          action: "fiche",
          title: f.title,
          href: `/fiches/${f.slug}`,
          subtitle: `${MODEL_LABELS[f.model] ?? f.model} · ${f.estimatedMinutes} min`,
        },
        domain: f.domaine,
        domainKey: f.domaine,
        tone: "neutral",
        tag: "À découvrir",
        reason: `Vous n'avez pas encore exploré ${f.domaine}`,
      });
    }
  }

  plan.push(...actionItems);
  return plan;
}

// ── Fiche progress by domain ─────────────────────────────────

export function getFicheProgressByDomain(
  allFiches: Fiche[],
  completedSlugs: Set<string>,
): Record<string, { total: number; completed: number }> {
  const result: Record<string, { total: number; completed: number }> = {};

  for (const f of allFiches) {
    if (!result[f.domaine]) {
      result[f.domaine] = { total: 0, completed: 0 };
    }
    result[f.domaine].total++;
    if (completedSlugs.has(f.slug)) {
      result[f.domaine].completed++;
    }
  }

  return result;
}
