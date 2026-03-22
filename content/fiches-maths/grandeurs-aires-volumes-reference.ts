import type { Fiche } from "@/features/fiches/types";

export const grandeursAiresVolumesReference: Fiche = {
  id: "grandeurs-aires-volumes-reference",
  slug: "aires-volumes-toutes-formules",
  title: "Aires et volumes : toutes les formules",
  domaine: "grandeurs_mesures",
  model: "reference",
  accessTier: "premium",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 12,
  tags: [
    "aire",
    "volume",
    "formules",
    "figures planes",
    "solides",
    "disque",
    "sphère",
    "cylindre",
    "cône",
    "pyramide",
    "prisme",
  ],
  notionsLiees: [
    "grandeurs-aires-sprint",
    "grandeurs-volumes-sprint",
    "grandeurs-aire-figure-complexe-operatoire",
  ],
  exercicesAssocies: [],
  content: {
    model: "reference",
    intro:
      "Ce guide rassemble l'ensemble des formules d'aire (figures planes) et de volume (solides) au programme du CRPE. Pour chaque formule, la logique de construction est rappelée afin de faciliter la mémorisation et l'enseignement.",
    sections: [
      {
        id: "aires-quadrilateres",
        title: "Aires des quadrilatères",
        badge: "Figures planes",
        blocks: [
          {
            kind: "table",
            caption: "Formules d'aire des quadrilatères",
            headers: ["Figure", "Formule", "Remarque"],
            rows: [
              ["Carré (côté c)", "A = c²", "Cas particulier du rectangle"],
              [
                "Rectangle (L × l)",
                "A = L × l",
                "Formule de base, toutes les autres en découlent",
              ],
              [
                "Parallélogramme (base b, hauteur h)",
                "A = b × h",
                "Se découpe en rectangle de même base et même hauteur",
              ],
              [
                "Trapèze (bases B et b, hauteur h)",
                "A = (B + b) × h / 2",
                "Deux trapèzes identiques forment un parallélogramme de base (B + b)",
              ],
              [
                "Losange (diagonales d et D)",
                "A = (d × D) / 2",
                "Le losange est formé de 4 triangles rectangles",
              ],
            ],
          },
          {
            kind: "tip",
            text: "Retenir la filiation : rectangle → parallélogramme → trapèze. Le parallélogramme est un trapèze dont les deux bases sont égales.",
          },
        ],
      },
      {
        id: "aires-triangles-disque",
        title: "Aire du triangle et du disque",
        badge: "Figures planes",
        blocks: [
          {
            kind: "table",
            caption: "Triangle et disque",
            headers: ["Figure", "Formule", "Remarque"],
            rows: [
              [
                "Triangle (base b, hauteur h)",
                "A = (b × h) / 2",
                "Moitié du rectangle englobant",
              ],
              [
                "Disque (rayon r)",
                "A = π × r²",
                "Ne pas confondre avec le périmètre du cercle (2πr)",
              ],
            ],
          },
          {
            kind: "watchout",
            items: [
              {
                label: "Hauteur du triangle",
                explanation:
                  "La hauteur est toujours perpendiculaire à la base choisie. Dans un triangle obtusangle, le pied de la hauteur peut tomber à l'extérieur du triangle.",
              },
              {
                label: "Rayon vs diamètre",
                explanation:
                  "Erreur fréquente : utiliser le diamètre dans πr². Si on donne le diamètre d, il faut utiliser A = π × (d/2)² = πd²/4.",
              },
            ],
          },
        ],
      },
      {
        id: "volumes-prismes",
        title: "Volumes des prismes et cylindres",
        badge: "Solides droits",
        blocks: [
          {
            kind: "rule",
            content:
              "Principe général : le volume d'un solide droit (prisme, cylindre) est égal à l'aire de la base multipliée par la hauteur : V = A_base × h.",
          },
          {
            kind: "table",
            caption: "Formules de volume des solides droits",
            headers: ["Solide", "Formule", "Base"],
            rows: [
              ["Cube (côté c)", "V = c³", "Carré c²"],
              ["Pavé droit (L × l × h)", "V = L × l × h", "Rectangle L × l"],
              [
                "Prisme droit (base quelconque)",
                "V = A_base × h",
                "Polygone quelconque",
              ],
              [
                "Cylindre (rayon r, hauteur h)",
                "V = π × r² × h",
                "Disque πr²",
              ],
            ],
          },
        ],
      },
      {
        id: "volumes-pointus",
        title: "Volumes des solides pointus",
        badge: "÷ 3",
        blocks: [
          {
            kind: "rule",
            content:
              "Le volume d'un solide pointu (pyramide, cône) est le tiers du volume du solide droit correspondant : V = (1/3) × A_base × h.",
            watchout:
              "Le facteur 1/3 est la source d'erreur la plus fréquente au CRPE pour les volumes.",
          },
          {
            kind: "table",
            caption: "Formules de volume des solides pointus",
            headers: ["Solide", "Formule"],
            rows: [
              [
                "Pyramide (base quelconque, hauteur h)",
                "V = (1/3) × A_base × h",
              ],
              [
                "Cône de révolution (rayon r, hauteur h)",
                "V = (1/3) × π × r² × h",
              ],
            ],
          },
          {
            kind: "example",
            sentence:
              "Un cône de rayon 6 cm et de hauteur 10 cm : V = (1/3) × π × 36 × 10 = 120π ≈ 376,99 cm³.",
            annotation: "Ne pas oublier le facteur 1/3.",
          },
        ],
      },
      {
        id: "sphere",
        title: "Volume et aire de la sphère",
        badge: "Formules spéciales",
        collapsible: true,
        blocks: [
          {
            kind: "table",
            caption: "Sphère de rayon r",
            headers: ["Grandeur", "Formule"],
            rows: [
              ["Volume", "V = (4/3) × π × r³"],
              ["Aire (surface)", "A = 4 × π × r²"],
            ],
          },
          {
            kind: "tip",
            text: "Moyen mnémotechnique : l'aire de la sphère = 4 disques de même rayon (4πr²). Le volume : « 4 tiers π r cube ».",
          },
        ],
      },
      {
        id: "synthese",
        title: "Synthèse : comment choisir la bonne formule",
        badge: "Méthode",
        collapsible: true,
        blocks: [
          {
            kind: "rule",
            content:
              "1) Identifier la figure ou le solide. 2) Pour une figure plane → formule d'aire. 3) Pour un solide droit → A_base × h. 4) Pour un solide pointu → (1/3) × A_base × h. 5) Pour la sphère → formule spéciale (4/3)πr³. 6) Vérifier l'unité du résultat (cm² pour aire, cm³ pour volume).",
          },
        ],
      },
    ],
    keyPoints: [
      "Toutes les aires de quadrilatères se déduisent du rectangle (L × l).",
      "Aire du triangle = (b × h) / 2 ; aire du disque = πr².",
      "Volume d'un solide droit = aire de la base × hauteur.",
      "Volume d'un solide pointu = (1/3) × aire de la base × hauteur.",
      "Volume de la sphère = (4/3)πr³ ; aire de la sphère = 4πr².",
      "Toujours vérifier l'unité : cm pour longueur, cm² pour aire, cm³ pour volume.",
    ],
    quiz: [
      {
        sentence:
          "Le volume d'un cylindre de rayon 5 cm et de hauteur 8 cm est (1/3) × π × 25 × 8.",
        isCorrect: false,
        explanation:
          "FAUX. Le cylindre est un solide droit, pas pointu. V = πr²h = π × 25 × 8 = 200π. Le facteur 1/3 s'applique au cône.",
      },
      {
        sentence:
          "L'aire d'un losange de diagonales 6 et 10 cm est 30 cm².",
        isCorrect: true,
        explanation:
          "VRAI. A = (d × D) / 2 = (6 × 10) / 2 = 30 cm².",
      },
      {
        sentence:
          "Le volume d'une pyramide à base carrée de côté 4 cm et de hauteur 9 cm est 144 cm³.",
        isCorrect: false,
        explanation:
          "FAUX. V = (1/3) × 16 × 9 = 48 cm³. 144 = 16 × 9, c'est le volume sans le facteur 1/3.",
      },
      {
        sentence: "L'aire de la sphère de rayon r est 4πr².",
        isCorrect: true,
        explanation:
          "VRAI. L'aire de la sphère = 4πr², soit 4 fois l'aire du disque de même rayon.",
      },
      {
        sentence:
          "Le volume d'un prisme droit dont la base est un triangle de 3 cm² et de hauteur 10 cm est 30 cm³.",
        isCorrect: true,
        explanation:
          "VRAI. V = A_base × h = 3 × 10 = 30 cm³. Le prisme droit n'utilise pas le facteur 1/3.",
      },
    ],
  },
};
