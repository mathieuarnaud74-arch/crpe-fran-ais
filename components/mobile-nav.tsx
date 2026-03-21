"use client";

import { Home, LogOut, Menu } from "lucide-react";
import Link from "next/link";
import { useCallback, useState } from "react";

import { AppNavigation } from "@/components/app-navigation";
import { signOutAction } from "@/features/auth/server/actions";
import {
  Sheet,
  SheetContent,
  SheetDescription,
  SheetHeader,
  SheetTitle,
  SheetTrigger,
} from "@/components/ui/sheet";

export function MobileNav() {
  const [open, setOpen] = useState(false);

  const handleLinkClick = useCallback((e: React.MouseEvent) => {
    const target = e.target as HTMLElement;
    const isLink = target.closest("a");
    if (isLink) {
      setOpen(false);
    }
  }, []);

  return (
    <Sheet open={open} onOpenChange={setOpen}>
      <SheetTrigger
        className="flex h-10 w-10 items-center justify-center rounded-xl border border-border bg-paper text-muted transition hover:border-accentSecondary/30 hover:bg-accentSecondarySoft hover:text-ink xl:hidden"
        aria-label="Ouvrir la navigation"
      >
        <Menu className="h-5 w-5" />
      </SheetTrigger>
      <SheetContent side="left" className="flex flex-col p-0">
        <SheetHeader className="shrink-0 border-b border-border bg-secondary/50 px-5 py-4">
          <SheetTitle>Navigation</SheetTitle>
          <SheetDescription>
            Synthèse, domaines, reprises et progression.
          </SheetDescription>
        </SheetHeader>
        <div
          className="flex-1 overflow-y-auto overscroll-contain p-4 sm:p-5"
          onClick={handleLinkClick}
        >
          <AppNavigation />

          <div className="mt-4 border-t border-border pt-4 sm:hidden">
            <Link
              href="/"
              onClick={() => setOpen(false)}
              className="flex items-center gap-2.5 rounded-xl px-3 py-3 text-sm font-medium text-muted transition hover:bg-secondary hover:text-ink active:scale-[0.98]"
            >
              <Home className="h-4 w-4 shrink-0 text-muted/70" />
              Accueil du site
            </Link>
            <form action={signOutAction}>
              <button
                type="submit"
                className="flex w-full items-center gap-2.5 rounded-xl px-3 py-3 text-sm font-medium text-muted transition hover:bg-secondary hover:text-ink active:scale-[0.98]"
              >
                <LogOut className="h-4 w-4 shrink-0 text-muted/70" />
                Se déconnecter
              </button>
            </form>
          </div>
        </div>
      </SheetContent>
    </Sheet>
  );
}
