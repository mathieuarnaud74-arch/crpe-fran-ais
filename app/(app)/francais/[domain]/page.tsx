import type { Metadata } from "next";
import Link from "next/link";
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

export async function generateMetadata({ params }: { params: Params }): Promise<Metadata> {
  const { domain } = await params;
  if (!isFrenchDomainKey(domain)) {
    return { title: "Domaine introuvable" };
  }
  const config = FRENCH_DOMAIN_CONFIG[domain];
  return {
    title: config.label,
    description: `Exercices et fiches pour ${config.label.toLowerCase()} — ${config.description}`,
  };
}

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
  const totalSeries = domainSummary?.totalSeries ?? domainSessions.length;
  const toReview = domainSummary?.toReviewSeries ?? 0;
  const inProgress = domainSummary?.inProgressSeries ?? 0;
  const mastered = domainSummary?.masteredSeries ?? 0;
  const domainCorrectRate = domainSummary?.correctRate;

  const subdomainSummary = config.subdomains.map((subdomain) => {
    const sessions = domainSessions.filter((session) => session.subdomain === subdomain);

    return {
      key: subdomain,
      label: SUBDOMAIN_LABELS[subdomain],
      totalSeries: sessions.length,
      enCours: sessions.filter((s) => s.status === "en_cours").length,
      aRevoir: sessions.filter((s) => s.status === "a_revoir").length,
      maitrisees: sessions.filter((s) => s.status === "maitrisee").length,
    };
  });

  const masteryPercent = totalSeries > 0 ? Math.round((mastered / totalSeries) * 100) : 0;
  const hasActiveFilters = !!(selectedStatus || selectedSubdomain || selectedLevel || query);

  return (
    <div className="space-y-6">
      {/* ── Header ── */}
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

      {/* ── Stats strip + progress bar ── */}
      <div className="space-y-3">
        <div className="grid grid-cols-2 gap-px overflow-hidden rounded-2xl border border-border bg-border sm:grid-cols-4">
          <div className="bg-card px-5 py-4 text-center">
            <p className="font-serif text-3xl font-semibold text-ink">{totalSeries}</p>
            <p className="mt-1 text-xs font-medium tracking-wide text-muted">Séries</p>
          </div>
          <div className="bg-card px-5 py-4 text-center">
            <p className="font-serif text-3xl font-semibold text-accentSecondary">{toReview}</p>
            <p className="mt-1 text-xs font-medium tracking-wide text-muted">À revoir</p>
          </div>
          <div className="bg-card px-5 py-4 text-center">
            <p className="font-serif text-3xl font-semibold text-accent">{inProgress}</p>
            <p className="mt-1 text-xs font-medium tracking-wide text-muted">En cours</p>
          </div>
          <div className="bg-card px-5 py-4 text-center">
            <p className="font-serif text-3xl font-semibold text-pine">{mastered}</p>
            <p className="mt-1 text-xs font-medium tracking-wide text-muted">Maîtrisées</p>
            {domainCorrectRate != null && (
              <p className="mt-0.5 text-xs text-muted">{domainCorrectRate}% réussite</p>
            )}
          </div>
        </div>

        <div>
          <div className="mb-1.5 flex justify-between text-xs text-muted">
            <span>Progression</span>
            <span>
              {mastered}/{totalSeries} maîtrisées ({masteryPercent}%)
            </span>
          </div>
          <div className="h-2 w-full overflow-hidden rounded-full bg-secondary">
            <div
              className="h-full rounded-full bg-gradient-to-r from-accent to-pine transition-all"
              style={{ width: `${masteryPercent}%` }}
            />
          </div>
        </div>
      </div>

      {/* ── Sous-domaines — compact table ── */}
      <section>
        <div className="mb-3 flex items-baseline gap-3">
          <h2 className="font-serif text-2xl font-semibold text-ink">Sous-domaines</h2>
          <span className="text-xs text-muted">Cliquez pour filtrer</span>
        </div>
        <div className="overflow-hidden rounded-2xl border border-border">
          <div className="hidden border-b border-border bg-secondary/50 px-5 py-2.5 md:grid md:grid-cols-[1fr_5rem_8rem_5.5rem] md:gap-4">
            <span className="text-xs font-semibold uppercase tracking-widest text-muted">Nom</span>
            <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">
              Séries
            </span>
            <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">
              En c. / À rev.
            </span>
            <span className="text-center text-xs font-semibold uppercase tracking-widest text-muted">
              Maîtrisées
            </span>
          </div>
          {subdomainSummary.map((item, i) => (
            <Link
              key={item.key}
              href={buildHref(pathname, { subdomain: item.key })}
              className={cn(
                "flex flex-col gap-1 bg-card px-5 py-3.5 transition-colors hover:bg-paper md:grid md:grid-cols-[1fr_5rem_8rem_5.5rem] md:items-center md:gap-4",
                i < subdomainSummary.length - 1 && "border-b border-border",
              )}
            >
              <span className="text-sm font-semibold text-ink">{item.label}</span>
              <span className="text-sm tabular-nums text-muted md:text-center">
                <span className="text-xs md:hidden">Séries : </span>
                {item.totalSeries}
              </span>
              <span className="text-sm tabular-nums text-muted md:text-center">
                <span className="text-xs md:hidden">En cours / À revoir : </span>
                {item.enCours} / {item.aRevoir}
              </span>
              <span className="text-sm tabular-nums text-pine md:text-center">
                <span className="text-xs md:hidden">Maîtrisées : </span>
                {item.maitrisees}
              </span>
            </Link>
          ))}
        </div>
      </section>

      {/* ── Filters — compact ── */}
      <Panel>
        <div className="flex items-center justify-between">
          <h2 className="font-serif text-xl font-semibold text-ink">Filtres</h2>
          <ButtonLink href={pathname} variant="ghost" size="sm">
            Réinitialiser
          </ButtonLink>
        </div>

        <form className="mt-4 grid gap-3 md:grid-cols-2 xl:grid-cols-5">
          <label className="space-y-1.5 text-sm text-muted">
            <span>Statut</span>
            <select
              name="status"
              defaultValue={selectedStatus}
              className="w-full rounded-xl border border-border bg-paper px-4 py-2.5 text-sm text-ink outline-none focus:border-accent"
            >
              <option value="">Tous</option>
              {STATUS_ORDER.map((status) => (
                <option key={status} value={status}>
                  {LEARNING_STATUS_LABELS[status]}
                </option>
              ))}
            </select>
          </label>

          <label className="space-y-1.5 text-sm text-muted">
            <span>Sous-domaine</span>
            <select
              name="subdomain"
              defaultValue={selectedSubdomain}
              className="w-full rounded-xl border border-border bg-paper px-4 py-2.5 text-sm text-ink outline-none focus:border-accent"
            >
              <option value="">Tous</option>
              {config.subdomains.map((subdomain) => (
                <option key={subdomain} value={subdomain}>
                  {SUBDOMAIN_LABELS[subdomain]}
                </option>
              ))}
            </select>
          </label>

          <label className="space-y-1.5 text-sm text-muted">
            <span>Niveau</span>
            <select
              name="level"
              defaultValue={selectedLevel}
              className="w-full rounded-xl border border-border bg-paper px-4 py-2.5 text-sm text-ink outline-none focus:border-accent"
            >
              <option value="">Tous</option>
              {LEVEL_OPTIONS.map((option) => (
                <option key={option.value} value={option.value}>
                  {option.label}
                </option>
              ))}
            </select>
          </label>

          <label className="space-y-1.5 text-sm text-muted xl:col-span-2">
            <span>Recherche</span>
            <div className="flex gap-2">
              <input
                type="search"
                name="q"
                defaultValue={query}
                placeholder="Titre, notion, résumé..."
                className="w-full rounded-xl border border-border bg-paper px-4 py-2.5 text-sm text-ink outline-none placeholder:text-muted focus:border-accent"
              />
              <button
                type="submit"
                className="shrink-0 rounded-full bg-accent px-5 py-2.5 text-sm font-semibold text-paper transition hover:bg-accentDark active:scale-[0.97]"
              >
                Filtrer
              </button>
            </div>
          </label>
        </form>

        {hasActiveFilters && (
          <div className="mt-3 flex flex-wrap gap-2">
            {selectedStatus ? (
              <ButtonLink
                href={buildHref(pathname, {
                  level: selectedLevel,
                  subdomain: selectedSubdomain,
                  q: query || undefined,
                })}
                variant="secondary"
                className="px-3 py-1.5 text-xs"
              >
                &times; {LEARNING_STATUS_LABELS[selectedStatus]}
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
                className="px-3 py-1.5 text-xs"
              >
                &times;{" "}
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
                className="px-3 py-1.5 text-xs"
              >
                &times; {selectedLevel}
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
                className="px-3 py-1.5 text-xs"
              >
                &times; &laquo; {query} &raquo;
              </ButtonLink>
            ) : null}
          </div>
        )}
      </Panel>

      {/* ── Séries grouped by status ── */}
      {groupedSessions.length === 0 ? (
        <Panel>
          <h2 className="font-serif text-2xl font-semibold text-ink">Aucun résultat</h2>
          <p className="mt-3 text-sm leading-7 text-muted">
            Aucun ensemble de séries ne correspond aux filtres actuels.
          </p>
        </Panel>
      ) : (
        <section className="space-y-3">
          <div className="flex items-end justify-between gap-4">
            <h2 className="font-serif text-2xl font-semibold text-ink">Séries</h2>
            <p className="text-sm text-muted">{filteredSessions.length} série(s)</p>
          </div>

          <div className="space-y-3">
            {groupedSessions.map((group, index) => (
              <details
                key={group.status}
                open={index < 2}
                className="rounded-2xl border border-border bg-card p-5 shadow-subtle"
              >
                <summary className="cursor-pointer list-none">
                  <div className="flex items-center justify-between gap-3">
                    <div className="flex items-center gap-3">
                      <LearningStatusPill status={group.status} />
                      <span className="text-sm font-medium text-ink">
                        {group.items.length} série{group.items.length > 1 ? "s" : ""}
                      </span>
                    </div>
                    <span className="text-xs text-muted">Afficher / réduire</span>
                  </div>
                </summary>
                <p className="mt-2 text-xs leading-relaxed text-muted">
                  {STATUS_DESCRIPTIONS[group.status]}
                </p>
                <div className="mt-4 space-y-2">
                  {group.items.map((session) => (
                    <SessionProgressCard key={session.id} session={session} compact />
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
