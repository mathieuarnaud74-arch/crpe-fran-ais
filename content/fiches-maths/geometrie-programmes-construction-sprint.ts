import type { Fiche } from "@/features/fiches/types";

export const geometrieProgrammesConstructionSprint: Fiche = {
  id: "geometrie-programmes-construction-sprint",
  slug: "programmes-construction-rediger-interpreter",
  title: "Programmes de construction : rédiger et interpréter",
  domaine: "geometrie",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: [
    "programme de construction",
    "géométrie instrumentée",
    "tracé",
    "rédaction",
    "instruments",
    "règle",
    "compas",
    "équerre",
  ],
  notionsLiees: [
    "geometrie-figures-planes-reference",
    "geometrie-triangles-sprint",
    "geometrie-quadrilateres-sprint",
    "didactique-geometrie-manipulation-sprint",
  ],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Fiche de révision rapide sur les programmes de construction. Pour les propriétés des figures planes, consulte la fiche Référence « Figures planes ».",
    oneLiner:
      "Un programme de construction est une suite d'instructions ordonnées qui permet de tracer une figure unique. Chaque instruction doit nommer les objets créés, préciser l'instrument utilisé, et être suffisamment précise pour qu'il n'y ait qu'une seule figure possible.",
    exampleCorrect: {
      sentence:
        "1. Tracer un segment [AB] de 6 cm. 2. À l'aide du compas, tracer le cercle de centre A et de rayon 4 cm. 3. À l'aide du compas, tracer le cercle de centre B et de rayon 5 cm. 4. Nommer C l'un des points d'intersection des deux cercles. 5. Tracer le triangle ABC.",
      explanation:
        "Ce programme est complet : chaque étape précise l'instrument, nomme les objets, et les mesures garantissent l'unicité de la figure (à la symétrie axiale près, d'où « l'un des points »). ✓",
    },
    exampleWrong: {
      sentence:
        "Tracer un triangle avec un côté de 6 cm, un autre de 4 cm et un troisième de 5 cm.",
      explanation:
        "Ce n'est pas un programme de construction, c'est une description. Il manque : l'ordre des étapes, le nom des sommets, l'instrument à utiliser, et la méthode pour déterminer le troisième sommet (intersection de deux arcs de cercle). Un programme doit être exécutable pas à pas.",
    },
    mainTrap:
      "Oublier que l'ordre des instructions est crucial. On ne peut pas tracer un cercle de centre C si le point C n'a pas encore été défini. Autre piège fréquent : écrire des instructions ambiguës qui permettent plusieurs figures différentes (ne pas préciser « l'un des deux points d'intersection » ou ne pas donner de mesure suffisante).",
    quiz: [
      {
        sentence:
          "Un programme de construction doit permettre d'obtenir une figure unique (aux symétries près).",
        isCorrect: true,
        explanation:
          "VRAI. Si le programme peut produire plusieurs figures différentes, c'est qu'il manque des informations (une mesure, une précision de position). L'unicité est le critère fondamental d'un bon programme.",
      },
      {
        sentence:
          "On peut utiliser « tracer une droite perpendiculaire » sans préciser par quel point elle passe.",
        isCorrect: false,
        explanation:
          "FAUX. Il existe une infinité de droites perpendiculaires à une droite donnée. Il faut toujours préciser le point par lequel passe la perpendiculaire : « Tracer la droite perpendiculaire à (AB) passant par C. »",
      },
      {
        sentence:
          "La compétence « écrire un programme de construction » fait partie des programmes de l'école élémentaire (cycle 3).",
        isCorrect: true,
        explanation:
          "VRAI. Le programme de cycle 3 mentionne explicitement la rédaction et l'exécution de programmes de construction. C'est une compétence évaluable au CRPE dans la partie didactique.",
      },
      {
        sentence:
          "L'instruction « Tracer un angle droit en A » est suffisamment précise pour un programme de construction.",
        isCorrect: false,
        explanation:
          "FAUX. Il faut préciser entre quels segments l'angle droit est formé, et dans quelle direction se situe le nouveau côté. « Tracer un angle droit en A » laisse une infinité de possibilités d'orientation.",
      },
      {
        sentence:
          "Les instruments autorisés dans un programme de construction standard sont : règle non graduée, compas, équerre et rapporteur.",
        isCorrect: true,
        explanation:
          "VRAI. Ce sont les quatre instruments de géométrie de base. La règle graduée peut remplacer la règle non graduée quand on doit reporter des mesures. Le rapporteur sert aux angles non droits.",
      },
    ],
  },
};
