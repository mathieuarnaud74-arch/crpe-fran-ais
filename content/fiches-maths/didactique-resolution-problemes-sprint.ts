import type { Fiche } from "@/features/fiches/types";

export const didactiqueResolutionProblemesSprint: Fiche = {
  id: "didactique-resolution-problemes-sprint",
  slug: "resolution-problemes-sprint",
  title: "Résolution de problèmes : typologie et démarches",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "résolution de problèmes",
    "typologie Vergnaud",
    "problèmes additifs",
    "problèmes multiplicatifs",
    "schéma",
    "modélisation",
  ],
  notionsLiees: [
    "didactique-erreurs-eleves-reference",
    "didactique-programmes-cycles-reference",
    "nombres-proportionnalite-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "La résolution de problèmes est au cœur de l'activité mathématique dans les programmes. Cette fiche est incontournable pour le CRPE : les questions portent régulièrement sur la classification des problèmes et les démarches d'enseignement.",
    oneLiner:
      "La résolution de problèmes n'est pas une application du calcul, c'est le cœur de l'activité mathématique. Vergnaud distingue les structures additives (composition, transformation, comparaison) et les structures multiplicatives (proportionnalité, produit cartésien). Enseigner la résolution de problèmes, c'est apprendre aux élèves à modéliser une situation, pas à repérer des mots-clés.",
    exampleCorrect: {
      sentence:
        "L'enseignant propose un problème de transformation (« Julie avait 15 billes. Elle en a perdu. Il lui en reste 9. Combien en a-t-elle perdu ? ») et demande aux élèves de représenter la situation par un schéma (état initial → transformation → état final) avant de calculer.",
      explanation:
        "Cette démarche sépare la phase de compréhension/modélisation de la phase de calcul. Le schéma rend visible la structure du problème (transformation négative, valeur recherchée sur la transformation). L'élève identifie l'opération à effectuer à partir du schéma, pas à partir du mot « perdu ».",
    },
    exampleWrong: {
      sentence:
        "Enseigner aux élèves que « en tout » signifie addition et « il reste » signifie soustraction.",
      explanation:
        "FAUX. Les mots-clés sont trompeurs. « Paul a 8 billes de plus que Julie. Julie en a 5. Combien Paul en a-t-il en tout ? » → addition, mais « en tout » n'est pas le signal. « Il reste 3 parts après que 5 personnes se sont servies. Combien y avait-il de parts ? » → addition, pas soustraction malgré « il reste ». La stratégie des mots-clés échoue dès que les problèmes se complexifient.",
    },
    mainTrap:
      "Ne proposer que des problèmes où l'opération est évidente (problèmes « habillés » d'un calcul). Les élèves doivent affronter des problèmes à plusieurs étapes, des problèmes avec des données inutiles, des problèmes où la question est implicite, et des problèmes de recherche (sans algorithme de résolution immédiat). C'est la variété des problèmes qui construit la compétence, pas la répétition du même type.",
    quiz: [
      {
        sentence:
          "Selon Vergnaud, un problème de composition (« Pierre a 12 billes rouges et 8 billes bleues. Combien a-t-il de billes ? ») et un problème de transformation (« Pierre avait 12 billes. Il en a gagné 8. Combien en a-t-il ? ») relèvent de la même structure.",
        isCorrect: false,
        explanation:
          "FAUX. Bien que les deux se résolvent par une addition, ils relèvent de structures différentes. La composition met en jeu une relation partie-tout statique. La transformation met en jeu un état initial, une modification et un état final. La distinction est fondamentale en didactique car les difficultés des élèves diffèrent selon la structure.",
      },
      {
        sentence:
          "Les problèmes multiplicatifs incluent les situations de proportionnalité, de produit cartésien et de comparaison multiplicative.",
        isCorrect: true,
        explanation:
          "VRAI. Vergnaud identifie ces trois catégories dans le champ multiplicatif. La proportionnalité (« 3 cahiers coûtent 6 € ; combien coûtent 7 cahiers ? »), le produit cartésien (« 3 pantalons et 4 chemises : combien de tenues ? ») et la comparaison multiplicative (« 3 fois plus ») sont des structures multiplicatives distinctes.",
      },
      {
        sentence:
          "Un problème de comparaison additive où la question porte sur le référent (« Paul a 5 billes de plus que Julie. Paul en a 12. Combien Julie en a-t-elle ? ») est plus difficile pour les élèves qu'un problème où la question porte sur le comparé.",
        isCorrect: true,
        explanation:
          "VRAI. Rechercher le référent (la quantité de référence) est plus difficile car l'élève doit inverser le sens de la comparaison : « 5 de plus » incite à ajouter, alors qu'il faut soustraire. C'est une difficulté bien documentée dans la classification de Vergnaud.",
      },
      {
        sentence:
          "La modélisation par un schéma (schéma en barres, schéma de situation) est une étape intermédiaire qui ralentit inutilement la résolution.",
        isCorrect: false,
        explanation:
          "FAUX. La modélisation est au contraire une étape essentielle qui aide l'élève à comprendre la structure du problème avant de calculer. Le schéma en barres (méthode de Singapour) ou le schéma de situation permettent de visualiser les relations entre les données et d'identifier l'opération pertinente.",
      },
      {
        sentence:
          "Les programmes recommandent d'enseigner la résolution de problèmes de façon régulière et variée, et non regroupée en fin de séquence comme « application » des notions.",
        isCorrect: true,
        explanation:
          "VRAI. Les programmes 2020 insistent : la résolution de problèmes doit être quotidienne et constituer le point de départ de l'apprentissage, pas une simple application finale. L'élève construit le sens des opérations et des notions en résolvant des problèmes.",
      },
    ],
  },
};
