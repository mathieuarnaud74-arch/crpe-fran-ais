import type { Metadata } from "next";
import { ChevronDown, Lock, PlayCircle } from "lucide-react";
import Link from "next/link";

export const metadata: Metadata = {
  title: "Exercices",
  description: "Banque d'exercices corrigés pour le CRPE Français.",
};

import { EmptyState } from "@/components/empty-state";
import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Panel } from "@/components/ui/panel";
import { Separator } from "@/components/ui/separator";
import { requireUser } from "@/features/auth/server/guards";
import { isPremiumUser } from "@/features/billing/server/queries";
import { getExercises } from "@/features/exercises/server/queries";
import {
  EXERCISE_TYPE_OPTIONS,
  LEVEL_OPTIONS,
  SUBDOMAIN_LABELS,
  SUBDOMAIN_OPTIONS,
  formatLevelLabel,
} from "@/lib/constants";
import { ExerciseSubdomain, ExerciseType, RevisionSession } from "@/types/domain";

type SearchParams = Promise<{
  subdomain?: string;
  type?: string;
  level?: string;
}>;

function SelectField({
  label,
  name,
  defaultValue,
  children,
}: {
  label: string;
  name: string;
  defaultValue: string;
  children: React.ReactNode;
}) {
  return (
    <div className="space-y-2">
      <label htmlFor={`filter-${name}`} className="text-sm font-medium text-ink">{label}</label>
      <div className="relative">
        <select
          id={`filter-${name}`}
          name={name}
          defaultValue={defaultValue}
          className="h-11 w-full appearance-none rounded-xl border border-border bg-card px-4 pr-9 text-sm text-ink shadow-subtle outline-none transition-colors focus:border-accent focus:ring-2 focus:ring-accent/15"
        >
          {children}
        </select>
        <ChevronDown className="pointer-events-none absolute right-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted" />
      </div>
    </div>
  );
}

function MetaCell({ label, value }: { label: string; value: string }) {
  return (
    <div className="rounded-xl border border-border bg-paper px-4 py-3">
      <p className="text-xs font-medium tracking-[0.10em] text-muted">{label}</p>
      <p className="mt-1.5 text-sm font-medium text-ink">{value}</p>
    </div>
  );
}

function SessionCard({ session, premium }: { session: RevisionSession; premium: boolean }) {
  const locked = session.access_tier === "premium" && !premium;

  return (
    <Card>
      <CardHeader>
        <div className="flex flex-wrap items-center gap-2">
          <Badge tone={session.access_tier === "premium" ? "accent" : "neutral"}>
            {session.access_tier === "premium" ? "Premium" : "Gratuit"}
          </Badge>
          <Badge>{formatLevelLabel(session.level)}</Badge>
          <Badge>{session.questionCount} questions</Badge>
        </div>
        <p className="text-xs font-medium tracking-[0.10em] text-muted">
          Étape {session.recommendedOrder} · {SUBDOMAIN_LABELS[session.subdomain]}
        </p>
        <CardTitle>{session.title}</CardTitle>
        <CardDescription>{session.summary}</CardDescription>
      </CardHeader>

      <CardContent>
        <div className="grid gap-2 sm:gap-3 sm:grid-cols-2 md:grid-cols-3">
          <MetaCell label="Notion" value={session.topicLabel} />
          <MetaCell label="Objectif" value={session.objective} />
          <MetaCell label="Formats" value={session.exerciseTypeLabel} />
        </div>
      </CardContent>

      <Separator className="mx-6 w-auto" />

      <CardFooter className="justify-between">
        {locked ? (
          <>
            <div className="flex items-center gap-2 text-sm text-muted">
              <Lock className="h-4 w-4" />
              <span>Disponible avec l&apos;offre premium.</span>
            </div>
            <ButtonLink href="/abonnement" variant="secondary" size="sm">
              Voir l&apos;offre
            </ButtonLink>
          </>
        ) : (
          <ButtonLink href={`/exercices/${session.id}`}>
            <PlayCircle className="h-4 w-4" />
            Commencer
          </ButtonLink>
        )}
      </CardFooter>
    </Card>
  );
}

function SessionSection({
  title,
  description,
  sessions,
  premium,
}: {
  title: string;
  description: string;
  sessions: RevisionSession[];
  premium: boolean;
}) {
  if (sessions.length === 0) {
    return null;
  }

  return (
    <section className="space-y-4">
      <div>
        <h2 className="font-serif text-3xl font-semibold text-ink">{title}</h2>
        <p className="mt-2 max-w-3xl text-sm leading-7 text-muted">{description}</p>
      </div>
      <div className="grid gap-5">
        {sessions.map((session) => (
          <SessionCard key={session.id} session={session} premium={premium} />
        ))}
      </div>
    </section>
  );
}

