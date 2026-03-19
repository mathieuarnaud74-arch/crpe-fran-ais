import type { Fiche } from "@/features/fiches/types";

export const connecteursSprint: Fiche = {
  id: "lexique-connecteurs-sprint",
  slug: "connecteurs-sprint",
  title: "Connecteurs logiques",
  domaine: "lexique",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["connecteurs", "organisateurs textuels", "cohésion", "argumentation"],
  notionsLiees: ["texte-argumentatif-sprint", "phrase-complexe-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche couvre les catégories de connecteurs utiles pour analyser un texte argumentatif ou produire une réponse organisée au CRPE. Elle signale également les emplois fautifs fréquents.",
    oneLiner:
      "Les connecteurs logiques signalent les relations de sens entre propositions : addition (de plus, en outre), opposition (mais, cependant), cause (car, en effet), conséquence (donc, ainsi), concession (certes, bien que), reformulation (c'est-à-dire), illustration (par exemple), conclusion (en somme, bref). Chaque connecteur est une instruction de lecture.",
    exampleCorrect: {
      sentence:
        "« Certes, cette méthode est rapide ; elle demeure néanmoins insuffisante pour consolider les apprentissages. »",
      explanation:
        "Usage correct du connecteur de concession « certes » suivi de « néanmoins » (connecteur d'opposition/réfutation). La structure concessive reconnaît un élément valide de la thèse adverse avant de la réfuter — procédé rhétorique attendu dans une argumentation développée au CRPE.",
    },
    exampleWrong: {
      sentence:
        "« Les élèves progressent. Donc, en effet, ils ont travaillé. »",
      explanation:
        "FAUX dans l'usage combiné. « Donc » exprime une conséquence (A entraîne B) ; « en effet » introduit une cause ou explication (B parce que A). Ici la relation causale est inversée, et les deux connecteurs sont contradictoires : la progression est la conséquence du travail, non l'inverse. Il faut choisir : « Ils ont travaillé ; en effet, ils progressent » ou « Ils ont travaillé, donc ils progressent ».",
    },
    mainTrap:
      "« Par contre » est jugé familier dans certains contextes soutenus par les puristes — préférer « en revanche » à l'écrit soutenu, bien que les deux soient acceptés aujourd'hui par l'Académie française. Plus grave : employer « car » au début d'une phrase indépendante sans relation causale réelle (« Il fait beau. Car le soleil brille. ») — « car » est une conjonction de coordination qui doit relier deux propositions dans le même énoncé.",
    quiz: [
      {
        sentence:
          "« Il n'a pas révisé ; par conséquent, il a échoué. » — le connecteur est correctement employé.",
        isCorrect: true,
        explanation:
          "« Par conséquent » exprime la conséquence : l'échec résulte du manque de révision. La relation logique est correcte et le connecteur bien positionné entre les deux propositions.",
      },
      {
        sentence:
          "« En effet » peut remplacer « donc » dans une phrase exprimant une conséquence.",
        isCorrect: false,
        explanation:
          "FAUX. « En effet » introduit une explication ou confirmation d'un énoncé précédent (relation de cause/justification). « Donc » exprime une conséquence. Ce sont deux directions logiques opposées : cause → justification (en effet) vs cause → résultat (donc). Les substituer produit un contresens.",
      },
      {
        sentence:
          "Dans un texte argumentatif, les connecteurs de concession (certes, il est vrai que…) fragilisent la thèse de l'auteur.",
        isCorrect: false,
        explanation:
          "FAUX. La concession est une stratégie rhétorique qui renforce la thèse en reconnaissant une objection pour mieux la dépasser. L'auteur qui concède montre sa bonne foi et sa maîtrise du sujet, ce qui rend sa réfutation plus convaincante.",
      },
      {
        sentence:
          "« Ainsi » peut fonctionner à la fois comme connecteur de conséquence et comme connecteur d'illustration.",
        isCorrect: true,
        explanation:
          "Exact. « Ainsi » peut conclure une démonstration (conséquence : « Ainsi, nous pouvons affirmer que… ») ou introduire un exemple (illustration : « Ainsi, Rousseau soutient que… »). Le sens est déterminé par le contexte discursif.",
      },
      {
        sentence:
          "Les organisateurs textuels (premièrement, ensuite, enfin) sont des connecteurs logiques.",
        isCorrect: false,
        explanation:
          "Pas tout à fait. Les organisateurs textuels structurent l'ordre du discours (logique de progression) sans exprimer de relation logique entre les contenus. Les connecteurs logiques, eux, expriment une relation de sens (cause, opposition, conséquence…). La distinction est pertinente pour enseigner la cohérence textuelle au cycle 3.",
      },
    ],
  },
};
