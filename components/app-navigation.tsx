"use client";

import {
  BarChart3,
  BookText,
  ClipboardList,
  CreditCard,
  LayoutDashboard,
  Library,
  Repeat2,
  Stethoscope,
  User,
} from "lucide-react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { useState } from "react";

import { cn } from "@/lib/utils";

type NavLink = {
  href: string;
  label: string;
  exact?: boolean;
  icon?: React.ElementType;
};

type NavigationGroup = {
  title: string;
  links: NavLink[];
};

const navigationGroups: NavigationGroup[] = [
  {
    title: "Mon parcours",
    links: [
      { href: "/tableau-de-bord", label: "Tableau de bord", exact: true, icon: LayoutDashboard },
      { href: "/diagnostic", label: "Diagnostic", exact: true, icon: Stethoscope },
      { href: "/revisions-ciblees", label: "Révisions ciblées", exact: true, icon: Repeat2 },
      { href: "/progression", label: "Progression", exact: true, icon: BarChart3 },
    ],
  },
  {
    title: "Français",
    links: [
      { href: "/francais/grammaire", label: "Grammaire & Lexique", exact: true, icon: BookText },
      { href: "/francais/orthographe", label: "Orthographe", exact: true, icon: BookText },
      { href: "/francais/analyse-de-la-langue", label: "Analyse & Didactique", exact: true, icon: BookText },
      { href: "/exercices", label: "Recherche d'exercices", exact: false, icon: Library },
      { href: "/ressources/glossaire", label: "Glossaire", exact: false, icon: ClipboardList },
    ],
  },
  {
    title: "Compte",
    links: [
      { href: "/profil", label: "Profil", exact: true, icon: User },
      { href: "/abonnement", label: "Abonnement", exact: true, icon: CreditCard },
    ],
  },
];

function isLinkActive(pathname: string, href: string, exact = true) {
  if (exact) {
    return pathname === href;
  }

  return pathname === href || pathname.startsWith(`${href}/`);
}

function isGroupActive(pathname: string, links: NavLink[]) {
  return links.some((link) => isLinkActive(pathname, link.href, link.exact));
}

function ChevronIcon({ open }: { open: boolean }) {
  return (
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="14"
      height="14"
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      strokeWidth="2.5"
      strokeLinecap="round"
      strokeLinejoin="round"
      className={cn("shrink-0 transition-transform duration-200", open && "rotate-180")}
      aria-hidden="true"
    >
      <polyline points="6 9 12 15 18 9" />
    </svg>
  );
}

function NavGroup({
  group,
  pathname,
  isOpen,
  onToggle,
}: {
  group: NavigationGroup;
  pathname: string;
  isOpen: boolean;
  onToggle: () => void;
}) {
  const groupActive = isGroupActive(pathname, group.links);

  return (
    <div>
      <button
        type="button"
        onClick={onToggle}
        aria-expanded={isOpen}
        className={cn(
          "flex w-full items-center justify-between rounded-xl px-3 py-2 text-left text-xs font-semibold uppercase tracking-[0.18em] transition",
          groupActive
            ? "bg-secondary text-ink"
            : "text-muted hover:bg-secondary hover:text-ink",
        )}
      >
        <span>{group.title}</span>
        <ChevronIcon open={isOpen} />
      </button>

      <div
        className={cn(
          "overflow-hidden transition-all duration-200",
          isOpen ? "max-h-96 opacity-100" : "max-h-0 opacity-0",
        )}
      >
        <div className="mt-1 space-y-0.5 pb-1">
          {group.links.map((link) => {
            const active = isLinkActive(pathname, link.href, link.exact);
            const Icon = link.icon;
            return (
              <Link
                key={link.href}
                href={link.href}
                className={cn(
                  "flex items-center gap-2.5 rounded-xl px-3 py-2.5 text-sm transition",
                  active
                    ? "border border-border bg-card font-semibold text-ink shadow-subtle"
                    : "font-medium text-muted hover:bg-secondary hover:text-ink",
                )}
              >
                {Icon ? (
                  <Icon
                    className={cn(
                      "h-4 w-4 shrink-0",
                      active ? "text-accentSecondary" : "text-muted/70",
                    )}
                  />
                ) : null}
                {link.label}
              </Link>
            );
          })}
        </div>
      </div>
    </div>
  );
}

export function AppNavigation() {
  const pathname = usePathname();

  const [openGroups, setOpenGroups] = useState<Set<string>>(() => {
    const initial = navigationGroups
      .filter((group) => isGroupActive(pathname, group.links))
      .map((group) => group.title);
    return new Set(initial.length > 0 ? initial : [navigationGroups[0].title]);
  });

  function toggleGroup(title: string) {
    setOpenGroups((prev) => {
      const next = new Set(prev);
      if (next.has(title)) {
        next.delete(title);
      } else {
        next.add(title);
      }
      return next;
    });
  }

  return (
    <nav className="space-y-1" aria-label="Navigation principale">
      {navigationGroups.map((group) => (
        <NavGroup
          key={group.title}
          group={group}
          pathname={pathname}
          isOpen={openGroups.has(group.title)}
          onToggle={() => toggleGroup(group.title)}
        />
      ))}
    </nav>
  );
}
