import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { ProgressStatusBadge } from "@/features/dashboard/components/learning-status-badge";
import { getDashboardData } from "@/features/dashboard/server/queries";
import { formatDate } from "@/lib/utils";

function StatCard({
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
      className={[
        "rounded-[1.5rem] border px-5 py-5",
        tone === "default" && "border-border bg-paper",
        tone === "warm" && "border-accentSecondary/20 bg-accentSecondarySoft",
      ]
        .filter(Boolean)
        .join(" ")}
    >
      <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">{label}</p>
      <p className="mt-3 font-serif text-3xl font-semibold text-ink">{value}</p>
      <p className="mt-2 text-sm leading-7 text-muted">{detail}</p>
    </div>
  );
}

export default async function ProgressPage() {
  const user = await requireUser();
  const premium = await isPremiumUser(user.id);
  const data = await getDashboardData(user.id, premium);

  return (
    <div className="space-y-8">
      <Panel className="border-border bg-[linear-gradient(135deg,rgba(241,224,213,0.75),rgba(252,250,246,1)_52%,rgba(234,228,216,0.7))]">
        <div className="flex flex-col gap-5 xl:flex-row xl:items-end xl:justify-between">
          <div className="space-y-3">
            <Badge tone="accentSecondary">Progression</Badge>
            <div>
              <h1 className="font-serif text-4xl font-semibold text-ink">Statistiques et progression</h1>
              <p className="mt-3 max-w-3xl text-sm leading-7 text-muted">
                Le tableau de bord reste bref. Les indicateurs détaillés, l’activité et les points de
                friction sont regroupés ici.
              </p>
            </div>
          </div>
          <div className="flex flex-wrap gap-3">
            <ButtonLink href="/tableau-de-bord" variant="secondary">
              Retour au tableau de bord
            </ButtonLink>
            <ButtonLink href="/francais">Parcourir les domaines</ButtonLink>
          </div>
        </div>
      </Panel>

      <div className="grid gap-4 sm:grid-cols-2 2xl:grid-cols-4">
        <StatCard
          label="Tentatives"
          value={data.totalAttempts}
          detail="Toutes les réponses prises en compte dans les statistiques visibles."
        />
        <StatCard
          label="Réussite globale"
          value={data.overallCorrectRate === null ? "—" : `${data.overallCorrectRate} %`}
          detail="Indicateur global : à lire avec le détail par domaine."
          tone="warm"
        />
        <StatCard
          label="Séries maîtrisées"
          value={data.masteredSessions}
          detail="Séries terminées avec un niveau de réussite solide."
        />
        <StatCard
          label="Non commencées"
          value={data.notStartedSessions}
          detail="Potentiel de progression encore disponible."
        />
      </div>

      {data.totalSeries > 0 ? (
        <Panel className="border-accentSecondary/20 bg-card">
          <p className="text-xs font-semibold uppercase tracking-[0.16em] text-accentSecondary">
            Couverture du programme
          </p>
          <h2 className="mt-2 font-serif text-2xl font-semibold text-ink">
            {data.masteredSessions} série{data.masteredSessions > 1 ? "s" : ""} maîtrisée{data.masteredSessions > 1 ? "s" : ""} sur {data.totalSeries} disponibles
          </h2>
          <div className="mt-4 h-3 w-full overflow-hidden rounded-full bg-secondary">
            <div
              className="h-3 rounded-full bg-[linear-gradient(90deg,#476257,#A46849)] transition-all duration-500"
              style={{
                width: `${data.totalSeries === 0 ? 0 : Math.round((data.masteredSessions / data.totalSeries) * 100)}%`,
              }}
              role="presentation"
            />
          </div>
          <p className="mt-3 text-sm leading-7 text-muted">
            {data.masteredSessions === 0
              ? "Terminez vos premières séries avec un score solide (≥ 85 %) pour les voir apparaître ici."
              : data.masteredSessions === data.totalSeries
                ? "Toutes les séries disponibles sont maîtrisées. De nouvelles séries seront ajoutées régulièrement."
                : `Il vous reste ${data.totalSeries - data.masteredSessions} série${data.totalSeries - data.masteredSessions > 1 ? "s" : ""} à maîtriser. Continuez à un rythme régulier pour couvrir l'ensemble du programme.`}
          </p>
        </Panel>
      ) : null}

      <section className="space-y-4">
        <div>
          <Badge tone="accentSecondary" size="sm">
            Détail
          </Badge>
          <h2 className="mt-3 font-serif text-3xl font-semibold text-ink">Progression par domaine</h2>
          <p className="mt-2 text-sm leading-7 text-muted">
            Vue détaillée déplacée hors du dashboard : chaque domaine résume son état, puis ses
            sous-domaines.
          </p>
        </div>

        <div className="space-y-4">
          {data.domainProgress.map((domain) => (
            <Panel key={domain.domain}>
              <div className="flex flex-col gap-4 xl:flex-row xl:items-start xl:justify-between">
                <div>
                  <div className="flex flex-wrap items-center gap-2">
                    <Badge tone="accentSecondary">{domain.label}</Badge>
                    {domain.attempts === 0 ? (
                      <Badge>Non commencé</Badge>
                    ) : (
                      <ProgressStatusBadge status={domain.status} />
                    )}
                  </div>
                  <h3 className="mt-4 font-serif text-3xl font-semibold text-ink">{domain.label}</h3>
                  <p className="mt-2 text-sm leading-7 text-muted">
                    {domain.totalSeries} série(s) · {domain.completedSeries} terminée(s) · {domain.inProgressSeries} en cours
                  </p>
                </div>
                <div className="grid gap-3 sm:grid-cols-3">
                  <div className="rounded-[1.25rem] border border-border bg-paper px-4 py-4">
                    <p className="text-xs uppercase tracking-[0.16em] text-muted">Réussite</p>
                    <p className="mt-2 text-2xl font-semibold text-ink">
                      {domain.correctRate === null ? "—" : `${domain.correctRate} %`}
                    </p>
                  </div>
                  <div className="rounded-[1.25rem] border border-border bg-paper px-4 py-4">
                    <p className="text-xs uppercase tracking-[0.16em] text-muted">Sous-domaines actifs</p>
                    <p className="mt-2 text-2xl font-semibold text-ink">{domain.startedSubdomains}</p>
                  </div>
                  <div className="rounded-[1.25rem] border border-border bg-paper px-4 py-4">
                    <p className="text-xs uppercase tracking-[0.16em] text-muted">Dernière activité</p>
                    <p className="mt-2 text-sm font-semibold text-ink">
                      {domain.lastAnsweredAt ? formatDate(domain.lastAnsweredAt) : "Aucune"}
                    </p>
                  </div>
                </div>
              </div>

              <div className="mt-6 grid gap-3 xl:grid-cols-2">
                {domain.subdomains.map((item) => (
                  <article
                    key={item.key}
                    className="rounded-[1.25rem] border border-border bg-paper px-4 py-4"
                  >
                    <div className="flex flex-wrap items-center gap-2">
                      <Badge tone="accentSecondary">{item.label}</Badge>
                      {item.attempts === 0 ? (
                        <Badge>Non commencé</Badge>
                      ) : (
                        <ProgressStatusBadge status={item.status} />
                      )}
                    </div>
                    <p className="mt-3 text-sm leading-7 text-muted">
                      {item.totalSeries} série(s) · {item.completedSeries} terminée(s) · {item.inProgressSeries} en cours
                    </p>
                    {item.reviewReason ? (
                      <p className="mt-2 text-sm leading-7 text-muted">{item.reviewReason}</p>
                    ) : null}
                  </article>
                ))}
              </div>
            </Panel>
          ))}
        </div>
      </section>

      <div className="grid gap-6 2xl:grid-cols-2">
        <Panel>
          <div>
            <h2 className="font-serif text-2xl font-semibold text-ink">Erreurs fréquentes</h2>
            <p className="mt-2 text-sm leading-7 text-muted">
              Les points qui reviennent le plus souvent dans vos réponses.
            </p>
          </div>
          {data.frequentMistakes.length === 0 ? (
            <p className="mt-6 text-sm text-muted">Aucune erreur fréquente identifiée pour le moment.</p>
          ) : (
            <div className="mt-6 space-y-3">
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

        <Panel>
          <div>
            <h2 className="font-serif text-2xl font-semibold text-ink">Activité récente</h2>
            <p className="mt-2 text-sm leading-7 text-muted">
              Historique court pour lire la dynamique sans revenir au flux complet.
            </p>
          </div>
          {data.recentActivity.length === 0 ? (
            <p className="mt-6 text-sm text-muted">Aucune activité récente pour le moment.</p>
          ) : (
            <div className="mt-6 space-y-3">
              {data.recentActivity.map((activity) => (
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
                  <h3 className="mt-3 text-base font-semibold text-ink">{activity.instruction}</h3>
                  <p className="mt-2 text-sm text-muted">
                    {activity.sessionTitle} · {activity.subdomainLabel}
                  </p>
                  <p className="mt-1 text-sm text-muted">{formatDate(activity.answeredAt)}</p>
                </article>
              ))}
            </div>
          )}
        </Panel>
      </div>
    </div>
  );
}
