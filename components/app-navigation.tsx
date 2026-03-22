"use client";

import {
  BarChart3,
  BookOpen,
  BookText,
  Calculator,
  ClipboardList,
  CreditCard,
  Dices,
  LayoutDashboard,
  Search,
  Stethoscope,
  Trophy,
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
  kind: "group";
  title: string;
  links: NavLink[];
};

type NavigationStandalone = {
  kind: "standalone";
  href: string;
  label: string;
  exact?: boolean;
  icon?: React.ElementType;
};

type NavigationItem = NavigationGroup | NavigationStandalone;

const navigationItems: NavigationItem[] = [
  {
    kind: "group",
    title: "Mon parcours",
    links: [
      { href: "/tableau-de-bord", label: "Tableau de bord", exact: true, icon: LayoutDashboard },
      { href: "/diagnostic", label: "Diagnostic", exact: true, icon: Stethoscope },
      { href: "/progression", label: "Progression", exact: true, icon: BarChart3 },
      { href: "/classement", label: "Classement", exact: true, icon: Trophy },
    ],
  },
  {
    kind: "standalone",
    href: "/exercice-aleatoire",
    label: "Exercice aléatoire",
    exact: true,
    icon: Dices,
  },
  {
    kind: "group",
    title: "Français",
    links: [
      { href: "/francais/grammaire", label: "Grammaire", exact: true, icon: BookText },
      { href: "/francais/lexique", label: "Lexique", exact: true, icon: BookText },
      { href: "/francais/orthographe", label: "Orthographe", exact: true, icon: BookText },
      { href: "/francais/analyse-de-la-langue", label: "Analyse de la langue", exact: true, icon: BookText },
      { href: "/francais/didactique-du-francais", label: "Didactique du français", exact: true, icon: BookText },
      { href: "/ressources/glossaire", label: "Glossaire", exact: false, icon: ClipboardList },
    ],
  },
  {
    kind: "group",
    title: "Mathématiques",
    links: [
      { href: "/maths/nombres-et-calcul", label: "Nombres et calcul", exact: true, icon: Calculator },
      { href: "/maths/geometrie", label: "Géométrie", exact: true, icon: Calculator },
      { href: "/maths/grandeurs-et-mesures", label: "Grandeurs et mesures", exact: true, icon: Calculator },
      { href: "/maths/organisation-de-donnees", label: "Organisation de données", exact: true, icon: Calculator },
      { href: "/maths/didactique-des-maths", label: "Didactique des maths", exact: true, icon: Calculator },
    ],
  },
  {
    kind: "standalone",
    href: "/fiches",
    label: "Fiches français",
    exact: false,
    icon: BookOpen,
  },
  {
    kind: "standalone",
    href: "/fiches-maths",
    label: "Fiches maths",
    exact: false,
    icon: BookOpen,
  },
  {
    kind: "standalone",
    href: "/exercices",
    label: "Recherche avancée",
    exact: true,
  },
  {
    kind: "group",
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
          "flex w-full items-center justify-between rounded-xl px-3 py-3 text-left text-xs font-semibold uppercase tracking-[0.18em] transition active:scale-[0.98] focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-accent focus-visible:ring-offset-2",
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
          "grid transition-[grid-template-rows] duration-200",
          isOpen ? "grid-rows-[1fr]" : "grid-rows-[0fr]",
        )}
      >
        <div className="overflow-hidden">
        <div className="mt-1 space-y-0.5 pb-1">
          {group.links.map((link) => {
            const active = isLinkActive(pathname, link.href, link.exact);
            const Icon = link.icon;
            return (
              <Link
                key={link.href}
                href={link.href}
                aria-current={active ? "page" : undefined}
                className={cn(
                  "flex items-center gap-2.5 rounded-xl px-3 py-3 text-sm transition active:scale-[0.98] focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-accent focus-visible:ring-offset-2",
                  active
                    ? "bg-accent font-semibold text-paper shadow-subtle"
                    : "font-medium text-muted hover:bg-secondary hover:text-ink",
                )}
              >
                {Icon ? (
                  <Icon
                    className={cn(
                      "h-4 w-4 shrink-0",
                      active ? "text-paper/80" : "text-muted/70",
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
    </div>
  );
}

function NavStandalone({ item, pathname }: { item: NavigationStandalone; pathname: string }) {
  const active = isLinkActive(pathname, item.href, item.exact);
  const Icon = item.icon ?? Search;

  return (
    <Link
      href={item.href}
      aria-current={active ? "page" : undefined}
      className={cn(
        "flex w-full items-center justify-between rounded-xl px-3 py-3 text-xs font-semibold uppercase tracking-[0.18em] transition active:scale-[0.98] focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-accent focus-visible:ring-offset-2",
        active
          ? "bg-accent text-paper shadow-subtle"
          : "text-muted hover:bg-secondary hover:text-ink",
      )}
    >
      <span>{item.label}</span>
      <Icon
        className={cn(
          "h-3.5 w-3.5 shrink-0",
          active ? "text-paper/80" : "text-muted/70",
        )}
      />
    </Link>
  );
}

export function AppNavigation() {
  const pathname = usePathname();

  const groups = navigationItems.filter((i): i is NavigationGroup => i.kind === "group");

  const [openGroups, setOpenGroups] = useState<Set<string>>(() => {
    const initial = groups
      .filter((group) => isGroupActive(pathname, group.links))
      .map((group) => group.title);
    return new Set(initial.length > 0 ? initial : [groups[0].title]);
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
      {navigationItems.map((item) => {
        if (item.kind === "standalone") {
          return (
            <NavStandalone key={item.href} item={item} pathname={pathname} />
          );
        }
        return (
          <NavGroup
            key={item.title}
            group={item}
            pathname={pathname}
            isOpen={openGroups.has(item.title)}
            onToggle={() => toggleGroup(item.title)}
          />
        );
      })}
    </nav>
  );
}
