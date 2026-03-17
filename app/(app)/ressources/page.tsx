import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";

type NotionItem = { label: string; detail?: string };

function ComingSoonSection({
  id,
  badge,
  badgeTone,
  title,
  intro,
  notions,
}: {
  id: string;
  badge: string;
  badgeTone: "accent" | "accentSecondary";
  title: string;
  intro: string;
  notions: NotionItem[];
}) {
  return (
    <section id={id} className="scroll-mt-6 space-y-6">
      <Panel>
        <div className="flex flex-col gap-6 xl:flex-row xl:items-start xl:justify-between">
          <div className="flex-1 space-y-4">
            <div className="space-y-2">
              <Badge tone={badgeTone}>{badge}</Badge>
              <h2 className="font-serif text-3xl font-semibold text-ink">{title}</h2>
            </div>
            <p className="max-w-2xl text-sm leading-7 text-muted">{intro}</p>

            <div className="mt-2">
              <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">
                Notions couvertes
              </p>
              <ul className="mt-3 grid gap-2 sm:grid-cols-2">
                {notions.map((n) => (
                  <li
                    key={n.label}
                    className="rounded-[1.1rem] border border-border bg-paper px-4 py-3"
                  >
                    <p className="text-sm font-medium text-ink">{n.label}</p>
                    {n.detail && (
                      <p className="mt-0.5 text-xs leading-5 text-muted">{n.detail}</p>
                    )}
                  </li>
                ))}
              </ul>
            </div>
          </div>

          <div className="shrink-0 rounded-[1.25rem] border border-border bg-secondary px-5 py-4 xl:w-56">
            <p className="text-xs font-semibold uppercase tracking-[0.14em] text-accentSecondary">
              Bientôt disponible
            </p>
            <p className="mt-2 text-sm leading-6 text-muted">
              La fiche complète est en cours de rédaction. En attendant, entraînez-vous directement par les exercices.
            </p>
            <ButtonLink href="/exercices" variant="secondary" size="sm" className="mt-4">
              Voir les exercices
            </ButtonLink>
          </div>
        </div>
      </Panel>
    </section>
  );
}

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
                sans se disperser. Les fiches détaillées sont en cours de rédaction — le
                glossaire et les exercices sont déjà disponibles.
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
        {[
          ["#grammaire", "Grammaire"],
          ["#orthographe", "Orthographe"],
          ["#conjugaison", "Conjugaison"],
          ["#lexique", "Lexique"],
          ["#comprehension", "Compréhension"],
          ["#analyse", "Analyse de la langue"],
          ["#didactique", "Didactique"],
        ].map(([href, label]) => (
          <ButtonLink key={href} href={href} variant="secondary" size="sm">
            {label}
          </ButtonLink>
        ))}
      </div>

      <ComingSoonSection
        id="grammaire"
        badge="Grammaire"
        badgeTone="accent"
        title="Grammaire"
        intro="La grammaire représente le cœur de l'épreuve de Français du CRPE. Cette fiche couvrira l'analyse des fonctions, des natures et des structures de la phrase simple et complexe."
        notions={[
          { label: "Nature et fonction des mots", detail: "Nom, adjectif, déterminant, pronom, adverbe…" },
          { label: "Le groupe nominal", detail: "Noyau, expansions, apposition, épithète, complément du nom" },
          { label: "Les fonctions dans la phrase", detail: "Sujet, COD, COI, COS, attribut, complément circonstanciel" },
          { label: "La phrase simple", detail: "Phrase verbale vs nominale, types et formes de phrases" },
          { label: "La phrase complexe", detail: "Coordination, juxtaposition, subordination" },
          { label: "Propositions subordonnées", detail: "Relative, conjonctive, interrogative, infinitive, participiale" },
          { label: "Cas difficiles", detail: "Sujet inversé, sujet réel, proposition participiale absolue" },
          { label: "Verbe et groupe verbal", detail: "Transitif/intransitif, attributif, pronominal, impersonnel" },
        ]}
      />

      <ComingSoonSection
        id="orthographe"
        badge="Orthographe"
        badgeTone="accent"
        title="Orthographe"
        intro="L'orthographe grammaticale (accords) et lexicale (graphies) est systématiquement évaluée au CRPE. Cette fiche synthétisera les règles fondamentales et leurs exceptions."
        notions={[
          { label: "Accords dans le GN", detail: "Déterminant, nom, adjectif épithète et attribut" },
          { label: "Accord du verbe avec le sujet", detail: "Cas courants et cas difficiles (sujet inversé, collectif, plusieurs sujets)" },
          { label: "Accord du participe passé", detail: "Avec être, avec avoir, cas du pronom en, verbes pronominaux" },
          { label: "Homophones grammaticaux", detail: "a/à, est/et, son/sont, leur/leurs, on/ont, ces/ses, ou/où…" },
          { label: "Infinitif vs participe passé", detail: "-er/-é après un auxiliaire ou un verbe de mouvement" },
          { label: "Accords des adjectifs de couleur", detail: "Adjectifs simples, composés, noms employés comme adjectifs" },
          { label: "Pluriel des noms composés", detail: "Nom+Nom, Adj+Nom, Verbe+Nom, règles et exceptions" },
          { label: "Rectifications de 1990", detail: "Graphies simplifiées tolérées au CRPE (nénufar, ognon…)" },
        ]}
      />

      <ComingSoonSection
        id="conjugaison"
        badge="Conjugaison"
        badgeTone="accent"
        title="Conjugaison"
        intro="La maîtrise des temps et de leurs valeurs est attendue au CRPE. Cette fiche couvrira les formes verbales, les emplois, la concordance des temps et les valeurs aspectuelles."
        notions={[
          { label: "Temps de l'indicatif", detail: "Présent, imparfait, futur, passé composé, passé simple, plus-que-parfait, futur antérieur" },
          { label: "Valeurs des temps", detail: "Vérité générale, habitude, narration, hypothèse, futur dans le passé…" },
          { label: "Le subjonctif", detail: "Présent, passé — emplois et conjonctions déclencheuses" },
          { label: "Le conditionnel", detail: "Présent et passé — valeur modale, potentiel, irréel" },
          { label: "L'impératif", detail: "Formes, emplois, orthographe (va/vas, cueille/cueillez)" },
          { label: "Concordance des temps", detail: "Discours indirect, hypothèse avec si, temps littéraires" },
          { label: "Passé simple et imparfait", detail: "Opposition aspect accompli / inaccompli dans le récit" },
          { label: "Verbes irréguliers courants", detail: "Résoudre, s'asseoir, vaincre, haïr, distraire…" },
        ]}
      />

      <ComingSoonSection
        id="lexique"
        badge="Lexique"
        badgeTone="accent"
        title="Lexique"
        intro="Le vocabulaire — formation des mots, sens, figures — est évalué aussi bien en maîtrise de la langue qu'en compréhension de texte. Cette fiche couvrira les outils d'analyse lexicale."
        notions={[
          { label: "Formation des mots", detail: "Dérivation (préfixes, suffixes), composition, conversion, emprunt" },
          { label: "Familles de mots", detail: "Radical, mots dérivés, mots composés — repérer les liens" },
          { label: "Sens propre et sens figuré", detail: "Polysémie, métaphore, métonymie, synecdoque" },
          { label: "Relations sémantiques", detail: "Synonymie, antonymie, hyperonymie, hyponymie, paronymie" },
          { label: "Figures de style", detail: "Comparaison, métaphore, litote, euphémisme, hyperbole, ironie" },
          { label: "Registres de langue", detail: "Courant, soutenu, familier — marques caractéristiques" },
          { label: "Étymologie", detail: "Principaux préfixes et racines latins/grecs utiles au CRPE" },
          { label: "Champ lexical et sémantique", detail: "Définition, identification, exploitation dans un texte" },
        ]}
      />

      <ComingSoonSection
        id="comprehension"
        badge="Compréhension"
        badgeTone="accent"
        title="Compréhension et analyse de texte"
        intro="La compréhension de texte est centrale dans l'épreuve écrite du CRPE. Cette fiche couvrira les stratégies de lecture, les types de textes et les outils d'analyse textuelle."
        notions={[
          { label: "Types et genres de textes", detail: "Narratif, descriptif, argumentatif, explicatif, injonctif" },
          { label: "Lecture de l'implicite", detail: "Inférence, présupposé, sous-entendu, ironie" },
          { label: "Structure d'un texte argumentatif", detail: "Thèse, argument, exemple, connecteurs logiques" },
          { label: "Connecteurs et cohérence", detail: "Temporels, logiques, concessifs — fonctions dans le texte" },
          { label: "Le discours rapporté", detail: "Direct, indirect, indirect libre — marques et effets" },
          { label: "Énonciation", detail: "Déictiques, embrayeurs, point de vue, focalisation" },
          { label: "Analyse du paratexte", detail: "Titre, sous-titre, chapô, légende — indices de sens" },
          { label: "Reformulation et résumé", detail: "Techniques pour reformuler sans trahir le texte source" },
        ]}
      />

      <ComingSoonSection
        id="analyse"
        badge="Analyse"
        badgeTone="accent"
        title="Analyse de la langue"
        intro="L'analyse syntaxique et grammaticale — identifier, nommer, justifier — est au cœur de l'épreuve. Cette fiche couvrira la méthode d'analyse phrase par phrase."
        notions={[
          { label: "Méthode d'analyse syntaxique", detail: "Repérer le verbe, identifier le sujet, délimiter les propositions" },
          { label: "Analyse des propositions", detail: "Principale, subordonnée, coordonnée, juxtaposée" },
          { label: "Types de subordonnées", detail: "Relative, conjonctive complétive, circonstancielle, infinitive" },
          { label: "Fonctions syntaxiques", detail: "Sujet, COD, COI, attribut, apposition, épithète, CC" },
          { label: "La participiale absolue", detail: "Forme, valeurs (cause, temps, condition), distinction avec relative" },
          { label: "Le groupe nominal étendu", detail: "Expansions multiples, apposition double, coordination d'expansions" },
          { label: "Discours indirect libre", detail: "Définition, marques, effet stylistique — distinction avec indirect" },
          { label: "Manipulations syntaxiques", detail: "Pronominalisation, déplacement, effacement, substitution" },
        ]}
      />

      <ComingSoonSection
        id="didactique"
        badge="Didactique"
        badgeTone="accentSecondary"
        title="Didactique du français"
        intro="La didactique du français — enseigner la lecture, l'écriture, la grammaire, le vocabulaire à l'école primaire — est explicitement évaluée au CRPE. Cette fiche couvrira les notions et concepts clés."
        notions={[
          { label: "Apprentissage de la lecture", detail: "Décodage, compréhension, Simple View of Reading (Gough & Tunmer)" },
          { label: "Conscience phonologique", detail: "Phonèmes, syllabes, rimes — activités et progressivité" },
          { label: "Enseignement de l'écriture", detail: "Phases de production (planification, rédaction, révision)" },
          { label: "Étude de la langue à l'école", detail: "Corpus, manipulation, induction, progressivité, notions du programme" },
          { label: "Théories de l'apprentissage", detail: "ZPD (Vygotski), étayage (Bruner), enseignement explicite, représentations initiales" },
          { label: "Dictée négociée et innovante", detail: "Principes, déroulement, intérêt formatif" },
          { label: "Oral et langage à l'école", detail: "Place de l'oral, activités langagières, posture de l'enseignant" },
          { label: "Évaluation formative", detail: "Feedback, critères de réussite, obstacle d'apprentissage" },
        ]}
      />

      <Panel className="border-border bg-secondary">
        <div className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
          <div>
            <h2 className="font-serif text-2xl font-semibold text-ink">
              Besoin d&apos;aller plus loin ?
            </h2>
            <p className="mt-2 text-sm leading-7 text-muted">
              Le glossaire rassemble plus de 190 définitions grammaticales et didactiques
              indispensables pour le CRPE.
            </p>
          </div>
          <ButtonLink href="/ressources/glossaire">
            Voir le glossaire complet
          </ButtonLink>
        </div>
      </Panel>
    </div>
  );
}
