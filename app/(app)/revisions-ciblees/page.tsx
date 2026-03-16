import Link from "next/link";

import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { SessionProgressCard } from "@/features/dashboard/components/session-progress-card";
import { getDashboardData } from "@/features/dashboard/server/queries";
import { cn, formatDate } from "@/lib/utils";
import { DashboardData, DashboardSessionProgress } from "@/types/domain";

function FocusMetric({
  label,
  value,
  detail,
  tone = "default",
}: {
  label: string;
  value: string | number;
  detail: string;
  tone?: "default" | "warm";
}) {
  return (
    <div
      className={cn(
        "rounded-[1.5rem] border px-5 py-5",
        tone === "default" && "border-border bg-paper",
        tone === "warm" && "border-accentSecondary/20 bg-accentSecondarySoft",
      )}
    >
      <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">{label}</p>
      <p className="mt-3 font-serif text-3xl font-semibold text-ink">{value}</p>
      <p className="mt-2 text-sm leading-7 text-muted">{detail}</p>
    </div>
  );
}

function TopicFocusSection({
  title,
  description,
  items,
  emptyText,
}: {
  title: string;
  description: string;
  items: Array<{
    key: string;
    label: string;
    domainLabel: string;
    reviewReason: string;
    correctRate: number | null;
    attempts: number;
  }>;
  emptyText: string;
}) {
  return (
    <Panel>
      <div>
        <h2 className="font-serif text-2xl font-semibold text-ink">{title}</h2>
        {description ? <p className="mt-2 text-sm leading-7 text-muted">{description}</p> : null}
      </div>

      {items.length === 0 ? (
        <p className="mt-6 text-sm text-muted">{emptyText}</p>
      ) : (
        <div className="mt-6 space-y-3">
          {items.map((item) => (
            <article
              key={item.key}
              className="rounded-[1.25rem] border border-border bg-paper px-4 py-4"
            >
              <div className="flex flex-wrap items-center gap-2">
                <Badge tone="accentSecondary">{item.domainLabel}</Badge>
                {item.correctRate !== null ? <Badge tone="warning">{item.correctRate} %</Badge> : null}
              </div>
              <h3 className="mt-3 text-base font-semibold text-ink">{item.label}</h3>
              {item.reviewReason ? (
                <p className="mt-2 text-sm leading-7 text-muted">{item.reviewReason}</p>
              ) : null}
              <p className="mt-2 text-sm text-muted">{item.attempts} tentative(s) enregistrée(s)</p>
            </article>
          ))}
        </div>
      )}
    </Panel>
  );
}

type PlanItem = {
  label: string;
  detail: string;
  href: string;
  tag: string;
  tone: "warm" | "warning" | "neutral";
  step: number;
  estimatedMinutes: number;
};

function buildPlanDuJour(data: DashboardData): PlanItem[] {
  const plan: PlanItem[] = [];

  for (const session of data.resumeSessions.slice(0, 2)) {
    if (plan.length >= 3) break;
    plan.push({
      label: session.title,
      detail: `${session.answeredQuestions}/${session.questionCount} questions faites · ${session.subdomainLabel}`,
      href: `/exercices/${session.id}`,
      tag: "À reprendre",
      tone: "warm",
      step: plan.length + 1,
      estimatedMinutes: session.estimatedMinutes,
    });
  }

  for (const item of data.priorityItems) {
    if (plan.length >= 3) break;
    const targetSession = data.sessionProgress.find(
      (s: DashboardSessionProgress) =>
        s.topicKey === item.key && (s.status === "a_revoir" || s.status === "non_commencee"),
    );
    if (targetSession) {
      plan.push({
        label: item.label,
        detail: item.reviewReason || "Taux de réussite insuffisant — reprendre rapidement.",
        href: `/exercices/${targetSession.id}`,
        tag: "Prioritaire",
        tone: "warning",
        step: plan.length + 1,
        estimatedMinutes: targetSession.estimatedMinutes,
      });
    }
  }

  for (const item of data.fragileItems) {
    if (plan.length >= 3) break;
    const targetSession = data.sessionProgress.find(
      (s: DashboardSessionProgress) =>
        s.topicKey === item.key && (s.status === "a_revoir" || s.status === "non_commencee"),
    );
    if (targetSession) {
      plan.push({
        label: item.label,
        detail: item.reviewReason || "Notion encore instable — consolider avant de progresser.",
        href: `/exercices/${targetSession.id}`,
        tag: "À consolider",
        tone: "neutral",
        step: plan.length + 1,
        estimatedMinutes: targetSession.estimatedMinutes,
      });
    }
  }

  return plan;
}

