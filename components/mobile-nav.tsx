"use client";

import { Menu } from "lucide-react";
import { useState } from "react";

import { AppNavigation } from "@/components/app-navigation";
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

  return (
    <Sheet open={open} onOpenChange={setOpen}>
      <SheetTrigger
        className="flex h-10 w-10 items-center justify-center rounded-xl border border-border bg-paper text-muted transition hover:border-accentSecondary/30 hover:bg-accentSecondarySoft hover:text-ink xl:hidden"
        aria-label="Ouvrir la navigation"
      >
        <Menu className="h-5 w-5" />
      </SheetTrigger>
      <SheetContent side="left" className="flex flex-col p-0">
        <SheetHeader className="border-b border-border bg-secondary/50 px-5 py-4">
          <SheetTitle>Navigation</SheetTitle>
          <SheetDescription>
            Synthèse, domaines, reprises et progression.
          </SheetDescription>
        </SheetHeader>
        <div className="overflow-y-auto p-5" onClick={() => setOpen(false)}>
          <AppNavigation />
        </div>
      </SheetContent>
    </Sheet>
  );
}
