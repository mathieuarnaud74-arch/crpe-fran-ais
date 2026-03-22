import type { Fiche } from "@/features/fiches/types";

export const donneesProbabilitesReference: Fiche = {
  id: "donnees-probabilites-reference",
  slug: "probabilites-equiprobabilite-arbres",
  title: "Probabilités : situations d'équiprobabilité et arbres",
  domaine: "organisation_donnees",
  model: "reference",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "probabilité",
    "équiprobabilité",
    "arbre de probabilités",
    "événement",
    "événements indépendants",
    "dénombrement",
    "combinaisons",
  ],
  notionsLiees: [
    "donnees-probabilites-sprint",
    "donnees-statistiques-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Les probabilités au CRPE portent essentiellement sur les situations d'équiprobabilité et les expériences à deux épreuves. Ce guide couvre les principes fondamentaux, les arbres de probabilités et les erreurs classiques de raisonnement probabiliste.",
    sections: [
      {
        id: "fondamentaux",
        title: "Axiomes et vocabulaire",
        badge: "Fondamentaux",
        blocks: [
          {
            kind: "table",
            caption: "Vocabulaire des probabilités",
            headers: ["Terme", "Définition", "Exemple (dé à 6 faces)"],
            rows: [
              [
                "Expérience aléatoire",
                "Expérience dont on ne peut pas prévoir le résultat",
                "Lancer un dé",
              ],
              [
                "Univers (Ω)",
                "Ensemble de toutes les issues possibles",
                "Ω = {1, 2, 3, 4, 5, 6}",
              ],
              [
                "Issue (événement élémentaire)",
                "Un résultat possible de l'expérience",
                "Obtenir 4",
              ],
              [
                "Événement",
                "Sous-ensemble de l'univers",
                "A = « obtenir un nombre pair » = {2, 4, 6}",
              ],
              [
                "Événement contraire (Ā)",
                "Ensemble des issues qui ne sont pas dans A",
                "Ā = {1, 3, 5}",
              ],
              [
                "Événement certain",
                "Ω lui-même, P(Ω) = 1",
                "« Obtenir un nombre entre 1 et 6 »",
              ],
              [
                "Événement impossible",
                "Ensemble vide ∅, P(∅) = 0",
                "« Obtenir 7 »",
              ],
            ],
          },
          {
            kind: "rule",
            content:
              "Trois axiomes : 1) 0 ≤ P(A) ≤ 1 pour tout événement A. 2) P(Ω) = 1. 3) Si A et B sont incompatibles (A ∩ B = ∅), alors P(A ∪ B) = P(A) + P(B).",
          },
        ],
      },
      {
        id: "equiprobabilite",
        title: "Situations d'équiprobabilité",
        badge: "Formule classique",
        blocks: [
          {
            kind: "rule",
            content:
              "Dans une situation d'équiprobabilité, chaque issue a la même probabilité. La probabilité d'un événement A est alors : P(A) = nombre d'issues favorables / nombre total d'issues = card(A) / card(Ω).",
            watchout:
              "Vérifier que l'équiprobabilité est justifiée avant d'appliquer cette formule. Un dé truqué, un sac avec des boules de tailles différentes… ne vérifient pas l'équiprobabilité.",
          },
          {
            kind: "example",
            sentence:
              "On tire une carte au hasard dans un jeu de 32 cartes. P(tirer un as) = 4/32 = 1/8.",
            annotation: "4 as parmi 32 cartes, équiprobabilité car tirage au hasard.",
          },
          {
            kind: "example",
            sentence:
              "On lance deux dés et on s'intéresse à la somme. Les 11 sommes possibles (2 à 12) ne sont PAS équiprobables.",
            annotation:
              "Il y a 36 couples (d₁, d₂) équiprobables, mais les sommes n'ont pas le même nombre de combinaisons (ex : somme 7 = 6 combinaisons, somme 2 = 1 seule).",
            isCorrect: true,
          },
        ],
      },
      {
        id: "arbres",
        title: "Arbres de probabilités",
        badge: "Expériences composées",
        blocks: [
          {
            kind: "rule",
            content:
              "Un arbre de probabilités représente une expérience en plusieurs étapes. Chaque branche porte la probabilité de l'étape. Deux règles : 1) Règle du produit : la probabilité d'un chemin = produit des probabilités de chaque branche du chemin. 2) Règle de la somme : la probabilité d'un événement = somme des probabilités des chemins qui réalisent cet événement.",
          },
          {
            kind: "example",
            sentence:
              "Un sac contient 3 boules rouges et 2 bleues. On tire 2 boules avec remise. P(2 rouges) = 3/5 × 3/5 = 9/25.",
            annotation: "Avec remise : les probabilités restent identiques à chaque tirage.",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Avec ou sans remise",
                explanation:
                  "Sans remise, la composition du sac change après le premier tirage. P(2e rouge | 1re rouge) = 2/4 = 1/2 (et non 3/5). C'est une source d'erreur très fréquente.",
                correction:
                  "Toujours adapter les probabilités de la 2e branche si le tirage est sans remise.",
              },
              {
                label: "Somme des branches",
                explanation:
                  "À chaque nœud de l'arbre, la somme des probabilités des branches sortantes doit être égale à 1. C'est un contrôle utile pour vérifier l'arbre.",
              },
            ],
          },
        ],
      },
      {
        id: "formules",
        title: "Formules complémentaires",
        badge: "Approfondissement",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Événement contraire : P(Ā) = 1 − P(A). Souvent plus simple de calculer P(Ā) puis de soustraire de 1.",
          },
          {
            kind: "rule",
            content:
              "Union de deux événements : P(A ∪ B) = P(A) + P(B) − P(A ∩ B). Si A et B sont incompatibles : P(A ∪ B) = P(A) + P(B).",
          },
          {
            kind: "example",
            sentence:
              "P(obtenir au moins un 6 en lançant 2 dés) = 1 − P(aucun 6) = 1 − (5/6)² = 1 − 25/36 = 11/36.",
            annotation:
              "Passage par l'événement contraire : plus simple que de compter tous les cas favorables.",
          },
        ],
      },
      {
        id: "denombrement",
        title: "Bases du dénombrement",
        badge: "Compter les issues",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "Principe multiplicatif : si une première étape a p issues et une deuxième a q issues (indépendantes de la première), alors l'expérience globale a p × q issues. Exemple : 3 entrées × 4 plats = 12 menus.",
          },
          {
            kind: "table",
            caption: "Cas classiques de dénombrement",
            headers: ["Situation", "Formule", "Exemple"],
            rows: [
              [
                "Tirages ordonnés avec remise",
                "nᵏ",
                "2 lancers d'un dé : 6² = 36 résultats",
              ],
              [
                "Tirages ordonnés sans remise (arrangements)",
                "n! / (n−k)!",
                "Podium de 3 parmi 10 : 10 × 9 × 8 = 720",
              ],
              [
                "Tirages non ordonnés sans remise (combinaisons)",
                "C(n,k) = n! / (k!(n−k)!)",
                "Choisir 3 élèves parmi 10 : C(10,3) = 120",
              ],
            ],
          },
        ],
      },
    ],
    keyPoints: [
      "P(A) = card(A) / card(Ω) uniquement en situation d'équiprobabilité.",
      "Arbre : probabilité d'un chemin = produit des branches ; probabilité d'un événement = somme des chemins.",
      "Avec remise : probabilités constantes. Sans remise : probabilités modifiées à chaque tirage.",
      "Événement contraire : P(Ā) = 1 − P(A). Souvent plus simple à calculer.",
      "Principe multiplicatif pour compter les issues d'une expérience à plusieurs étapes.",
    ],
    quiz: [
      {
        sentence:
          "En lançant deux dés, la probabilité d'obtenir une somme de 7 est 1/11 car il y a 11 sommes possibles.",
        isCorrect: false,
        explanation:
          "FAUX. Les 11 sommes ne sont pas équiprobables. Il y a 6 façons d'obtenir 7 sur 36 couples possibles : P = 6/36 = 1/6.",
      },
      {
        sentence:
          "Dans un arbre de probabilités, la somme des probabilités des branches issues d'un même nœud est 1.",
        isCorrect: true,
        explanation:
          "VRAI. À chaque nœud, les branches représentent toutes les issues possibles de l'étape, donc leur somme = 1.",
      },
      {
        sentence:
          "Pour un tirage sans remise de 2 boules dans un sac de 5 boules, il y a 25 résultats possibles.",
        isCorrect: false,
        explanation:
          "FAUX. Sans remise : 5 × 4 = 20 tirages ordonnés. Avec remise, ce serait 5² = 25.",
      },
      {
        sentence:
          "P(au moins un succès) = 1 − P(aucun succès).",
        isCorrect: true,
        explanation:
          "VRAI. C'est l'utilisation de l'événement contraire. « Au moins un » est le contraire de « aucun ».",
      },
      {
        sentence:
          "C(5,2) = C(5,3) = 10.",
        isCorrect: true,
        explanation:
          "VRAI. C(n,k) = C(n, n−k). C(5,2) = 10 et C(5,3) = 10. Choisir 2 éléments parmi 5 revient à en exclure 3.",
      },
    ],
  },
};
