import type { Fiche } from "@/features/fiches/types";

export const synonymieAntonymieSprint: Fiche = {
  id: "lexique-synonymie-antonymie-sprint",
  slug: "synonymie-antonymie-sprint",
  title: "Synonymie et antonymie",
  domaine: "lexique",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["synonymie", "antonymie", "sens", "vocabulaire", "relations lexicales"],
  notionsLiees: ["champs-lexicaux-sprint", "registres-langue-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche porte sur les relations de synonymie et d'antonymie, deux relations sémantiques fondamentales au programme du CRPE. L'enjeu est de maîtriser les nuances terminologiques et de savoir analyser ces relations en contexte, y compris dans une perspective didactique (cycles 2 et 3).",
    oneLiner:
      "La synonymie désigne une relation entre mots de sens proches, substituables dans certains contextes mais jamais parfaitement interchangeables dans tous les emplois. L'antonymie désigne une relation entre mots de sens opposés. Trois types d'antonymes : contradictoires (vivant/mort), contraires ou graduels (chaud/froid, avec des intermédiaires : tiède) et réciproques (acheter/vendre, où l'un implique l'autre).",
    exampleCorrect: {
      sentence:
        "« Monter » et « grimper » sont synonymes, mais « grimper » implique un effort physique plus marqué. Dans « grimper un escalier », la nuance est faible ; dans « grimper à un arbre », « monter à un arbre » serait moins idiomatique.",
      explanation:
        "Les deux mots partagent le sème central de déplacement vers le haut, mais diffèrent par leurs connotations (effort, difficulté) et leurs contraintes combinatoires. C'est le principe fondamental : les synonymes ont un noyau sémantique commun mais se distinguent par le registre de langue, l'intensité ou le contexte d'emploi.",
    },
    exampleWrong: {
      sentence:
        "« Petit » et « grand » sont des antonymes contradictoires : si quelque chose n'est pas petit, c'est forcément grand.",
      explanation:
        "FAUX. « Petit » et « grand » sont des antonymes graduels (ou contraires), car il existe des degrés intermédiaires : moyen, assez grand, plutôt petit. Ce ne sont pas des contradictoires. Un couple contradictoire n'admet pas de milieu : vivant/mort, pair/impair. La distinction graduel/contradictoire est un classique du CRPE.",
    },
    mainTrap:
      "Croire que deux synonymes sont interchangeables dans tous les contextes. En réalité, la synonymie absolue n'existe quasiment pas en langue : les synonymes se différencient toujours par le registre (mourir/décéder/crever), l'intensité (peur/terreur/effroi), les connotations affectives ou les contraintes syntaxiques (commencer à / se mettre à). Au CRPE, on attend du candidat qu'il sache expliquer pourquoi la substitution d'un synonyme modifie le sens ou le niveau de langue.",
    quiz: [
      {
        sentence:
          "Les synonymes parfaits, totalement interchangeables dans tous les contextes, sont très fréquents en français.",
        isCorrect: false,
        explanation:
          "FAUX. La synonymie parfaite est extrêmement rare en français. Même des paires très proches comme « rapidement » et « vite » diffèrent dans certains emplois (on dit « Vite ! » comme interjection, mais pas « Rapidement ! »). Les synonymes se distinguent presque toujours par le registre, la connotation, l'intensité ou le contexte syntaxique.",
      },
      {
        sentence:
          "« Acheter » et « vendre » sont des antonymes réciproques : l'un implique logiquement l'autre.",
        isCorrect: true,
        explanation:
          "Exact. L'antonymie réciproque lie deux termes qui décrivent la même situation de deux points de vue complémentaires. Si A achète à B, alors B vend à A. Autres exemples : donner/recevoir, enseigner/apprendre, mari/femme. Ce type se distingue des contradictoires (vrai/faux) et des graduels (chaud/froid).",
      },
      {
        sentence:
          "Un mot peut avoir des synonymes différents selon le contexte : « dur » est synonyme de « difficile » dans « un problème dur » et de « sévère » dans « un père dur ».",
        isCorrect: true,
        explanation:
          "Exact. La synonymie est contextuelle et liée à la polysémie. Un mot polysémique comme « dur » a des synonymes différents pour chacune de ses acceptions. C'est pourquoi l'analyse de la synonymie doit toujours se faire en contexte, jamais sur des mots isolés. Cette compétence est travaillée dès le cycle 3.",
      },
      {
        sentence:
          "L'antonymie n'existe qu'entre mots de même catégorie grammaticale : on ne peut opposer un verbe et un adjectif.",
        isCorrect: true,
        explanation:
          "Exact. L'antonymie, au sens linguistique strict, relie deux mots de même catégorie grammaticale : nom/nom (jour/nuit), adjectif/adjectif (grand/petit), verbe/verbe (monter/descendre), adverbe/adverbe (bien/mal). On ne parle pas d'antonymie entre un verbe et un adjectif : ce serait une opposition sémantique, mais pas une relation d'antonymie au sens propre.",
      },
      {
        sentence:
          "En didactique, travailler la synonymie et l'antonymie permet uniquement d'enrichir le vocabulaire des élèves, sans lien avec la compréhension de texte.",
        isCorrect: false,
        explanation:
          "FAUX. La synonymie et l'antonymie sont aussi des outils de compréhension fine des textes. Repérer qu'un auteur utilise un synonyme plus intense (« terreur » au lieu de « peur ») éclaire l'interprétation. Repérer des oppositions lexicales structure la compréhension (personnages antagonistes, retournement de situation). Ces relations lexicales sont donc au service de la production ET de la réception des textes.",
      },
    ],
  },
};
