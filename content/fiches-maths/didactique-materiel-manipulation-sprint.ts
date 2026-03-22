import type { Fiche } from "@/features/fiches/types";

export const didactiqueMaterielManipulationSprint: Fiche = {
  id: "didactique-materiel-manipulation-sprint",
  slug: "materiel-manipulation-quand-comment-pourquoi",
  title: "Matériel et manipulation : quand, comment, pourquoi",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "manipulation",
    "matériel",
    "concrétisation",
    "abstraction",
    "représentation",
    "cycle 2",
    "cycle 3",
    "numération",
    "géométrie",
  ],
  notionsLiees: [
    "didactique-geometrie-manipulation-sprint",
    "didactique-representations-reference",
    "didactique-brousseau-contrat-situations-sprint",
    "didactique-variables-didactiques-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur l'usage du matériel en mathématiques. Pour la manipulation spécifiquement en géométrie, consulte la fiche sprint « Géométrie et manipulation ». Pour les représentations (Duval), consulte la fiche Référence « Représentations ».",
    oneLiner:
      "La manipulation n'est pas une fin en soi mais un levier vers l'abstraction. Le matériel (cubes, réglettes, jetons, balances) sert à construire des représentations mentales, pas à remplacer le raisonnement. Le parcours didactique est : manipuler → représenter (schéma, dessin) → symboliser (écriture mathématique). Sauter une étape fragilise l'apprentissage.",
    exampleCorrect: {
      sentence:
        "Pour enseigner la numération en base 10 au cycle 2, l'enseignant utilise des cubes unitaires, des barres-dizaines et des plaques-centaines. Les élèves groupent physiquement 10 cubes en 1 barre, ce qui fait vivre l'échange « 10 unités = 1 dizaine ».",
      explanation:
        "Le matériel Montessori/Dienes est pertinent car il rend visible le principe de la numération positionnelle : le groupement par 10 et l'échange. L'élève manipule avant de comprendre l'écriture chiffrée. ✓",
    },
    exampleWrong: {
      sentence:
        "L'enseignant distribue du matériel de géométrie mais demande aux élèves de « faire comme le modèle » sans expliciter la consigne mathématique. Les élèves reproduisent la forme sans comprendre les propriétés.",
      explanation:
        "Le matériel est utilisé comme un outil de reproduction, pas comme un outil de raisonnement. Sans consigne explicite sur les propriétés à vérifier (angles droits, longueurs égales), la manipulation ne produit pas d'apprentissage mathématique. L'élève « fait » sans « comprendre ».",
    },
    mainTrap:
      "Croire que manipuler suffit à apprendre. La manipulation sans explicitation, sans phase de verbalisation et sans passage à la représentation symbolique ne produit pas d'abstraction. Le piège inverse existe aussi : supprimer la manipulation « parce que les élèves sont assez grands ». Même au cycle 3, le retour au matériel est pertinent face à un obstacle. Au CRPE, on attend du candidat qu'il justifie le choix du matériel en lien avec l'objectif d'apprentissage.",
    quiz: [
      {
        sentence:
          "La séquence « manipuler → représenter → symboliser » est un parcours d'abstraction progressive recommandé par les programmes.",
        isCorrect: true,
        explanation:
          "VRAI. Les programmes de l'école élémentaire insistent sur cette progression : l'élève passe du concret (matériel) au semi-concret (schéma, dessin) puis à l'abstrait (écriture mathématique). Chaque étape prépare la suivante.",
      },
      {
        sentence:
          "Le matériel de numération (cubes, barres, plaques) est inutile au cycle 3 car les élèves maîtrisent déjà la base 10.",
        isCorrect: false,
        explanation:
          "FAUX. Le retour au matériel est pertinent au cycle 3 pour les nombres décimaux (dixièmes, centièmes) ou les fractions (parts de pizza, bandes fractionnaires). Un obstacle conceptuel justifie toujours un retour à la manipulation, quel que soit le niveau.",
      },
      {
        sentence:
          "Le choix du matériel doit être justifié par l'objectif d'apprentissage, pas seulement par l'envie de « rendre le cours ludique ».",
        isCorrect: true,
        explanation:
          "VRAI. Le matériel est un outil didactique, pas un gadget motivationnel. Au CRPE, le candidat doit expliquer en quoi le matériel choisi aide l'élève à construire le concept visé (ex : « les réglettes Cuisenaire permettent de visualiser les compléments à 10 »).",
      },
      {
        sentence:
          "La manipulation est exclusivement réservée aux élèves en difficulté, comme outil de remédiation.",
        isCorrect: false,
        explanation:
          "FAUX. La manipulation est un outil de première intention pour la découverte, pas seulement de remédiation. Tous les élèves bénéficient de la phase de manipulation lors de l'introduction d'un nouveau concept, pas seulement les élèves en difficulté.",
      },
      {
        sentence:
          "La balance de Roberval est un matériel pertinent pour aborder l'égalité et les équations au cycle 3.",
        isCorrect: true,
        explanation:
          "VRAI. La balance matérialise l'égalité (les deux plateaux en équilibre) et les opérations « on fait la même chose des deux côtés ». C'est un support concret pour comprendre la résolution d'équations avant de passer à l'écriture symbolique.",
      },
    ],
  },
};
