import type { Fiche } from "@/features/fiches/types";

export const differentiationSprint: Fiche = {
  id: "didactique-differentiation-sprint",
  slug: "differentiation-sprint",
  title: "Différenciation pédagogique en français",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["différenciation", "besoins éducatifs", "pédagogie", "hétérogénéité", "inclusion"],
  notionsLiees: ["erreurs-eleves-sprint", "evaluation-francais-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche aborde la différenciation pédagogique dans le cadre de l'enseignement du français. Elle est incontournable pour les questions didactiques du CRPE, en lien avec l'inclusion et la gestion de l'hétérogénéité.",
    oneLiner:
      "Différencier, c'est adapter les contenus, les processus, les productions et l'environnement aux besoins de chaque élève, sans baisser les exigences. La différenciation porte sur les moyens d'atteindre les objectifs, jamais sur les objectifs eux-mêmes.",
    exampleCorrect: {
      sentence:
        "En production écrite cycle 3 : tous les élèves écrivent un récit (même objectif), mais certains disposent d'une trame narrative guidée, d'un lexique thématique et d'une liste de connecteurs, tandis que les élèves autonomes travaillent sans aide.",
      explanation:
        "Différenciation des processus et de l'étayage : l'objectif est identique pour tous (écrire un récit cohérent), mais les supports et la quantité d'aide varient selon les besoins. C'est la définition exacte de la différenciation efficace : même exigence, voies d'accès adaptées.",
    },
    exampleWrong: {
      sentence:
        "Pour différencier, l'enseignant donne un texte plus court et moins exigeant aux élèves en difficulté.",
      explanation:
        "FAUX. Abaisser les exigences (texte plus court, tâche plus simple) n'est pas différencier : c'est maintenir les élèves en difficulté dans un niveau inférieur et creuser les écarts. La différenciation adapte les moyens (étayage, format, durée) sans toucher aux objectifs d'apprentissage — tous les élèves visent les mêmes compétences.",
    },
    mainTrap:
      "Différenciation et remédiation ne sont pas synonymes. La différenciation est proactive : elle anticipe les besoins et adapte dès la conception de la séance. La remédiation est réactive : elle intervient après l'évaluation d'un échec constaté. De même, différenciation ≠ individualisation : gérer 30 plans d'apprentissage individuels est intenable. La différenciation s'appuie sur des groupes de besoin, des tâches à niveaux de complexité variable, ou des moments différenciés dans la séance.",
    quiz: [
      {
        sentence:
          "Les quatre leviers de la différenciation sont : le contenu, le processus, la production attendue et l'environnement d'apprentissage.",
        isCorrect: true,
        explanation:
          "C'est le modèle de Carol Ann Tomlinson, référence en différenciation pédagogique. Contenu (ce qu'on apprend), processus (comment on apprend), production (comment on montre ce qu'on a appris), environnement (conditions matérielles et relationnelles). Ces quatre leviers permettent d'agir de manière ciblée selon les besoins identifiés.",
      },
      {
        sentence:
          "La différenciation simultanée (groupes différents travaillant en même temps sur des tâches différentes) est toujours préférable à la différenciation successive.",
        isCorrect: false,
        explanation:
          "FAUX. Les deux formes sont complémentaires selon les situations. La différenciation successive (même tâche pour tous à des moments différents, avec des niveaux de complexité croissants) est souvent plus simple à gérer et moins stigmatisante. La différenciation simultanée est plus fine mais plus exigeante en gestion de classe. Aucune n'est universellement supérieure.",
      },
      {
        sentence:
          "Un PAP (Plan d'Accompagnement Personnalisé) concerne les élèves présentant des troubles des apprentissages sans nécessiter de reconnaissance de handicap.",
        isCorrect: true,
        explanation:
          "Exact. Le PAP est destiné aux élèves présentant des troubles durables des apprentissages (dyslexie, dyscalculie…) qui ne relèvent pas de l'ULIS ou du PPS (MDPH). Il précise les aménagements pédagogiques mis en place par l'équipe enseignante. En français, il peut prévoir des tiers-temps, des polices adaptées, des dictées aménagées.",
      },
      {
        sentence:
          "Proposer une dictée négociée à l'ensemble de la classe est une forme de différenciation.",
        isCorrect: false,
        explanation:
          "Pas au sens strict. La dictée négociée est une modalité d'apprentissage collaboratif qui bénéficie à tous les élèves indistinctement — ce n'est pas une adaptation aux besoins spécifiques de certains. C'est une approche pédagogique universelle. La différenciation cible des besoins particuliers identifiés chez certains élèves.",
      },
      {
        sentence:
          "Différencier en français, c'est aussi permettre à certains élèves d'utiliser des outils de compensation (dictionnaire, fiche-outil) que d'autres n'ont pas besoin d'utiliser.",
        isCorrect: true,
        explanation:
          "Exact. Les outils de compensation (fiche de conjugaison, dictionnaire, organisateur graphique) permettent aux élèves qui en ont besoin de dépasser l'obstacle technique pour se concentrer sur la compétence visée. Ils ne remplacent pas l'apprentissage — ils l'étayent le temps que la compétence soit intégrée.",
      },
    ],
  },
};
