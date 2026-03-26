"use client";

import { useState } from "react";
import Link from "next/link";

import { Badge } from "@/components/ui/badge";
import { cn, formatDate } from "@/lib/utils";
import { MASTERY_THRESHOLD } from "@/lib/dashboard";
import type {
  DashboardSubdomainProgress,
  DashboardFrequentMistake,
  DashboardSessionProgress,
} from "@/types/domain";

// ── Tab definition ───────────────────────────────────────────

type TabKey = "priorities" | "fragile" | "errors" | "mastered";

const TAB_CONFIG: Array<{ key: TabKey; label: string }> = [
  { key: "priorities", label: "Priorités" },
  { key: "fragile", label: "Fragilités" },
  { key: "errors", label: "Erreurs" },
  { key: "mastered", label: "Acquis" },
];

// ── Sub-components ───────────────────────────────────────────

function TopicFocusList({
  items,
  emptyText,
  ficheSuggestions,
}: {
  items: DashboardSubdomainProgress[];
  emptyText: string;
  ficheSuggestions?: Map<string, { slug: string; title: string }>;
}) {
  if (items.length === 0) {
    return <p className="text-sm text-muted">{emptyText}</p>;
  }
  return (
    <div className="space-y-3">
      {items.map((item) => {
        const suggestion = ficheSuggestions?.get(item.domain);
        return (
          <article
            key={item.key}
            className="rounded-[1.25rem] border border-border/60 bg-paper px-5 py-4"
          >
            <div className="flex flex-wrap items-center gap-2">
              <span aria-hidden className="h-2 w-2 rounded-sm bg-[#476257]" />
              <Badge tone="accentSecondary">{item.domainLabel}</Badge>
              {item.correctRate !== null ? (
                <Badge tone="warning">{item.correctRate} %</Badge>
              ) : null}
            </div>
            <h3 className="mt-2.5 text-base font-semibold text-ink">{item.label}</h3>
            {item.reviewReason ? (
              <p className="mt-1.5 text-sm leading-6 text-muted">{item.reviewReason}</p>
            ) : null}
            <p className="mt-1.5 text-xs text-muted/70">
              {item.attempts} tentative(s) enregistrée(s)
            </p>
            {suggestion && (
              <Link
                href={`/fiches/${suggestion.slug}`}
                className="mt-2 inline-flex items-center gap-1.5 text-xs font-semibold text-accent hover:underline"
              >
                <span aria-hidden>&#x1F4D6;</span> Fiche recommandée : {suggestion.title}
              </Link>
            )}
          </article>
        );
      })}
    </div>
  );
}

function MistakesList({ mistakes }: { mistakes: DashboardFrequentMistake[] }) {
  if (mistakes.length === 0) {
    return <p className="text-sm text-muted">Aucune erreur fréquente identifiée.</p>;
  }
  return (
    <div className="grid gap-3 xl:grid-cols-2">
      {mistakes.map((mistake) => (
        <article key={mistake.key} className="rounded-xl border border-border/60 bg-paper px-5 py-3">
          <div className="flex flex-wrap items-center gap-2">
            <span aria-hidden className="h-2 w-2 rounded-sm bg-[#6B8F80]" />
            <Badge tone="warning">{mistake.occurrences} erreur(s)</Badge>
            <Badge tone="accentSecondary">{mistake.domainLabel}</Badge>
          </div>
          <h3 className="mt-2 text-sm font-semibold text-ink">{mistake.title}</h3>
          <p className="mt-1 text-xs leading-5 text-muted">{mistake.exampleInstruction}</p>
          <p className="mt-1 text-xs text-muted/70">
            {mistake.subdomainLabel} &middot; {formatDate(mistake.lastAnsweredAt)}
          </p>
        </article>
      ))}
    </div>
  );
}

