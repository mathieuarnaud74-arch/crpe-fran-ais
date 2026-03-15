import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { DomainSummaryCard } from "@/features/dashboard/components/domain-summary-card";
import { getDashboardData } from "@/features/dashboard/server/queries";
import { env } from "@/lib/env";
import { formatDate } from "@/lib/utils";

function SummaryMetric({
  label,
  value,
  detail,
  tone = "default",
}: {
  label: string;
  value: string | number;
  detail?: string;
  tone?: "default" | "warm" | "soft";
}) {
  return (
    <div
      className={[
        "rounded-[1.5rem] border p-5 shadow-panel",
        tone === "default" && "border-border bg-card",
        tone === "warm" && "border-accentSecondary/25 bg-card",
        tone === "soft" && "border-border bg-secondary",
      ]
        .filter(Boolean)
        .join(" ")}
    >
      <p className="text-xs font-semibold tracking-[0.10em] text-muted">{label}</p>
      <p className="mt-3 font-serif text-4xl font-semibold text-ink">{value}</p>
      {detail ? <p className="mt-2 text-sm leading-7 text-muted">{detail}</p> : null}
    </div>
  );
}

function FocusList({
  title,
  items,
  emptyText,
  href,
}: {
  title: string;
  items: Array<{
    key: string;
    label: string;
    reviewReason: string;
    domainLabel: string;
  }>;
  emptyText: string;
  href: string;
}) {
  return (
    <Panel>
      <div className="flex items-start justify-between gap-4">
        <div>
          <h2 className="font-serif text-2xl font-semibold text-ink">{title}</h2>
          <p className="mt-2 text-sm leading-7 text-muted">
            Vue courte : le détail complet est déplacé vers la page dédiée.
          </p>
        </div>
        <ButtonLink href={href} variant="secondary">
          Voir tout
        </ButtonLink>
      </div>

      {items.length === 0 ? (
        <p className="mt-6 text-sm text-muted">{emptyText}</p>
      ) : (
        <div className="mt-6 space-y-3">
          {items.map((item) => (
            <div key={item.key} className="rounded-[1.25rem] border border-border bg-paper px-4 py-4">
              <p className="text-xs uppercase tracking-[0.16em] text-muted">{item.domainLabel}</p>
              <p className="mt-2 text-sm font-semibold text-ink">{item.label}</p>
              {item.reviewReason ? (
                <p className="mt-2 text-sm leading-7 text-muted">{item.reviewReason}</p>
              ) : null}
            </div>
          ))}
        </div>
      )}
    </Panel>
  );
}

function OnboardingBanner({
  firstSeriesId,
}: {
  firstSeriesId: string | null;
}) {
  return (
    <Panel className="border-accentSecondary/30 bg-[linear-gradient(135deg,rgba(241,224,213,0.6),rgba(252,250,246,1)_50%,rgba(234,228,216,0.5))]">
      <div className="flex flex-col gap-6 xl:flex-row xl:items-start xl:justify-between">
        <div className="max-w-2xl space-y-4">
          <div>
            <p className="text-xs font-semibold uppercase tracking-[0.16em] text-accentSecondary">
              Première visite
            </p>
            <h2 className="mt-2 font-serif text-3xl font-semibold text-ink">Par où commencer ?</h2>
            <p className="mt-3 text-sm leading-7 text-muted">
              Commencez par le diagnostic : il repère vos zones solides et vos fragilités en{" "}
              <strong className="text-ink">environ 30 minutes</strong>, puis vous oriente vers les
              séries les plus utiles pour vous. C&apos;est la porte d&apos;entrée recommandée.
            </p>
          </div>

          <div className="grid gap-3 sm:grid-cols-3">
            <div className="rounded-[1.25rem] border border-accentSecondary/25 bg-card px-4 py-4">
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-accentSecondary">
                Étape 1
              </p>
              <p className="mt-2 text-sm font-semibold text-ink">Faire le diagnostic</p>
              <p className="mt-1 text-xs leading-5 text-muted">
                40 questions, profil par sous-domaine, priorités identifiées. ~30 min.
              </p>
            </div>
            <div className="rounded-[1.25rem] border border-border bg-card px-4 py-4">
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-accentSecondary">
                Étape 2
              </p>
              <p className="mt-2 text-sm font-semibold text-ink">Travailler vos priorités</p>
              <p className="mt-1 text-xs leading-5 text-muted">
                Commencez par les sous-domaines signalés prioritaires. Séries de 10 min.
              </p>
            </div>
            <div className="rounded-[1.25rem] border border-border bg-card px-4 py-4">
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-accentSecondary">
                Étape 3
              </p>
              <p className="mt-2 text-sm font-semibold text-ink">Revenir consolider</p>
              <p className="mt-1 text-xs leading-5 text-muted">
                Ce tableau de bord trace vos acquis et fragilités au fil des séries.
              </p>
            </div>
          </div>
        </div>

        <div className="flex shrink-0 flex-col gap-3">
          <ButtonLink href="/diagnostic">Lancer le diagnostic</ButtonLink>
          {firstSeriesId ? (
            <ButtonLink href={`/exercices/${firstSeriesId}`} variant="secondary">
              Commencer directement
            </ButtonLink>
          ) : (
            <ButtonLink href="/francais" variant="secondary">
              Explorer les domaines
            </ButtonLink>
          )}
        </div>
      </div>
    </Panel>
  );
}

