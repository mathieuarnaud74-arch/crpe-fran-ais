import type { Metadata } from "next";

import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";
import { requireUser } from "@/features/auth/server/guards";

export const metadata: Metadata = {
  title: "Mon profil",
  description: "Paramètres de votre compte.",
};
import { getUserSubscription, isPremiumUser } from "@/features/billing/server/queries";
import { getDashboardData } from "@/features/dashboard/server/queries";
import { DisplayNameForm } from "@/features/leaderboard/components/display-name-form";
import { getUserDisplayName } from "@/features/leaderboard/server/queries";
import { formatDate } from "@/lib/utils";

export default async function ProfilePage() {
  const user = await requireUser();
  const premium = await isPremiumUser(user.id);
  const [subscription, dashboard, displayName] = await Promise.all([
    getUserSubscription(user.id),
    getDashboardData(user.id, premium),
    getUserDisplayName(user.id),
  ]);

  return (
    <div className="space-y-8">
      <Panel className="border-border bg-card">
        <div className="flex flex-col gap-5 xl:flex-row xl:items-end xl:justify-between">
          <div className="space-y-3">
            <Badge tone={premium ? "accent" : "neutral"}>
              {premium ? "Compte premium" : "Compte gratuit"}
            </Badge>
            <div>
              <h1 className="font-serif text-3xl font-semibold text-ink sm:text-4xl">Profil</h1>
              <p className="mt-3 max-w-3xl text-sm leading-7 text-muted">
                Espace compte simplifié : identité, abonnement et aperçu rapide de votre usage.
              </p>
            </div>
          </div>
          <ButtonLink href="/abonnement">Gérer l’abonnement</ButtonLink>
        </div>
      </Panel>

      <div className="grid gap-6 xl:grid-cols-[1.1fr,0.9fr]">
        <Panel>
          <h2 className="font-serif text-2xl font-semibold text-ink">Compte</h2>
          <div className="mt-5 space-y-3 text-sm text-muted">
            <p>
              Adresse e-mail : <span className="font-semibold text-ink">{user.email ?? "Non renseignée"}</span>
            </p>
            <p>
              Dernière connexion :{" "}
              <span className="font-semibold text-ink">
                {user.last_sign_in_at ? formatDate(user.last_sign_in_at) : "Non disponible"}
              </span>
            </p>
          </div>
          <DisplayNameForm currentName={displayName} />
        </Panel>

        <Panel>
          <h2 className="font-serif text-2xl font-semibold text-ink">Abonnement</h2>
          <div className="mt-5 space-y-3 text-sm text-muted">
            <p>
              Statut : <span className="font-semibold text-ink">{subscription?.status ?? "inactive"}</span>
            </p>
            <p>
              Fin de période :{" "}
              <span className="font-semibold text-ink">
                {subscription?.current_period_end
                  ? formatDate(subscription.current_period_end)
                  : "Non disponible"}
              </span>
            </p>
            <p>
              Résiliation en fin de période :{" "}
              <span className="font-semibold text-ink">
                {subscription?.cancel_at_period_end ? "Oui" : "Non"}
              </span>
            </p>
          </div>
        </Panel>
      </div>

      <div className="grid gap-4 sm:grid-cols-2 2xl:grid-cols-4">
        <Panel>
          <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">Séries</p>
          <p className="mt-3 font-serif text-4xl text-ink">{dashboard.totalSeries}</p>
        </Panel>
        <Panel>
          <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">Terminées</p>
          <p className="mt-3 font-serif text-4xl text-ink">{dashboard.completedSeries}</p>
        </Panel>
        <Panel>
          <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">Réussite</p>
          <p className="mt-3 font-serif text-4xl text-ink">
            {dashboard.overallCorrectRate === null ? "—" : `${dashboard.overallCorrectRate} %`}
          </p>
        </Panel>
        <Panel>
          <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">
            Accès du jour
          </p>
          <p className="mt-3 font-serif text-4xl text-ink">{premium ? "Illimité" : dashboard.remainingToday}</p>
        </Panel>
      </div>
    </div>
  );
}
