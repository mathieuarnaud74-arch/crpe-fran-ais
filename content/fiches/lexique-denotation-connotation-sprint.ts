import type { Fiche } from "@/features/fiches/types";

export const denotationConnotationSprint: Fiche = {
  id: "lexique-denotation-connotation-sprint",
  slug: "denotation-connotation-sprint",
  title: "Dénotation et connotation",
  domaine: "lexique",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "moyenne",
  estimatedMinutes: 5,
  tags: [
    "dénotation",
    "connotation",
    "sens objectif",
    "sens subjectif",
    "lexique",
  ],
  notionsLiees: [
    "lexique-registres-langue-sprint",
    "lexique-champs-lexicaux-sprint",
  ],
  exercicesAssocies: ["lex_sens_propre_figure", "lex_sens_propre_figure_expressions"],
  content: {
    model: "sprint",
    disclaimer:
      "Notion de niveau II dans la terminologie officielle Éduscol 2021. Fréquemment évaluée au CRPE dans les questions de compréhension de texte et d'analyse stylistique.",
    oneLiner:
      "Dénotation = sens objectif, référentiel, tel qu'on le trouve dans le dictionnaire. Connotation = valeurs subjectives, affectives, culturelles ou sociales associées à un mot au-delà de son sens premier. Tout mot possède une dénotation ; les connotations varient selon le contexte, l'époque, le registre de langue et la culture du locuteur. La distinction dénotation/connotation est essentielle pour l'analyse littéraire (effets produits par les choix lexicaux d'un auteur) et pour la didactique du vocabulaire à l'école (apprendre aux élèves que les mots ne sont pas neutres).",
    exampleCorrect: {
      sentence:
        "Le mot « rouge » dénote une couleur du spectre visible (sens objectif). Il connote le danger (panneau stop), la passion (rose rouge), la révolution (drapeau rouge) ou l'interdit (carton rouge).",
      explanation:
        "La dénotation de « rouge » est stable : c'est une couleur. Ses connotations sont multiples et dépendent du contexte culturel. Un même mot peut porter des connotations opposées selon le domaine : « rouge » connote à la fois l'amour et le danger. C'est cette richesse connotative que l'analyse de texte doit relever.",
    },
    exampleWrong: {
      sentence:
        "« Cheval » et « destrier » ont la même connotation puisqu'ils désignent le même animal.",
      explanation:
        "FAUX. Ils partagent la même dénotation (un équidé), mais leurs connotations diffèrent radicalement. « Cheval » est neutre (registre courant). « Destrier » connote le Moyen Âge, la chevalerie, la noblesse (registre littéraire/soutenu). De même, « canasson » dénote le même animal mais connote le mépris (registre familier). Les choix lexicaux d'un auteur révèlent ses intentions par les connotations qu'ils véhiculent.",
    },
    mainTrap:
      "Au CRPE, le piège principal est de confondre dénotation et connotation, ou de croire que la connotation est fixe. La dénotation est stable et partagée par tous les locuteurs (le sens du dictionnaire). La connotation est variable : elle dépend du registre de langue (« mourir » / « décéder » / « crever » ont la même dénotation mais des connotations très différentes), du contexte culturel (« blanc » connote la pureté en Occident, le deuil dans certaines cultures asiatiques) et du contexte textuel. Autre erreur fréquente : penser que la connotation est un « sens figuré ». Le sens figuré est un phénomène sémantique distinct (métaphore, métonymie) — la connotation est une valeur ajoutée qui se superpose au sens, qu'il soit propre ou figuré.",
    quiz: [
      {
        sentence:
          "La dénotation d'un mot correspond à son sens objectif, tel qu'il est défini dans le dictionnaire.",
        isCorrect: true,
        explanation:
          "Correct. La dénotation est le sens référentiel, stable et partagé par l'ensemble des locuteurs. C'est la composante sémantique « neutre » du mot, indépendante du contexte d'emploi. Par exemple, « maison » dénote un bâtiment d'habitation.",
      },
      {
        sentence:
          "Les mots « habitation », « demeure » et « baraque » ont la même connotation car ils désignent tous un lieu où l'on vit.",
        isCorrect: false,
        explanation:
          "FAUX. Ils partagent la même dénotation (un lieu d'habitation), mais leurs connotations sont très différentes. « Habitation » est neutre (registre courant). « Demeure » connote le prestige, la grandeur (registre soutenu). « Baraque » connote la précarité ou le familier péjoratif. Le choix entre ces synonymes révèle l'intention et le registre de l'énonciateur.",
      },
      {
        sentence:
          "Un même mot peut avoir des connotations différentes selon les cultures ou les époques.",
        isCorrect: true,
        explanation:
          "Correct. Les connotations sont socialement et culturellement construites. Exemple : « noir » connote le deuil en Occident, mais c'est le « blanc » qui joue ce rôle dans certaines cultures d'Asie. De même, le mot « révolution » avait des connotations essentiellement astronomiques au XVIIe siècle avant de prendre des connotations politiques au XVIIIe.",
      },
      {
        sentence:
          "La connotation est la même chose que le sens figuré d'un mot.",
        isCorrect: false,
        explanation:
          "FAUX. Le sens figuré est un phénomène sémantique qui modifie le référent du mot (métaphore, métonymie : « dévorer un livre » = lire avidement). La connotation est une valeur affective, sociale ou culturelle qui se superpose au sens — propre ou figuré — sans changer le référent. Un mot au sens propre peut être fortement connoté (« crever » vs « mourir ») et un mot au sens figuré peut être peu connoté.",
      },
      {
        sentence:
          "Dans l'analyse de texte au CRPE, repérer les connotations permet d'identifier le registre de langue et les intentions de l'auteur.",
        isCorrect: true,
        explanation:
          "Correct. Les connotations sont un outil d'analyse littéraire essentiel. Le choix d'un mot plutôt qu'un synonyme révèle le registre (familier, courant, soutenu), le point de vue de l'auteur (péjoratif, mélioratif, neutre) et les effets recherchés sur le lecteur. C'est un savoir-faire attendu au CRPE pour les questions d'analyse de texte.",
      },
    ],
  },
};