export default async function TargetedRevisionPage() {
  const user = await requireUser();
  const premium = await isPremiumUser(user.id);
  const data = await getDashboardData(user.id, premium);
  const plan = buildPlanDuJour(data);

  return (
    <div className="space-y-8">
      <Panel className="border-border bg-gradient-panel">
        <div className="flex flex-col gap-5 xl:flex-row xl:items-end xl:justify-between">
          <div className="space-y-3">
            <Badge tone="accentSecondary">Révisions ciblées</Badge>
            <h1 className="font-serif text-4xl font-semibold text-ink">À reprendre en priorité</h1>
          </div>
          <div className="flex flex-wrap gap-3">
            <ButtonLink href="/tableau-de-bord" variant="secondary">
              Retour au tableau de bord
            </ButtonLink>
            <ButtonLink href="/progression">Voir toute la progression</ButtonLink>
          </div>
        </div>
      </Panel>

      {/* Plan d'action du jour */}
      <Panel className="border-accentSecondary/25 bg-card">
        <div className="flex items-start justify-between gap-4">
          <div>
            <h2 className="font-serif text-2xl font-semibold text-ink">Plan du jour</h2>
            <p className="mt-2 text-sm leading-7 text-muted">
              {plan.length === 0
                ? "Aucune action ciblée pour le moment. Explorez les domaines pour commencer de nouvelles séries."
                : `${plan.length} action${plan.length > 1 ? "s" : ""} recommandée${plan.length > 1 ? "s" : ""} pour cette session — environ ${plan.reduce((acc, item) => acc + item.estimatedMinutes, 0)} minutes.`}
            </p>
          </div>
          <ButtonLink href="/exercices" variant="secondary">
            Catalogue complet
          </ButtonLink>
        </div>

        {plan.length === 0 ? (
          <div className="mt-6 rounded-[1.25rem] border border-border bg-paper px-4 py-4">
            <p className="text-sm text-muted">
              Commencez une série depuis la{" "}
              <Link href="/francais" className="font-semibold text-ink underline underline-offset-2">
                page Français
              </Link>{" "}
              pour que vos fragilités apparaissent ici.
            </p>
          </div>
        ) : (
          <div className="mt-6 grid gap-3 xl:grid-cols-3">
            {plan.map((item) => (
              <Link
                key={`${item.step}-${item.href}`}
                href={item.href}
                className="group flex flex-col rounded-[1.25rem] border border-border bg-paper px-4 py-4 transition hover:border-accent hover:shadow-subtle"
              >
                <div className="flex items-start justify-between gap-2">
                  <span className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">
                    Tâche {item.step}
                  </span>
                  <span
                    className={cn(
                      "shrink-0 rounded-full border px-2.5 py-0.5 text-[0.65rem] font-semibold uppercase tracking-[0.10em]",
                      item.tone === "warm" &&
                        "border-accentSecondary/30 bg-accentSecondarySoft text-accentSecondary",
                      item.tone === "warning" && "border-warningBorder bg-warningBg text-warning",
                      item.tone === "neutral" && "border-border bg-secondary text-muted",
                    )}
                  >
                    {item.tag}
                  </span>
                </div>
                <p className="mt-3 flex-1 text-sm font-semibold leading-6 text-ink">{item.label}</p>
                <p className="mt-2 text-xs leading-5 text-muted">{item.detail}</p>
                <p className="mt-3 text-xs font-semibold text-accentSecondary group-hover:underline">
                  Ouvrir cette série →
                </p>
              </Link>
            ))}
          </div>
        )}
      </Panel>

<div className="grid gap-6 2xl:grid-cols-2">
        <TopicFocusSection
          title="Priorités"
          description=""
          items={data.priorityItems}
          emptyText="Aucune priorité forte détectée."
        />
        <TopicFocusSection
          title="Fragilités"
          description=""
          items={data.fragileItems}
          emptyText="Aucune fragilité notable."
        />
      </div>

      <Panel>
        <div className="flex items-start justify-between gap-4">
          <div>
            <h2 className="font-serif text-2xl font-semibold text-ink">Séries à reprendre</h2>
            <p className="mt-2 text-sm leading-7 text-muted">
              Les séries commencées sont isolées ici pour éviter leur dispersion dans tout le site.
            </p>
          </div>
          <ButtonLink href="/francais" variant="secondary">
            Voir les domaines
          </ButtonLink>
        </div>

        {data.resumeSessions.length === 0 ? (
          <p className="mt-6 text-sm text-muted">Aucune série en cours pour le moment.</p>
        ) : (
          <div className="mt-6 space-y-3">
            {data.resumeSessions.map((session) => (
              <SessionProgressCard key={session.id} session={session} compact />
            ))}
          </div>
        )}
      </Panel>

      <Panel>
        <div>
          <h2 className="font-serif text-2xl font-semibold text-ink">Erreurs fréquentes</h2>
          <p className="mt-2 text-sm leading-7 text-muted">
            Indices utiles pour cibler la prochaine révision sans relire tout l&apos;historique.
          </p>
        </div>

        {data.frequentMistakes.length === 0 ? (
          <p className="mt-6 text-sm text-muted">Aucune erreur fréquente identifiée pour le moment.</p>
        ) : (
          <div className="mt-6 grid gap-3 xl:grid-cols-2">
            {data.frequentMistakes.map((mistake) => (
              <article
                key={mistake.key}
                className="rounded-[1.25rem] border border-border bg-paper px-4 py-4"
              >
                <div className="flex flex-wrap items-center gap-2">
                  <Badge tone="warning">{mistake.occurrences} erreur(s)</Badge>
                  <Badge tone="accentSecondary">{mistake.domainLabel}</Badge>
                </div>
                <h3 className="mt-3 text-base font-semibold text-ink">{mistake.title}</h3>
                <p className="mt-2 text-sm leading-7 text-muted">{mistake.exampleInstruction}</p>
                <p className="mt-2 text-sm text-muted">
                  {mistake.subdomainLabel} · {formatDate(mistake.lastAnsweredAt)}
                </p>
              </article>
            ))}
          </div>
        )}
      </Panel>
    </div>
  );
}
