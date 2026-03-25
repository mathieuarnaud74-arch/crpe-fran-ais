import Image from "next/image";
import Link from "next/link";

const NAV_LINKS = [
  { label: "Accueil", href: "/" },
  { label: "Diagnostic gratuit", href: "/diagnostic" },
  { label: "Méthode", href: "/#methode" },
  { label: "FAQ", href: "/#faq" },
];

const RESOURCE_LINKS = [
  { label: "Voir l'offre", href: "/offre" },
  { label: "Inscription gratuite", href: "/inscription" },
  { label: "Connexion", href: "/connexion" },
];

const LEGAL_LINKS = [
  { label: "Conditions générales", href: "/cgu" },
  { label: "Politique de confidentialité", href: "/politique-confidentialite" },
  { label: "Mentions légales", href: "/mentions-legales" },
  { label: "Contact", href: "mailto:contact@crpe-francais.fr" },
];

export function SiteFooter() {
  return (
    <footer className="border-t border-border bg-secondary">
      {/* Main grid */}
      <div className="mx-auto max-w-6xl px-4 py-10 sm:px-6 sm:py-14 lg:py-16">
        <div className="grid gap-10 sm:grid-cols-2 lg:grid-cols-[1.6fr_1fr_1fr_1fr]">
          {/* About */}
          <div>
            <Image
              src="/logo.png"
              alt="CRPE Français — Banque d'exercices"
              width={1024}
              height={305}
              className="h-12 w-auto object-contain mix-blend-multiply"
            />
            <p className="mt-3 max-w-xs text-sm leading-7 text-muted">
              Un espace de révision structuré pour préparer le CRPE avec des séries courtes,
              des corrections lisibles et une progression par domaine.
            </p>
          </div>

          {/* Navigation */}
          <FooterColumn title="Navigation" links={NAV_LINKS} ariaLabel="Navigation du pied de page" />

          {/* Ressources */}
          <FooterColumn title="Le site" links={RESOURCE_LINKS} ariaLabel="Liens du site" />

          {/* Légal */}
          <FooterColumn title="Légal" links={LEGAL_LINKS} ariaLabel="Liens légaux" />
        </div>
      </div>

      {/* Bottom bar */}
      <div className="border-t border-border">
        <div className="mx-auto flex max-w-6xl flex-col gap-3 px-4 py-5 sm:flex-row sm:items-center sm:justify-between sm:px-6">
          <p className="text-xs text-muted">© 2026 CRPE Français — Tous droits réservés</p>
          <p className="text-xs text-muted">
            Conforme programme CRPE 2026 · Exercices ajoutés régulièrement
          </p>
        </div>
      </div>
    </footer>
  );
}

function FooterColumn({
  title,
  links,
  ariaLabel,
}: {
  title: string;
  links: { label: string; href: string }[];
  ariaLabel?: string;
}) {
  return (
    <nav aria-label={ariaLabel}>
      <p className="text-xs font-semibold uppercase tracking-[0.16em] text-ink">{title}</p>
      <ul className="mt-5 space-y-3">
        {links.map(({ label, href }) => (
          <li key={href}>
            <Link
              href={href}
              className="text-sm text-muted transition-colors hover:text-ink focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-accent focus-visible:ring-offset-2 rounded-sm"
            >
              {label}
            </Link>
          </li>
        ))}
      </ul>
    </nav>
  );
}

