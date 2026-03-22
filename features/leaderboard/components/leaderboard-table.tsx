"use client";

import { motion } from "framer-motion";

import { XP_LEVEL_LABELS } from "@/lib/xp";
import { cn } from "@/lib/utils";
import type { LeaderboardEntry } from "@/features/leaderboard/server/queries";

function RankBadge({ rank }: { rank: number }) {
  if (rank === 1) {
    return (
      <span className="flex h-8 w-8 items-center justify-center rounded-full bg-gradient-to-br from-yellow-400 to-amber-500 text-sm font-bold text-white shadow-subtle">
        1
      </span>
    );
  }
  if (rank === 2) {
    return (
      <span className="flex h-8 w-8 items-center justify-center rounded-full bg-gradient-to-br from-gray-300 to-gray-400 text-sm font-bold text-white shadow-subtle">
        2
      </span>
    );
  }
  if (rank === 3) {
    return (
      <span className="flex h-8 w-8 items-center justify-center rounded-full bg-gradient-to-br from-orange-300 to-orange-500 text-sm font-bold text-white shadow-subtle">
        3
      </span>
    );
  }
  return (
    <span className="flex h-8 w-8 items-center justify-center rounded-full border border-border bg-paper text-xs font-semibold text-muted">
      {rank}
    </span>
  );
}

function PodiumCard({ entry, position }: { entry: LeaderboardEntry; position: 1 | 2 | 3 }) {
  const heights = { 1: "h-32", 2: "h-24", 3: "h-20" } as const;
  const medals = { 1: "🥇", 2: "🥈", 3: "🥉" } as const;
  const label = XP_LEVEL_LABELS[entry.level] ?? `Niv. ${entry.level}`;

  return (
    <motion.div
      initial={{ opacity: 0, y: 20 }}
      animate={{ opacity: 1, y: 0 }}
      transition={{ duration: 0.4, delay: position === 1 ? 0 : position * 0.1 }}
      className={cn(
        "flex flex-col items-center",
        position === 1 && "order-2",
        position === 2 && "order-1",
        position === 3 && "order-3",
      )}
    >
      {/* Avatar / Level circle */}
      <div className={cn(
        "flex items-center justify-center rounded-full bg-gradient-to-br from-accent to-accentDark font-serif font-bold text-white",
        position === 1 ? "h-14 w-14 text-lg" : "h-11 w-11 text-sm",
      )}>
        {entry.level}
      </div>

      {/* Name */}
      <p className={cn(
        "mt-2 max-w-[100px] truncate text-center font-semibold",
        position === 1 ? "text-sm text-ink" : "text-xs text-ink",
        entry.is_current_user && "text-accent",
      )}>
        {entry.display_name}
      </p>

      {/* Medal + XP */}
      <span className="text-lg">{medals[position]}</span>
      <span className="text-xs font-bold tabular-nums text-accentSecondary">
        {entry.weekly_xp.toLocaleString("fr-FR")} XP
      </span>

      {/* Podium bar */}
      <div className={cn(
        "mt-2 w-20 rounded-t-xl bg-gradient-to-t sm:w-24",
        position === 1 && "from-accent/20 to-accent/5",
        position === 2 && "from-gray-200 to-gray-100",
        position === 3 && "from-orange-100 to-orange-50",
        heights[position],
      )} />
    </motion.div>
  );
}

