import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Panel } from "@/components/ui/panel";

type GlossaryEntry = {
  term: string;
  definition: string;
};

type LetterSection = {
  letter: string;
  entries: GlossaryEntry[];
};

const GLOSSARY: LetterSection[] = [
  {
    letter: "A",
    entries: [
      {
        term: "Adjectif qualificatif",
        definition:
          "Mot variable qui s'accorde en genre et en nombre avec le nom qu'il qualifie. Il peut être épithète (placé près du nom) ou attribut (relié au nom par un verbe d'état).",
      },
      {
        term: "Adverbe",
        definition:
          "Mot invariable qui modifie le sens d'un verbe, d'un adjectif ou d'un autre adverbe. Il peut exprimer la manière, le temps, le lieu, la quantité ou l'intensité.",
      },
      {
        term: "Antécédent",
        definition:
          "Nom ou groupe nominal auquel renvoie un pronom relatif. Dans « Le livre que je lis », le livre est l'antécédent du pronom que.",
      },
      {
        term: "Antonyme",
        definition:
          "Mot dont le sens est opposé à celui d'un autre mot. Rapide et lent sont des antonymes.",
      },
    ],
  },
  {
    letter: "C",
    entries: [
      {
        term: "Champ lexical",
        definition:
          "Ensemble de mots appartenant à des catégories grammaticales différentes mais se rapportant à un même thème ou une même réalité.",
      },
      {
        term: "Champ sémantique",
        definition:
          "Ensemble des sens ou acceptions d'un même mot. La polysémie d'un mot constitue son champ sémantique.",
      },
      {
        term: "COD (Complément d'objet direct)",
        definition:
          "Complément essentiel du verbe, rattaché sans préposition, qui répond à la question « Qui ? » ou « Quoi ? » posée après le verbe. Il peut être pronominalisé par le, la, les.",
      },
      {
        term: "COI (Complément d'objet indirect)",
        definition:
          "Complément essentiel du verbe, rattaché par une préposition (à, de), qui répond à la question « À qui ? », « De qui ? » ou « À quoi ? ».",
      },
      {
        term: "Complément circonstanciel",
        definition:
          "Complément facultatif et déplaçable qui exprime les circonstances de l'action : temps, lieu, manière, cause, but, etc.",
      },
      {
        term: "Conjonction de coordination",
        definition:
          "Mot invariable qui unit deux éléments de même nature ou de même fonction. Les sept conjonctions de coordination sont : mais, ou, et, donc, or, ni, car.",
      },
      {
        term: "Conjonction de subordination",
        definition:
          "Mot ou locution qui introduit une proposition subordonnée et la relie à la proposition principale. Exemples : que, quand, si, parce que, bien que.",
      },
      {
        term: "Conscience phonologique",
        definition:
          "Capacité métalinguistique à identifier, segmenter et manipuler les unités sonores de la langue (syllabes, rimes, phonèmes). Elle est un prédicteur majeur de la réussite en lecture-écriture.",
      },
    ],
  },
  {
    letter: "D",
    entries: [
      {
        term: "Décodage",
        definition:
          "Processus par lequel le lecteur traduit les graphèmes en phonèmes pour identifier les mots écrits. C'est l'une des deux composantes fondamentales de la lecture, avec la compréhension.",
      },
      {
        term: "Déterminant",
        definition:
          "Mot placé devant le nom pour l'actualiser. Il s'accorde en genre et en nombre avec le nom. On distingue les articles (définis, indéfinis, partitifs), les déterminants possessifs, démonstratifs, interrogatifs, etc.",
      },
      {
        term: "Didactique",
        definition:
          "Discipline qui étudie les processus d'enseignement et d'apprentissage d'un contenu disciplinaire spécifique. La didactique du français s'intéresse à l'enseignement de la lecture, de l'écriture, de la grammaire et du vocabulaire.",
      },
    ],
  },
  {
    letter: "F",
    entries: [
      {
        term: "Fluence",
        definition:
          "Capacité à lire un texte de façon précise, rapide et avec une prosodie adaptée. Elle résulte de l'automatisation du décodage et libère des ressources cognitives pour la compréhension.",
      },
      {
        term: "Fonctions syntaxiques",
        definition:
          "Rôles que jouent les groupes de mots dans la phrase par rapport au verbe ou au nom. Les principales fonctions sont : sujet, COD, COI, attribut du sujet, complément circonstanciel, épithète, apposition.",
      },
    ],
  },
  {
    letter: "G",
    entries: [
      {
        term: "Graphème",
        definition:
          "Unité minimale de l'écriture correspondant à un phonème ou à une combinaison de lettres représentant un son. Par exemple, le son [o] peut s'écrire avec les graphèmes o, au ou eau.",
      },
    ],
  },
  {
    letter: "H",
    entries: [
      {
        term: "Homophone",
        definition:
          "Mot qui se prononce de la même façon qu'un autre mot mais qui s'écrit différemment et a un sens différent. Exemples : a (verbe avoir) / à (préposition), son / sont.",
      },
      {
        term: "Hyperonyme",
        definition:
          "Terme générique qui englobe d'autres termes plus spécifiques (hyponymes). Animal est l'hyperonyme de chien, chat, oiseau.",
      },
      {
        term: "Hyponyme",
        definition:
          "Terme spécifique inclus dans un terme générique (hyperonyme). Chien est un hyponyme d'animal.",
      },
    ],
  },
  {
    letter: "I",
    entries: [
      {
        term: "Inférence",
        definition:
          "Information implicite que le lecteur doit déduire à partir d'indices du texte et de ses connaissances. On distingue les inférences logiques (nécessaires) et pragmatiques (vraisemblables).",
      },
    ],
  },
  {
    letter: "L",
    entries: [
      {
        term: "Lexique",
        definition:
          "Ensemble des mots d'une langue ou d'un locuteur. Le lexique mental désigne le dictionnaire intérieur de chaque individu. Il comprend le vocabulaire actif (production) et passif (réception).",
      },
    ],
  },
  {
    letter: "M",
    entries: [
      {
        term: "Morphème",
        definition:
          "Unité minimale de sens. On distingue les morphèmes lexicaux (racine du mot) et les morphèmes grammaticaux (affixes indiquant le genre, le nombre, la personne, le temps, etc.).",
      },
      {
        term: "Morphologie",
        definition:
          "Étude de la structure interne des mots et de leurs variations de forme. Elle inclut la morphologie flexionnelle (accords, conjugaison) et la morphologie dérivationnelle (préfixes, suffixes).",
      },
    ],
  },
  {
    letter: "N",
    entries: [
      {
        term: "Nom commun",
        definition:
          "Mot variable désignant une personne, un animal, une chose ou une notion de façon générique. Il est précédé d'un déterminant et varie en genre et en nombre.",
      },
      {
        term: "Nom propre",
        definition:
          "Nom qui désigne un être ou une réalité unique et particulière. Il s'écrit avec une majuscule et ne prend généralement pas de déterminant.",
      },
    ],
  },
  {
    letter: "P",
    entries: [
      {
        term: "Participe passé",
        definition:
          "Forme verbale non conjuguée utilisée dans les temps composés ou comme adjectif. Avec l'auxiliaire être, il s'accorde avec le sujet ; avec avoir, il s'accorde avec le COD placé avant le verbe.",
      },
      {
        term: "Phonème",
        definition:
          "Unité sonore minimale d'une langue qui permet de distinguer des mots. Le français compte environ 36 phonèmes. Un phonème peut être représenté par plusieurs graphèmes.",
      },
      {
        term: "Polysémie",
        definition:
          "Propriété d'un mot d'avoir plusieurs sens différents. La polysémie est la règle en français, le monosémie (un seul sens) étant plutôt l'exception.",
      },
      {
        term: "Préposition",
        definition:
          "Mot invariable qui unit un complément à un autre mot et indique le rapport syntaxique entre eux. Les prépositions les plus fréquentes sont à, de, en, pour, par, sur, sous, avec.",
      },
      {
        term: "Principe alphabétique",
        definition:
          "Principe selon lequel les signes écrits (graphèmes) représentent les sons de la langue (phonèmes). La maîtrise de ce principe est indispensable pour apprendre à lire et à écrire.",
      },
      {
        term: "Pronom",
        definition:
          "Mot qui remplace ou représente un nom, un groupe nominal, une phrase ou une idée. On distingue les pronoms personnels, possessifs, démonstratifs, relatifs, interrogatifs et indéfinis.",
      },
      {
        term: "Proposition principale",
        definition:
          "Proposition qui peut exister seule, sans être subordonnée à une autre. Elle constitue le noyau de la phrase complexe.",
      },
      {
        term: "Proposition subordonnée",
        definition:
          "Proposition qui dépend d'une proposition principale. Elle est introduite par un subordonnant (conjonction, pronom relatif). On distingue les relatives, les complétives et les circonstancielles.",
      },
    ],
  },
  {
    letter: "S",
    entries: [
      {
        term: "Subjonctif",
        definition:
          "Mode verbal qui exprime le doute, la volonté, l'obligation, le souhait ou la supposition. Il est souvent introduit par que. Exemple : Il faut qu'il vienne.",
      },
      {
        term: "Sujet",
        definition:
          "Fonction syntaxique du groupe nominal (ou équivalent) dont parle la phrase. Le verbe s'accorde avec le sujet. Il répond à la question « Qui est-ce qui ? » ou « Qu'est-ce qui ? ».",
      },
      {
        term: "Synonyme",
        definition:
          "Mot dont le sens est proche ou équivalent à celui d'un autre mot. Les synonymes permettent d'éviter les répétitions, mais ils ne sont jamais totalement interchangeables.",
      },
      {
        term: "Syntaxe",
        definition:
          "Ensemble des règles qui régissent l'organisation des mots en phrases. Elle étudie les relations entre les groupes de mots et leurs fonctions dans la phrase.",
      },
    ],
  },
  {
    letter: "V",
    entries: [
      {
        term: "Verbe",
        definition:
          "Mot variable qui exprime une action, un état ou un processus. Il est le noyau de la proposition et s'accorde en personne et en nombre avec son sujet.",
      },
      {
        term: "Vocabulaire actif",
        definition:
          "Ensemble des mots qu'un locuteur est capable d'utiliser spontanément en production orale ou écrite. Il est généralement moins étendu que le vocabulaire passif.",
      },
      {
        term: "Vocabulaire passif",
        definition:
          "Ensemble des mots qu'un locuteur comprend à la lecture ou à l'écoute, sans nécessairement les employer lui-même. Il est toujours plus large que le vocabulaire actif.",
      },
    ],
  },
];

const ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split("");
const LETTERS_WITH_ENTRIES = new Set(GLOSSARY.map((s) => s.letter));

export default function GlossairePage() {
  const totalEntries = GLOSSARY.reduce((acc, s) => acc + s.entries.length, 0);

  return (
    <div className="space-y-8">
      {/* Hero */}
      <Panel>
        <div className="flex flex-col gap-5 xl:flex-row xl:items-end xl:justify-between">
          <div className="space-y-3">
            <Badge tone="accentSecondary">Référence</Badge>
            <div>
              <h1 className="font-serif text-4xl font-semibold text-ink">Glossaire grammatical</h1>
              <p className="mt-3 max-w-3xl text-sm leading-7 text-muted">
                Définitions des notions grammaticales et didactiques essentielles pour le CRPE.{" "}
                <span className="text-ink font-medium">{totalEntries} termes</span> classés par
                ordre alphabétique.
              </p>
            </div>
          </div>
          <ButtonLink href="/ressources" variant="secondary">
            Retour aux fiches de cours
          </ButtonLink>
        </div>
      </Panel>

      {/* Alphabet nav */}
      <div className="flex flex-wrap gap-1.5">
        {ALPHABET.map((letter) => {
          const hasEntries = LETTERS_WITH_ENTRIES.has(letter);
          return (
            <a
              key={letter}
              href={hasEntries ? `#lettre-${letter}` : undefined}
              aria-disabled={!hasEntries}
              className={[
                "flex h-9 w-9 items-center justify-center rounded-full text-sm font-semibold transition-colors",
                hasEntries
                  ? "border border-border bg-paper text-ink hover:border-accent hover:bg-secondary"
                  : "text-muted/40 cursor-default",
              ]
                .filter(Boolean)
                .join(" ")}
            >
              {letter}
            </a>
          );
        })}
      </div>

      {/* Glossary sections */}
      <div className="space-y-8">
        {GLOSSARY.map(({ letter, entries }) => (
          <section key={letter} id={`lettre-${letter}`} className="scroll-mt-6 space-y-4">
            <div className="flex items-center gap-4">
              <span className="font-serif text-5xl font-semibold text-ink/20">{letter}</span>
              <div className="h-px flex-1 bg-border" />
            </div>
            <Panel>
              <dl className="divide-y divide-border">
                {entries.map(({ term, definition }, index) => (
                  <div
                    key={term}
                    className={[
                      "py-5",
                      index === 0 ? "pt-0" : "",
                      index === entries.length - 1 ? "pb-0" : "",
                    ]
                      .filter(Boolean)
                      .join(" ")}
                  >
                    <dt className="font-semibold text-ink">{term}</dt>
                    <dd className="mt-2 text-sm leading-7 text-muted">{definition}</dd>
                  </div>
                ))}
              </dl>
            </Panel>
          </section>
        ))}
      </div>

      {/* Bottom CTA */}
      <Panel className="border-border bg-secondary">
        <div className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
          <div>
            <h2 className="font-serif text-2xl font-semibold text-ink">Fiches de cours</h2>
            <p className="mt-2 text-sm leading-7 text-muted">
              Retrouvez les règles essentielles par domaine avec des tableaux et des exemples.
            </p>
          </div>
          <ButtonLink href="/ressources" variant="secondary">
            Retour aux fiches de cours
          </ButtonLink>
        </div>
      </Panel>
    </div>
  );
}
