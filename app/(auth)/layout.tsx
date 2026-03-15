import { ReactNode } from "react";
import Link from "next/link";

export default function AuthLayout({ children }: { children: ReactNode }) {
  return (
    <div className="flex min-h-screen items-center justify-center bg-paper px-6 py-12">
      <div className="w-full max-w-lg rounded-[2rem] border border-border bg-surface p-8 shadow-elevated">
        <Link href="/" className="text-sm font-medium tracking-[0.10em] text-muted hover:text-ink">
          ← Retour à l&apos;accueil
        </Link>
        {children}
      </div>
    </div>
  );
}