function MasteredList({
  sessions,
  totalMastered,
}: {
  sessions: DashboardSessionProgress[];
  totalMastered: number;
}) {
  if (totalMastered === 0) {
    return (
      <div className="flex items-center gap-3 rounded-xl border border-accent/15 bg-accent/5 px-4 py-3">
        <span className="text-lg" aria-hidden>&#x1F3AF;</span>
        <p className="text-sm text-muted">
          Visez {MASTERY_THRESHOLD}% de bonnes réponses sur une série pour débloquer vos premiers acquis.
        </p>
      </div>
    );
  }
  return (
    <div className="space-y-2">
      {sessions.slice(0, 6).map((session) => (
        <div
          key={session.id}
          className="flex items-center gap-3 rounded-xl border border-accent/15 bg-[linear-gradient(135deg,rgba(71,98,87,0.06),rgba(253,249,243,1))] px-4 py-2.5"
        >
          <div className="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-accent/10">
            <svg className="h-3.5 w-3.5 text-accent" fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2.5} aria-hidden>
              <path strokeLinecap="round" strokeLinejoin="round" d="M5 13l4 4L19 7" />
            </svg>
          </div>
          <div className="min-w-0 flex-1">
            <p className="text-[0.6rem] uppercase tracking-[0.14em] text-accent font-semibold">{session.subdomainLabel}</p>
            <p className="truncate text-sm font-semibold text-ink">{session.title}</p>
          </div>
          {session.correctRate !== null ? (
            <p className="shrink-0 font-serif text-xl font-bold text-accent">
              {session.correctRate}<span className="text-xs font-normal text-muted"> %</span>
            </p>
          ) : null}
        </div>
      ))}
      {totalMastered > 6 && (
        <p className="text-xs text-muted">
          +{totalMastered - 6} autre(s) série(s) maîtrisée(s) —{" "}
          <Link href="/progression" className="font-semibold text-accent hover:underline">
            voir tout
          </Link>
        </p>
      )}
    </div>
  );
}

// ── Main component ───────────────────────────────────────────

type InsightsTabsProps = {
  priorityItems: DashboardSubdomainProgress[];
  fragileItems: DashboardSubdomainProgress[];
  frequentMistakes: DashboardFrequentMistake[];
  masteredSessions: DashboardSessionProgress[];
  totalMastered: number;
  ficheSuggestions: Array<{ domain: string; slug: string; title: string }>;
};

export function InsightsTabs({
  priorityItems,
  fragileItems,
  frequentMistakes,
  masteredSessions,
  totalMastered,
  ficheSuggestions,
}: InsightsTabsProps) {
  const [activeTab, setActiveTab] = useState<TabKey>("priorities");

  const ficheMap = new Map(ficheSuggestions.map((f) => [f.domain, f]));

  const tabCounts: Record<TabKey, number> = {
    priorities: priorityItems.length,
    fragile: fragileItems.length,
    errors: frequentMistakes.length,
    mastered: totalMastered,
  };

  return (
    <div>
      {/* Tab bar */}
      <div className="flex gap-1 overflow-x-auto rounded-xl border border-border bg-secondary/50 p-1 scrollbar-none">
        {TAB_CONFIG.map(({ key, label }) => (
          <button
            key={key}
            type="button"
            onClick={() => setActiveTab(key)}
            className={cn(
              "flex shrink-0 items-center gap-1.5 rounded-lg px-3 py-2 text-xs font-semibold transition-colors",
              activeTab === key
                ? "bg-card text-ink shadow-subtle"
                : "text-muted hover:text-ink",
            )}
          >
            {label}
            {tabCounts[key] > 0 && (
              <span className={cn(
                "inline-flex h-5 min-w-5 items-center justify-center rounded-md px-1 text-[0.6rem] font-bold tabular-nums",
                activeTab === key ? "bg-accent/10 text-accent" : "bg-border/50 text-muted",
              )}>
                {tabCounts[key]}
              </span>
            )}
          </button>
        ))}
      </div>

      {/* Tab content */}
      <div className="mt-4">
        {activeTab === "priorities" && (
          <TopicFocusList
            items={priorityItems}
            emptyText="Aucune priorité forte détectée."
            ficheSuggestions={ficheMap}
          />
        )}
        {activeTab === "fragile" && (
          <TopicFocusList
            items={fragileItems}
            emptyText="Aucune fragilité notable."
            ficheSuggestions={ficheMap}
          />
        )}
        {activeTab === "errors" && <MistakesList mistakes={frequentMistakes} />}
        {activeTab === "mastered" && (
          <MasteredList sessions={masteredSessions} totalMastered={totalMastered} />
        )}
      </div>
    </div>
  );
}
