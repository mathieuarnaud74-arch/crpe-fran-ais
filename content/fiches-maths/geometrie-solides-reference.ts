import type { Fiche } from "@/features/fiches/types";

export const geometrieSolidesReference: Fiche = {
  id: "geometrie-solides-reference",
  slug: "solides-patron-vocabulaire-proprietes",
  title: "Solides : patron, vocabulaire, propriétés",
  domaine: "geometrie",
  model: "reference",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "solide",
    "polyèdre",
    "prisme",
    "pyramide",
    "cylindre",
    "cône",
    "sphère",
    "patron",
    "Euler",
  ],
  notionsLiees: [
    "geometrie-figures-planes-reference",
    "geometrie-patron-solide-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Cette fiche présente les solides au programme du CRPE : vocabulaire (face, arête, sommet), classification (polyèdres et solides de révolution), patrons, et formules d'aire latérale et de volume. La relation d'Euler et la construction de patrons sont des compétences régulièrement évaluées.",
    sections: [
      {
        id: "vocabulaire",
        title: "Vocabulaire des solides",
        badge: "Fondamentaux",
        blocks: [
          {
            kind: "rule",
            content:
              "Un solide est un objet géométrique à trois dimensions délimité par des surfaces. On distingue les polyèdres (toutes les faces sont des polygones) et les non-polyèdres (au moins une face courbe). Les éléments d'un solide sont : les faces (surfaces planes ou courbes), les arêtes (segments d'intersection de deux faces) et les sommets (points d'intersection d'au moins trois arêtes).",
          },
          {
            kind: "rule",
            content:
              "Relation d'Euler pour les polyèdres convexes : S − A + F = 2, où S = nombre de sommets, A = nombre d'arêtes, F = nombre de faces.",
            watchout:
              "La relation d'Euler ne s'applique qu'aux polyèdres convexes (ou homéomorphes à une sphère). Elle ne concerne pas les solides à faces courbes.",
          },
        ],
      },
      {
        id: "polyedres",
        title: "Les polyèdres usuels",
        badge: "Classification",
        blocks: [
          {
            kind: "table",
            caption: "Polyèdres au programme",
            headers: ["Solide", "Faces", "Arêtes", "Sommets", "Caractéristiques"],
            rows: [
              [
                "Cube",
                "6 carrés",
                "12",
                "8",
                "Toutes les faces identiques, 3 arêtes par sommet",
              ],
              [
                "Pavé droit (parallélépipède rectangle)",
                "6 rectangles",
                "12",
                "8",
                "Faces opposées identiques",
              ],
              [
                "Prisme droit",
                "2 bases polygonales + faces latérales rectangulaires",
                "3n (n = côtés de la base)",
                "2n",
                "Les arêtes latérales sont perpendiculaires aux bases",
              ],
              [
                "Pyramide",
                "1 base polygonale + faces latérales triangulaires",
                "2n",
                "n + 1",
                "Toutes les arêtes latérales partent de l'apex",
              ],
              [
                "Tétraèdre régulier",
                "4 triangles équilatéraux",
                "6",
                "4",
                "Toutes les faces et arêtes identiques",
              ],
            ],
          },
        ],
      },
      {
        id: "solides-revolution",
        title: "Solides de révolution",
        badge: "Non-polyèdres",
        blocks: [
          {
            kind: "rule",
            content:
              "Un solide de révolution est engendré par la rotation d'une figure plane autour d'un axe. Le cylindre de révolution est engendré par un rectangle, le cône de révolution par un triangle rectangle, et la sphère par un demi-cercle.",
          },
          {
            kind: "table",
            caption: "Solides de révolution",
            headers: ["Solide", "Générateur", "Éléments"],
            rows: [
              [
                "Cylindre de révolution",
                "Rectangle tournant autour d'un côté",
                "2 disques (bases) + 1 surface latérale courbe",
              ],
              [
                "Cône de révolution",
                "Triangle rectangle tournant autour d'un cathète",
                "1 disque (base) + 1 surface latérale courbe + 1 sommet (apex)",
              ],
              [
                "Sphère",
                "Demi-cercle tournant autour de son diamètre",
                "Aucune face plane, aucune arête, aucun sommet",
              ],
            ],
          },
        ],
      },
      {
        id: "patrons",
        title: "Les patrons",
        badge: "Construction",
        blocks: [
          {
            kind: "rule",
            content:
              "Le patron d'un solide est une figure plane qui, une fois découpée et pliée, permet de reconstituer le solide. Un même solide peut admettre plusieurs patrons différents. Pour construire un patron, on « déplie » toutes les faces en les plaçant dans un même plan.",
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Patron du cube",
                explanation:
                  "Il existe 11 patrons différents du cube (hexaminos). L'erreur fréquente est de proposer un patron dont les faces se superposeraient une fois plié.",
              },
              {
                label: "Patron du cylindre",
                explanation:
                  "Le patron du cylindre est composé de 2 disques et d'un rectangle dont la longueur est le périmètre de la base (2πr) et la largeur est la hauteur du cylindre.",
              },
              {
                label: "Patron du cône",
                explanation:
                  "Le patron du cône est composé d'un disque (base) et d'un secteur de disque dont le rayon est l'apothème (génératrice) du cône.",
              },
            ],
          },
        ],
      },
      {
        id: "volumes-aires",
        title: "Formules de volume et d'aire",
        badge: "Formules",
        blocks: [
          {
            kind: "table",
            caption: "Volumes et aires latérales des solides usuels",
            headers: ["Solide", "Volume", "Aire latérale"],
            rows: [
              [
                "Cube (côté a)",
                "V = a³",
                "A_lat = 4a²",
              ],
              [
                "Pavé droit (L × l × h)",
                "V = L × l × h",
                "A_lat = 2h(L + l)",
              ],
              [
                "Prisme droit",
                "V = Aire_base × h",
                "A_lat = périmètre_base × h",
              ],
              [
                "Pyramide",
                "V = (Aire_base × h) / 3",
                "Somme des aires des faces latérales triangulaires",
              ],
              [
                "Cylindre (rayon r, hauteur h)",
                "V = πr²h",
                "A_lat = 2πrh",
              ],
              [
                "Cône (rayon r, hauteur h, apothème a)",
                "V = (πr²h) / 3",
                "A_lat = πra",
              ],
              [
                "Sphère (rayon r)",
                "V = (4/3)πr³",
                "A = 4πr²",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Règle mnémotechnique : le volume d'une pyramide ou d'un cône est toujours le tiers du volume du prisme ou du cylindre de même base et même hauteur.",
          },
        ],
      },
    ],
    keyPoints: [
      "Relation d'Euler : S − A + F = 2 pour tout polyèdre convexe.",
      "Un prisme droit a des faces latérales rectangulaires ; une pyramide a des faces latérales triangulaires.",
      "Volume d'un prisme/cylindre = Aire de la base × hauteur ; pour la pyramide/cône, diviser par 3.",
      "Le patron du cylindre comporte un rectangle de longueur 2πr (périmètre de la base).",
      "Un même solide peut avoir plusieurs patrons : le cube en possède 11.",
    ],
    quiz: [
      {
        sentence:
          "Un cube possède 8 sommets, 12 arêtes et 6 faces.",
        isCorrect: true,
        explanation:
          "VRAI. On peut vérifier avec la relation d'Euler : S − A + F = 8 − 12 + 6 = 2 ✓.",
      },
      {
        sentence:
          "Le volume d'un cône est la moitié du volume du cylindre de même base et même hauteur.",
        isCorrect: false,
        explanation:
          "FAUX. Le volume du cône est le tiers (et non la moitié) du volume du cylindre de même base et même hauteur : V_cône = (1/3)πr²h.",
      },
      {
        sentence:
          "La sphère est un polyèdre car elle n'a aucune arête.",
        isCorrect: false,
        explanation:
          "FAUX. Un polyèdre est un solide dont toutes les faces sont des polygones (faces planes). La sphère n'a aucune face plane, ce n'est donc pas un polyèdre.",
      },
      {
        sentence:
          "Le patron d'un cylindre de révolution comporte un rectangle dont un côté mesure 2πr.",
        isCorrect: true,
        explanation:
          "VRAI. Le rectangle représente la surface latérale « déroulée ». Sa longueur est le périmètre de la base circulaire (2πr) et sa largeur est la hauteur du cylindre.",
      },
      {
        sentence:
          "Une pyramide à base carrée possède 5 faces, 8 arêtes et 5 sommets.",
        isCorrect: true,
        explanation:
          "VRAI. 1 base carrée + 4 faces triangulaires = 5 faces. 4 arêtes de base + 4 arêtes latérales = 8 arêtes. 4 sommets de base + 1 apex = 5 sommets. Euler : 5 − 8 + 5 = 2 ✓.",
      },
    ],
  },
};