export default async function ExercisesPage({
  searchParams,
}: {
  searchParams: SearchParams;
}) {
  const user = await requireUser();
  const premium = await isPremiumUser(user.id);
  const { subdomain, type, level } = await searchParams;
  const sessions = (
    await getExercises({
      subdomain: subdomain as ExerciseSubdomain | undefined,
      type: type as ExerciseType | undefined,
      level,
    })
  ).sort((left, right) => left.recommendedOrder - right.recommendedOrder);

  const freeSessions = sessions.filter((session) => session.access_tier === "free");
  const premiumSessions = sessions.filter((session) => session.access_tier === "premium");

  const noFiltersActive = !subdomain && !type && !level;
  const nextSeries = noFiltersActive ? freeSessions.slice(0, 3) : [];

  return (
    <div className="space-y-6">
      <div className="flex flex-col gap-4 md:flex-row md:items-end md:justify-between">
        <div>
          <Badge tone={premium ? "accent" : "neutral"}>
            {premium ? "Catalogue complet" : "Parcours gratuit + approfondissements premium"}
          </Badge>
          <h1 className="mt-3 font-serif text-3xl font-semibold text-ink sm:text-4xl">Séries de révision</h1>
          <p className="mt-3 max-w-3xl text-sm leading-7 text-muted">
            Le catalogue suit une progression éditoriale simple : fondations gratuites d&apos;abord,
            approfondissements premium ensuite. Chaque série correspond à une vraie séance de
            révision centrée sur une notion.
          </p>
        </div>
        {!premium ? <ButtonLink href="/abonnement">Passer en premium</ButtonLink> : null}
      </div>

      {nextSeries.length > 0 && (
        <Panel className="border-accentSecondary/25 bg-gradient-panel-light">
          <div className="flex flex-col gap-5 sm:flex-row sm:items-start sm:justify-between">
            <div>
              <p className="text-xs font-semibold uppercase tracking-[0.16em] text-accentSecondary">
                Commencer ici
              </p>
              <h2 className="mt-2 font-serif text-2xl font-semibold text-ink">
                Prochaines séries recommandées
              </h2>
              <p className="mt-2 text-sm leading-7 text-muted">
                Si vous n&apos;avez pas encore fait le diagnostic, commencez par l&apos;une de ces
                séries fondamentales.
              </p>
            </div>
            <ButtonLink href="/diagnostic" variant="secondary" className="shrink-0">
              Faire le diagnostic d&apos;abord
            </ButtonLink>
          </div>
          <div className="mt-5 grid gap-3 sm:grid-cols-3">
            {nextSeries.map((session) => (
              <Link
                key={session.id}
                href={`/exercices/${session.id}`}
                className="flex flex-col gap-1 rounded-[1.25rem] border border-border bg-paper px-4 py-4 transition-colors hover:border-accent"
              >
                <span className="text-xs font-medium text-muted">
                  {SUBDOMAIN_LABELS[session.subdomain]}
                </span>
                <span className="text-sm font-semibold text-ink">{session.title}</span>
                <span className="text-xs text-muted">{session.questionCount} questions</span>
              </Link>
            ))}
          </div>
        </Panel>
      )}

      <Panel>
        <form aria-label="Filtres des séries de révision" className="grid gap-3 sm:gap-4 sm:grid-cols-2 md:grid-cols-4">
          <SelectField label="Sous-domaine" name="subdomain" defaultValue={subdomain ?? ""}>
            <option value="">Tous</option>
            {SUBDOMAIN_OPTIONS.map((option) => (
              <option key={option.value} value={option.value}>
                {option.label}
              </option>
            ))}
          </SelectField>
          <SelectField label="Type dominant" name="type" defaultValue={type ?? ""}>
            <option value="">Tous</option>
            {EXERCISE_TYPE_OPTIONS.map((option) => (
              <option key={option.value} value={option.value}>
                {option.label}
              </option>
            ))}
          </SelectField>
          <SelectField label="Niveau" name="level" defaultValue={level ?? ""}>
            <option value="">Tous</option>
            {LEVEL_OPTIONS.map((option) => (
              <option key={option.value} value={option.value}>
                {option.label}
              </option>
            ))}
          </SelectField>
          <div className="flex items-end gap-2">
            <button
              type="submit"
              className="flex h-11 flex-1 items-center justify-center rounded-full bg-accent px-5 text-sm font-semibold text-paper transition hover:bg-accentDark active:scale-[0.97]"
            >
              Filtrer
            </button>
            <ButtonLink href="/exercices" variant="ghost" size="sm" className="shrink-0">
              Réinitialiser
            </ButtonLink>
          </div>
        </form>
      </Panel>

      {sessions.length === 0 ? (
        <EmptyState
          title="Aucune série disponible"
          description="Ajustez les filtres pour afficher un autre bloc de révision."
          action={
            <ButtonLink href="/exercices" variant="secondary">
              Réinitialiser les filtres
            </ButtonLink>
          }
        />
      ) : (
        <div className="space-y-8">
          <SessionSection
            title="Fondations gratuites"
            description="Ces séries posent les automatismes prioritaires du CRPE : accords, fonctions de base, temps usuels, lexique courant et distinction nature / fonction."
            sessions={freeSessions}
            premium={premium}
          />
          <SessionSection
            title="Approfondissements premium"
            description="Ces séries prolongent le travail avec des notions plus fines, plus analytiques et plus discriminantes pour la préparation au concours."
            sessions={premiumSessions}
            premium={premium}
          />
        </div>
      )}
    </div>
  );
}
