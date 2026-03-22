import type { Fiche } from "@/features/fiches/types";

export const nombresEcritureScientifiqueSprint: Fiche = {
  id: "nombres-ecriture-scientifique-sprint",
  slug: "ecriture-scientifique-notation-sprint",
  title: "Écriture scientifique et notation",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "moyenne",
  estimatedMinutes: 5,
  tags: [
    "écriture scientifique",
    "puissances de 10",
    "notation",
    "ordre de grandeur",
    "grands nombres",
    "petits nombres",
  ],
  notionsLiees: [
    "nombres-puissances-racines-sprint",
    "nombres-ordre-grandeur-sprint",
    "nombres-decimaux-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche couvre l'écriture scientifique et les puissances de 10, mobilisées au CRPE pour exprimer des grandeurs très grandes ou très petites. Niveau intermédiaire.",
    oneLiner:
      "L'écriture scientifique d'un nombre est de la forme a × 10ⁿ, où 1 ≤ a < 10 et n est un entier relatif. Elle permet d'exprimer de façon compacte les très grands nombres (distance Terre-Soleil : 1,496 × 10⁸ km) et les très petits (taille d'un virus : 1 × 10⁻⁷ m). L'exposant n indique l'ordre de grandeur.",
    exampleCorrect: {
      sentence:
        "345 000 en écriture scientifique s'écrit 3,45 × 10⁵ (on déplace la virgule de 5 rangs vers la gauche pour obtenir un nombre entre 1 et 10).",
      explanation:
        "La démarche est correcte : on écrit 345 000 = 3,45 × 100 000 = 3,45 × 10⁵. Le coefficient 3,45 est bien compris entre 1 (inclus) et 10 (exclu). L'exposant 5 indique que le nombre a 6 chiffres (ordre de grandeur : centaines de milliers).",
    },
    exampleWrong: {
      sentence:
        "Écrire 345 000 = 34,5 × 10⁴ comme écriture scientifique.",
      explanation:
        "FAUX. 34,5 × 10⁴ est une écriture correcte mathématiquement (le produit vaut bien 345 000) mais ce n'est pas une écriture scientifique car 34,5 n'est pas compris entre 1 et 10. L'écriture scientifique impose 1 ≤ a < 10.",
    },
    mainTrap:
      "Confondre le sens du déplacement de la virgule. Pour un grand nombre, l'exposant est positif (on déplace la virgule vers la gauche). Pour un petit nombre (0 < x < 1), l'exposant est négatif (on déplace la virgule vers la droite). Exemple : 0,0042 = 4,2 × 10⁻³ (virgule déplacée de 3 rangs vers la droite). L'erreur fréquente est d'écrire 4,2 × 10³ au lieu de 10⁻³.",
    quiz: [
      {
        sentence:
          "L'écriture scientifique de 0,00067 est 6,7 × 10⁻⁴.",
        isCorrect: true,
        explanation:
          "VRAI. On déplace la virgule de 4 rangs vers la droite : 0,00067 = 6,7 × 10⁻⁴. Le coefficient 6,7 est bien entre 1 et 10, et l'exposant −4 est correct.",
      },
      {
        sentence:
          "12,5 × 10³ est une écriture scientifique valide.",
        isCorrect: false,
        explanation:
          "FAUX. 12,5 n'est pas compris entre 1 et 10. L'écriture scientifique correcte est 1,25 × 10⁴. La notation 12,5 × 10³ est une écriture décimale avec puissance de 10, mais pas une écriture scientifique au sens strict.",
      },
      {
        sentence:
          "10⁰ = 1 par convention.",
        isCorrect: true,
        explanation:
          "VRAI. Par définition, tout nombre non nul élevé à la puissance 0 vaut 1. Cette convention est cohérente avec la règle 10ⁿ ÷ 10ⁿ = 10⁰ = 1. C'est un résultat à connaître absolument.",
      },
      {
        sentence:
          "Multiplier deux nombres en écriture scientifique revient à multiplier les coefficients et additionner les exposants.",
        isCorrect: true,
        explanation:
          "VRAI. (a × 10ⁿ) × (b × 10ᵐ) = (a × b) × 10ⁿ⁺ᵐ. Exemple : (3 × 10⁴) × (2 × 10³) = 6 × 10⁷. Si le produit a × b sort de [1 ; 10[, il faut réajuster (ex : 5 × 3 = 15 → 1,5 × 10¹).",
      },
      {
        sentence:
          "L'écriture scientifique est principalement utile pour comparer facilement des nombres d'ordres de grandeur très différents.",
        isCorrect: true,
        explanation:
          "VRAI. Comparer 3,2 × 10⁸ et 7,1 × 10⁶ est immédiat : 10⁸ ≫ 10⁶, donc le premier est environ 100 fois plus grand. Sans écriture scientifique, comparer 320 000 000 et 7 100 000 demande de compter les zéros.",
      },
    ],
  },
};
