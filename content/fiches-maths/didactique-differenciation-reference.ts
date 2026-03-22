import type { Fiche } from "@/features/fiches/types";

export const didactiqueDifferenciationReference: Fiche = {
  id: "didactique-differenciation-reference",
  slug: "differenciation-maths-outils-strategies",
  title: "Différenciation en maths : outils et stratégies",
  subtitle: "Fiche de référence complète",
  domaine: "didactique_maths",
  model: "reference",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "différenciation",
    "hétérogénéité",
    "groupe de besoin",
    "étayage",
    "adaptation",
    "évaluation diagnostique",
    "PPRE",
    "inclusion",
  ],
  notionsLiees: [
    "didactique-variables-didactiques-reference",
    "didactique-erreurs-eleves-reference",
    "didactique-programmes-cycles-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "La différenciation pédagogique en mathématiques est une obligation institutionnelle et une nécessité didactique face à l'hétérogénéité des élèves. Elle ne consiste pas à faire des choses différentes avec chaque élève, mais à proposer des chemins variés vers le même objectif d'apprentissage. Cette fiche présente les leviers de différenciation, les dispositifs organisationnels et les erreurs à éviter.",
    sections: [
      {
        id: "definition-principes",
        title: "Définition et principes",
        badge: "Théorie",
        blocks: [
          {
            kind: "rule",
            content:
              "La différenciation pédagogique (Perrenoud, 1997 ; Meirieu, 1985) consiste à adapter l'enseignement aux besoins identifiés des élèves pour que chacun puisse atteindre les objectifs communs. En mathématiques, elle s'appuie principalement sur trois leviers : le contenu (variables didactiques), le processus (modalités de travail) et les productions attendues (forme et niveau de la réponse).",
          },
          {
            kind: "table",
            caption: "Les trois leviers de la différenciation",
            headers: ["Levier", "Description", "Exemple en maths"],
            rows: [
              [
                "Contenu",
                "Adapter le niveau de difficulté de la tâche (variables didactiques)",
                "Proposer le même problème avec des nombres plus petits ou sans retenue pour les élèves en difficulté.",
              ],
              [
                "Processus",
                "Adapter les modalités de travail (temps, support, étayage, regroupement)",
                "Fournir du matériel de manipulation aux élèves qui en ont besoin, augmenter le temps, travailler en binôme.",
              ],
              [
                "Production",
                "Adapter ce qui est attendu comme trace de la résolution",
                "Accepter un schéma au lieu d'une phrase mathématique pour les élèves en difficulté de rédaction.",
              ],
            ],
          },
        ],
      },
      {
        id: "dispositifs",
        title: "Dispositifs organisationnels",
        badge: "Organisation",
        blocks: [
          {
            kind: "table",
            caption: "Dispositifs de différenciation en classe de maths",
            headers: ["Dispositif", "Description", "Avantages / Limites"],
            rows: [
              [
                "Groupes de besoin",
                "Regroupement temporaire d'élèves partageant un même obstacle, pour une remédiation ciblée.",
                "Avantage : ciblage précis. Limite : doit être temporaire et évolutif, pas un groupe de niveau figé.",
              ],
              [
                "Ateliers tournants",
                "Les élèves passent par différents ateliers (manipulation, exercices, jeux, résolution de problèmes).",
                "Avantage : variété des activités, autonomie. Limite : gestion complexe, risque d'ateliers « occupationnels ».",
              ],
              [
                "Tutorat entre pairs",
                "Un élève avancé aide un élève en difficulté sur une tâche précise.",
                "Avantage : bénéficie aux deux (l'expert consolide en expliquant). Limite : le tuteur doit être formé, pas simple « donnant la réponse ».",
              ],
              [
                "Plan de travail",
                "Contrat individuel sur une période, avec des tâches au choix ou assignées selon les besoins.",
                "Avantage : autonomie, responsabilisation. Limite : nécessite un suivi régulier pour éviter l'accumulation de retard.",
              ],
              [
                "Co-intervention",
                "Deux enseignants (titulaire + RASED, PE + PES) interviennent simultanément auprès de groupes différenciés.",
                "Avantage : réduction de l'effectif par groupe. Limite : dépend de la disponibilité du deuxième intervenant.",
              ],
            ],
          },
        ],
      },
      {
        id: "etayage",
        title: "L'étayage en mathématiques",
        badge: "Pratique",
        blocks: [
          {
            kind: "rule",
            content:
              "L'étayage (Bruner, 1983) désigne l'ensemble des interventions de l'enseignant qui permettent à l'élève de réaliser une tâche qu'il ne pourrait pas faire seul (zone proximale de développement de Vygotski). En mathématiques, les formes d'étayage incluent : reformuler la consigne, fournir un schéma amorce, proposer un cas plus simple d'abord, poser des questions guidantes, fournir du matériel de manipulation.",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Étayage ≠ faire à la place de l'élève",
                explanation:
                  "L'étayage doit maintenir l'élève en activité cognitive. Donner la réponse, dicter la procédure ou « sur-guider » retire à l'élève l'occasion de construire son raisonnement. L'étayage efficace soutient sans se substituer.",
              },
              {
                label: "L'étayage doit être progressivement retiré",
                explanation:
                  "L'objectif est l'autonomie. Un étayage permanent crée une dépendance. L'enseignant doit planifier le désétayage : retirer progressivement les aides (matériel, schéma amorce) au fur et à mesure que l'élève progresse.",
              },
            ],
          },
        ],
      },
      {
        id: "evaluation-diagnostique",
        title: "L'évaluation diagnostique comme point de départ",
        badge: "Évaluation",
        blocks: [
          {
            kind: "rule",
            content:
              "La différenciation efficace commence par un diagnostic : identifier les acquis et les obstacles de chaque élève. Les évaluations nationales (CP, CE1, 6e), les évaluations diagnostiques en début de séquence et l'analyse des productions d'élèves fournissent cette information. Sans diagnostic, la différenciation est aveugle.",
          },
          {
            kind: "table",
            caption: "Types d'évaluation et rôle dans la différenciation",
            headers: ["Type", "Moment", "Rôle pour la différenciation"],
            rows: [
              [
                "Diagnostique",
                "Début de séquence ou de période",
                "Identifier les acquis et les obstacles. Former les groupes de besoin.",
              ],
              [
                "Formative",
                "En cours de séquence",
                "Ajuster l'enseignement en temps réel. Réorienter la différenciation.",
              ],
              [
                "Sommative",
                "Fin de séquence ou de période",
                "Vérifier les acquis. Identifier les élèves nécessitant un PPRE.",
              ],
            ],
          },
        ],
      },
      {
        id: "erreurs-a-eviter",
        title: "Erreurs courantes dans la différenciation",
        badge: "Vigilance",
        blocks: [
          {
            kind: "watchout",
            items: [
              {
                label: "Groupes de niveau figés",
                explanation:
                  "Un groupe de niveau permanent (les « forts » et les « faibles ») crée un effet de plafond de verre : les élèves en difficulté ne sont plus exposés aux problèmes complexes et ne progressent plus. Les groupes doivent être temporaires, liés à un obstacle identifié, et révisés régulièrement.",
              },
              {
                label: "Simplifier l'objectif au lieu de la tâche",
                explanation:
                  "Différencier ne signifie pas abaisser les attentes. Tous les élèves doivent viser les mêmes compétences du socle. On adapte le chemin (variables didactiques, étayage), pas la destination.",
              },
              {
                label: "Différencier uniquement par la quantité",
                explanation:
                  "Donner « moins d'exercices » aux élèves en difficulté et « plus d'exercices » aux avancés n'est pas de la différenciation. L'enjeu est d'adapter la nature de la tâche, pas sa quantité.",
              },
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "Trois leviers de différenciation : contenu (variables didactiques), processus (modalités de travail), productions attendues.",
      "Dispositifs : groupes de besoin (temporaires), ateliers tournants, tutorat entre pairs, plan de travail, co-intervention.",
      "L'étayage (Bruner) soutient l'élève dans sa zone proximale de développement sans se substituer à lui. Il doit être progressivement retiré (désétayage).",
      "La différenciation commence par un diagnostic (évaluation diagnostique). Sans diagnostic, la différenciation est aveugle.",
      "Erreurs à éviter : groupes de niveau figés, simplification des objectifs au lieu des tâches, différenciation uniquement quantitative.",
    ],
    quiz: [
      {
        sentence:
          "Différencier en mathématiques signifie proposer des objectifs d'apprentissage différents selon les élèves.",
        isCorrect: false,
        explanation:
          "FAUX. Les objectifs (compétences du socle) sont les mêmes pour tous. La différenciation porte sur les chemins pour atteindre ces objectifs : adapter la tâche, le support, l'étayage, le temps, mais pas la destination.",
      },
      {
        sentence:
          "Les groupes de besoin en mathématiques doivent être temporaires et révisés régulièrement en fonction des progrès des élèves.",
        isCorrect: true,
        explanation:
          "VRAI. Un groupe de besoin est constitué autour d'un obstacle identifié et dissous une fois l'obstacle surmonté. Des groupes figés deviennent des groupes de niveau, ce qui est contre-productif.",
      },
      {
        sentence:
          "L'étayage selon Bruner consiste à donner la réponse à l'élève quand il est en difficulté pour ne pas le décourager.",
        isCorrect: false,
        explanation:
          "FAUX. L'étayage maintient l'élève en activité cognitive en lui fournissant les aides nécessaires (reformulation, schéma, matériel) sans donner la réponse. Donner la réponse retire l'occasion d'apprendre.",
      },
      {
        sentence:
          "L'évaluation diagnostique est un outil essentiel pour constituer des groupes de besoin en début de séquence.",
        isCorrect: true,
        explanation:
          "VRAI. L'évaluation diagnostique identifie les acquis et les obstacles de chaque élève, ce qui permet de former des groupes de besoin ciblés pour la séquence. C'est le point de départ de toute différenciation efficace.",
      },
      {
        sentence:
          "Le tutorat entre pairs bénéficie uniquement à l'élève qui reçoit l'aide, pas à celui qui la donne.",
        isCorrect: false,
        explanation:
          "FAUX. La recherche montre que le tuteur bénéficie aussi du dispositif : expliquer oblige à réorganiser ses connaissances, à les verbaliser et à les consolider. Le tutorat est bénéfique pour les deux partenaires, à condition que le tuteur soit formé à aider (pas à donner les réponses).",
      },
    ],
  },
};
