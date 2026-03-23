"use client";

import { ArrowRight, LayoutDashboard, Menu } from "lucide-react";
import Image from "next/image";
import Link from "next/link";
import { useState } from "react";

import { Badge } from "@/components/ui/badge";
import { Button, ButtonLink } from "@/components/ui/button";
import {
  Sheet,
  SheetClose,
  SheetContent,
  SheetDescription,
  SheetFooter,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/components/ui/sheet";

type SiteHeaderProps = {
  authenticated?: boolean;
};

const editorialLinks = [
  { label: "Méthode", href: "/#methode" },
  { label: "FAQ", href: "/#faq" },
  { label: "Offre", href: "/offre" },
];

const allMobileLinks = [
  ...editorialLinks,
  { label: "Diagnostic gratuit", href: "/diagnostic" },
];

export function SiteHeader({ authenticated = false }: SiteHeaderProps) {
  const [open, setOpen] = useState(false);

  return (
    <>
    <a
      href="#main-content"
      className="sr-only focus:not-sr-only focus:absolute focus:z-50 focus:bg-accent focus:text-white focus:px-4 focus:py-2 focus:rounded"
    >
      Aller au contenu principal
    </a>
    <header className="sticky top-0 z-40 border-b border-border/50 bg-paper/80 backdrop-blur-xl supports-[backdrop-filter]:bg-paper/75">
      <div className="mx-auto grid max-w-6xl grid-cols-[auto_1fr_auto] items-center px-4 py-3 sm:px-6">

        {/* Logo */}
        <Link href="/" className="flex min-w-0 items-center">
          <div className="h-14 overflow-hidden">
            <Image
              src="/logo.png"
              alt="CRPE Français — Banque d'exercices"
              width={1408}
              height={768}
              className="-mt-3 h-20 w-auto object-contain"
              priority
            />
          </div>
        </Link>

        {/* Nav desktop */}
        <nav aria-label="Navigation principale" className="hidden items-center justify-center gap-2 lg:flex">
          {editorialLinks.map((link) => (
            <Link
              key={link.href}
              href={link.href}
              className="rounded-full px-5 py-2 text-[0.9375rem] font-medium text-muted transition-colors hover:bg-secondary hover:text-ink focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-accent focus-visible:ring-offset-2"
            >
              {link.label}
            </Link>
          ))}
          <Link
            href="/diagnostic"
            className="ml-1 rounded-full border border-accentSecondary/30 bg-accentSecondarySoft px-5 py-2 text-[0.9375rem] font-semibold text-accentSecondaryDark transition-colors hover:border-accentSecondary/60 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-accent focus-visible:ring-offset-2"
          >
            Diagnostic gratuit
          </Link>
        </nav>

        {/* Auth desktop */}
        <div className="hidden items-center gap-3 lg:flex">
          {authenticated ? (
            <ButtonLink href="/tableau-de-bord" variant="secondary">
              <LayoutDashboard className="h-4 w-4" />
              Tableau de bord
            </ButtonLink>
          ) : (
            <>
              <Link
                href="/connexion"
                className="rounded-full px-5 py-2 text-[0.9375rem] font-medium text-muted transition-colors hover:bg-secondary hover:text-ink focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-accent focus-visible:ring-offset-2"
              >
                Connexion
              </Link>
              <ButtonLink href="/inscription" className="shadow-subtle">
                Créer mon compte gratuit
              </ButtonLink>
            </>
          )}
        </div>

        {/* Mobile */}
        <div className="col-start-3 flex items-center gap-2 lg:hidden">
          <Sheet open={open} onOpenChange={setOpen}>
            <SheetTrigger asChild>
              <Button
                variant="secondary"
                size="icon"
                aria-label="Ouvrir le menu de navigation"
                className="rounded-2xl"
              >
                <Menu className="h-5 w-5" />
              </Button>
            </SheetTrigger>

            <SheetContent side="right" className="flex flex-col bg-[linear-gradient(180deg,#fdf9f3_0%,#f5f1e8_100%)]">
              <SheetHeader className="pr-8">
                <Badge tone="accentSecondary" className="w-fit">
                  Navigation
                </Badge>
                <SheetTitle>CRPE Français</SheetTitle>
                <SheetDescription>
                  Un accès direct au diagnostic gratuit, aux domaines couverts et à l&apos;offre complète.
                </SheetDescription>
              </SheetHeader>

              <nav aria-label="Navigation mobile" className="mt-8 space-y-2">
                {allMobileLinks.map((link) => (
                  <SheetClose asChild key={link.href}>
                    <Link
                      href={link.href}
                      className="flex items-center justify-between rounded-[1.35rem] border border-border bg-card px-4 py-4 text-sm font-semibold text-ink shadow-subtle transition-colors hover:border-accentSecondary/30"
                    >
                      <span>{link.label}</span>
                      <ArrowRight className="h-4 w-4 text-muted" />
                    </Link>
                  </SheetClose>
                ))}
              </nav>

              <div className="mt-8 rounded-[1.6rem] border border-border bg-card p-5 shadow-subtle">
                <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">
                  Point d&apos;entrée conseillé
                </p>
                <p className="mt-3 font-serif text-2xl font-semibold text-ink">Commencer par le diagnostic</p>
                <p className="mt-2 text-sm leading-7 text-muted">
                  Quelques minutes pour clarifier vos priorités avant de choisir vos séries.
                </p>
              </div>

              <SheetFooter>
                {authenticated ? (
                  <>
                    <SheetClose asChild>
                      <Button variant="secondary" size="lg" asChild>
                        <Link href="/tableau-de-bord">
                          <LayoutDashboard className="h-4 w-4" />
                          Tableau de bord
                        </Link>
                      </Button>
                    </SheetClose>
                    <SheetClose asChild>
                      <Button size="lg" asChild>
                        <Link href="/diagnostic">Lancer mon diagnostic</Link>
                      </Button>
                    </SheetClose>
                  </>
                ) : (
                  <>
                    <SheetClose asChild>
                      <Button size="lg" asChild>
                        <Link href="/inscription">Créer mon compte gratuit</Link>
                      </Button>
                    </SheetClose>
                    <SheetClose asChild>
                      <Button variant="secondary" size="lg" asChild>
                        <Link href="/connexion">Connexion</Link>
                      </Button>
                    </SheetClose>
                  </>
                )}
              </SheetFooter>
            </SheetContent>
          </Sheet>
        </div>
      </div>
    </header>
    </>
  );
}
