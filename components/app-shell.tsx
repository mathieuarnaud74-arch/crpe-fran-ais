import Link from "next/link";
import { ReactNode } from "react";

import { AppNavigation } from "@/components/app-navigation";
import { MobileNav } from "@/components/mobile-nav";
import { LogoutButton } from "@/features/auth/components/logout-button";

type AppShellProps = {
  children: ReactNode;
  userEmail: string;
};

export function AppShell({ children, userEmail }: AppShellProps) {
  return (
    <div className="min-h-screen bg-paper">
      <header className="border-b border-border/80 bg-card">
        <div className="mx-auto flex max-w-[1440px] flex-col gap-4 px-6 py-4 md:flex-row md:items-center md:justify-between">
          <Link href="/tableau-de-bord" className="flex min-w-0 items-center gap-3">
            <div className="relative flex h-12 w-12 items-center justify-center rounded-2xl border border-border bg-secondary text-sm font-semibold text-ink shadow-subtle">
              <span>CR</span>
              <span className="absolute -right-1 -top-1 h-4 w-4 rounded-full border border-card bg-accentSecondary" />
            </div>
            <div className="min-w-0">
              <p className="truncate font-serif text-2xl font-semibold text-ink">CRPE Français</p>
              <p className="truncate text-sm text-muted">Révision structurée et progressive</p>
            </div>
          </Link>

          <div className="flex items-center gap-4">
            <MobileNav />
            <Link
              href="/"
              className="rounded-full border border-border bg-paper px-4 py-2 text-sm font-medium text-ink transition hover:border-accentSecondary/30 hover:bg-accentSecondarySoft"
            >
              Accueil
            </Link>
            <div className="hidden rounded-full border border-border bg-secondary px-4 py-2 text-xs font-semibold tracking-[0.10em] text-muted lg:inline-flex">
              Espace de révision
            </div>
            <p className="max-w-[280px] truncate text-sm text-muted">{userEmail}</p>
            <LogoutButton />
          </div>
        </div>
      </header>

      <div className="mx-auto grid max-w-[1440px] gap-8 px-6 py-8 xl:grid-cols-[292px,1fr]">
        <aside className="hidden xl:sticky xl:top-6 xl:block xl:self-start">
          <div className="overflow-hidden rounded-[1.75rem] border border-border bg-card shadow-panel">
            <div className="border-b border-border bg-secondary/50 px-5 py-4">
              <p className="text-xs font-semibold tracking-[0.10em] text-muted">
                Navigation
              </p>
              <p className="mt-1 text-sm text-muted">
                Synthèse, domaines, reprises et progression.
              </p>
            </div>
            <div className="p-5">
              <AppNavigation />
            </div>
          </div>
        </aside>
        <main className="min-w-0 space-y-6">{children}</main>
      </div>
    </div>
  );
}