export default async function DashboardPage() {
  const user = await requireUser();
  const premium = await isPremiumUser(user.id);
  const data = await getDashboardData(user.id, premium);

  const completionRate =
    data.totalSeries === 0 ? 0 : Math.round((data.completedSeries / data.totalSeries) * 100);

  const isNewUser = data.totalAttempts === 0;
  const firstFreeSeries = data.sessionProgress
    .filter((s) => s.access_tier === "free")
    .sort((a, b) => a.recommendedOrder - b.recommendedOrder)[0] ?? null;

  return (
    <div className="space-y-8">
      {isNewUser && (
        <OnboardingBanner firstSeriesId={firstFreeSeries?.id ?? null} />
      )}

      <Panel className="border-border bg-card">
        <div className="flex flex-col gap-5 xl:flex-row xl:items-end xl:justify-between">
          <div className="space-y-3">
            <Badge tone={premium ? "accentSecondary" : "neutral"}>
              {premium ? "Accès premium" : "Accès gratuit"}
            </Badge>
            <div>
              <h1 className="font-serif text-4xl font-semibold text-ink">Tableau de bord</h1>
              <p className="mt-3 max-w-3xl text-sm leading-7 text-muted">
                Une page courte pour savoir où vous en êtes, ce qu&apos;il faut reprendre et vers quel
                domaine aller ensuite.
              </p>
            </div>
          </div>
          <div className="flex flex-wrap gap-3">
            <ButtonLink href="/francais" variant="secondary">
              Explorer le français
            </ButtonLink>
            <ButtonLink href="/revisions-ciblees">Reprendre l&apos;essentiel</ButtonLink>
          </div>
        </div>
      </Panel>

      <div className="grid gap-4 sm:grid-cols-2 2xl:grid-cols-4">
        <SummaryMetric
          label="Séries maîtrisées"
          value={data.masteredSessions}
          detail={
            data.masteredSessions === 0
              ? "Terminez vos premières séries pour voir vos acquis ici."
              : `Sur ${data.totalSeries} série(s) disponibles — continuez ainsi.`
          }
          tone="warm"
        />
        <SummaryMetric
          label="Score global"
          value={data.overallCorrectRate === null ? "—" : `${data.overallCorrectRate} %`}
          detail={
            data.totalAttempts === 0
              ? "Aucune tentative enregistrée pour l’instant."
              : `${data.totalAttempts} tentative(s) prises en compte`
          }
          tone="soft"
        />
        <SummaryMetric
          label="Progression globale"
          value={`${completionRate} %`}
          detail={`${data.completedSeries} série(s) terminée(s) sur ${data.totalSeries}`}
          tone="default"
        />
        <SummaryMetric
          label={premium ? "Accès du jour" : "Quota gratuit"}
          value={premium ? "Illimité" : data.remainingToday}
          detail={
            premium
              ? "Vous avez accès à l’ensemble des séries."
              : `${env.freeDailyQuestionLimit} questions quotidiennes incluses`
          }
          tone="default"
        />
      </div>

      <section className="space-y-4">
        <div className="flex items-end justify-between gap-4">
          <div>
            <Badge tone="accentSecondary" size="sm">
              Français
            </Badge>
            <h2 className="mt-3 font-serif text-3xl font-semibold text-ink">Domaines</h2>
            <p className="mt-2 text-sm leading-7 text-muted">
              Trois portes d&apos;entrée claires. Le détail des notions et des séries est déplacé dans
              chaque domaine.
            </p>
          </div>
          <ButtonLink href="/francais" variant="secondary">
            Vue matière
          </ButtonLink>
        </div>
        <div className="grid gap-4 xl:grid-cols-3">
          {data.domainDirectory.map((domain) => (
            <DomainSummaryCard key={domain.key} domain={domain} />
          ))}
        </div>
      </section>

      <section className="space-y-4">
        <div>
          <h2 className="font-serif text-3xl font-semibold text-ink">Points de vigilance</h2>
          <p className="mt-2 text-sm leading-7 text-muted">
            Notions à surveiller et séries maîtrisées — un résumé pour orienter la prochaine session.
          </p>
        </div>
        <div className="grid gap-6 xl:grid-cols-3">
        <FocusList
          title="Priorités"
          items={data.priorityItems}
          emptyText="Aucune priorité forte pour le moment."
          href="/revisions-ciblees"
        />
        <FocusList
          title="Fragilités"
          items={data.fragileItems}
          emptyText="Aucune fragilité notable pour le moment."
          href="/revisions-ciblees"
        />
        <Panel className="border-accentSecondary/20 bg-card">
          <div className="flex items-start justify-between gap-4">
            <div>
              <h2 className="font-serif text-2xl font-semibold text-ink">Acquis</h2>
              <p className="mt-2 text-sm leading-7 text-muted">
                Séries avec un taux de réussite suffisant pour être considérées maîtrisées.
              </p>
            </div>
            <ButtonLink href="/progression" variant="secondary">
              Détail
            </ButtonLink>
          </div>

          {data.masteredSessions === 0 ? (
            <p className="mt-6 text-sm text-muted">
              Aucun acquis enregistré pour l&apos;instant. Terminez vos premières séries pour les voir apparaître ici.
            </p>
          ) : (
            <div className="mt-6 space-y-3">
              {data.sessionProgress
                .filter((s) => s.status === "maitrisee")
                .slice(0, 3)
                .map((session) => (
                  <div
                    key={session.id}
                    className="rounded-[1.25rem] border border-accentSecondary/20 bg-paper px-4 py-3"
                  >
                    <p className="text-xs uppercase tracking-[0.14em] text-accentSecondary">
                      {session.subdomainLabel}
                    </p>
                    <p className="mt-1 text-sm font-semibold text-ink">{session.title}</p>
                    {session.correctRate !== null ? (
                      <p className="mt-1 text-xs text-muted">{session.correctRate} % de réussite</p>
                    ) : null}
                  </div>
                ))}
              {data.masteredSessions > 3 ? (
                <p className="text-xs text-muted">
                  +{data.masteredSessions - 3} autre(s) série(s) maîtrisée(s) — voir la progression complète.
                </p>
              ) : null}
            </div>
          )}
        </Panel>
        </div>
      </section>

      <Panel>
        <div className="flex items-start justify-between gap-4">
          <div>
            <h2 className="font-serif text-2xl font-semibold text-ink">Activité récente</h2>
            <p className="mt-2 text-sm leading-7 text-muted">
              Un historique court pour garder le fil sans rallonger le dashboard.
            </p>
          </div>
          <ButtonLink href="/progression" variant="secondary">
            Voir les statistiques
          </ButtonLink>
        </div>

        {data.recentActivity.length === 0 ? (
          <p className="mt-6 text-sm text-muted">Aucune activité récente pour le moment.</p>
        ) : (
          <div className="mt-6 grid gap-3 xl:grid-cols-2">
            {data.recentActivity.slice(0, 4).map((activity) => (
              <article
                key={activity.attemptId}
                className="rounded-[1.25rem] border border-border bg-paper px-4 py-4"
              >
                <div className="flex flex-wrap items-center gap-2">
                  <Badge tone={activity.isCorrect ? "success" : "warning"}>
                    {activity.isCorrect ? "Correct" : "À revoir"}
                  </Badge>
                  <Badge tone="accentSecondary">{activity.domainLabel}</Badge>
                </div>
                <p className="mt-3 text-sm font-medium leading-7 text-ink">{activity.instruction}</p>
                <p className="mt-2 text-sm text-muted">
                  {activity.subdomainLabel} · {formatDate(activity.answeredAt)}
                </p>
              </article>
            ))}
          </div>
        )}
      </Panel>
    </div>
  );
}
