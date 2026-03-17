import Link from "next/link";
import type { ReactNode } from "react";

import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { LogoutButton } from "@/features/auth/components/logout-button";

type HomepageAdminShellProps = {
  children: ReactNode;
};

export function HomepageAdminShell({ children }: HomepageAdminShellProps) {
  return (
    <div className="min-h-screen bg-[linear-gradient(180deg,rgba(253,249,243,1),rgba(245,241,232,0.92))] text-ink">
      <header className="border-b border-border/80 bg-paper/90 backdrop-blur">
        <div className="mx-auto flex max-w-[1440px] flex-col gap-4 px-6 py-5 lg:flex-row lg:items-center lg:justify-between">
          <div className="flex min-w-0 items-center gap-4">
            <Link href="/admin/homepage" className="flex min-w-0 items-center gap-3">
              <div className="relative flex h-12 w-12 items-center justify-center rounded-2xl border border-border bg-card text-sm font-semibold text-ink shadow-subtle">
                <span>CR</span>
                <span className="absolute -right-1 -top-1 h-4 w-4 rounded-full border border-card bg-accentSecondary" />
              </div>
              <div className="min-w-0">
                <p className="truncate font-serif text-2xl font-semibold text-ink">Homepage admin</p>
                <p className="truncate text-sm text-muted">
                  Édition modulaire et publication contrôlée
                </p>
              </div>
            </Link>
            <Badge tone="accentSecondary" className="hidden lg:inline-flex">
              Blocs prédéfinis
            </Badge>
          </div>

          <div className="flex flex-wrap items-center gap-3">
            <ButtonLink href="/admin/homepage/preview" variant="secondary">
              Prévisualiser
            </ButtonLink>
            <ButtonLink href="/" variant="secondary">
              Voir le live
            </ButtonLink>
            <ButtonLink href="/tableau-de-bord" variant="secondary">
              Tableau de bord
            </ButtonLink>
            <LogoutButton />
          </div>
        </div>
      </header>

      <main className="mx-auto max-w-[1440px] px-6 py-8">{children}</main>
    </div>
  );
}
