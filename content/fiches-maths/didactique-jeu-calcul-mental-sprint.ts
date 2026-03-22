import type { Fiche } from "@/features/fiches/types";

export const didactiqueJeuCalculMentalSprint: Fiche = {
  id: "didactique-jeu-calcul-mental-sprint",
  slug: "jeu-calcul-mental-strategies-automatismes",
  title: "Jeu et calcul mental : stratégies et automatismes en classe",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "calcul mental",
    "jeu",
    "automatismes",
    "rituels",
    "fluence",
    "stratégies de calcul",
    "programmes",
    "cycle 2",
    "cycle 3",
  ],
  notionsLiees: [
    "nombres-calcul-mental-reference",
    "didactique-materiel-manipulation-sprint",
    "didactique-brousseau-contrat-situations-sprint",
    "didactique-evaluation-remediation-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur le calcul mental et le jeu en classe. Pour les stratégies de calcul mental détaillées (décomposition, compensation, etc.), consulte la fiche Référence « Calcul mental ».",
    oneLiner:
      "Le calcul mental ne se réduit pas à la rapidité : il vise la construction de stratégies (décomposer, compenser, passer par 10) et d'automatismes (tables, compléments). Les programmes recommandent un rituel quotidien de 15 minutes. Le jeu (mathador, compte est bon, bingo) est un levier motivationnel puissant, à condition qu'il serve un objectif d'apprentissage identifié.",
    exampleCorrect: {
      sentence:
        "L'enseignant propose un rituel quotidien de 10 minutes : 5 minutes de calcul automatisé (tables, compléments à 100) suivies de 5 minutes de calcul réfléchi (stratégies). Il utilise le jeu « Le compte est bon » une fois par semaine pour travailler la flexibilité calculatoire.",
      explanation:
        "L'organisation distingue bien les deux composantes du calcul mental (automatisé et réfléchi) conformément aux programmes. Le jeu est utilisé ponctuellement avec un objectif clair (flexibilité), pas comme un divertissement sans apprentissage. ✓",
    },
    exampleWrong: {
      sentence:
        "L'enseignant fait jouer les élèves à un jeu de calcul tous les jours pendant 30 minutes « pour les motiver ». Il n'explicite pas les stratégies.",
      explanation:
        "Le jeu sans explicitation des stratégies ne produit pas d'apprentissage durable. Les élèves qui réussissent déjà s'amusent, les autres accumulent les erreurs sans progresser. Il faut alterner phases de jeu et phases d'institutionnalisation (« Comment as-tu fait pour calculer 37 + 28 rapidement ? »).",
    },
    mainTrap:
      "Confondre calcul mental automatisé et calcul mental réfléchi. L'automatisé vise la fluence (réponse instantanée : tables, doubles, compléments). Le réfléchi vise les stratégies (décomposer 47 + 38 en 47 + 40 − 2 = 85). Les deux sont complémentaires et doivent être travaillés séparément. Au CRPE, il faut savoir décrire une séance de calcul mental avec ses deux volets.",
    quiz: [
      {
        sentence:
          "Les programmes recommandent un temps quotidien dédié au calcul mental à l'école élémentaire.",
        isCorrect: true,
        explanation:
          "VRAI. Les programmes de 2020 et le rapport Villani-Torossian (2018) recommandent un rituel quotidien de calcul mental, idéalement 15 minutes par jour, intégrant automatismes et stratégies.",
      },
      {
        sentence:
          "Le calcul mental automatisé et le calcul mental réfléchi s'enseignent de la même manière.",
        isCorrect: false,
        explanation:
          "FAUX. L'automatisé s'enseigne par la répétition espacée (rituels, flashcards, jeux de rapidité). Le réfléchi s'enseigne par l'explicitation des stratégies (débat, confrontation de méthodes, verbalisation). Ils mobilisent des processus cognitifs différents.",
      },
      {
        sentence:
          "Le jeu Mathador, qui demande d'atteindre un nombre cible avec des opérations, développe la flexibilité calculatoire.",
        isCorrect: true,
        explanation:
          "VRAI. Mathador oblige à explorer plusieurs chemins de calcul pour atteindre un résultat, ce qui développe la flexibilité (capacité à choisir la stratégie la plus efficace selon le contexte). C'est un outil recommandé par la recherche.",
      },
      {
        sentence:
          "Un élève qui connaît ses tables de multiplication par cœur maîtrise le calcul mental.",
        isCorrect: false,
        explanation:
          "FAUX. Connaître les tables est nécessaire (automatismes) mais insuffisant. Le calcul mental inclut aussi la capacité à décomposer, compenser, arrondir, utiliser la distributivité. Un élève peut réciter 7 × 8 = 56 mais échouer à calculer 7 × 48 mentalement.",
      },
      {
        sentence:
          "La verbalisation des stratégies (« Comment as-tu fait ? ») est essentielle pour que le calcul mental réfléchi profite à tous les élèves.",
        isCorrect: true,
        explanation:
          "VRAI. Sans verbalisation, seuls les élèves qui trouvent la stratégie seuls en bénéficient. La mise en commun des procédures permet aux autres de découvrir et d'adopter des stratégies nouvelles. C'est une phase d'institutionnalisation du calcul mental.",
      },
    ],
  },
};
