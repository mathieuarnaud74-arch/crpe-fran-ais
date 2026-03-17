import type { Fiche } from "@/features/fiches/types";

export const texteDocumentaireSprint: Fiche = {
  id: "comprehension-texte-documentaire-sprint",
  slug: "comprendre-texte-documentaire",
  title: "Comprendre un texte documentaire",
  subtitle: "Révision express — 5 min",
  domaine: "comprehension_texte",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "texte documentaire",
    "non-fiction",
    "lecture informationnelle",
    "fait vs opinion",
    "organisateurs textuels",
  ],
  notionsLiees: ["reperage-informations-explicites", "explicite-implicite-inferences"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche traite du texte documentaire au sens large (lecture informationnelle). Les textes argumentatifs et injonctifs font l'objet de fiches séparées.",
    oneLiner:
      "Le texte documentaire (encyclopédie, article scientifique, manuel scolaire, album documentaire) a pour fonction principale d'informer sur le monde réel. Sa structure est non linéaire : le lecteur utilise les organisateurs textuels (titre, sous-titres, légendes, schémas, encadrés) pour orienter sa lecture. Trois compétences clés au CRPE : 1) identifier la fonction et l'organisation du texte, 2) localiser une information précise, 3) distinguer fait et opinion.",
    exampleCorrect: {
      sentence:
        "Documentaire sur les abeilles avec titre, 3 sous-titres et une photo légendée. — Stratégie : lire d'abord titre et sous-titres pour anticiper le contenu avant la lecture complète.",
      explanation:
        "Cette stratégie de prévisualisation (previewing) est recommandée pour les textes documentaires. Elle active les connaissances antérieures et permet de cibler la lecture. C'est une stratégie enseignable dès le CE2 et explicitement attendue au cycle 3.",
    },
    exampleWrong: {
      sentence:
        "Dans un texte documentaire, les informations sont toujours neutres et objectives : il n'y a jamais d'opinion de l'auteur.",
      explanation:
        "FAUX. Même les documentaires comportent des choix d'emphase, des formulations évaluatives et des points de vue implicites (ex. : « malheureusement, les abeilles disparaissent »). Distinguer fait et opinion dans un documentaire est une compétence de lecture critique attendue au CRPE.",
    },
    mainTrap:
      "Le piège principal est de traiter un texte documentaire comme un récit — en le lisant linéairement du début à la fin. La lecture documentaire est sélective et instrumentale : on utilise les organisateurs textuels pour accéder directement à l'information cherchée. À l'école primaire, les élèves formés uniquement à la lecture narrative ont souvent du mal avec les documentaires. L'enseignant doit explicitement enseigner les stratégies de navigation (sommaire, titres, index, légendes) — elles ne vont pas de soi.",
    quiz: [
      {
        sentence:
          "La structure d'un texte documentaire est toujours linéaire : on le lit du début à la fin comme un roman.",
        isCorrect: false,
        explanation:
          "Faux. Le texte documentaire est conçu pour une lecture sélective et non linéaire : on utilise le sommaire, les titres de sections, les index pour accéder directement à l'information cherchée. La lecture documentaire mobilise des stratégies différentes de la lecture narrative.",
      },
      {
        sentence:
          "Dans un manuel scolaire, la légende d'une photographie peut contenir des informations absentes du texte principal.",
        isCorrect: true,
        explanation:
          "Oui. Les légendes, encadrés et schémas constituent des zones de texte autonomes pouvant compléter ou préciser le texte principal. Apprendre aux élèves à lire tous les éléments d'une page documentaire (paratextes inclus) fait partie des objectifs de lecture au cycle 3.",
      },
      {
        sentence:
          "La phrase « Les éléphants sont des animaux magnifiques qui méritent notre protection » dans un documentaire est un fait vérifiable.",
        isCorrect: false,
        explanation:
          "Non : « magnifiques » est un jugement de valeur, « méritent notre protection » est une opinion. Ce ne sont pas des faits. Distinguer fait et opinion est une compétence de lecture critique fondamentale, attendue aussi bien au CRPE que pour les élèves de cycle 3.",
      },
      {
        sentence:
          "Un élève de CM1 peut activer ses connaissances antérieures sur les volcans pour mieux comprendre un documentaire sur ce sujet.",
        isCorrect: true,
        explanation:
          "L'activation des connaissances préalables (prior knowledge) est l'un des leviers les plus puissants de la compréhension en lecture. Plus un lecteur connaît le domaine, mieux il comprend un texte documentaire qui s'y rapporte. L'enseignant peut exploiter cette activation en phase d'anticipation.",
      },
      {
        sentence:
          "Le texte documentaire s'oppose strictement au texte narratif : il ne peut jamais raconter une histoire.",
        isCorrect: false,
        explanation:
          "Faux. Certains documentaires adoptent une structure narrative pour rendre leur contenu accessible (biographies, récits historiques, albums documentaires). La frontière documentaire/narratif est perméable — et cette hybridité est exploitée dans de nombreux albums documentaires utilisés à l'école primaire.",
      },
    ],
  },
};
