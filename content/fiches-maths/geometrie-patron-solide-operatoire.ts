import type { Fiche } from "@/features/fiches/types";

export const geometriePatronSolideOperatoire: Fiche = {
  id: "geometrie-patron-solide-operatoire",
  slug: "patron-solide-tracer",
  title: "Tracer le patron d'un solide",
  domaine: "geometrie",
  model: "operatoire",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 8,
  tags: [
    "patron",
    "solide",
    "cube",
    "pavé droit",
    "pyramide",
    "cylindre",
    "construction",
  ],
  notionsLiees: [
    "geometrie-solides-reference",
    "geometrie-figures-planes-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Quel type de solide dois-tu « déplier » en patron ?",
    decisionTree: {
      type: "question",
      text: "Le solide est-il un polyèdre (toutes les faces sont des polygones) ?",
      yes: {
        type: "question",
        text: "Le solide est-il un prisme droit (deux bases parallèles identiques + faces latérales rectangulaires) ?",
        yes: {
          type: "question",
          text: "La base est-elle un carré (cube ou pavé droit) ?",
          yes: {
            type: "leaf",
            label: "Patron d'un cube ou pavé droit",
            rule: "Dessiner les 6 faces rectangulaires (ou carrées) en s'assurant qu'elles se plient correctement. Pour le cube : 11 patrons possibles (6 carrés arrangés en croix, en L, en T…). Pour le pavé : disposer 3 paires de rectangles identiques (face, dessus, côté).",
            example:
              "Cube de côté 3 cm : patron en croix = 1 colonne de 4 carrés + 2 carrés de part et d'autre du 2e carré. Chaque carré fait 3 cm × 3 cm.",
          },
          no: {
            type: "leaf",
            label: "Patron d'un prisme droit (base quelconque)",
            rule: "1) Dessiner la bande latérale : un grand rectangle de longueur = périmètre de la base et de largeur = hauteur du prisme. 2) Ajouter les deux bases polygonales identiques de chaque côté de la bande (ou aux extrémités).",
            example:
              "Prisme droit à base triangulaire (triangle de côtés 3, 4, 5 cm, hauteur 6 cm) : bande rectangulaire de 12 cm × 6 cm + 2 triangles 3-4-5.",
          },
        },
        no: {
          type: "question",
          text: "Le solide est-il une pyramide ?",
          yes: {
            type: "leaf",
            label: "Patron d'une pyramide",
            rule: "1) Dessiner la base polygonale. 2) Sur chaque côté de la base, construire un triangle (face latérale) dont la base est le côté correspondant et la hauteur est l'apothème de la pyramide (pour une pyramide régulière). Les triangles se « déplient » autour de la base.",
            example:
              "Pyramide à base carrée de 4 cm, apothème de face 5 cm : 1 carré de 4 cm + 4 triangles isocèles de base 4 cm et côtés 5 cm.",
          },
          no: {
            type: "leaf",
            label: "Autre polyèdre",
            rule: "Identifier chaque face du solide, les dessiner à plat en s'assurant que les arêtes communes sont bien raccordées. Vérifier avec la relation d'Euler (S − A + F = 2) que le nombre de faces est correct.",
            example:
              "Tétraèdre régulier : 4 triangles équilatéraux. Le patron est composé de 4 triangles accolés par leurs côtés.",
          },
        },
      },
      no: {
        type: "question",
        text: "Le solide est-il un cylindre de révolution ?",
        yes: {
          type: "leaf",
          label: "Patron du cylindre",
          rule: "1) Dessiner un rectangle de longueur = périmètre de la base (2πr) et de largeur = hauteur h du cylindre (c'est la surface latérale « déroulée »). 2) Ajouter 2 disques de rayon r (un de chaque côté du rectangle, tangents au côté long).",
          example:
            "Cylindre de rayon 3 cm et hauteur 7 cm : rectangle de 6π ≈ 18,85 cm × 7 cm + 2 disques de rayon 3 cm.",
        },
        no: {
          type: "leaf",
          label: "Patron du cône",
          rule: "1) Dessiner un secteur de disque dont le rayon est l'apothème (génératrice g) du cône et l'angle est (r/g) × 360° (en degrés), où r est le rayon de la base. 2) Ajouter un disque de rayon r (la base).",
          example:
            "Cône de rayon 3 cm et génératrice 5 cm : secteur de disque de rayon 5 cm et d'angle (3/5) × 360° = 216° + 1 disque de rayon 3 cm.",
        },
      },
    },
    workedExample: {
      phrase:
        "Tracer le patron d'un prisme droit à base triangulaire de dimensions : triangle rectangle de cathètes 3 cm et 4 cm (hypoténuse 5 cm), et hauteur du prisme 6 cm.",
      steps: [
        "Étape 1 — Identifier les faces : 2 bases triangulaires (triangle rectangle 3-4-5) + 3 faces latérales rectangulaires.",
        "Étape 2 — Calculer le périmètre de la base : 3 + 4 + 5 = 12 cm.",
        "Étape 3 — Dessiner la bande latérale : un rectangle de 12 cm × 6 cm, ou trois rectangles accolés (3×6, 4×6, 5×6).",
        "Étape 4 — Ajouter les 2 bases triangulaires : dessiner un triangle rectangle 3-4-5 de chaque côté de la bande (accolé au rectangle correspondant).",
        "Étape 5 — Vérification : 5 faces au total (2 triangles + 3 rectangles). Euler : S − A + F = 6 − 9 + 5 = 2 ✓. Le patron se plie correctement sans superposition.",
      ],
    },
    quiz: [
      {
        sentence:
          "Le patron d'un cylindre comporte un rectangle et deux disques.",
        isCorrect: true,
        explanation:
          "VRAI. La surface latérale « déroulée » donne un rectangle, et les deux bases circulaires donnent deux disques.",
      },
      {
        sentence:
          "La longueur du rectangle dans le patron d'un cylindre est égale au diamètre de la base.",
        isCorrect: false,
        explanation:
          "FAUX. La longueur du rectangle est le périmètre de la base circulaire (2πr), pas le diamètre (2r). C'est une erreur très fréquente.",
      },
      {
        sentence:
          "Il n'existe qu'un seul patron possible pour le cube.",
        isCorrect: false,
        explanation:
          "FAUX. Le cube admet 11 patrons différents (11 hexaminos qui se plient en cube). Par exemple : en croix, en L, en T, en escalier…",
      },
      {
        sentence:
          "Le patron d'une pyramide à base carrée comporte 1 carré et 4 triangles.",
        isCorrect: true,
        explanation:
          "VRAI. Une pyramide à base carrée a 5 faces : 1 base carrée + 4 faces latérales triangulaires.",
      },
      {
        sentence:
          "Pour le patron d'un cône, l'angle du secteur de disque dépend du rapport entre le rayon de la base et la génératrice.",
        isCorrect: true,
        explanation:
          "VRAI. L'angle du secteur est (r/g) × 360°, où r est le rayon de la base et g la génératrice (apothème) du cône.",
      },
    ],
    didacticNote:
      "Au cycle 3, commencer par manipuler des solides en carton ou en papier : les déplier pour comprendre la notion de patron. Puis passer à la construction sur feuille. L'erreur la plus fréquente est de dessiner des faces qui se superposent au pliage. Faire vérifier en découpant et pliant le patron.",
  },
};
