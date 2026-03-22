import type { Fiche } from "@/features/fiches/types";

export const nombresRelatifsOperationsSprint: Fiche = {
  id: "nombres-relatifs-operations-sprint",
  slug: "relatifs-operations-regles-signes",
  title: "Relatifs : opérations et règles des signes",
  domaine: "nombres_calcul",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "nombres relatifs",
    "addition",
    "soustraction",
    "multiplication",
    "division",
    "règle des signes",
    "valeur absolue",
  ],
  notionsLiees: [
    "nombres-entiers-relatifs-sprint",
    "nombres-entiers-naturels-sprint",
    "nombres-equations-premier-degre-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les opérations avec les nombres relatifs. Pour les bases (repérage, comparaison), consulte la fiche sprint « Entiers relatifs ».",
    oneLiner:
      "Additionner deux relatifs de même signe : additionner les valeurs absolues, garder le signe commun. De signes contraires : soustraire la plus petite valeur absolue de la plus grande, garder le signe de la plus grande. Pour la multiplication et la division : même signe → positif, signes différents → négatif.",
    exampleCorrect: {
      sentence:
        "(−7) + (+3) = −4. On soustrait : 7 − 3 = 4. Le signe du plus grand (7) est négatif → résultat −4.",
      explanation:
        "Méthode correcte. Les deux nombres ont des signes contraires : on fait la différence des valeurs absolues (7 − 3 = 4) et on donne au résultat le signe du nombre ayant la plus grande valeur absolue (−7 « l'emporte »). ✓",
    },
    exampleWrong: {
      sentence:
        "(−3) × (−5) = −15 car « négatif fois négatif reste négatif ».",
      explanation:
        "FAUX. La règle des signes dit : le produit de deux nombres de même signe est positif. (−3) × (−5) = +15. L'erreur vient d'une fausse analogie avec l'addition (où négatif + négatif reste bien négatif).",
    },
    mainTrap:
      "Confondre les règles d'addition et de multiplication. En addition, (−3) + (−5) = −8 (même signe → on additionne et on garde le signe). En multiplication, (−3) × (−5) = +15 (même signe → positif). Ce sont deux logiques différentes. Autre piège : oublier que « soustraire un négatif » revient à additionner un positif : 4 − (−3) = 4 + 3 = 7.",
    quiz: [
      {
        sentence: "(−8) − (−3) = −5.",
        isCorrect: true,
        explanation:
          "VRAI. Soustraire (−3) revient à additionner (+3) : (−8) + (+3) = −5. Signes contraires : 8 − 3 = 5, signe du plus grand → négatif.",
      },
      {
        sentence: "(+4) × (−6) = +24 car 4 × 6 = 24.",
        isCorrect: false,
        explanation:
          "FAUX. Le produit est correct en valeur absolue (24), mais les signes sont différents → résultat négatif. (+4) × (−6) = −24.",
      },
      {
        sentence:
          "La somme de deux nombres négatifs est toujours négative.",
        isCorrect: true,
        explanation:
          "VRAI. Même signe → on additionne les valeurs absolues et on garde le signe commun. (−a) + (−b) = −(a + b) avec a, b > 0.",
      },
      {
        sentence: "(−2)³ = −8 mais (−2)² = +4.",
        isCorrect: true,
        explanation:
          "VRAI. (−2)² = (−2) × (−2) = +4 (même signe → positif). (−2)³ = (−2) × (−2) × (−2) = (+4) × (−2) = −8. Puissance paire → positif, puissance impaire → négatif.",
      },
      {
        sentence: "−5² = 25.",
        isCorrect: false,
        explanation:
          "FAUX. −5² signifie −(5²) = −25 (le carré s'applique à 5 seul, pas au signe). En revanche, (−5)² = 25 (le carré s'applique à −5 entier). La place des parenthèses est cruciale.",
      },
    ],
  },
};
