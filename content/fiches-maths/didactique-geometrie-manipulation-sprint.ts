import type { Fiche } from "@/features/fiches/types";

export const didactiqueGeometrieManipulationSprint: Fiche = {
  id: "didactique-geometrie-manipulation-sprint",
  slug: "geometrie-manipulation-sprint",
  title: "Géométrie à l'école : du manipuler au démontrer",
  domaine: "didactique_maths",
  model: "sprint",
  accessTier: "premium",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "géométrie",
    "manipulation",
    "instruments",
    "propriétés",
    "démonstration",
    "progression",
    "Van Hiele",
  ],
  notionsLiees: [
    "didactique-programmes-cycles-reference",
    "didactique-variables-didactiques-reference",
    "geometrie-figures-planes-reference",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche couvre la didactique de la géométrie à l'école primaire, thème récurrent au CRPE. Elle s'appuie sur le modèle de Van Hiele et les repères des programmes.",
    oneLiner:
      "L'enseignement de la géométrie progresse selon les niveaux de Van Hiele : perception globale (cycle 1) → description par propriétés (cycle 2) → raisonnement déductif (cycle 3). Le passage d'un niveau à l'autre nécessite des activités de manipulation (pliage, découpage, construction) qui précèdent la formalisation. On ne démontre pas en cycle 2 : on observe, on vérifie par l'action.",
    exampleCorrect: {
      sentence:
        "En CE2, pour enseigner que les diagonales d'un rectangle sont de même longueur, l'enseignant fait tracer les diagonales sur un rectangle découpé, puis mesurer avec une règle et comparer. Les élèves constatent empiriquement la propriété.",
      explanation:
        "Cette démarche respecte le niveau de Van Hiele des élèves de cycle 2 : la propriété est vérifiée par la manipulation et la mesure, pas énoncée comme un théorème. L'élève construit la connaissance par l'action sur l'objet géométrique réel, ce qui prépare la formalisation ultérieure en cycle 3.",
    },
    exampleWrong: {
      sentence:
        "Énoncer directement les propriétés des figures (« un carré a 4 côtés égaux et 4 angles droits ») et les faire apprendre par cœur sans activité de vérification.",
      explanation:
        "FAUX. Sans manipulation, les propriétés restent des formules vides. L'élève qui récite « 4 côtés égaux, 4 angles droits » sans avoir vérifié avec une équerre et une règle ne saura pas mobiliser ces propriétés pour reconnaître un carré dans une figure complexe ou pour le distinguer d'un losange.",
    },
    mainTrap:
      "Confondre géométrie perceptive et géométrie des propriétés. En cycle 1, l'élève reconnaît un carré « parce que ça ressemble à un carré » (perception globale). En cycle 2-3, il doit dépasser cette reconnaissance visuelle pour s'appuyer sur les propriétés (angles droits, côtés égaux). Le piège au CRPE est de ne pas distinguer ces deux approches dans l'analyse d'une séquence.",
    quiz: [
      {
        sentence:
          "Selon le modèle de Van Hiele, les élèves de cycle 1 reconnaissent les figures géométriques par perception globale, sans référence aux propriétés.",
        isCorrect: true,
        explanation:
          "VRAI. Au niveau 0 de Van Hiele (visualisation), l'élève identifie les figures par leur forme générale : « c'est un triangle parce que ça pointe ». Il ne se réfère pas aux propriétés (3 côtés, 3 sommets). Ce niveau domine en cycle 1.",
      },
      {
        sentence:
          "Les instruments de géométrie (règle, équerre, compas) doivent être introduits dès la maternelle pour habituer les élèves à la précision.",
        isCorrect: false,
        explanation:
          "FAUX. En maternelle, les activités géométriques passent par la manipulation d'objets réels (blocs, tangram, puzzles), le pliage et le découpage. Les instruments formels (équerre, compas) sont introduits progressivement en cycle 2, quand l'élève a besoin de vérifier des propriétés (angle droit, longueur).",
      },
      {
        sentence:
          "En cycle 3, les élèves commencent à utiliser des propriétés géométriques pour justifier leurs affirmations, ce qui prépare le raisonnement déductif du collège.",
        isCorrect: true,
        explanation:
          "VRAI. Les programmes de cycle 3 introduisent progressivement la justification par les propriétés : « ce quadrilatère est un rectangle car il a 4 angles droits ». C'est une transition entre la vérification empirique (mesurer) et la démonstration formelle (collège).",
      },
      {
        sentence:
          "Le passage de la géométrie perceptive à la géométrie des propriétés se fait naturellement avec l'âge, sans besoin d'un enseignement spécifique.",
        isCorrect: false,
        explanation:
          "FAUX. Le modèle de Van Hiele montre que le passage d'un niveau au suivant dépend de l'enseignement, pas de la maturation. Sans activités spécifiques (manipulation, comparaison, classification par propriétés), un élève peut rester au stade de la reconnaissance perceptive même en CM2.",
      },
      {
        sentence:
          "Le pliage est une activité géométrique pertinente pour faire percevoir la symétrie axiale avant toute formalisation.",
        isCorrect: true,
        explanation:
          "VRAI. Le pliage permet de constater concrètement la superposition des deux moitiés d'une figure symétrique. C'est une manipulation fondamentale en cycle 2 pour construire le concept de symétrie axiale avant d'introduire la définition formelle (point, axe, distance).",
      },
    ],
  },
};
