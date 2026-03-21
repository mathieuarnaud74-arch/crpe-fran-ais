import type { Fiche } from "@/features/fiches/types";

export const schemaNarratifOperatoire: Fiche = {
  id: "comprehension-texte-schema-narratif-operatoire",
  slug: "schema-narratif-arbre-decision",
  title: "Analyser un récit : le schéma narratif en pratique",
  domaine: "comprehension_texte",
  model: "operatoire",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "schéma narratif",
    "schéma quinaire",
    "récit",
    "situation initiale",
    "élément perturbateur",
    "péripéties",
    "dénouement",
    "compréhension",
  ],
  notionsLiees: [
    "comprehension-texte-schema-narratif-sprint",
    "comprehension-texte-reperage-explicite-sprint",
    "comprehension-texte-implicite-inference-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Le texte raconte-t-il une histoire avec des événements ?",
    decisionTree: {
      type: "question",
      text: "Le texte raconte-t-il une histoire avec des événements (actions, transformations) ?",
      no: {
        type: "leaf",
        label: "Texte non narratif",
        rule: "Ce texte n'est pas un récit. Il relève d'un autre type (descriptif, explicatif, argumentatif, injonctif). Utiliser un autre outil d'analyse.",
        example:
          "Un article encyclopédique sur les volcans décrit et explique, mais ne raconte pas une histoire.",
      },
      yes: {
        type: "question",
        text: "Y a-t-il une transformation entre le début et la fin ? L'état final diffère-t-il de l'état initial ?",
        no: {
          type: "leaf",
          label: "Récit apparent sans transformation",
          rule: "Si le texte présente des événements mais sans transformation d'un état initial à un état final, il s'agit probablement d'un texte descriptif ou informatif déguisé en récit, ou d'une chronique (succession d'événements sans intrigue).",
          example:
            "« Un jour, Pierre se leva, mangea, alla à l'école, rentra chez lui et se coucha. » → Suite d'actions sans rupture ni transformation : pas de schéma narratif au sens strict.",
        },
        yes: {
          type: "question",
          text: "Peut-on identifier un événement précis qui rompt l'équilibre initial (élément perturbateur) ?",
          no: {
            type: "leaf",
            label: "Récit à structure non canonique",
            rule: "Certains récits littéraires ne suivent pas le schéma quinaire classique (récits in medias res, récits à structure éclatée, nouvelles à chute). Le schéma narratif est un outil, pas une loi universelle.",
            example:
              "Un récit qui commence par le dénouement et reconstitue l'histoire par des retours en arrière (analepses).",
          },
          yes: {
            type: "leaf",
            label: "Schéma quinaire applicable",
            rule: "Identifier les 5 étapes du schéma narratif : 1) Situation initiale (état stable, cadre spatio-temporel, personnages) — 2) Élément perturbateur (événement qui rompt l'équilibre, souvent marqué par « un jour », « soudain », passé simple) — 3) Péripéties (actions et réactions pour tenter de résoudre le problème) — 4) Élément de résolution (action ou événement qui dénoue l'intrigue) — 5) Situation finale (nouvel équilibre, état transformé).",
            example:
              "Le Petit Chaperon rouge : 1) Une fillette vit avec sa mère — 2) Sa mère l'envoie chez sa grand-mère — 3) Elle rencontre le loup, s'attarde dans la forêt — 4) Le chasseur ouvre le ventre du loup — 5) Le Petit Chaperon rouge et sa grand-mère sont sauvées.",
          },
        },
      },
    },
    workedExample: {
      phrase:
        "Le Corbeau et le Renard (La Fontaine) : Maître Corbeau, sur un arbre perché, tenait en son bec un fromage. Maître Renard, par l'odeur alléché, lui tint à peu près ce langage : « Hé ! bonjour, Monsieur du Corbeau. Que vous êtes joli ! » Le Corbeau ouvrit un large bec, laissa tomber sa proie. Le Renard s'en saisit et dit : « Apprenez que tout flatteur vit aux dépens de celui qui l'écoute. »",
      steps: [
        "Étape 1 — Situation initiale : un corbeau est perché sur un arbre et tient un fromage dans son bec. C'est un état stable, le cadre est posé.",
        "Étape 2 — Élément perturbateur : un renard arrive, attiré par l'odeur du fromage. Il décide de s'adresser au corbeau pour le lui prendre. L'équilibre est menacé.",
        "Étape 3 — Péripéties : le renard flatte le corbeau (son plumage, sa voix) pour l'amener à ouvrir le bec. C'est la stratégie de ruse.",
        "Étape 4 — Élément de résolution : le corbeau, flatté, ouvre le bec pour chanter → le fromage tombe. Le renard s'en empare.",
        "Étape 5 — Situation finale : le corbeau a perdu son fromage, le renard a gagné. L'état est transformé. La morale conclut : « Tout flatteur vit aux dépens de celui qui l'écoute. »",
      ],
    },
    quiz: [
      {
        sentence:
          "L'élément perturbateur est toujours négatif (un malheur, un danger).",
        isCorrect: false,
        explanation:
          "FAUX. L'élément perturbateur est l'événement qui rompt l'équilibre initial. Il peut être positif (une rencontre heureuse, un héritage) ou négatif (un danger, une disparition). L'essentiel est qu'il déclenche l'action.",
      },
      {
        sentence:
          "La situation initiale est généralement à l'imparfait, et l'élément perturbateur au passé simple.",
        isCorrect: true,
        explanation:
          "VRAI. C'est un marqueur classique : l'imparfait installe le décor (aspect duratif), le passé simple marque la rupture (aspect ponctuel). « Il était une fois… Un jour, un loup survint. »",
      },
      {
        sentence:
          "Tous les textes littéraires suivent obligatoirement le schéma narratif en 5 étapes.",
        isCorrect: false,
        explanation:
          "FAUX. Le schéma quinaire est un outil d'analyse adapté aux récits classiques (contes, fables, nouvelles simples). De nombreux textes littéraires s'en écartent : récits in medias res, structures enchâssées, nouvelles à chute.",
      },
      {
        sentence:
          "La situation finale peut être identique à la situation initiale (retour à l'équilibre d'origine).",
        isCorrect: true,
        explanation:
          "VRAI. Certains récits reviennent à l'état initial (récits circulaires). Cependant, même dans ce cas, le personnage a souvent été transformé intérieurement par les péripéties.",
      },
      {
        sentence:
          "Un texte qui décrit les étapes de fabrication du pain est un récit car il présente une succession d'actions.",
        isCorrect: false,
        explanation:
          "FAUX. Une succession d'actions (injonctif ou explicatif) ne suffit pas à constituer un récit. Un récit implique une transformation, un élément perturbateur et une résolution. Le texte sur la fabrication du pain est un texte procédural (injonctif).",
      },
    ],
    didacticNote:
      "En cycle 2, on introduit le schéma narratif à partir de contes bien structurés (Le Petit Chaperon rouge, Les Trois Petits Cochons). Les élèves repèrent d'abord le début et la fin, puis l'événement déclencheur. En cycle 3, on travaille les péripéties et la résolution, puis on confronte le schéma à des récits qui s'en écartent pour développer l'esprit critique.",
  },
};
