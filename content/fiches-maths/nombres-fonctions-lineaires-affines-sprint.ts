import type { Fiche } from "@/features/fiches/types";

export const nombresFonctionsLineairesAffinesSprint: Fiche = {
  id: "nombres-fonctions-lineaires-affines-sprint",
  slug: "fonctions-lineaires-affines-distinguer-reconnaitre",
  title: "Fonctions linéaires et affines : distinguer et reconnaître",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "fonction linéaire",
    "fonction affine",
    "proportionnalité",
    "coefficient directeur",
    "ordonnée à l'origine",
    "droite",
    "graphique",
  ],
  notionsLiees: [
    "nombres-proportionnalite-sprint",
    "nombres-proportionnalite-reference",
    "nombres-equations-premier-degre-sprint",
    "geometrie-reperage-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les fonctions linéaires et affines. Pour la proportionnalité (cas particulier de la linéarité), consulte la fiche sprint « Proportionnalité ».",
    oneLiner:
      "Une fonction linéaire est de la forme f(x) = ax : sa courbe est une droite passant par l'origine (situation de proportionnalité). Une fonction affine est de la forme f(x) = ax + b : sa courbe est une droite qui ne passe pas par l'origine si b ≠ 0. Le coefficient a est la pente (coefficient directeur), b est l'ordonnée à l'origine.",
    exampleCorrect: {
      sentence:
        "Un taxi facture 3 € de prise en charge + 1,20 €/km. Le coût est f(x) = 1,2x + 3. C'est une fonction affine (pas linéaire) car la droite ne passe pas par l'origine : pour 0 km, on paie quand même 3 €.",
      explanation:
        "Le coefficient directeur est 1,2 (coût par km), l'ordonnée à l'origine est 3 (coût fixe). Comme b = 3 ≠ 0, ce n'est pas proportionnel : doubler la distance ne double pas le prix. ✓",
    },
    exampleWrong: {
      sentence:
        "Le prix de l'essence est f(x) = 1,85x + 0. C'est une fonction affine car on utilise la formule ax + b.",
      explanation:
        "Techniquement, une fonction linéaire est un cas particulier de fonction affine (avec b = 0). Mais l'usage au CRPE distingue les deux : f(x) = 1,85x est une fonction linéaire (proportionnalité : droite passant par l'origine). Dire « affine » est mathématiquement correct mais pédagogiquement imprécis : cela masque la propriété de proportionnalité.",
    },
    mainTrap:
      "Confondre « linéaire » et « affine » au CRPE. La distinction est cruciale car elle recoupe la proportionnalité. Linéaire (f(x) = ax) = proportionnel : la droite passe par l'origine, f(2x) = 2f(x). Affine (f(x) = ax + b, b ≠ 0) = non proportionnel : la droite ne passe pas par l'origine, f(2x) ≠ 2f(x). Au CRPE, le piège est de ne pas identifier qu'un coût fixe (abonnement, prise en charge) casse la proportionnalité.",
    quiz: [
      {
        sentence:
          "Le graphique d'une fonction linéaire est toujours une droite passant par l'origine.",
        isCorrect: true,
        explanation:
          "VRAI. f(x) = ax → f(0) = 0. La droite passe par (0, 0). C'est la traduction graphique de la proportionnalité.",
      },
      {
        sentence:
          "Si f(x) = 3x − 2, alors f est une fonction linéaire de coefficient 3.",
        isCorrect: false,
        explanation:
          "FAUX. f(x) = 3x − 2 est une fonction affine (b = −2 ≠ 0). Le coefficient directeur est 3, mais la présence de −2 fait que la droite ne passe pas par l'origine. f(0) = −2 ≠ 0 : ce n'est pas proportionnel.",
      },
      {
        sentence:
          "Le coefficient directeur d'une droite affine représente « de combien y augmente quand x augmente de 1 ».",
        isCorrect: true,
        explanation:
          "VRAI. Si f(x) = ax + b, alors f(x+1) − f(x) = a. Le coefficient a donne la variation de y pour chaque unité de x. C'est la « pente » de la droite.",
      },
      {
        sentence:
          "Une situation est proportionnelle si et seulement si elle peut être modélisée par une fonction affine.",
        isCorrect: false,
        explanation:
          "FAUX. Une situation proportionnelle est modélisée par une fonction linéaire (f(x) = ax, pas ax + b). Toute situation affine avec b ≠ 0 n'est pas proportionnelle. Exemple : un forfait téléphonique de 10 € + 0,05 €/min est affine mais pas proportionnel.",
      },
      {
        sentence:
          "Deux fonctions affines ayant le même coefficient directeur sont représentées par des droites parallèles.",
        isCorrect: true,
        explanation:
          "VRAI. Même pente = droites parallèles. f(x) = 2x + 1 et g(x) = 2x + 5 sont parallèles (même coefficient directeur 2, ordonnées à l'origine différentes).",
      },
    ],
  },
};
