import { notFound } from "next/navigation";

import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { SessionProgressCard } from "@/features/dashboard/components/session-progress-card";
import { getDashboardData } from "@/features/dashboard/server/queries";
import {
  FRENCH_DOMAIN_CONFIG,
  FRENCH_DOMAIN_ORDER,
  LEARNING_STATUS_LABELS,
  LEVEL_OPTIONS,
  SUBDOMAIN_LABELS,
} from "@/lib/constants";
import { cn } from "@/lib/utils";
import { DashboardSessionProgress, FrenchDomainKey, LearningStatus } from "@/types/domain";

type Params = Promise<{ domain: string }>;

type SearchParams = Promise<{
  status?: string;
  level?: string;
  subdomain?: string;
  q?: string;
}>;

const STATUS_ORDER: LearningStatus[] = ["a_revoir", "en_cours", "non_commencee", "maitrisee"];

const STATUS_DESCRIPTIONS: Record<LearningStatus, string> = {
  a_revoir: "Séries terminées mais encore instables : elles doivent repasser en priorité.",
  en_cours: "Séries déjà lancées, à reprendre sans repartir du catalogue complet.",
  non_commencee: "Séries encore intactes dans ce domaine.",
  maitrisee: "Séries terminées avec une réussite solide.",
};

function isFrenchDomainKey(value: string): value is FrenchDomainKey {
  return FRENCH_DOMAIN_ORDER.includes(value as FrenchDomainKey);
}

function buildHref(pathname: string, filters: Record<string, string | undefined>) {
  const params = new URLSearchParams();

  Object.entries(filters).forEach(([key, value]) => {
    if (value) {
      params.set(key, value);
    }
  });

  const query = params.toString();
  return query ? `${pathname}?${query}` : pathname;
}

function matchesSearch(session: DashboardSessionProgress, query: string) {
  if (!query) {
    return true;
  }

  const normalizedQuery = query.trim().toLowerCase();
  const haystack = [
    session.title,
    session.summary,
    session.topicLabel,
    session.subdomainLabel,
    session.level,
  ]
    .join(" ")
    .toLowerCase();

  return haystack.includes(normalizedQuery);
}

function DomainMetric({
  label,
  value,
  detail,
  tone = "default",
}: {
  label: string;
  value: string | number;
  detail?: string;
  tone?: "default" | "warm";
}) {
  return (
    <div
      className={[
        "rounded-[1.5rem] border px-5 py-5",
        tone === "default" && "border-border bg-paper",
        tone === "warm" && "border-accentSecondary/25 bg-card",
      ]
        .filter(Boolean)
        .join(" ")}
    >
      <p className="text-xs font-semibold tracking-[0.10em] text-muted">{label}</p>
      <p className="mt-3 font-serif text-3xl font-semibold text-ink">{value}</p>
      {detail ? <p className="mt-2 text-sm leading-7 text-muted">{detail}</p> : null}
    </div>
  );
}

