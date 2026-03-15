"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

import { cn } from "@/lib/utils";

const links = [
  { href: "/tableau-de-bord", label: "Tableau de bord", shortLabel: "Bord" },
  { href: "/exercices", label: "Séries", shortLabel: "Séries" },
  { href: "/historique", label: "Historique", shortLabel: "Historique" },
  { href: "/abonnement", label: "Abonnement", shortLabel: "Offre" },
];

export function NavLinks() {
  const pathname = usePathname();

  return (
    <nav className="space-y-1">
      {links.map((link) => {
        const active = pathname.startsWith(link.href);
        return (
          <Link
            key={link.href}
            href={link.href}
            className={cn(
              "block rounded-2xl px-4 py-3 text-sm font-medium transition",
              active
                ? "bg-secondary text-ink font-semibold"
                : "text-muted hover:bg-secondary hover:text-ink",
            )}
          >
            {link.label}
          </Link>
        );
      })}
    </nav>
  );
}

export function MobileNav() {
  const pathname = usePathname();

  return (
    <nav className="fixed bottom-0 inset-x-0 z-50 border-t border-border bg-card lg:hidden">
      <div className="flex items-stretch">
        {links.map((link) => {
          const active = pathname.startsWith(link.href);
          return (
            <Link
              key={link.href}
              href={link.href}
              className={cn(
                "flex flex-1 flex-col items-center justify-center gap-1 py-3 text-[0.65rem] font-semibold uppercase tracking-wide transition",
                active ? "text-ink" : "text-muted",
              )}
            >
              <span
                className={cn(
                  "h-1 w-6 rounded-full transition",
                  active ? "bg-accent" : "bg-transparent",
                )}
              />
              {link.shortLabel}
            </Link>
          );
        })}
      </div>
    </nav>
  );
}
