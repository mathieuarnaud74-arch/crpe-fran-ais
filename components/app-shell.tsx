import Image from "next/image";
import Link from "next/link";
import { ReactNode } from "react";

import { AppNavigation } from "@/components/app-navigation";
import { MobileNav } from "@/components/mobile-nav";
import { LogoutButton } from "@/features/auth/components/logout-button";

type AppShellProps = {
  children: ReactNode;
  userEmail: string;
  dailyStreak?: number;
};

export function AppShell({ children, userEmail, dailyStreak }: AppShellProps) {
  return (
    <div className="min-h-screen bg-paper">
      <header className="border-b border-ink/20 bg-[linear-gradient(135deg,#2C2420,#394E45)]">
        <div className="mx-auto flex max-w-[1440px] flex-col gap-3 px-4 py-3 sm:px-6 sm:py-4 md:flex-row md:items-center md:justify-between">
          <Link href="/tableau-de-bord" className="flex min-w-0 items-center">
            <Image
              src="/logo.png"
              alt="CRPE Français — Banque d'exercices"
              width={1024}
              height={305}
              sizes="180px"
              className="h-12 w-auto rounded-lg object-contain brightness-0 invert sm:h-14"
              priority
            />
          </Link>

          <div className="flex items-center gap-2 md:gap-4">
            <MobileNav />
            {dailyStreak !== undefined && (
              <div className="flex items-center gap-1.5 rounded-full border border-paper/20 bg-paper/10 px-3 py-1.5">
                <span className="text-sm">{dailyStreak > 0 ? "\u{1F525}" : "\u{1F4A4}"}</span>
                <span className="text-xs font-bold tabular-nums text-paper">
                  {dailyStreak}j
                </span>
              </div>
            )}
            <Link
              href="/"
              className="hidden rounded-full border border-paper/20 bg-paper/10 px-4 py-2 text-sm font-medium text-paper transition hover:bg-paper/20 sm:inline-flex"
            >
              Accueil
            </Link>
            <div className="hidden rounded-full border border-paper/20 bg-paper/10 px-4 py-2 text-xs font-semibold tracking-[0.10em] text-paper/70 lg:inline-flex">
              Espace de révision
            </div>
            <p className="hidden md:block max-w-[280px] truncate text-sm text-paper/60">{userEmail}</p>
            <div className="hidden sm:block">
              <LogoutButton />
            </div>
          </div>
        </div>
      </header>

      <div className="mx-auto grid max-w-[1440px] gap-5 px-4 py-5 sm:gap-6 sm:px-6 sm:py-6 md:gap-8 md:py-8 xl:grid-cols-[292px,1fr]">
        <aside className="hidden xl:sticky xl:top-6 xl:block xl:self-start">
          <div className="overflow-hidden rounded-[1.75rem] border border-border bg-card shadow-panel">
            <div className="border-b border-border bg-[linear-gradient(135deg,#476257,#394E45)] px-5 py-4">
              <p className="text-xs font-semibold tracking-[0.10em] text-paper/70">
                Mon parcours
              </p>
              <p className="mt-1 text-sm font-semibold text-paper">
                Domaines, reprises et progression
              </p>
            </div>
            <div className="p-5">
              <AppNavigation />
            </div>
          </div>
        </aside>
        <main id="main-content" className="min-w-0 space-y-5 pb-16 sm:space-y-6 lg:pb-0">{children}</main>
      </div>
    </div>
  );
}
