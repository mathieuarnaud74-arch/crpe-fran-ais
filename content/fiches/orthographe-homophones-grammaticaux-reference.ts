import type { Fiche } from "@/features/fiches/types";

export const homophonesGrammaticauxReference: Fiche = {
  id: "orthographe-homophones-grammaticaux-reference",
  slug: "homophones-grammaticaux-guide-reference",
  title: "Homophones grammaticaux : guide de référence",
  domaine: "orthographe",
  model: "reference",
  accessTier: "premium",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 15,
  tags: [
    "homophones",
    "a/à",
    "ou/où",
    "et/est",
    "son/sont",
    "ce/se",
    "on/ont",
  ],
  notionsLiees: [
    "orthographe-homophones-sprint",
    "grammaire-nature-mots-sprint",
  ],
  exercicesAssocies: ["orth_homophones_gram", "orth_homophones_grammaticaux", "correction_homophones"],
  content: {
    model: "reference",
    intro:
      "Les homophones grammaticaux sont des mots qui se prononcent de la même façon mais qui s'écrivent différemment car ils appartiennent à des classes grammaticales distinctes. Leur confusion est l'une des erreurs les plus fréquentes en français, tant chez les élèves que dans les copies du CRPE. La clé pour les distinguer repose sur des tests de substitution : en remplaçant le mot par un équivalent, on identifie sa nature et donc son orthographe.",
    sections: [
      {
        id: "a-a-accent",
        title: "a / à",
        badge: "Paire essentielle",
        blocks: [
          {
            kind: "table",
            caption: "Distinguer « a » et « à »",
            headers: ["Forme", "Nature", "Test de substitution", "Exemple"],
            rows: [
              [
                "a",
                "Verbe avoir (3e pers. sg. présent)",
                "Remplacer par « avait » → la phrase reste correcte",
                "Il a faim. → Il avait faim. ✓",
              ],
              [
                "à",
                "Préposition",
                "Impossible de remplacer par « avait »",
                "Il va à Paris. → Il va avait Paris. ✗",
              ],
            ],
          },
          {
            kind: "rule",
            content:
              "Si on peut remplacer par « avait », c'est le verbe « a » (sans accent). Sinon, c'est la préposition « à » (avec accent grave).",
          },
          {
            kind: "tip",
            text: "Astuce mnémotechnique : « avait » commence par « a » — si ça marche avec « avait », c'est « a » sans accent.",
          },
        ],
      },
      {
        id: "ou-ou-accent",
        title: "ou / où",
        badge: "Paire essentielle",
        blocks: [
          {
            kind: "table",
            caption: "Distinguer « ou » et « où »",
            headers: ["Forme", "Nature", "Test de substitution", "Exemple"],
            rows: [
              [
                "ou",
                "Conjonction de coordination (alternative)",
                "Remplacer par « ou bien »",
                "Tu veux du thé ou du café ? → Tu veux du thé ou bien du café ? ✓",
              ],
              [
                "où",
                "Pronom relatif ou adverbe interrogatif (lieu / temps)",
                "Impossible de remplacer par « ou bien »",
                "La ville où j'habite. → La ville ou bien j'habite. ✗",
              ],
            ],
          },
          {
            kind: "rule",
            content:
              "Si on peut remplacer par « ou bien », c'est la conjonction « ou » (sans accent). Sinon, c'est le pronom/adverbe « où » (avec accent grave), qui indique un lieu ou un moment.",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "« Où » temporel",
                explanation:
                  "« Où » ne marque pas seulement le lieu, il peut aussi indiquer le temps : « Le jour où il est arrivé… ». Le test « ou bien » ne fonctionne pas, donc c'est bien « où » avec accent.",
              },
            ],
          },
        ],
      },
      {
        id: "et-est",
        title: "et / est",
        badge: "Paire courante",
        blocks: [
          {
            kind: "table",
            caption: "Distinguer « et » et « est »",
            headers: ["Forme", "Nature", "Test de substitution", "Exemple"],
            rows: [
              [
                "et",
                "Conjonction de coordination (addition)",
                "Remplacer par « et puis » ou « et aussi »",
                "Pierre et Marie jouent. → Pierre et puis Marie jouent. ✓",
              ],
              [
                "est",
                "Verbe être (3e pers. sg. présent)",
                "Remplacer par « était »",
                "Il est grand. → Il était grand. ✓",
              ],
            ],
          },
          {
            kind: "rule",
            content:
              "Si on peut remplacer par « était », c'est le verbe « est ». Si on peut remplacer par « et puis », c'est la conjonction « et ».",
          },
          {
            kind: "tip",
            text: "Le « et » relie toujours deux éléments de même fonction (deux noms, deux adjectifs, deux propositions…). Le « est » est toujours suivi d'un attribut ou d'un participe passé.",
          },
        ],
      },
      {
        id: "son-sont-ce-se-on-ont",
        title: "son/sont, ce/se, on/ont",
        badge: "Autres paires",
        blocks: [
          {
            kind: "table",
            caption: "Trois paires d'homophones fréquentes",
            headers: ["Paire", "Distinction", "Test", "Exemples"],
            rows: [
              [
                "son / sont",
                "son = déterminant possessif ; sont = verbe être (3e pers. pl.)",
                "Remplacer par « mon » (possessif) ou « étaient » (verbe)",
                "Son chat dort. (→ Mon chat dort. ✓) / Ils sont partis. (→ Ils étaient partis. ✓)",
              ],
              [
                "ce / se",
                "ce = déterminant démonstratif ou pronom ; se = pronom réfléchi",
                "Remplacer par « un/le » (démonstratif) ou conjuguer à la 1re pers. (réfléchi → « me »)",
                "Ce livre est beau. (→ Le livre. ✓) / Il se lave. (→ Je me lave. ✓)",
              ],
              [
                "on / ont",
                "on = pronom personnel indéfini (sujet) ; ont = verbe avoir (3e pers. pl.)",
                "Remplacer par « il/elle » (pronom) ou « avaient » (verbe)",
                "On mange. (→ Il mange. ✓) / Ils ont faim. (→ Ils avaient faim. ✓)",
              ],
            ],
          },
          {
            kind: "rule",
            content:
              "Le principe est toujours le même : identifier la classe grammaticale du mot grâce à un test de substitution. Si le remplacement fonctionne, on a confirmé la nature du mot et donc son orthographe.",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "« ce » devant « qui/que »",
                explanation:
                  "Devant « qui » ou « que », « ce » est un pronom démonstratif (ce qui m'inquiète, ce que je veux). Ne pas confondre avec « se » qui est toujours devant un verbe pronominal.",
              },
              {
                label: "« on n'a » vs « on a »",
                explanation:
                  "À l'oral, le « n' » de la négation disparaît souvent. Penser à vérifier le sens : « On n'a pas le temps » (négatif) ≠ « On a le temps » (affirmatif). La présence de « pas/plus/jamais » après le verbe signale la négation et le « n' » obligatoire.",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Les homophones grammaticaux se prononcent pareil mais appartiennent à des classes grammaticales différentes (verbe, préposition, conjonction, déterminant, pronom…).",
      "Le test de substitution est la méthode universelle : remplacer le mot par un équivalent de la même classe pour vérifier son identité.",
      "a/à : remplacer par « avait ». Si ça fonctionne → « a » (verbe). Sinon → « à » (préposition).",
      "ou/où : remplacer par « ou bien ». Si ça fonctionne → « ou » (conjonction). Sinon → « où » (lieu/temps).",
      "et/est : remplacer par « et puis » (conjonction) ou « était » (verbe être).",
      "Le même principe s'applique à son/sont (mon/étaient), ce/se (le/me), on/ont (il/avaient).",
    ],
    quiz: [
      {
        sentence:
          "Pour distinguer « a » de « à », on peut remplacer par « avait » : si la phrase reste correcte, c'est « a » sans accent.",
        isCorrect: true,
        explanation:
          "VRAI. « Avait » est la forme à l'imparfait du verbe avoir. Si la substitution fonctionne, le mot est bien le verbe « a » (3e personne du singulier du présent d'avoir).",
      },
      {
        sentence:
          "« Où » s'écrit toujours avec un accent grave quand il indique un lieu, mais jamais quand il indique un moment.",
        isCorrect: false,
        explanation:
          "FAUX. « Où » s'écrit avec un accent grave qu'il indique un lieu OU un moment : « La ville où j'habite » (lieu), « Le jour où il est venu » (temps). Sans accent, « ou » est une conjonction d'alternative.",
      },
      {
        sentence:
          "Dans « Il se lave les mains », « se » est un pronom réfléchi qu'on peut vérifier en conjuguant à la 1re personne : « Je me lave les mains ».",
        isCorrect: true,
        explanation:
          "VRAI. Le passage à la 1re personne transforme « se » en « me », ce qui confirme qu'il s'agit du pronom réfléchi et non du démonstratif « ce ».",
      },
      {
        sentence:
          "« Car » est un homophone grammatical de « quart » et nécessite un test de substitution pour les distinguer.",
        isCorrect: false,
        explanation:
          "FAUX. « Car » et « quart » ne sont pas des homophones grammaticaux. Les homophones grammaticaux sont des mots de même prononciation mais de classes grammaticales différentes (a/à, et/est…). « Car » (conjonction) et « quart » (nom) se prononcent différemment.",
      },
      {
        sentence:
          "Pour distinguer « son » (déterminant possessif) de « sont » (verbe être), on peut remplacer par « mon » : si la phrase reste correcte, c'est le déterminant.",
        isCorrect: true,
        explanation:
          "VRAI. « Mon » est un autre déterminant possessif. « Son chat » → « Mon chat » fonctionne, donc c'est bien le possessif. « Ils sont partis » → « Ils mon partis » ne fonctionne pas.",
      },
      {
        sentence:
          "Dans « On mange à midi », « on » peut être remplacé par « avaient » pour vérifier qu'il s'agit bien du pronom indéfini.",
        isCorrect: false,
        explanation:
          "FAUX. Pour vérifier que « on » est le pronom indéfini, on le remplace par « il » ou « quelqu'un » (On mange → Il mange ✓). C'est « ont » (verbe avoir) qu'on vérifie en remplaçant par « avaient ».",
      },
    ],
  },
};
