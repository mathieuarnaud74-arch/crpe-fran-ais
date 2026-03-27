import type { Fiche } from "@/features/fiches/types";

export const enonciationSprint: Fiche = {
  id: "analyse-langue-enonciation-sprint",
  slug: "enonciation-sprint",
  title: "L'énonciation",
  domaine: "analyse_langue",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["énonciation", "déictiques", "indices d'énonciation", "point de vue", "modalités"],
  notionsLiees: ["texte-argumentatif-sprint", "schema-narratif-sprint"],
  exercicesAssocies: ["comp_enonciation_point_vue", "anal_discours_direct_indirect"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche est de niveau avancé : elle suppose la maîtrise des temps verbaux et des pronoms. L'énonciation est une notion incontournable pour analyser tout texte littéraire ou fonctionnel au CRPE écrit.",
    oneLiner:
      "L'énonciation est l'acte de produire un énoncé. On l'analyse à travers les déictiques (je/tu, ici, maintenant — indices qui ancrent l'énoncé dans la situation) et les modalités (assertive, interrogative, exclamative, injonctive) qui révèlent la prise en charge subjective de l'énonciateur.",
    exampleCorrect: {
      sentence:
        "« Je vous écris depuis ce café où nous nous retrouvons chaque mardi. » → énoncé ancré dans la situation d'énonciation.",
      explanation:
        "Présence de tous les déictiques caractéristiques : personne (je/vous/nous), lieu (ce café → déictique spatial démonstratif), temps (présent de l'indicatif, chaque mardi → ancrage dans le présent du locuteur). L'énonciateur est impliqué et la situation est identifiable.",
    },
    exampleWrong: {
      sentence:
        "Dans un roman à la première personne, le « je » désigne l'auteur.",
      explanation:
        "FAUX. Le « je » narratif est une instance fictive construite par le texte — le narrateur. L'auteur (personne réelle) et le narrateur (instance textuelle) ne se confondent que dans l'autobiographie, et encore avec nuances. Confondre auteur/narrateur/personnage est une erreur grave en analyse littéraire au CRPE.",
    },
    mainTrap:
      "Le discours indirect libre présente des indices d'énonciation mixtes : les temps verbaux et les déictiques spatiaux/temporels relèvent du plan du récit (passé simple, imparfait, il/elle, là, alors) mais le lexique évaluatif et la modalité appartiennent au personnage. Ex. : « Il rentra chez lui. Quelle journée absurde il avait vécue ! » — l'exclamation est celle du personnage, mais la narration reste à la troisième personne. Difficile à analyser sans maîtriser les deux plans simultanément.",
    quiz: [
      {
        sentence:
          "Dans un énoncé coupé de la situation d'énonciation, on trouve généralement le passé simple et la troisième personne.",
        isCorrect: true,
        explanation:
          "Exact. L'énoncé coupé (plan du récit, selon Benveniste) se caractérise par : passé simple, imparfait, plus-que-parfait, 3e personne, déictiques absents ou remplacés par des anaphores (il, elle, là, alors). C'est le plan narratif classique du récit littéraire.",
      },
      {
        sentence:
          "Les déictiques de lieu (ici, là-bas, ce…) n'ont de sens que par rapport à la position du locuteur au moment de l'énonciation.",
        isCorrect: true,
        explanation:
          "C'est la définition même du déictique spatial : son référent dépend de la situation d'énonciation (qui parle, où, quand). « Ici » désigne l'endroit où se trouve le locuteur au moment où il parle — le sens varie selon les contextes. C'est pourquoi les déictiques posent problème à l'écrit (le lecteur n'a pas accès à la situation).",
      },
      {
        sentence:
          "La modalité injonctive se reconnaît uniquement à l'emploi de l'impératif.",
        isCorrect: false,
        explanation:
          "FAUX. La modalité injonctive peut être exprimée par l'impératif (Viens ici !), mais aussi par l'infinitif (Ne pas fumer), le subjonctif (Qu'il parte !), le futur à valeur d'ordre (Tu iras chercher du pain), ou même un énoncé déclaratif à valeur performative. La modalité est une valeur illocutoire, pas une forme unique.",
      },
      {
        sentence:
          "Les marques de subjectivité dans un texte sont toujours des indices d'énonciation.",
        isCorrect: false,
        explanation:
          "Pas toujours. Les marques de subjectivité (adjectifs évaluatifs, adverbes d'opinion, lexique connoté) témoignent du point de vue de l'énonciateur, mais certaines peuvent être conventionnelles ou stylistiques sans ancrer l'énoncé dans une situation précise. La notion d'indice d'énonciation est plus restreinte : elle désigne spécifiquement les éléments déictiques.",
      },
      {
        sentence:
          "Dans le discours rapporté indirect, les déictiques sont transposés (je → il, ici → là, maintenant → alors).",
        isCorrect: true,
        explanation:
          "Exact. Le passage du discours direct au discours indirect entraîne la transposition des déictiques : personnes (je → il/elle), lieux (ici → là), temps (maintenant → alors, demain → le lendemain). Cette transposition est une règle syntaxique à maîtriser pour enseigner le discours rapporté en cycle 3.",
      },
    ],
  },
};
