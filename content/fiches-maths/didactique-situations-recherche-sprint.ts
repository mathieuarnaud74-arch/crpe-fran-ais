import type { Fiche } from "@/features/fiches/types";

export const didactiqueSituationsRechercheSprint: Fiche = {
  id: "didactique-situations-recherche-sprint",
  slug: "situations-de-recherche-problemes-ouverts",
  title: "Les situations de recherche en mathématiques",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "situation de recherche",
    "problème ouvert",
    "Brousseau",
    "dévolution",
    "situation a-didactique",
    "résolution de problèmes",
    "stratégies",
    "cycle 2",
    "cycle 3",
  ],
  notionsLiees: [
    "didactique-brousseau-contrat-situations-sprint",
    "didactique-institutionnalisation-sprint",
    "didactique-resolution-problemes-sprint",
    "didactique-variables-didactiques-reference",
    "didactique-concevoir-sequence-operatoire",
  ],
  exercicesAssocies: [
    "math_didactique_resolution_problemes",
    "math_didactique_problemes_ouverts",
  ],
  content: {
    model: "sprint",
    disclaimer:
      "La situation de recherche est au cœur de la didactique des mathématiques. Au CRPE, elle est testée dans l'analyse de séances, la conception d'activités, et l'identification des variables didactiques.",
    oneLiner:
      "Une SITUATION DE RECHERCHE est un problème mathématique dont la solution n'est pas immédiatement accessible, conçu pour que les élèves construisent le savoir par leur propre activité. Elle se distingue de l'exercice d'application par : (1) la résistance du problème, (2) la pluralité des stratégies possibles, (3) la possibilité pour les élèves de valider eux-mêmes leur réponse (situation a-didactique de Brousseau). Elle conduit à une institutionnalisation d'un nouveau savoir.",
    exampleCorrect: {
      sentence:
        "En CE2, le maître propose : « Avec 24 carreaux, combien de rectangles différents pouvez-vous construire ? » Les élèves disposent de carreaux découpés, peuvent faire des essais, et sont invités à trouver toutes les solutions.",
      explanation:
        "C'est une situation de recherche valide. Le problème a plusieurs solutions (1×24, 2×12, 3×8, 4×6), ce qui impose une démarche systématique. Il est accessible à des élèves de CE2 (manipuler et compter). La validation est possible sans l'enseignant (on peut vérifier en comptant les carreaux). La recherche conduit à la notion de diviseurs, institutionnalisable ensuite. Les variables didactiques (nombre de carreaux, forme des pièces, formulation) permettent d'adapter la difficulté.",
    },
    exampleWrong: {
      sentence:
        "L'enseignant demande : « Calculez l'aire d'un rectangle de 6 cm sur 4 cm. » Un élève a du mal ; l'enseignant lui rappelle alors la formule A = L × l.",
      explanation:
        "Ce n'est pas une situation de recherche, mais un exercice d'application. La tâche est univoque (une seule procédure, une seule réponse), la solution est immédiatement accessible via la formule (pas de résistance), et la validation vient de l'enseignant (pas a-didactique). L'intervention de l'enseignant pour rappeler la formule avant que l'élève ait cherché constitue une rupture du contrat didactique typique des exercices d'application, pas une dévolution.",
    },
    mainTrap:
      "Confondre « exercice difficile » et « situation de recherche ». Un exercice difficile a une seule procédure attendue — l'élève cherche comment l'appliquer. Une situation de recherche, elle, permet plusieurs entrées, plusieurs stratégies, et c'est cette diversité qui produit les conditions de la construction du savoir. La DÉVOLUTION (faire accepter à l'élève la responsabilité du problème) est une caractéristique clé : l'élève doit agir comme si la résolution dépendait de lui, et non d'une technique fournie par l'enseignant.",
    quiz: [
      {
        sentence:
          "Dans une situation a-didactique au sens de Brousseau, l'élève peut valider sa réponse sans recourir à l'enseignant.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la définition même d'une situation a-didactique : le milieu (la situation elle-même, les outils disponibles, les données du problème) permet à l'élève de vérifier par lui-même si sa réponse est correcte. Par exemple, en construisant physiquement un rectangle avec des carreaux, l'élève voit directement s'il arrive au bon compte. Cette propriété est essentielle pour que l'élève s'engage vraiment dans la recherche plutôt que d'attendre la validation de l'enseignant.",
      },
      {
        sentence:
          "La dévolution est le processus par lequel l'enseignant explique la situation de recherche aux élèves avant qu'ils commencent.",
        isCorrect: false,
        explanation:
          "FAUX. La dévolution (Brousseau) est le processus par lequel l'enseignant TRANSFÈRE à l'élève la RESPONSABILITÉ du problème : l'élève accepte de le prendre en charge pour lui-même, pas pour satisfaire l'enseignant. Ce n'est pas une explication préalable, c'est une mise en condition qui fait que l'élève s'engage dans la résolution comme si le problème était sien. Une dévolution réussie se traduit par des élèves qui cherchent activement, essaient des stratégies, et ne se contentent pas d'attendre qu'on leur dise quoi faire.",
      },
      {
        sentence:
          "Une situation de recherche doit toujours avoir une seule bonne réponse pour être mathématiquement rigoureuse.",
        isCorrect: false,
        explanation:
          "FAUX. Certaines situations de recherche ont une seule réponse (ex : « quel est le plus grand rectangle que l'on peut construire avec 24 carreaux ? »), mais d'autres ont plusieurs réponses (problèmes ouverts, énumérations). Ce qui importe, ce n'est pas l'unicité de la réponse, mais la richesse du processus de recherche et la construction du savoir visé. Les problèmes ouverts, qui peuvent avoir plusieurs solutions valides ou des solutions partielles, sont particulièrement utiles pour développer la créativité mathématique et accepter l'incertitude.",
      },
      {
        sentence:
          "Les variables didactiques d'une situation de recherche permettent à l'enseignant d'adapter la complexité du problème sans en changer la nature mathématique.",
        isCorrect: true,
        explanation:
          "VRAI. Les variables didactiques (ou variables de commande) sont les paramètres du problème que l'enseignant peut modifier pour régler la difficulté. Par exemple, dans le problème des rectangles avec des carreaux : le nombre de carreaux (24, 36, 12…), la contrainte (uniquement des rectangles ou aussi des formes non rectangulaires), la nature des carreaux (tous identiques ou de tailles différentes). Modifier ces variables change la difficulté et les stratégies requises, sans changer la nature mathématique du problème (diviseurs, factorisation).",
      },
      {
        sentence:
          "Une situation de recherche ne peut pas comporter de trace écrite, car l'écrit serait trop contraignant pour la recherche libre.",
        isCorrect: false,
        explanation:
          "FAUX. La trace écrite est importante même dans les situations de recherche. Elle peut prendre des formes différentes selon les phases : des notes de recherche personnelles pendant la recherche (non normées), un tableau collaboratif lors de la mise en commun, et enfin la trace institutionnalisée à la fin. La trace de recherche permet aux élèves de structurer leurs essais, de revenir sur leurs stratégies, et de communiquer. L'enseignant veille à ce que cette trace évolue du « brouillon de recherche » à la « synthèse formalisée ».",
      },
    ],
  },
};