export function LeaderboardTable({ entries }: { entries: LeaderboardEntry[] }) {
  const podium = entries.filter((e) => e.rank <= 3);
  const rest = entries.filter((e) => e.rank > 3);
  const currentUser = entries.find((e) => e.is_current_user);
  const currentUserInRest = currentUser && currentUser.rank > 3;

  return (
    <div className="space-y-8">
      {/* Podium — top 3 */}
      {podium.length > 0 && (
        <div className="flex items-end justify-center gap-3 sm:gap-6">
          {podium.map((entry) => (
            <PodiumCard
              key={entry.user_id}
              entry={entry}
              position={entry.rank as 1 | 2 | 3}
            />
          ))}
        </div>
      )}

      {/* Table — ranks 4+ */}
      {rest.length > 0 && (
        <div className="rounded-card border border-border bg-card shadow-subtle overflow-hidden">
          <div className="hidden grid-cols-[3rem_1fr_5rem_5rem_5rem] items-center gap-2 border-b border-border bg-paper px-4 py-2.5 text-[10px] font-semibold uppercase tracking-[0.16em] text-muted sm:grid">
            <span>#</span>
            <span>Candidat</span>
            <span className="text-right">XP sem.</span>
            <span className="text-right">Niveau</span>
            <span className="text-right">XP total</span>
          </div>

          <div className="divide-y divide-border/60">
            {rest.map((entry, i) => {
              const label = XP_LEVEL_LABELS[entry.level] ?? `Niv. ${entry.level}`;
              return (
                <motion.div
                  key={entry.user_id}
                  initial={{ opacity: 0, x: -10 }}
                  animate={{ opacity: 1, x: 0 }}
                  transition={{ duration: 0.25, delay: i * 0.03 }}
                  className={cn(
                    "grid grid-cols-[2.5rem_1fr_auto] items-center gap-2 px-4 py-3 sm:grid-cols-[3rem_1fr_5rem_5rem_5rem]",
                    entry.is_current_user && "bg-accent/5 ring-1 ring-inset ring-accent/20",
                  )}
                >
                  <RankBadge rank={entry.rank} />

                  <div className="min-w-0">
                    <p className={cn(
                      "truncate text-sm font-medium",
                      entry.is_current_user ? "text-accent font-semibold" : "text-ink",
                    )}>
                      {entry.display_name}
                      {entry.is_current_user && (
                        <span className="ml-1.5 text-[10px] font-semibold uppercase text-accent/70">vous</span>
                      )}
                    </p>
                    <p className="text-[11px] text-muted sm:hidden">
                      Niv. {entry.level} · {entry.weekly_xp.toLocaleString("fr-FR")} XP
                    </p>
                  </div>

                  {/* Mobile: just weekly XP */}
                  <span className="text-right text-sm font-bold tabular-nums text-accentSecondary sm:hidden">
                    {entry.weekly_xp.toLocaleString("fr-FR")}
                  </span>

                  {/* Desktop columns */}
                  <span className="hidden text-right text-sm font-bold tabular-nums text-accentSecondary sm:block">
                    {entry.weekly_xp.toLocaleString("fr-FR")}
                  </span>
                  <span className="hidden text-right text-xs text-muted sm:block">
                    {label}
                  </span>
                  <span className="hidden text-right text-xs tabular-nums text-muted sm:block">
                    {entry.total_xp.toLocaleString("fr-FR")}
                  </span>
                </motion.div>
              );
            })}
          </div>
        </div>
      )}

      {/* Current user position callout if they're ranked but outside top 50 view */}
      {currentUserInRest && currentUser.rank > 20 && (
        <div className="rounded-card border border-accent/20 bg-accent/5 px-5 py-4 text-center">
          <p className="text-sm text-ink">
            Votre position : <span className="font-bold text-accent">{currentUser.rank}e</span> avec{" "}
            <span className="font-bold text-accentSecondary">{currentUser.weekly_xp.toLocaleString("fr-FR")} XP</span> cette semaine
          </p>
        </div>
      )}

      {/* Empty state */}
      {entries.length === 0 && (
        <div className="rounded-card border border-border bg-card px-6 py-12 text-center shadow-subtle">
          <p className="text-3xl">🏆</p>
          <p className="mt-3 font-serif text-lg font-semibold text-ink">
            Pas encore de classement cette semaine
          </p>
          <p className="mt-1 text-sm text-muted">
            Répondez à des exercices pour apparaître dans le classement hebdomadaire !
          </p>
        </div>
      )}
    </div>
  );
}
