import type { Fiche } from "@/features/fiches/types";

export const schemaNarratifSprint: Fiche = {
  id: "comprehension-texte-schema-narratif-sprint",
  slug: "schema-narratif-sprint",
  title: "Le schéma narratif",
  subtitle: "Révision express — 5 min",
  domaine: "comprehension_texte",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["schéma narratif", "situation initiale", "élément perturbateur", "récit", "conte"],
  notionsLiees: ["reperage-explicite-sprint", "texte-argumentatif-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche couvre le schéma narratif quinaire (5 étapes) de Larivaille, outil de base pour analyser un récit au CRPE et concevoir des séquences de production d'écrits en cycle 3.",
    oneLiner:
      "Le schéma narratif décrit la structure d'un récit en 5 étapes : situation initiale (équilibre) → élément perturbateur (déséquilibre) → péripéties (tentatives de résolution) → élément de résolution (retour à l'équilibre) → situation finale (nouvel état stable). C'est un outil d'analyse, pas une norme universelle.",
    exampleCorrect: {
      sentence:
        "Dans « Le Petit Chaperon Rouge » : situation initiale = la fillette vit heureuse avec sa famille.",
      explanation:
        "La situation initiale présente l'état stable du monde narratif avant le déséquilibre : personnages en présence, lieu, temps, équilibre implicite. Ici, la vie quotidienne tranquille est l'état normal avant la mission confiée à la fillette (aller chez grand-mère) qui déclenche l'intrigue.",
    },
    exampleWrong: {
      sentence:
        "Dans « Le Petit Chaperon Rouge », la rencontre avec le loup est l'élément de résolution.",
      explanation:
        "FAUX. La rencontre avec le loup est un élément perturbateur (ou le début des péripéties) — elle introduit le danger et rompt l'équilibre. L'élément de résolution intervient après les péripéties pour rétablir un équilibre : l'arrivée du chasseur qui libère la grand-mère (selon les versions). Perturbateur et résolution sont les deux pôles opposés de la dynamique narrative.",
    },
    mainTrap:
      "La situation finale n'est pas nécessairement un retour à la situation initiale : elle peut être un nouvel état, différent et parfois plus dégradé (conte tragique) ou plus heureux (conte de fées). De plus, de nombreux récits contemporains (nouvelles, romans modernistes) brouillent l'ordre du schéma ou omettent certaines étapes. Le schéma narratif est un outil d'analyse, pas une recette prescriptive.",
    quiz: [
      {
        sentence:
          "L'élément perturbateur rompt l'équilibre de la situation initiale et déclenche l'action.",
        isCorrect: true,
        explanation:
          "C'est sa définition fonctionnelle. Sans élément perturbateur, il n'y a pas de récit au sens strict — juste une description d'état. Repérer cet élément permet de comprendre la dynamique narrative et d'identifier le problème que le héros doit résoudre.",
      },
      {
        sentence:
          "Les péripéties et l'élément perturbateur désignent la même étape du schéma narratif.",
        isCorrect: false,
        explanation:
          "FAUX. L'élément perturbateur est l'événement unique qui rompt l'équilibre initial. Les péripéties sont l'ensemble des actions, obstacles et tentatives que le héros traverse pour résoudre le problème. Ce sont deux étapes distinctes : le perturbateur déclenche les péripéties.",
      },
      {
        sentence:
          "Le schéma narratif est pertinent pour analyser un texte de type narratif, mais aussi pour structurer une production d'écrits au cycle 3.",
        isCorrect: true,
        explanation:
          "Exact. Le schéma narratif est un outil double : analytique (comprendre la structure d'un texte lu) et productif (planifier l'écriture d'un récit). Les programmes de cycle 3 mentionnent explicitement l'utilisation d'outils de planification comme le schéma narratif pour la production d'écrits.",
      },
      {
        sentence:
          "Tout récit littéraire respecte nécessairement les 5 étapes du schéma narratif dans l'ordre.",
        isCorrect: false,
        explanation:
          "FAUX. De nombreux récits modernes jouent avec le schéma : in medias res (début au cœur de l'action), analepses (retours en arrière), fin ouverte (pas de situation finale résolue). Le schéma est un outil d'analyse ; il décrit une forme canonique, pas une règle universelle.",
      },
      {
        sentence:
          "Le schéma actantiel (Greimas) et le schéma narratif (Larivaille) sont deux outils complémentaires : l'un analyse les forces en présence, l'autre la progression chronologique.",
        isCorrect: true,
        explanation:
          "Exact. Le schéma actantiel analyse les rôles (sujet, objet, destinateur, destinataire, adjuvant, opposant) — les forces qui agissent dans le récit. Le schéma narratif analyse la progression temporelle des événements. Les deux sont complémentaires pour une analyse complète d'un récit.",
      },
    ],
  },
};
