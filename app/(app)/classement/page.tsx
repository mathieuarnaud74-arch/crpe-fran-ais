import type { Metadata } from "next";

import { requireUser } from "@/features/auth/server/guards";
import { getWeeklyLeaderboard } from "@/features/leaderboard/server/queries";
import { LeaderboardTable } from "@/features/leaderboard/components/leaderboard-table";
import { getUserGamification } from "@/features/gamification/server/queries";
import { XP_LEVEL_LABELS, getXpForNextLevel } from "@/lib/xp";

export const metadata: Metadata = {
  title: "Classement",
  description: "Classement hebdomadaire des candidats par XP.",
};

function WeekRange() {
  const now = new Date();
  // Get Monday of current week (ISO week starts Monday)
  const day = now.getDay();
  const diffToMonday = day === 0 ? -6 : 1 - day;
  const monday = new Date(now);
  monday.setDate(now.getDate() + diffToMonday);

  const sunday = new Date(monday);
  sunday.setDate(monday.getDate() + 6);

  const fmt = (d: Date) =>
    d.toLocaleDateString("fr-FR", { day: "numeric", month: "short" });

  return (
    <span className="text-sm text-muted">
      Semaine du {fmt(monday)} au {fmt(sunday)}
    </span>
  );
}

export default async function ClassementPage() {
  const user = await requireUser();
  const [entries, gamification] = await Promise.all([
    getWeeklyLeaderboard(user.id, 50),
    getUserGamification(user.id),
  ]);

  const currentUserEntry = entries.find((e) => e.is_current_user);
  const levelLabel = XP_LEVEL_LABELS[gamification.level] ?? `Niveau ${gamification.level}`;
  const xpInfo = getXpForNextLevel(gamification.xp);

  return (
    <div className="mx-auto max-w-3xl px-4 py-8 sm:px-6">
      {/* Header */}
      <div className="mb-8 text-center">
        <h1 className="font-serif text-3xl font-bold text-ink sm:text-4xl">
          Classement hebdomadaire
        </h1>
        <div className="mt-2">
          <WeekRange />
        </div>
        <p className="mt-2 text-sm text-muted">
          Gagnez de l&apos;XP en répondant aux exercices pour grimper dans le classement !
        </p>
      </div>

      {/* Current user summary card */}
      <div className="mb-8 rounded-card border border-border bg-card p-5 shadow-subtle">
        <div className="flex flex-wrap items-center justify-between gap-4">
          <div className="flex items-center gap-3">
            <div className="flex h-10 w-10 items-center justify-center rounded-full bg-gradient-to-br from-accent to-accentDark font-serif text-sm font-bold text-white">
              {gamification.level}
            </div>
            <div>
              <p className="text-sm font-semibold text-ink">{levelLabel}</p>
              <p className="text-xs text-muted">
                {gamification.xp.toLocaleString("fr-FR")} XP total
              </p>
            </div>
          </div>

          <div className="flex items-center gap-4">
            {currentUserEntry ? (
              <>
                <div className="text-center">
                  <p className="text-2xl font-bold font-serif text-accent">
                    {currentUserEntry.rank}<sup className="text-xs">e</sup>
                  </p>
                  <p className="text-[10px] uppercase tracking-widest text-muted">Position</p>
                </div>
                <div className="h-8 w-px bg-border" />
                <div className="text-center">
                  <p className="text-2xl font-bold font-serif text-accentSecondary">
                    {currentUserEntry.weekly_xp.toLocaleString("fr-FR")}
                  </p>
                  <p className="text-[10px] uppercase tracking-widest text-muted">XP cette semaine</p>
                </div>
              </>
            ) : (
              <div className="text-center">
                <p className="text-sm text-muted">
                  Pas encore classé cette semaine
                </p>
              </div>
            )}
          </div>
        </div>
      </div>

      {/* Leaderboard */}
      <LeaderboardTable entries={entries} />
    </div>
  );
}
