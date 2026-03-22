import type { Fiche } from "@/features/fiches/types";

export const didactiqueBrousseauContratSituationsSprint: Fiche = {
  id: "didactique-brousseau-contrat-situations-sprint",
  slug: "brousseau-contrat-didactique-situations-adidactiques",
  title: "Brousseau : contrat didactique et situations a-didactiques",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "Brousseau",
    "contrat didactique",
    "situation a-didactique",
    "dévolution",
    "institutionnalisation",
    "milieu",
    "théorie des situations",
    "didactique des mathématiques",
  ],
  notionsLiees: [
    "didactique-variables-didactiques-reference",
    "didactique-resolution-problemes-sprint",
    "didactique-vergnaud-structures-sprint",
    "didactique-erreurs-eleves-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les concepts fondamentaux de Brousseau. Pour les variables didactiques (un outil central de la théorie des situations), consulte la fiche Référence « Variables didactiques ».",
    oneLiner:
      "Le contrat didactique (Brousseau) est l'ensemble des attentes réciproques — souvent implicites — entre l'enseignant et l'élève. Une situation a-didactique est conçue pour que l'élève construise un savoir en interagissant avec un « milieu » (problème, matériel), sans que l'enseignant ne donne la réponse. La dévolution est le moment où l'enseignant transfère la responsabilité du problème à l'élève.",
    exampleCorrect: {
      sentence:
        "L'enseignant propose un jeu : trouver le nombre secret entre 1 et 100 en posant des questions « plus grand / plus petit ». Il n'intervient pas sur la stratégie. Les élèves découvrent seuls que la dichotomie est optimale. → C'est une situation a-didactique réussie avec dévolution effective.",
      explanation:
        "L'enseignant a conçu un milieu (le jeu) qui permet à l'élève de valider ou invalider ses stratégies sans intervention extérieure (rétroaction du milieu). La dévolution a fonctionné : l'élève accepte de chercher. L'institutionnalisation viendra après pour nommer la stratégie. ✓",
    },
    exampleWrong: {
      sentence:
        "L'enseignant pose un problème, puis donne immédiatement un indice car les élèves ne trouvent pas assez vite. Il pense « aider » les élèves à progresser.",
      explanation:
        "C'est un effet de contrat classique : l'enseignant rompt la dévolution en reprenant la responsabilité du problème. L'élève apprend que « si j'attends, le maître m'aidera », ce qui crée une dépendance et empêche la construction autonome du savoir. Brousseau appelle cela « l'effet Topaze » quand l'aide devient si transparente que la réponse est donnée.",
    },
    mainTrap:
      "Confondre « situation a-didactique » et « absence de didactique ». Une situation a-didactique est au contraire très soigneusement conçue : le milieu est pensé pour que l'élève puisse agir, recevoir des rétroactions, et ajuster sa stratégie sans que l'enseignant n'intervienne sur le savoir en jeu. L'enseignant reste présent (il gère l'organisation, relance les élèves bloqués), mais il ne donne pas la solution.",
    quiz: [
      {
        sentence:
          "Le contrat didactique est un document écrit signé entre l'enseignant et les élèves en début d'année.",
        isCorrect: false,
        explanation:
          "FAUX. Le contrat didactique est implicite. Il désigne les attentes non formulées de chaque partie : l'élève s'attend à ce que l'enseignant pose des problèmes qu'il peut résoudre, l'enseignant s'attend à ce que l'élève cherche. Les ruptures de ce contrat implicite génèrent des effets de contrat (Topaze, Jourdain).",
      },
      {
        sentence:
          "L'effet Topaze consiste à simplifier tellement les indices que l'élève trouve la réponse sans avoir compris.",
        isCorrect: true,
        explanation:
          "VRAI. Nommé d'après la pièce de Pagnol, l'effet Topaze survient quand l'enseignant, voulant éviter l'échec, réduit progressivement la difficulté jusqu'à donner la réponse. L'élève « réussit » sans apprentissage réel.",
      },
      {
        sentence:
          "La dévolution est le moment où l'enseignant corrige les erreurs des élèves.",
        isCorrect: false,
        explanation:
          "FAUX. La dévolution est le processus par lequel l'enseignant transfère à l'élève la responsabilité de résoudre le problème. La correction relève plutôt de la phase d'institutionnalisation (où le savoir est formulé, validé et organisé collectivement).",
      },
      {
        sentence:
          "Dans une situation a-didactique, c'est le milieu (et non l'enseignant) qui valide ou invalide les réponses de l'élève.",
        isCorrect: true,
        explanation:
          "VRAI. Le milieu est conçu pour fournir des rétroactions. Exemple : un puzzle géométrique qui ne « ferme » pas si les pièces sont mal placées. L'élève voit son erreur sans intervention de l'enseignant.",
      },
      {
        sentence:
          "L'institutionnalisation est une étape facultative qui peut être supprimée si les élèves ont bien compris pendant la phase a-didactique.",
        isCorrect: false,
        explanation:
          "FAUX. L'institutionnalisation est indispensable. C'est le moment où le savoir construit informellement par l'élève est formulé, nommé, et inscrit dans le savoir officiel de la classe. Sans elle, l'apprentissage reste fragile et non transférable.",
      },
    ],
  },
};
