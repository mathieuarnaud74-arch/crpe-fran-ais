import type { Fiche } from "@/features/fiches/types";

export const problemeProportionnaliteOperatoire: Fiche = {
  id: "nombres-probleme-proportionnalite-operatoire",
  slug: "resoudre-probleme-proportionnalite",
  title: "Résoudre un problème de proportionnalité",
  domaine: "nombres_calcul",
  model: "operatoire",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "proportionnalité",
    "problème",
    "coefficient",
    "produit en croix",
    "retour à l'unité",
    "linéarité",
    "pourcentage",
  ],
  notionsLiees: [
    "nombres-proportionnalite-sprint",
    "nombres-proportionnalite-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Tu as un problème. Est-ce une situation de proportionnalité ?",
    decisionTree: {
      type: "question",
      text: "La situation implique-t-elle un rapport constant entre deux grandeurs ? (prix au kg, vitesse constante, pourcentage, échelle…)",
      yes: {
        type: "question",
        text: "La proportionnalité est confirmée. Connais-tu le coefficient de proportionnalité ?",
        yes: {
          type: "leaf",
          label: "Coefficient connu → multiplier directement",
          rule: "Si k est connu, calculer la valeur cherchée : y = k × x (ou x = y / k).",
          example:
            "Vitesse = 80 km/h. En 3 h → distance = 80 × 3 = 240 km.",
        },
        no: {
          type: "question",
          text: "Disposes-tu d'un couple (x₁, y₁) connu pour calculer k = y₁/x₁ ?",
          yes: {
            type: "leaf",
            label: "Calculer k puis appliquer",
            rule: "Calculer k = y₁/x₁ (retour à l'unité). Puis y₂ = k × x₂. Alternative : utiliser le produit en croix x₁/y₁ = x₂/y₂.",
            example:
              "5 kg → 12 €. Pour 8 kg : k = 12/5 = 2,4 €/kg. 8 × 2,4 = 19,2 €.",
          },
          no: {
            type: "leaf",
            label: "Utiliser la linéarité (additivité/multiplicativité)",
            rule: "Combiner des valeurs connues du tableau par addition ou multiplication. Si on connaît f(a) et f(b), alors f(a+b) = f(a) + f(b) et f(k×a) = k × f(a).",
            example:
              "3 pots → 9 €, 5 pots → 15 €. Pour 8 pots : 9 + 15 = 24 € (car 8 = 3 + 5).",
          },
        },
      },
      no: {
        type: "leaf",
        label: "Situation non proportionnelle",
        rule: "Vérifier : les quotients y/x ne sont pas constants, ou la droite ne passe pas par l'origine. Utiliser un autre modèle (fonction affine, autre).",
        example:
          "Un taxi : 3 € de prise en charge + 1,5 €/km. Le coût n'est pas proportionnel à la distance (la droite ne passe pas par l'origine).",
      },
    },
    workedExample: {
      phrase:
        "Une recette pour 6 personnes nécessite 450 g de farine. Quelle quantité pour 10 personnes ?",
      steps: [
        "Étape 1 — Vérifier la proportionnalité : les quantités d'ingrédients sont proportionnelles au nombre de personnes ✓.",
        "Étape 2 — Méthode retour à l'unité : pour 1 personne → 450 ÷ 6 = 75 g.",
        "Étape 3 — Pour 10 personnes → 75 × 10 = 750 g.",
        "Étape 4 — Vérification par produit en croix : 450 × 10 / 6 = 4 500 / 6 = 750 g ✓.",
        "Étape 5 — Vérification par linéarité : 10 = 6 + 4 ; pour 4 personnes = 450 × 4/6 = 300 g ; 450 + 300 = 750 g ✓.",
      ],
    },
    quiz: [
      {
        sentence:
          "Si 3 stylos coûtent 4,50 €, le prix de 7 stylos se calcule par : 4,50 × 7 / 3 = 10,50 €.",
        isCorrect: true,
        explanation:
          "VRAI. Produit en croix : 4,50 × 7 ÷ 3 = 31,50 ÷ 3 = 10,50 €. Ou : prix unitaire = 1,50 €, 7 × 1,50 = 10,50 €.",
      },
      {
        sentence:
          "L'âge d'un enfant et sa taille forment une situation de proportionnalité.",
        isCorrect: false,
        explanation:
          "FAUX. La croissance n'est pas proportionnelle à l'âge : un enfant de 10 ans n'est pas deux fois plus grand qu'un enfant de 5 ans. Le rapport taille/âge n'est pas constant.",
      },
      {
        sentence:
          "Dans un tableau de proportionnalité, on peut toujours additionner deux colonnes pour en obtenir une troisième.",
        isCorrect: true,
        explanation:
          "VRAI. C'est la propriété d'additivité (linéarité) de la proportionnalité : f(a + b) = f(a) + f(b).",
      },
      {
        sentence:
          "Un article à 80 € soldé à −25 % coûte 60 €.",
        isCorrect: true,
        explanation:
          "VRAI. Réduction = 80 × 25/100 = 20 €. Prix soldé = 80 − 20 = 60 €. Ou : 80 × 0,75 = 60 €.",
      },
      {
        sentence:
          "Le retour à l'unité est la seule méthode valide pour résoudre un problème de proportionnalité.",
        isCorrect: false,
        explanation:
          "FAUX. Il existe plusieurs méthodes : coefficient multiplicateur, produit en croix, retour à l'unité, linéarité. Toutes sont valides. Au CRPE, la linéarité est particulièrement valorisée.",
      },
    ],
    didacticNote:
      "À l'école élémentaire, on privilégie d'abord la linéarité (additivité et multiplicativité) et le retour à l'unité. Le produit en croix est introduit plus tard (fin de cycle 3/collège). Le candidat au CRPE doit maîtriser toutes les méthodes et savoir laquelle est adaptée au niveau des élèves.",
  },
};