export default async function FrenchDomainPage({
  params,
  searchParams,
}: {
  params: Params;
  searchParams: SearchParams;
}) {
  const [{ domain }, filters, user] = await Promise.all([params, searchParams, requireUser()]);
  const premium = await isPremiumUser(user.id);

  if (!isFrenchDomainKey(domain)) {
    notFound();
  }

  const data = await getDashboardData(user.id, premium);
  const config = FRENCH_DOMAIN_CONFIG[domain];
  const pathname = `/francais/${domain}`;

  const domainSessions = data.sessionProgress.filter((session) => session.domainKey === domain);
  const selectedStatus =
    filters.status && STATUS_ORDER.includes(filters.status as LearningStatus)
      ? (filters.status as LearningStatus)
      : "";
  const selectedLevel = filters.level ?? "";
  const selectedSubdomain =
    filters.subdomain &&
    config.subdomains.includes(filters.subdomain as DashboardSessionProgress["subdomain"])
      ? filters.subdomain
      : "";
  const query = filters.q?.trim() ?? "";

  const filteredSessions = domainSessions.filter((session) => {
    if (selectedStatus && session.status !== selectedStatus) {
      return false;
    }
    if (selectedLevel && session.level !== selectedLevel) {
      return false;
    }
    if (selectedSubdomain && session.subdomain !== selectedSubdomain) {
      return false;
    }
    return matchesSearch(session, query);
  });

  const groupedSessions = STATUS_ORDER.map((status) => ({
    status,
    items: filteredSessions.filter((session) => session.status === status),
  })).filter((group) => group.items.length > 0);

  const domainSummary = data.domainDirectory.find((item) => item.key === domain);
  const domainCorrectRate = domainSummary?.correctRate;

  const subdomainSummary = config.subdomains.map((subdomain) => {
    const sessions = domainSessions.filter((session) => session.subdomain === subdomain);

    return {
      key: subdomain,
      label: SUBDOMAIN_LABELS[subdomain],
      totalSeries: sessions.length,
      enCours: sessions.filter((session) => session.status === "en_cours").length,
      aRevoir: sessions.filter((session) => session.status === "a_revoir").length,
      maitrisees: sessions.filter((session) => session.status === "maitrisee").length,
    };
  });

  return (
    <div className="space-y-8">
      <Panel className="border-border bg-card">
        <div className="flex flex-col gap-5 xl:flex-row xl:items-end xl:justify-between">
          <div className="space-y-3">
            <Badge tone="accentSecondary">Français</Badge>
            <div>
              <h1 className="font-serif text-4xl font-semibold text-ink">{config.label}</h1>
              <p className="mt-3 max-w-3xl text-sm leading-7 text-muted">{config.description}</p>
            </div>
          </div>
          <div className="flex flex-wrap gap-3">
            <ButtonLink href="/francais" variant="secondary">
              Retour à la matière
            </ButtonLink>
            <ButtonLink href="/tableau-de-bord">Tableau de bord</ButtonLink>
          </div>
        </div>
      </Panel>

      <div className="grid gap-4 sm:grid-cols-2 2xl:grid-cols-4">
        <DomainMetric
          label="Séries"
          value={domainSummary?.totalSeries ?? domainSessions.length}
          detail={`${filteredSessions.length} visible(s) avec les filtres actuels`}
        />
        <DomainMetric
          label="À revoir"
          value={domainSummary?.toReviewSeries ?? 0}
          detail="Travail déjà fait, mais encore instable."
          tone="warm"
        />
        <DomainMetric
          label="En cours"
          value={domainSummary?.inProgressSeries ?? 0}
          detail="Séries entamées à reprendre sans repartir de zéro."
        />
        <DomainMetric
          label="Maîtrisées"
          value={domainSummary?.masteredSeries ?? 0}
          detail={
            domainCorrectRate === null || domainCorrectRate === undefined
              ? "Aucune donnée de réussite pour le moment."
              : `${domainCorrectRate} % de réussite sur ce domaine`
          }
        />
      </div>

      <section className="space-y-4">
        <div>
          <Badge tone="accentSecondary" size="sm">
            Structure
          </Badge>
          <h2 className="mt-3 font-serif text-3xl font-semibold text-ink">Sous-domaines</h2>
          <p className="mt-2 text-sm leading-7 text-muted">
            Vue de repérage rapide pour comprendre la structure du domaine avant d’ouvrir les séries.
          </p>
        </div>
        <div className="grid gap-4 xl:grid-cols-3">
          {subdomainSummary.map((item) => (
            <Panel key={item.key} className="bg-card">
              <p className="text-xs font-semibold tracking-[0.10em] text-muted">Sous-domaine</p>
              <h3 className="mt-3 text-xl font-semibold text-ink">{item.label}</h3>
              <div className="mt-5 grid gap-3 sm:grid-cols-3 xl:grid-cols-1">
                <div className="rounded-[1.25rem] border border-border bg-paper px-4 py-4 text-sm text-muted">
                  <p className="text-xs font-medium tracking-[0.10em] text-muted">Séries</p>
                  <p className="mt-2 text-2xl font-semibold text-ink">{item.totalSeries}</p>
                </div>
                <div className="rounded-[1.25rem] border border-border bg-paper px-4 py-4 text-sm text-muted">
                  <p className="text-xs uppercase tracking-[0.16em]">En cours / À revoir</p>
                  <p className="mt-2 text-lg font-semibold text-ink">
                    {item.enCours} / {item.aRevoir}
                  </p>
                </div>
                <div className="rounded-[1.25rem] border border-border bg-paper px-4 py-4 text-sm text-muted">
                  <p className="text-xs uppercase tracking-[0.16em]">Maîtrisées</p>
                  <p className="mt-2 text-2xl font-semibold text-ink">{item.maitrisees}</p>
                </div>
              </div>
            </Panel>
          ))}
        </div>
      </section>

      <Panel>
        <div className="flex flex-col gap-4 xl:flex-row xl:items-end xl:justify-between">
          <div>
            <h2 className="font-serif text-2xl font-semibold text-ink">Filtres</h2>
            <p className="mt-2 text-sm leading-7 text-muted">
              Le détail reste ici, pas sur le tableau de bord. Les filtres réduisent la densité sans
              masquer la hiérarchie.
            </p>
          </div>
          <ButtonLink href={pathname} variant="ghost">
            Réinitialiser
          </ButtonLink>
        </div>

        <form className="mt-6 grid gap-4 md:grid-cols-2 xl:grid-cols-5">
          <label className="space-y-2 text-sm text-muted">
            <span>Statut</span>
            <select
              name="status"
              defaultValue={selectedStatus}
              className="w-full rounded-2xl border border-border bg-paper px-4 py-3 text-ink outline-none focus:border-accent"
            >
              <option value="">Tous</option>
              {STATUS_ORDER.map((status) => (
                <option key={status} value={status}>
                  {LEARNING_STATUS_LABELS[status]}
                </option>
              ))}
            </select>
          </label>

          <label className="space-y-2 text-sm text-muted">
            <span>Sous-domaine</span>
            <select
              name="subdomain"
              defaultValue={selectedSubdomain}
              className="w-full rounded-2xl border border-border bg-paper px-4 py-3 text-ink outline-none focus:border-accent"
            >
              <option value="">Tous</option>
              {config.subdomains.map((subdomain) => (
                <option key={subdomain} value={subdomain}>
                  {SUBDOMAIN_LABELS[subdomain]}
                </option>
              ))}
            </select>
          </label>

          <label className="space-y-2 text-sm text-muted">
            <span>Niveau</span>
            <select
              name="level"
              defaultValue={selectedLevel}
              className="w-full rounded-2xl border border-border bg-paper px-4 py-3 text-ink outline-none focus:border-accent"
            >
              <option value="">Tous</option>
              {LEVEL_OPTIONS.map((option) => (
                <option key={option.value} value={option.label}>
                  {option.label}
                </option>
              ))}
            </select>
          </label>

          <label className="space-y-2 text-sm text-muted xl:col-span-2">
            <span>Recherche</span>
            <input
              type="search"
              name="q"
              defaultValue={query}
              placeholder="Titre, notion, résumé..."
              className="w-full rounded-2xl border border-border bg-paper px-4 py-3 text-ink outline-none placeholder:text-muted focus:border-accent"
            />
          </label>

          <div className="flex items-end">
            <button
              type="submit"
              className="w-full rounded-full bg-accent px-5 py-3 text-sm font-semibold text-paper transition hover:bg-accentDark"
            >
              Filtrer
            </button>
          </div>
        </form>

        <div className="mt-4 flex flex-wrap gap-2">
          {selectedStatus ? (
            <ButtonLink
              href={buildHref(pathname, {
                level: selectedLevel,
                subdomain: selectedSubdomain,
                q: query || undefined,
              })}
              variant="secondary"
              className="px-4 py-2 text-xs"
            >
              {LEARNING_STATUS_LABELS[selectedStatus]}
            </ButtonLink>
          ) : null}
          {selectedSubdomain ? (
            <ButtonLink
              href={buildHref(pathname, {
                status: selectedStatus || undefined,
                level: selectedLevel,
                q: query || undefined,
              })}
              variant="secondary"
              className="px-4 py-2 text-xs"
            >
              {SUBDOMAIN_LABELS[selectedSubdomain as DashboardSessionProgress["subdomain"]]}
            </ButtonLink>
          ) : null}
          {selectedLevel ? (
            <ButtonLink
              href={buildHref(pathname, {
                status: selectedStatus || undefined,
                subdomain: selectedSubdomain || undefined,
                q: query || undefined,
              })}
              variant="secondary"
              className="px-4 py-2 text-xs"
            >
              {selectedLevel}
            </ButtonLink>
          ) : null}
          {query ? (
            <ButtonLink
              href={buildHref(pathname, {
                status: selectedStatus || undefined,
                level: selectedLevel || undefined,
                subdomain: selectedSubdomain || undefined,
              })}
              variant="secondary"
              className="px-4 py-2 text-xs"
            >
              Recherche : {query}
            </ButtonLink>
          ) : null}
        </div>
      </Panel>

      {groupedSessions.length === 0 ? (
        <Panel>
          <h2 className="font-serif text-2xl font-semibold text-ink">Aucun résultat</h2>
          <p className="mt-3 text-sm leading-7 text-muted">
            Aucun ensemble de séries ne correspond aux filtres actuels.
          </p>
        </Panel>
      ) : (
        <section className="space-y-4">
          <div className="flex items-end justify-between gap-4">
            <div>
              <h2 className="font-serif text-3xl font-semibold text-ink">Séries</h2>
              <p className="mt-2 text-sm leading-7 text-muted">
                Regroupement par statut pour éviter une liste uniforme et difficile à parcourir.
              </p>
            </div>
            <p className="text-sm text-muted">{filteredSessions.length} série(s) visible(s)</p>
          </div>

          <div className="space-y-4">
            {groupedSessions.map((group, index) => (
              <details
                key={group.status}
                open={index < 2}
                className="rounded-[1.75rem] border border-border bg-card p-6 shadow-panel"
              >
                <summary className="cursor-pointer list-none">
                  <div className="flex flex-col gap-3 md:flex-row md:items-center md:justify-between">
                    <div>
                      <div className="flex flex-wrap items-center gap-3">
                        <LearningStatusPill status={group.status} />
                        <p className="text-sm font-semibold text-ink">{group.items.length} série(s)</p>
                      </div>
                      <p className="mt-2 text-sm leading-7 text-muted">
                        {STATUS_DESCRIPTIONS[group.status]}
                      </p>
                    </div>
                    <p className="text-sm text-muted">Afficher / réduire</p>
                  </div>
                </summary>
                <div className="mt-5 space-y-3">
                  {group.items.map((session) => (
                    <SessionProgressCard key={session.id} session={session} />
                  ))}
                </div>
              </details>
            ))}
          </div>
        </section>
      )}
    </div>
  );
}

function LearningStatusPill({ status }: { status: LearningStatus }) {
  return (
    <span
      className={cn(
        "inline-flex items-center rounded-full border px-3 py-1 text-xs font-semibold uppercase tracking-[0.18em]",
        status === "a_revoir" && "border-warningBorder bg-warningBg text-warning",
        status === "en_cours" && "border-accent bg-secondary text-accentDark",
        status === "non_commencee" && "border-border bg-paper text-muted",
        status === "maitrisee" && "border-successBorder bg-successBg text-pine",
      )}
    >
      {LEARNING_STATUS_LABELS[status]}
    </span>
  );
}
