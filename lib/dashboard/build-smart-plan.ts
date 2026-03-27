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

export type SmartPlanItem =
  | {
      type: "learn-then-practice";
      fiche: FicheSummary;
      ficheRead: boolean;
      exercise: {
        id: string;
        title: string;
        questionCount: number;
        topicKey: string;
      };
      domain: string;
      domainKey: string;
      tone: "warning" | "warm" | "neutral";
      tag: string;
      reason: string;
      step: number;
    }
  | {
      type: "exercise-only";
      exercise: {
        id: string;
        title: string;
        questionCount: number;
        topicKey: string;
      };
      domain: string;
      domainKey: string;
      tone: "warning" | "warm" | "neutral";
      tag: string;
      reason: string;
      step: number;
    }
  | {
      type: "resume";
      session: DashboardSessionProgress;
      tone: "warm";
      tag: string;
      reason: string;
      step: number;
    }
  | {
      type: "srs";
      dueCount: number;
      step: number;
    }
  | {
      type: "fiche-only";
      fiche: FicheSummary;
      domain: string;
      domainKey: string;
      tone: "neutral";
      tag: string;
      reason: string;
      step: number;
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

function findExerciseForDomain(
  data: DashboardData,
  domainKey: string,
  ficheExercicesAssocies?: string[],
): { id: string; title: string; questionCount: number; topicKey: string } | null {
  // Try exact match via exercicesAssocies first
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

  // Fallback: any session in the same subdomain that's not mastered
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

function buildItemFromSubdomain(
  item: DashboardSubdomainProgress,
  data: DashboardData,
  allFiches: Fiche[],
  completedSlugs: Set<string>,
  tone: "warning" | "neutral",
  tag: string,
  reason: string,
  step: number,
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

  if (ficheResult && exercise) {
    return {
      type: "learn-then-practice",
      fiche: ficheResult.fiche,
      ficheRead: ficheResult.isRead,
      exercise,
      domain: item.domainLabel,
      domainKey: item.domain,
      tone,
      tag,
      reason,
      step,
    };
  }

  if (exercise) {
    return {
      type: "exercise-only",
      exercise,
      domain: item.domainLabel,
      domainKey: item.domain,
      tone,
      tag,
      reason,
      step,
    };
  }

  if (ficheResult) {
    return {
      type: "fiche-only",
      fiche: ficheResult.fiche,
      domain: item.domainLabel,
      domainKey: item.domain,
      tone: "neutral",
      tag,
      reason,
      step,
    };
  }

  return null;
}

// ── Main algorithm ───────────────────────────────────────────

function buildDiscoveryReason(domainLabel: string): string {
  return `Vous n'avez pas encore exploré ${domainLabel}`;
}

function addDiscoveryItems(
  plan: SmartPlanItem[],
  maxItems: number,
  allFiches: Fiche[],
  completedFicheSlugs: Set<string>,
  domainCounts: Map<string, number>,
  data: DashboardData,
  stepCounter: { value: number },
): void {
  const unreadFiches = allFiches
    .filter((f) => !completedFicheSlugs.has(f.slug) && (domainCounts.get(f.domaine) ?? 0) < 2)
    .sort((a, b) => {
      if (a.utilite !== b.utilite) return a.utilite === "haute" ? -1 : 1;
      if (a.model !== b.model) return a.model === "sprint" ? -1 : 1;
      return a.estimatedMinutes - b.estimatedMinutes;
    });

  const seenDomains = new Set<string>();
  for (const f of unreadFiches) {
    if (plan.length >= maxItems) break;
    if (seenDomains.has(f.domaine)) continue;
    seenDomains.add(f.domaine);

    const exercise = findExerciseForDomain(data, f.domaine, f.exercicesAssocies);
    const fSummary: FicheSummary = {
      slug: f.slug,
      title: f.title,
      model: f.model,
      estimatedMinutes: f.estimatedMinutes,
      accessTier: f.accessTier,
    };
    const reason = buildDiscoveryReason(f.domaine);

    if (exercise) {
      plan.push({
        type: "learn-then-practice",
        fiche: fSummary,
        ficheRead: false,
        exercise,
        domain: f.domaine,
        domainKey: f.domaine,
        tone: "neutral",
        tag: "À découvrir",
        reason,
        step: stepCounter.value++,
      });
    } else {
      plan.push({
        type: "fiche-only",
        fiche: fSummary,
        domain: f.domaine,
        domainKey: f.domaine,
        tone: "neutral",
        tag: "À découvrir",
        reason,
        step: stepCounter.value++,
      });
    }
  }
}

export function buildSmartPlan(
  data: DashboardData,
  allFiches: Fiche[],
  completedFicheSlugs: Set<string>,
  srsDueCount: number,
): SmartPlanItem[] {
  const MAX_ITEMS = 5;
  const plan: SmartPlanItem[] = [];
  const domainCounts = new Map<string, number>();

  const bumpDomain = (domain: string) => {
    domainCounts.set(domain, (domainCounts.get(domain) ?? 0) + 1);
  };
  const canUseDomain = (domain: string) => (domainCounts.get(domain) ?? 0) < 2;

  const stepCounter = { value: 1 };

  // 1. SRS banner if exercises are due
  if (srsDueCount > 0) {
    plan.push({ type: "srs", dueCount: srsDueCount, step: stepCounter.value++ });
  }

  // 2. One resume session (highest priority — user already invested)
  if (data.resumeSessions.length > 0 && plan.length < MAX_ITEMS) {
    const session = data.resumeSessions[0];
    const reason = `${session.answeredQuestions}/${session.questionCount} questions faites — terminez cette série`;
    plan.push({
      type: "resume",
      session,
      tone: "warm",
      tag: "À reprendre",
      reason,
      step: stepCounter.value++,
    });
    bumpDomain(session.subdomain);
  }

  // 3. Priority items (accuracy < 50%)
  for (const item of data.priorityItems) {
    if (plan.length >= MAX_ITEMS - 1) break; // reserve 1 slot for discovery
    if (!canUseDomain(item.domain)) continue;

    const rate = item.correctRate ?? 0;
    const reason = `${rate}% en ${item.domainLabel} — cette notion nécessite un renfort`;
    const planItem = buildItemFromSubdomain(
      item,
      data,
      allFiches,
      completedFicheSlugs,
      "warning",
      "Prioritaire",
      reason,
      stepCounter.value,
    );
    if (planItem) {
      plan.push(planItem);
      bumpDomain(item.domain);
      stepCounter.value++;
    }
  }

  // 4. Fragile items (accuracy 50-70%)
  for (const item of data.fragileItems) {
    if (plan.length >= MAX_ITEMS - 1) break; // reserve 1 slot for discovery
    if (!canUseDomain(item.domain)) continue;

    const rate = item.correctRate ?? 0;
    const reason = `Résultats fragiles (${rate}%) en ${item.domainLabel} — une révision ciblée va aider`;
    const planItem = buildItemFromSubdomain(
      item,
      data,
      allFiches,
      completedFicheSlugs,
      "neutral",
      "À consolider",
      reason,
      stepCounter.value,
    );
    if (planItem) {
      plan.push(planItem);
      bumpDomain(item.domain);
      stepCounter.value++;
    }
  }

  // 5. Always fill remaining slots with discovery items
  if (plan.length < MAX_ITEMS) {
    addDiscoveryItems(
      plan,
      MAX_ITEMS,
      allFiches,
      completedFicheSlugs,
      domainCounts,
      data,
      stepCounter,
    );
  }

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
