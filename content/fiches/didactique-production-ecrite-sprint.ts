import type { Fiche } from "@/features/fiches/types";

export const productionEcriteSprint: Fiche = {
  id: "didactique-production-ecrite-sprint",
  slug: "enseigner-production-ecrite",
  title: "Enseigner la production écrite",
  domaine: "didactique_francais",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["production écrite", "écriture", "Hayes & Flower", "brouillon", "révision", "dictée à l'adulte"],
  notionsLiees: [],
  exercicesAssocies: ["did_production_ecrite_cycle23"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur la didactique de la production écrite (processus, démarches institutionnelles). Elle ne couvre pas les compétences disciplinaires d'écriture (orthographe, syntaxe).",
    oneLiner:
      "La production d'écrit est un processus en 3 étapes : planification (quoi écrire ?), mise en texte (rédiger) et révision (relire, corriger). La surcharge cognitive est l'obstacle principal : à l'école, l'orthographe mobilise trop de ressources et bloque la mise en texte. Les programmes valorisent le brouillon, la réécriture et la dictée à l'adulte (cycle 1) comme dispositifs clés.",
    exampleCorrect: {
      sentence:
        "L'enseignant propose à ses élèves de CP de dicter collectivement un texte court qu'il écrit au tableau, avant de le lire ensemble.",
      explanation:
        "La dictée à l'adulte est un dispositif fondamental des programmes de cycle 1 et début de cycle 2 : elle dissocie la mise en mots (oral) de la mise en texte (écrit), ce qui libère l'élève de la contrainte graphique et orthographique.",
    },
    exampleWrong: {
      sentence:
        "En CE2, pour améliorer l'écriture des élèves, il suffit de leur faire faire plus de dictées et de copie.",
      explanation:
        "FAUX. La dictée entraîne l'orthographe, pas la production de texte. La copie entraîne la graphie, pas la construction du sens. Pour progresser en production écrite, il faut travailler explicitement la planification, l'organisation des idées et la révision.",
    },
    mainTrap:
      "Ne pas confondre « écrire » au sens de tracer des lettres (geste graphique, cycle 1-2) et « produire un écrit » au sens de construire un texte cohérent pour un destinataire (compétence transversale). Le CRPE teste régulièrement les dispositifs : dictée à l'adulte, écriture tâtonnée, situations d'écriture longues, ateliers d'écriture.",
    quiz: [
      {
        sentence:
          "Selon le modèle de Hayes & Flower, réviser un texte intervient uniquement à la fin de la rédaction.",
        isCorrect: false,
        explanation:
          "FAUX. Dans le modèle de Hayes & Flower (1980), la révision peut intervenir à tout moment du processus d'écriture, y compris pendant la mise en texte. Ce n'est pas une étape séquentielle finale.",
      },
      {
        sentence:
          "La surcharge cognitive est l'un des principaux obstacles à la production d'écrit pour les jeunes scripteurs.",
        isCorrect: true,
        explanation:
          "Pour un élève en début d'apprentissage, gérer simultanément les idées, la syntaxe, l'orthographe et le geste graphique dépasse la capacité de la mémoire de travail. C'est pourquoi les dispositifs didactiques cherchent à alléger cette surcharge.",
      },
      {
        sentence:
          "La dictée à l'adulte est une pratique réservée aux élèves non-lecteurs du cycle 1.",
        isCorrect: false,
        explanation:
          "FAUX. La dictée à l'adulte peut être utilisée au cycle 2 et même au cycle 3 pour des textes complexes : elle permet de se concentrer sur la construction du texte sans contrainte orthographique. Elle reste pertinente au-delà de la maternelle.",
      },
      {
        sentence:
          "Les programmes 2016 valorisent explicitement le brouillon et la réécriture dans le processus de production écrite.",
        isCorrect: true,
        explanation:
          "Les programmes de cycle 2 et 3 mentionnent explicitement la révision et la réécriture comme des compétences à construire. Le brouillon n'est pas une étape optionnelle mais une pratique professionnelle d'écrivain que l'école doit enseigner.",
      },
      {
        sentence:
          "Écrire pour un destinataire réel améliore la motivation et la qualité des productions des élèves.",
        isCorrect: true,
        explanation:
          "La notion de destinataire est centrale en didactique de l'écrit : écrire pour quelqu'un (camarade, correspondant scolaire, personnage) donne du sens à l'acte d'écriture et améliore l'implication et la révision des élèves.",
      },
    ],
  },
};
