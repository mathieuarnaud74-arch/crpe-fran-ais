import Link from "next/link";

export default function NotFound() {
  return (
    <div className="flex min-h-screen items-center justify-center px-6">
      <div className="max-w-lg text-center">
        <h1 className="font-serif text-5xl font-semibold text-ink">Page introuvable</h1>
        <p className="mt-4 text-sm leading-7 text-ink/72">
          L&apos;adresse demandée n&apos;existe pas ou a été déplacée.
        </p>
        <Link
          href="/"
          className="mt-8 inline-flex rounded-full bg-accent px-5 py-3 text-sm font-semibold text-white transition hover:bg-accentDark"
        >
          Retour à l&apos;accueil
        </Link>
      </div>
    </div>
  );
}

