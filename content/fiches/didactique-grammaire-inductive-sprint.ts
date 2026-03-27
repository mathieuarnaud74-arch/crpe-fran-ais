import type { Fiche } from "@/features/fiches/types";

export const grammaireInductiveSprint: Fiche = {
  id: "didactique-grammaire-inductive-sprint",
  slug: "enseigner-grammaire-en-contexte",
  title: "Enseigner la grammaire en contexte",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["grammaire", "démarche inductive", "observation de corpus", "programmes 2016", "métalangage"],
  notionsLiees: [],
  exercicesAssocies: ["did_enseignement_grammaire"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur la didactique de la grammaire (comment l'enseigner), pas sur la grammaire elle-même. Elle est particulièrement attendue dans la partie 2 de l'épreuve écrite du CRPE.",
    oneLiner:
      "Les programmes 2016 préconisent une approche de la grammaire par l'observation de corpus (textes authentiques), la manipulation, la formulation collective d'une règle, puis l'application. C'est une démarche inductive : des exemples → la règle. L'approche déductive (règle → exercices) reste valide mais est moins valorisée seule.",
    exampleCorrect: {
      sentence:
        "L'enseignant propose un corpus de 5 phrases contenant des compléments circonstanciels et demande aux élèves de trouver ce que ces groupes ont en commun.",
      explanation:
        "Démarche inductive : les élèves observent, manipulent, comparent — puis formulent eux-mêmes une règle provisoire que l'enseignant aide à stabiliser. Cette approche construit une compréhension durable plutôt qu'une mémorisation fragile.",
    },
    exampleWrong: {
      sentence:
        "Le professeur donne la définition du complément d'objet direct, puis fait faire 20 exercices d'application.",
      explanation:
        "C'est une approche purement déductive. Elle n'est pas interdite, mais les programmes 2016 préconisent de l'articuler à des démarches d'observation et de manipulation : faire découvrir avant de fixer.",
    },
    mainTrap:
      "Le piège est de croire que « grammaire en contexte » = « ne pas faire de leçon de grammaire ». FAUX. Les programmes demandent un enseignement explicite et structuré. « En contexte » signifie que les phrases étudiées viennent de textes lus en classe (corpus authentiques) plutôt que de phrases fabriquées hors contexte. La démarche reste rigoureuse et finit toujours par une synthèse formalisée.",
    quiz: [
      {
        sentence:
          "L'approche inductive consiste à partir de la règle pour aller vers les exemples.",
        isCorrect: false,
        explanation:
          "FAUX. L'approche inductive va des exemples vers la règle (observation → manipulation → formulation). C'est l'approche déductive qui part de la règle pour aller vers les exemples et les exercices.",
      },
      {
        sentence:
          "Les programmes 2016 préconisent que les phrases travaillées en grammaire soient tirées de textes lus en classe.",
        isCorrect: true,
        explanation:
          "Les programmes valorisent les corpus de phrases issus des textes du patrimoine ou des lectures de classe. Cela articule l'étude de la langue et la lecture littéraire, et donne du sens aux observations grammaticales.",
      },
      {
        sentence:
          "La manipulation syntaxique (déplacer, supprimer, substituer des groupes) est une activité centrale dans la démarche de grammaire au cycle 3.",
        isCorrect: true,
        explanation:
          "La manipulation est fondamentale : en déplaçant un groupe de mots, l'élève vérifie s'il est complément circonstanciel (mobile) ou essentiel (non-mobile). Ces critères fonctionnels remplacent les définitions purement sémantiques.",
      },
      {
        sentence:
          "Enseigner la grammaire de façon explicite est déconseillé dans les programmes 2016.",
        isCorrect: false,
        explanation:
          "FAUX. Les programmes demandent un enseignement explicite et structuré de la grammaire. La démarche inductive n'exclut pas la formalisation : à la fin, les élèves doivent avoir une règle claire, mémorisée et applicable.",
      },
      {
        sentence:
          "Le métalangage grammatical (COD, GN, subordonnée…) doit être progressivement installé dès le cycle 2.",
        isCorrect: true,
        explanation:
          "Les programmes 2016 prévoient l'installation progressive du vocabulaire grammatical dès le cycle 2, avec une complexification au cycle 3. Nommer les notions est une condition pour pouvoir les raisonner.",
      },
    ],
  },
};
