import type { Fiche } from "@/features/fiches/types";

export const determinantsSprint: Fiche = {
  id: "grammaire-determinants-sprint",
  slug: "determinants-sprint",
  title: "Les déterminants",
  domaine: "grammaire",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "déterminant",
    "article",
    "partitif",
    "défini contracté",
    "possessif",
    "démonstratif",
  ],
  notionsLiees: ["nature-des-mots-sprint"],
  exercicesAssocies: ["grammaire_determinants", "tri_familles_determinants"],
  content: {
    model: "sprint",
    disclaimer:
      "Maîtrise préalable de la notion de classe grammaticale (nature des mots) recommandée.",
    oneLiner:
      "Le déterminant est un mot variable qui précède le nom et le détermine dans le GN. On distingue 10 sous-catégories : articles définis (le, la, les, l'), articles indéfinis (un, une, des), articles partitifs (du, de la, de l'), articles définis contractés (du = de + le, des = de + les, au = à + le, aux = à + les), déterminants possessifs (mon, ton, son, notre, votre, leur…), démonstratifs (ce, cet, cette, ces), interrogatifs (quel, quelle…), exclamatifs (quel ! quelle !…), indéfinis (chaque, certains, plusieurs, tout…) et numéraux (deux, trois, vingt…). La difficulté majeure au CRPE : distinguer « du » article partitif de « du » article défini contracté, et « leur » déterminant possessif de « leur » pronom personnel.",
    exampleCorrect: {
      sentence: "Je mange du pain chaque matin.",
      explanation:
        "« du » est ici un article partitif : il désigne une quantité indéterminée d'une matière non dénombrable (du pain = une certaine quantité de pain). On ne peut pas le décomposer en « de + le » sans changer le sens. Test : remplacer par « un peu de » → « Je mange un peu de pain » fonctionne → c'est bien un partitif.",
    },
    exampleWrong: {
      sentence:
        "Dans « Je parle du directeur », « du » est un article partitif.",
      explanation:
        "FAUX. Ici, « du » = « de + le » (article défini contracté). « Parler de quelqu'un » → « parler de le directeur » se contracte en « du directeur ». Test : si on met au féminin → « Je parle de la directrice » (pas de contraction) → on voit bien que « du » résulte de la fusion de + le.",
    },
    mainTrap:
      "La forme « du » a deux natures possibles : article partitif (je bois du lait → quantité indéterminée de matière) ou article défini contracté (je parle du film → de + le film). De même, « des » peut être article indéfini (j'ai vu des oiseaux) ou article défini contracté (la couleur des murs → de + les murs). Pour trancher, tester la substitution au féminin ou au singulier : si la préposition « de » ou « à » réapparaît séparément, c'est un contracté. Autre piège classique : « leur » devant un nom est un déterminant possessif (leur maison), mais placé devant un verbe, c'est un pronom personnel (je leur parle).",
    quiz: [
      {
        sentence:
          "Dans « Elle achète du beurre », « du » est un article défini contracté (de + le).",
        isCorrect: false,
        explanation:
          "FAUX. « Du beurre » désigne une quantité indéterminée d'une matière non dénombrable : c'est un article partitif. Test : « Elle achète un peu de beurre » fonctionne. On ne dit pas « *Elle achète de le beurre » avec une préposition exigée par le verbe.",
      },
      {
        sentence:
          "Dans « Le prix des livres augmente », « des » est un article défini contracté (de + les).",
        isCorrect: true,
        explanation:
          "Correct. « Le prix de les livres » → contraction obligatoire en « des livres ». Il s'agit d'un complément du nom introduit par la préposition « de ». Au singulier : « le prix du livre » (de + le).",
      },
      {
        sentence:
          "« Leur » dans « leur voiture est garée dehors » est un pronom personnel.",
        isCorrect: false,
        explanation:
          "FAUX. Placé devant le nom « voiture », « leur » est un déterminant possessif (il détermine le nom). Il serait pronom personnel dans « je leur ai parlé » (devant un verbe, il tient lieu d'un GN : à eux/elles).",
      },
      {
        sentence:
          "Les déterminants interrogatifs et exclamatifs ont les mêmes formes : quel, quelle, quels, quelles.",
        isCorrect: true,
        explanation:
          "Correct. Les formes sont identiques ; seul le contexte d'énonciation change. Interrogatif : « Quel âge as-tu ? » — Exclamatif : « Quel beau temps ! » La ponctuation et l'intonation permettent de distinguer les deux emplois.",
      },
      {
        sentence:
          "Dans « Chaque élève a reçu deux cahiers », on trouve un déterminant indéfini et un déterminant numéral.",
        isCorrect: true,
        explanation:
          "Correct. « Chaque » est un déterminant indéfini (il désigne n'importe quel élève, un par un). « Deux » est un déterminant numéral (il indique une quantité précise). Les deux déterminent respectivement « élève » et « cahiers ».",
      },
    ],
  },
};
