import { ReactNode } from "react";
import Link from "next/link";

export default function AuthLayout({ children }: { children: ReactNode }) {
  return (
    <div className="flex min-h-screen items-center justify-center bg-paper px-4 py-8 sm:px-6 sm:py-12">
      <div className="w-full max-w-lg rounded-[1.5rem] border border-border bg-surface p-5 shadow-elevated sm:rounded-[2rem] sm:p-8">
        <Link href="/" className="text-sm font-medium tracking-[0.10em] text-muted hover:text-ink">
          ← Retour à l&apos;accueil
        </Link>
        {children}
      </div>
    </div>
  );
}
