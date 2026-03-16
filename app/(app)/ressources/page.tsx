import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";

export default function RessourcesPage() {
  return (
    <div className="space-y-8">
      <Panel>
        <div className="flex flex-col gap-5 xl:flex-row xl:items-end xl:justify-between">
          <div className="space-y-3">
            <Badge tone="accentSecondary">Fiches de cours</Badge>
            <div>
              <h1 className="font-serif text-4xl font-semibold text-ink">
                Ressources &amp; Fiches de cours
              </h1>
              <p className="mt-3 max-w-3xl text-sm leading-7 text-muted">
                Repères fiables et synthèses de cours pour réviser le Français du CRPE
                sans se disperser.
              </p>
            </div>
          </div>
          <div className="flex flex-wrap gap-3">
            <ButtonLink href="/ressources/glossaire" variant="secondary">
              Glossaire grammatical
            </ButtonLink>
          </div>
        </div>
      </Panel>

      <div className="flex flex-wrap gap-2">
        <ButtonLink href="#grammaire" variant="secondary" size="sm">
          Grammaire
        </ButtonLink>
        <ButtonLink href="#orthographe" variant="secondary" size="sm">
          Orthographe
        </ButtonLink>
        <ButtonLink href="#conjugaison" variant="secondary" size="sm">
          Conjugaison
        </ButtonLink>
        <ButtonLink href="#lexique" variant="secondary" size="sm">
          Lexique
        </ButtonLink>
        <ButtonLink href="#comprehension" variant="secondary" size="sm">
          Comprehension
        </ButtonLink>
        <ButtonLink href="#analyse" variant="secondary" size="sm">
          Analyse de la langue
        </ButtonLink>
        <ButtonLink href="#didactique" variant="secondary" size="sm">
          Didactique
        </ButtonLink>
      </div>

      <section id="grammaire" className="scroll-mt-6 space-y-6">
        <Panel>
          <div className="space-y-2">
            <Badge tone="accent">Grammaire</Badge>
            <h2 className="font-serif text-3xl font-semibold text-ink">Grammaire</h2>
          </div>
          <p className="mt-6 text-sm leading-7 text-muted">
            Fiche en cours de reconstruction.
          </p>
        </Panel>
      </section>

      <section id="orthographe" className="scroll-mt-6 space-y-6">
        <Panel>
          <div className="space-y-2">
            <Badge tone="accent">Orthographe</Badge>
            <h2 className="font-serif text-3xl font-semibold text-ink">Orthographe</h2>
          </div>
          <p className="mt-6 text-sm leading-7 text-muted">
            Fiche en cours de reconstruction.
          </p>
        </Panel>
      </section>

      <section id="conjugaison" className="scroll-mt-6 space-y-6">
        <Panel>
          <div className="space-y-2">
            <Badge tone="accent">Conjugaison</Badge>
            <h2 className="font-serif text-3xl font-semibold text-ink">Conjugaison</h2>
          </div>
          <p className="mt-6 text-sm leading-7 text-muted">
            Fiche en cours de reconstruction.
          </p>
        </Panel>
      </section>

      <section id="lexique" className="scroll-mt-6 space-y-6">
        <Panel>
          <div className="space-y-2">
            <Badge tone="accent">Lexique</Badge>
            <h2 className="font-serif text-3xl font-semibold text-ink">Lexique</h2>
          </div>
          <p className="mt-6 text-sm leading-7 text-muted">
            Fiche en cours de reconstruction.
          </p>
        </Panel>
      </section>

      <section id="comprehension" className="scroll-mt-6 space-y-6">
        <Panel>
          <div className="space-y-2">
            <Badge tone="accent">Compréhension</Badge>
            <h2 className="font-serif text-3xl font-semibold text-ink">
              Compréhension et analyse de texte
            </h2>
          </div>
          <p className="mt-6 text-sm leading-7 text-muted">
            Fiche en cours de reconstruction.
          </p>
        </Panel>
      </section>

      <section id="analyse" className="scroll-mt-6 space-y-6">
        <Panel>
          <div className="space-y-2">
            <Badge tone="accent">Analyse</Badge>
            <h2 className="font-serif text-3xl font-semibold text-ink">Analyse de la langue</h2>
          </div>
          <p className="mt-6 text-sm leading-7 text-muted">
            Fiche en cours de reconstruction.
          </p>
        </Panel>
      </section>

      <section id="didactique" className="scroll-mt-6 space-y-6">
        <Panel>
          <div className="space-y-2">
            <Badge tone="accentSecondary">Didactique</Badge>
            <h2 className="font-serif text-3xl font-semibold text-ink">Didactique du français</h2>
          </div>
          <p className="mt-6 text-sm leading-7 text-muted">
            Fiche en cours de reconstruction.
          </p>
        </Panel>
      </section>

      <Panel className="border-border bg-secondary">
        <div className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
          <div>
            <h2 className="font-serif text-2xl font-semibold text-ink">
              Besoin d&apos;aller plus loin ?
            </h2>
            <p className="mt-2 text-sm leading-7 text-muted">
              Le glossaire rassemble les définitions grammaticales et didactiques
              indispensables pour le CRPE.
            </p>
          </div>
          <ButtonLink href="/ressources/glossaire">
            Voir le glossaire complet des termes grammaticaux
          </ButtonLink>
        </div>
      </Panel>
    </div>
  );
}
