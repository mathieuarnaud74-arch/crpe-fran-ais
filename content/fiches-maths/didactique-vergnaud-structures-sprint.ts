import type { Fiche } from "@/features/fiches/types";

export const didactiqueVergnaudStructuresSprint: Fiche = {
  id: "didactique-vergnaud-structures-sprint",
  slug: "vergnaud-structures-additives-multiplicatives",
  title: "Vergnaud : structures additives et multiplicatives",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "Vergnaud",
    "champ conceptuel",
    "structures additives",
    "structures multiplicatives",
    "transformation",
    "composition",
    "comparaison",
    "produit de mesures",
  ],
  notionsLiees: [
    "didactique-resolution-problemes-sprint",
    "didactique-erreurs-eleves-reference",
    "nombres-proportionnalite-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur la classification de Vergnaud. Pour la résolution de problèmes et ses démarches, consulte la fiche sprint « Résolution de problèmes ». Pour les erreurs d'élèves liées, consulte la fiche Référence « Erreurs d'élèves ».",
    oneLiner:
      "Vergnaud classe les problèmes additifs en 3 catégories (transformation, composition, comparaison) et les multiplicatifs en 4 (multiplication, division-partition, division-quotition, produit de mesures). Cette classification est essentielle au CRPE car elle permet d'analyser pourquoi un élève échoue et de choisir le bon type de problème pour une remédiation.",
    exampleCorrect: {
      sentence:
        "« Léa avait 12 billes. Elle en perd 5. Combien lui en reste-t-il ? » → Structure additive, catégorie transformation (état initial → transformation négative → état final). L'opération est 12 − 5 = 7, mais la difficulté dépend de la position de l'inconnue.",
      explanation:
        "Le diagnostic est exact. Ce qui rend un problème facile ou difficile, ce n'est pas l'opération mais la place de l'inconnue. « Léa avait ? billes, elle en perd 5, il lui en reste 7 » se résout aussi par 7 + 5, mais l'élève doit comprendre que l'inconnue est l'état initial. ✓",
    },
    exampleWrong: {
      sentence:
        "« Léa a 8 billes de plus que Tom. Tom a 15 billes. Combien Léa a-t-elle de billes ? » → C'est un problème de transformation car on ajoute 8.",
      explanation:
        "FAUX. C'est un problème de comparaison (deux états statiques reliés par un écart), pas de transformation (qui implique un changement temporel). La confusion transformation/comparaison est fréquente. Dans une comparaison, personne ne « gagne » ni ne « perd » de billes : on compare deux collections à un instant donné.",
    },
    mainTrap:
      "Croire que l'opération détermine le type de problème. Un problème de composition ET un problème de transformation peuvent tous deux se résoudre par une addition, mais leur structure sémantique est différente. L'élève qui réussit l'un peut échouer l'autre. Au CRPE, il faut savoir identifier la structure (pas juste l'opération) pour analyser les difficultés des élèves et proposer des progressions pertinentes.",
    quiz: [
      {
        sentence:
          "Selon Vergnaud, un problème de composition relie deux parties à un tout, tandis qu'un problème de transformation relie un état initial à un état final via un changement.",
        isCorrect: true,
        explanation:
          "VRAI. Composition : partie + partie = tout (ex : « 5 garçons et 8 filles, combien d'élèves ? »). Transformation : état initial ± changement = état final (ex : « Il avait 10 €, il en dépense 3, combien lui reste-t-il ? »).",
      },
      {
        sentence:
          "La division-partition et la division-quotition donnent le même résultat numérique mais ne posent pas la même question.",
        isCorrect: true,
        explanation:
          "VRAI. Partition : « 12 bonbons partagés entre 4 enfants → combien chacun ? » (on cherche la taille de chaque part). Quotition : « 12 bonbons, sachets de 4 → combien de sachets ? » (on cherche le nombre de parts). Même calcul (12 ÷ 4 = 3), mais sens différent.",
      },
      {
        sentence:
          "Un problème de comparaison additive est toujours plus facile qu'un problème de transformation pour un élève de cycle 2.",
        isCorrect: false,
        explanation:
          "FAUX. Les recherches montrent que la comparaison est souvent plus difficile que la transformation pour les jeunes élèves, car elle est statique (pas d'action, pas de scénario temporel). L'absence de verbe d'action rend la modélisation plus abstraite.",
      },
      {
        sentence:
          "Le « produit de mesures » est une catégorie des structures multiplicatives où deux grandeurs de nature différente se combinent (ex : longueur × largeur = aire).",
        isCorrect: true,
        explanation:
          "VRAI. Le produit de mesures est le cas où la multiplication combine deux grandeurs distinctes pour en produire une troisième. Exemple typique : 5 rangées × 4 chaises = 20 chaises (combinatoire), ou 3 m × 4 m = 12 m² (aire).",
      },
      {
        sentence:
          "Pour Vergnaud, la principale difficulté des problèmes multiplicatifs vient de la taille des nombres en jeu.",
        isCorrect: false,
        explanation:
          "FAUX. La difficulté vient de la structure sémantique (isomorphisme de mesures, produit de mesures, comparaison multiplicative) et de la position de l'inconnue, pas de la taille des nombres. Un problème avec de petits nombres peut être conceptuellement très difficile si l'inconnue est bien placée.",
      },
    ],
  },
};
