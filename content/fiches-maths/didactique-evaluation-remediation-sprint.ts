import type { Fiche } from "@/features/fiches/types";

export const didactiqueEvaluationRemediationSprint: Fiche = {
  id: "didactique-evaluation-remediation-sprint",
  slug: "evaluation-formative-remediation-strategies",
  title: "Évaluation formative et remédiation en mathématiques",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "évaluation",
    "évaluation formative",
    "évaluation sommative",
    "remédiation",
    "différenciation",
    "diagnostic",
    "erreur",
    "feedback",
  ],
  notionsLiees: [
    "didactique-erreurs-eleves-reference",
    "didactique-differenciation-reference",
    "didactique-analyser-erreur-operatoire",
    "didactique-brousseau-contrat-situations-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur l'évaluation et la remédiation. Pour l'analyse des erreurs d'élèves, consulte la fiche Référence « Erreurs d'élèves ». Pour la différenciation, consulte la fiche Référence « Différenciation ».",
    oneLiner:
      "L'évaluation formative informe l'enseignant et l'élève sur les apprentissages en cours pour ajuster l'enseignement. La remédiation n'est pas la répétition : elle suppose un diagnostic de l'erreur (procédurale, conceptuelle, liée au contrat didactique) pour proposer un dispositif adapté (manipulation, changement de registre, tutorat, variable didactique modifiée).",
    exampleCorrect: {
      sentence:
        "Un élève ajoute les numérateurs et les dénominateurs : 1/3 + 1/4 = 2/7. L'enseignant diagnostique une erreur conceptuelle (l'élève ne comprend pas que le dénominateur désigne la taille des parts). Il propose une remédiation par manipulation : comparer des parts de gâteau de tailles différentes.",
      explanation:
        "Le diagnostic est pertinent : l'erreur n'est pas un manque de soin mais une conception erronée (la fraction comme deux nombres indépendants). La remédiation par manipulation cible cette conception en rendant visible que des parts de tailles différentes ne peuvent pas s'additionner directement. ✓",
    },
    exampleWrong: {
      sentence:
        "Un élève fait 1/3 + 1/4 = 2/7. L'enseignant lui dit « c'est faux, il faut mettre au même dénominateur » et lui redonne 10 exercices du même type.",
      explanation:
        "La remédiation est inadaptée. Donner la procédure correcte sans traiter la conception erronée ne résout rien : l'élève appliquera la règle mécaniquement sans comprendre pourquoi. La répétition d'exercices identiques renforce l'automatisme mais pas la compréhension. Il faut d'abord déconstruire la conception fausse, puis reconstruire la bonne.",
    },
    mainTrap:
      "Confondre évaluation formative et évaluation sommative. La sommative sanctionne (note, validation) en fin de séquence. La formative régule pendant l'apprentissage : elle identifie où en est l'élève pour adapter la suite. Autre piège : croire que « remédier = refaire la même chose ». Une vraie remédiation change l'angle d'attaque : autre registre (manipulatoire, graphique, verbal), autre variable didactique, autre type de problème.",
    quiz: [
      {
        sentence:
          "L'évaluation formative a pour objectif principal de donner une note à l'élève.",
        isCorrect: false,
        explanation:
          "FAUX. L'évaluation formative vise à informer l'enseignant et l'élève sur l'état des apprentissages pour ajuster l'enseignement. Elle est généralement non notée. C'est l'évaluation sommative qui attribue une note.",
      },
      {
        sentence:
          "Une erreur récurrente chez plusieurs élèves doit être traitée collectivement, pas individuellement.",
        isCorrect: true,
        explanation:
          "VRAI. Si l'erreur est partagée, elle révèle probablement un obstacle didactique ou un défaut de la situation d'enseignement, pas un problème individuel. Un retour collectif (débat, confrontation, nouvelle situation) est plus efficace qu'une remédiation individuelle répétée.",
      },
      {
        sentence:
          "La meilleure remédiation pour un élève qui échoue en calcul de fractions est de lui donner davantage d'exercices de fractions.",
        isCorrect: false,
        explanation:
          "FAUX. La répétition sans changement d'approche risque de renforcer les erreurs. Il faut d'abord diagnostiquer la nature de l'erreur (procédurale ? conceptuelle ? liée au sens de la fraction ?), puis adapter le dispositif : manipulation, représentation graphique, comparaison de procédures correctes et erronées.",
      },
      {
        sentence:
          "L'évaluation diagnostique se place en début de séquence pour identifier les prérequis et les conceptions des élèves.",
        isCorrect: true,
        explanation:
          "VRAI. Elle permet d'anticiper les obstacles, de repérer les prérequis non maîtrisés, et d'adapter la séquence avant même de commencer. C'est un outil de différenciation préventive.",
      },
      {
        sentence:
          "Changer de registre de représentation (passer du numérique au graphique, ou du symbolique au manipulatoire) est une stratégie de remédiation efficace car elle oblige l'élève à reconsidérer sa compréhension.",
        isCorrect: true,
        explanation:
          "VRAI. Le changement de registre (Duval) force l'élève à mobiliser le concept sous une autre forme, ce qui révèle et corrige les conceptions partielles. Exemple : un élève qui échoue en fractions numériques peut réussir avec des parts de pizza, ce qui permet de reconstruire le sens.",
      },
    ],
  },
};
