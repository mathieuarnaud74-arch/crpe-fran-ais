import type { Fiche } from "@/features/fiches/types";

export const champsLexicauxSprint: Fiche = {
  id: "lexique-champs-lexicaux-sprint",
  slug: "champs-lexicaux-sprint",
  title: "Champs lexicaux",
  domaine: "lexique",
  model: "sprint",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["champ lexical", "thème", "isotopie", "analyse de texte"],
  notionsLiees: ["formation-des-mots-sprint", "registres-langue-sprint"],
  exercicesAssocies: [],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche cible la distinction champ lexical / champ sémantique / famille de mots — trois notions souvent confondues au CRPE. L'enjeu est aussi pédagogique : savoir formuler une consigne juste en cycle 3.",
    oneLiner:
      "Le champ lexical regroupe tous les mots d'un texte se rapportant à un même thème, quelle que soit leur catégorie grammaticale. Il diffère du champ sémantique (ensemble des sens d'un seul mot) et de la famille de mots (mots partageant le même radical).",
    exampleCorrect: {
      sentence:
        "Dans un poème sur la mer : vague, naviguer, horizon, salé, naufrage, voile → champ lexical de la mer.",
      explanation:
        "Ces mots appartiennent à des catégories grammaticales variées (nom, verbe, adjectif) mais convergent tous vers le même thème : la mer. C'est bien un champ lexical. La diversité des catégories prouve que le critère n'est pas morphologique mais sémantique-thématique.",
    },
    exampleWrong: {
      sentence:
        "Pêcheur, pêche (nom), pêcher (verbe), péché → famille de mots, donc champ lexical de la pêche.",
      explanation:
        "FAUX sur deux points. D'abord, péché (/peʃe/, du latin peccatum) n'appartient pas à la famille de pêcher (la pêche à la ligne) : homophonie trompeuse, mais radicaux distincts (péch- ≠ pêch-). Ensuite, famille de mots et champ lexical sont deux notions distinctes : une famille de mots peut s'étendre sur plusieurs champs lexicaux.",
    },
    mainTrap:
      "Inclure dans un champ lexical des mots partageant le même radical mais relevant d'un thème différent : « pêcheur » (pêche à la ligne) et « péché » (religion) sont homophones, non apparentés. Inversement, des synonymes peuvent appartenir à un même champ lexical sans avoir le même radical (mer, océan, flots, onde). Le critère est toujours le thème, jamais la forme.",
    quiz: [
      {
        sentence:
          "Liberté, libérer, libération, libéral appartiennent tous au champ lexical de la liberté.",
        isCorrect: false,
        explanation:
          "Ce sont des membres de la même famille morphologique (radical liber-), pas nécessairement du même champ lexical : « libéral » peut appartenir au champ de la politique économique. Famille de mots ≠ champ lexical. Le champ lexical dépend du contexte textuel.",
      },
      {
        sentence:
          "Dans un texte, deux champs lexicaux superposés peuvent produire une métaphore filée.",
        isCorrect: true,
        explanation:
          "Exact. Quand deux champs lexicaux coexistent durablement dans un texte (ex. : guerre + amour), leur superposition crée une métaphore filée. Ce procédé est fréquemment analysé au concours sur des textes poétiques.",
      },
      {
        sentence:
          "Un adjectif ne peut pas appartenir à un champ lexical car il ne désigne pas une réalité.",
        isCorrect: false,
        explanation:
          "FAUX. Le champ lexical accueille toutes les catégories grammaticales : noms, verbes, adjectifs, adverbes. « Salé, houleux, maritime » sont des adjectifs appartenant au champ lexical de la mer. Le critère est sémantique-thématique, pas catégoriel.",
      },
      {
        sentence:
          "Identifier le champ lexical dominant d'un texte permet de dégager son thème principal.",
        isCorrect: true,
        explanation:
          "C'est précisément l'usage analytique du champ lexical : repérer les mots les plus fréquents, les regrouper par thème, puis nommer le champ dominant. C'est une compétence visée dès le cycle 3 (activités de classement lexical).",
      },
      {
        sentence:
          "Le champ sémantique d'un mot est l'ensemble de ses synonymes dans un texte.",
        isCorrect: false,
        explanation:
          "FAUX. Le champ sémantique d'un mot est l'ensemble de ses significations (polysémie) : « voler » a pour champ sémantique {se déplacer dans les airs ; dérober}. Ce n'est pas une liste de synonymes. À ne pas confondre avec le champ lexical, qui est textuel et thématique.",
      },
    ],
  },
};
