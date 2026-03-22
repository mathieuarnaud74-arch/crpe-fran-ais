import type { Fiche } from "@/features/fiches/types";

export const didactiqueCalculPoseSprint: Fiche = {
  id: "didactique-calcul-pose-sprint",
  slug: "calcul-pose-sprint",
  title: "Calcul posé : progression et erreurs d'élèves",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "calcul posé",
    "addition",
    "soustraction",
    "multiplication",
    "division",
    "erreurs d'élèves",
    "retenue",
    "algorithme",
  ],
  notionsLiees: [
    "didactique-numeration-cycles-sprint",
    "didactique-erreurs-eleves-reference",
    "nombres-entiers-naturels-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche aborde la didactique des algorithmes opératoires au primaire. Elle est fréquemment mobilisée dans les épreuves de mathématiques du CRPE, notamment pour l'analyse d'erreurs d'élèves.",
    oneLiner:
      "Les algorithmes de calcul posé (addition, soustraction, multiplication, division) s'enseignent progressivement du CE1 au CM2. Chaque algorithme repose sur la compréhension de la numération positionnelle et du sens de l'opération — pas sur la mémorisation d'une recette. Les erreurs d'élèves révèlent souvent un défaut de compréhension de la retenue ou de la valeur de position.",
    exampleCorrect: {
      sentence:
        "Un élève de CE2 pose 47 + 35 et écrit 82. L'enseignant lui fait vérifier en décomposant : 40 + 30 = 70, 7 + 5 = 12, 70 + 12 = 82. L'élève vérifie que sa retenue est cohérente.",
      explanation:
        "Cette approche lie le calcul posé au sens de l'opération. La décomposition en dizaines et unités montre d'où vient la retenue (12 unités = 1 dizaine et 2 unités). L'élève ne suit pas aveuglément un algorithme : il comprend pourquoi on « retient 1 ».",
    },
    exampleWrong: {
      sentence:
        "Enseigner la retenue comme une règle formelle (« quand ça dépasse 9, on met le chiffre des unités et on retient 1 ») sans lien avec le groupement par dix.",
      explanation:
        "FAUX. Cette approche purement procédurale produit des élèves qui appliquent la recette sans comprendre. Erreur typique : face à 47 + 35, l'élève écrit 712 (7+3=10, pose 0, retient 1 ; 4+5+1=10, pose 10) car il ne sait pas ce que représentent les chiffres dans chaque colonne.",
    },
    mainTrap:
      "Croire que la maîtrise de l'algorithme suffit. Un élève peut poser correctement 253 × 4 = 1012 et ne pas savoir estimer si le résultat est raisonnable. Le calcul posé doit toujours s'accompagner d'une vérification par estimation (ordre de grandeur) et de la compréhension du sens de l'opération dans le contexte du problème.",
    quiz: [
      {
        sentence:
          "L'addition posée avec retenue s'enseigne dès le CP dans les programmes actuels.",
        isCorrect: false,
        explanation:
          "FAUX. Au CP, les élèves apprennent l'addition posée sans retenue. L'addition avec retenue est introduite progressivement au CE1, une fois la numération positionnelle suffisamment construite pour donner du sens à la retenue.",
      },
      {
        sentence:
          "Un élève qui écrit 47 − 18 = 31 (au lieu de 29) a probablement soustrait le petit chiffre du grand à chaque colonne (8−7=1 puis 4−1=3).",
        isCorrect: true,
        explanation:
          "VRAI. C'est une erreur classique : l'élève soustrait toujours le plus petit du plus grand dans chaque colonne, sans tenir compte de l'emprunt. Cette erreur révèle une incompréhension de la retenue dans la soustraction.",
      },
      {
        sentence:
          "La division euclidienne est le premier algorithme opératoire enseigné car il est le plus fondamental.",
        isCorrect: false,
        explanation:
          "FAUX. La division posée est le dernier algorithme enseigné (CM1-CM2) car c'est le plus complexe. Il mobilise simultanément multiplication, soustraction et estimation, ce qui le rend exigeant cognitivement. La progression est : addition → soustraction → multiplication → division.",
      },
      {
        sentence:
          "Le calcul mental et le calcul posé sont deux compétences complémentaires : le calcul mental sert notamment à vérifier la vraisemblance du résultat d'un calcul posé.",
        isCorrect: true,
        explanation:
          "VRAI. Le calcul mental permet l'estimation et l'ordre de grandeur, indispensables pour contrôler un résultat posé. Un élève qui sait que 47 + 35 est « environ 80 » repèrera une erreur grossière comme 712.",
      },
      {
        sentence:
          "Dans la multiplication posée de 23 × 14, les produits partiels (23 × 4 et 23 × 10) correspondent à la propriété de distributivité.",
        isCorrect: true,
        explanation:
          "VRAI. 23 × 14 = 23 × (10 + 4) = 23 × 10 + 23 × 4. L'algorithme de la multiplication posée est une application directe de la distributivité de la multiplication par rapport à l'addition. Expliciter ce lien donne du sens à la procédure.",
      },
    ],
  },
};
