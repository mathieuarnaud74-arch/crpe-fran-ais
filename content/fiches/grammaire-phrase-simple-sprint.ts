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
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de rappel rapide sur les types et formes de phrase. Pour la phrase complexe (coordination, subordination), consulte la fiche Référence.",
    oneLiner:
      "Une phrase possède à la fois un type et une forme : ces deux caractéristiques sont indépendantes et se combinent librement. Le type indique l'intention du locuteur : déclarative (énonce un fait), interrogative (pose une question), injonctive (donne un ordre ou un conseil), exclamative (exprime une émotion). La forme marque des oppositions binaires : affirmative/négative, active/passive, personnelle/impersonnelle, neutre/emphatique. Une même phrase peut donc être interrogative ET négative, ou déclarative, passive ET emphatique.",
    exampleCorrect: {
      sentence: "N'a-t-il pas encore rendu sa copie ?",
      explanation:
        "Type : interrogative (question). Forme : négative (ne… pas). Ces deux caractéristiques coexistent sans contradiction.",
    },
    exampleWrong: {
      sentence: "« Ne partez pas ! » est une phrase de forme négative, donc ce n'est pas une injonctive.",
      explanation:
        "FAUX. Type et forme sont indépendants. Cette phrase est à la fois injonctive (ordre : impératif) ET négative (ne… pas).",
    },
    mainTrap:
      "Confondre type et forme est l'erreur la plus fréquente au CRPE. Le type (déclaratif, interrogatif, injonctif, exclamatif) et la forme (affirmative/négative, active/passive…) sont deux axes d'analyse distincts. Une phrase n'a qu'un seul type, mais peut cumuler plusieurs formes. Exemple : « Est-ce qu'il ne viendra pas ? » est interrogative (type) ET négative (forme).",
    quiz: [
      {
        sentence:
          "La phrase « Comme cette journée est longue ! » est de type exclamatif.",
        isCorrect: true,
        explanation:
          "La présence de « comme » exclamatif et du point d'exclamation indique le type exclamatif.",
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
          "Le mode impératif et l'intonation injonctive indiquent le type injonctif (ordre). Le type déclaratif énonce un fait.",
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
