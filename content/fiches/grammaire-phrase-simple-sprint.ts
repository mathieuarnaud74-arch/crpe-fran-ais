import type { Fiche } from "@/features/fiches/types";

export const phraseSimpleSprint: Fiche = {
  id: "grammaire-phrase-simple-sprint",
  slug: "phrase-simple-sprint",
  title: "La phrase simple : types et formes",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "debutant",
  utilite: "haute",
  estimatedMinutes: 4,
  tags: ["phrase", "type", "forme", "négation", "passif"],
  notionsLiees: ["nature-des-mots-sprint", "fonctions-grammaticales-sprint"],
  exercicesAssocies: ["grm_constituants_phrase", "surlignage_gn_gv"],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de rappel rapide sur les types et formes de phrase. Pour la phrase complexe (coordination, subordination), consulte la fiche Référence.",
    oneLiner:
      "Une phrase possède à la fois un type et une ou plusieurs formes : ces deux caractéristiques sont indépendantes et se combinent librement. Selon Éduscol 2021, il existe 3 types : déclaratif (énoncer un fait), interrogatif (poser une question), impératif (donner un ordre ou un conseil). L'exclamation n'est PAS un type mais une FORME de phrase. Les formes de phrase sont : négative, passive, exclamative, emphatique, impersonnelle. La phrase de base est positive, active et non exclamative. Une même phrase peut donc être interrogative ET négative, ou déclarative, passive ET emphatique.",
    exampleCorrect: {
      sentence: "N'a-t-il pas encore rendu sa copie ?",
      explanation:
        "Type : interrogative (question). Forme : négative (ne… pas). Ces deux caractéristiques coexistent sans contradiction.",
    },
    exampleWrong: {
      sentence: "« Ne partez pas ! » est une phrase de forme négative, donc ce n'est pas de type impératif.",
      explanation:
        "FAUX. Type et forme sont indépendants. Cette phrase est de type impératif (ordre) ET de forme négative (ne… pas) ET de forme exclamative.",
    },
    mainTrap:
      "Confondre type et forme est l'erreur la plus fréquente au CRPE. Selon Éduscol 2021, il n'existe que 3 types : déclaratif, interrogatif, impératif. L'exclamation est une FORME, pas un type. Une phrase n'a qu'un seul type, mais peut cumuler plusieurs formes. Exemple : « Est-ce qu'il ne viendra pas ? » est interrogative (type) ET négative (forme). « Comme c'est beau ! » est déclarative (type) ET exclamative (forme).",
    quiz: [
      {
        sentence:
          "La phrase « Comme cette journée est longue ! » est de type exclamatif.",
        isCorrect: false,
        explanation:
          "FAUX. Selon Éduscol 2021, l'exclamation est une FORME de phrase, pas un type. Cette phrase est de type déclaratif (elle énonce un constat) et de forme exclamative (émotion marquée par « comme » et le point d'exclamation). Les 3 seuls types sont : déclaratif, interrogatif, impératif.",
      },
      {
        sentence:
          "La phrase « Il n'est pas interdit de rêver » est de type négatif.",
        isCorrect: false,
        explanation:
          "La négation (ne… pas) est une forme, pas un type. Cette phrase est de type déclaratif et de forme négative.",
      },
      {
        sentence:
          "La phrase « La décision a été prise par le conseil » est de forme passive.",
        isCorrect: true,
        explanation:
          "Le sujet (« la décision ») subit l'action. Structure auxiliaire être + participe passé + complément d'agent (« par le conseil ») : forme passive.",
      },
      {
        sentence:
          "La phrase « Mangez vos légumes ! » est de type déclaratif.",
        isCorrect: false,
        explanation:
          "Le verbe conjugué à l'impératif indique le type impératif (ordre). Le type déclaratif énonce un fait.",
      },
      {
        sentence:
          "La phrase « C'est lui qui a trouvé la solution » est de forme emphatique.",
        isCorrect: true,
        explanation:
          "La tournure « c'est… qui » est une construction emphatique (mise en relief du sujet). La phrase reste de type déclaratif.",
      },
    ],
  },
};
