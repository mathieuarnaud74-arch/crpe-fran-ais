"use client";

import { ArrowRight, LayoutDashboard, Menu, UserPlus } from "lucide-react";
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

const marketingLinks = [
  { label: "Méthode", href: "/#methode" },
  { label: "Domaines", href: "/#domaines" },
  { label: "FAQ", href: "/#faq" },
  { label: "Offre", href: "/offre" },
];

export function SiteHeader({ authenticated = false }: SiteHeaderProps) {
  const [open, setOpen] = useState(false);

  return (
    <header className="sticky top-0 z-40 border-b border-border/70 bg-paper/80 backdrop-blur-xl supports-[backdrop-filter]:bg-paper/75">
      <div className="mx-auto flex max-w-6xl items-center gap-4 px-6 py-4">
        <Link href="/" className="flex min-w-0 items-center">
          <Image
            src="/logo.jpg"
            alt="CRPE Français — Banque d'exercices"
            width={220}
            height={62}
            className="h-14 w-auto object-contain mix-blend-multiply"
            priority
          />
        </Link>

        <nav className="ml-auto hidden items-center gap-2 lg:flex">
          {marketingLinks.map((link) => (
            <Link
              key={link.href}
              href={link.href}
              className="rounded-full px-4 py-2 text-sm font-medium text-muted transition-colors hover:bg-card hover:text-ink"
            >
              {link.label}
            </Link>
          ))}
        </nav>

        <div className="hidden items-center gap-3 lg:flex">
          <Badge tone="accentSecondary" className="border-white/60 bg-card/85">
            Diagnostic gratuit
          </Badge>
          {authenticated ? (
            <ButtonLink href="/tableau-de-bord" variant="secondary">
              <LayoutDashboard className="h-4 w-4" />
              Tableau de bord
            </ButtonLink>
          ) : (
            <>
              <Link href="/connexion" className="text-sm font-medium text-muted transition-colors hover:text-ink">
                Connexion
              </Link>
              <ButtonLink
                href="/inscription"
                className="shadow-[0_14px_32px_rgba(71,98,87,0.16)] ring-1 ring-accentSecondary/15"
              >
                <UserPlus className="h-4 w-4" />
                Créer un compte gratuit
              </ButtonLink>
            </>
          )}
        </div>

        <div className="ml-auto flex items-center gap-2 lg:hidden">
          <Badge tone="accentSecondary" className="hidden sm:inline-flex">
            Gratuit
          </Badge>

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
                  Un accès direct au diagnostic gratuit, aux domaines couverts et à l&apos;offre
                  complète.
                </SheetDescription>
              </SheetHeader>

              <nav className="mt-8 space-y-2">
                {marketingLinks.map((link) => (
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
                        <Link href="/inscription">
                          <UserPlus className="h-4 w-4" />
                          Créer un compte gratuit
                        </Link>
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
  );
}
