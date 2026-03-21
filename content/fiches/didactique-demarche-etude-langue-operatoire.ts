import type { Fiche } from "@/features/fiches/types";

export const demarcheEtudeLangueOperatoire: Fiche = {
  id: "didactique-demarche-etude-langue-operatoire",
  slug: "demarche-etude-langue-arbre-decision",
  title: "Choisir sa démarche en étude de la langue : arbre de décision",
  domaine: "didactique_francais",
  model: "operatoire",
  accessTier: "free",
  difficulte: "intermediaire",
  utilite: "haute",
  estimatedMinutes: 10,
  tags: [
    "didactique",
    "étude de la langue",
    "démarche inductive",
    "démarche déductive",
    "manipulation",
    "observation",
  ],
  notionsLiees: [],
  exercicesAssocies: [],
  content: {
    model: "operatoire",
    startingQuestion:
      "Les élèves connaissent-ils déjà la notion visée ?",
    decisionTree: {
      type: "question",
      text: "Les élèves connaissent-ils déjà la notion visée ?",
      yes: {
        type: "question",
        text: "L'objectif est-il l'automatisation (transfert en production) ?",
        yes: {
          type: "leaf",
          label: "Exercices d'entraînement systématique",
          rule: "Quand la notion est connue et que l'objectif est l'automatisation, on propose des exercices d'entraînement variés et réguliers : dictées (négociée, fresque, quotidienne), exercices de réinvestissement en contexte (production d'écrits, copie active), activités ritualisées courtes. L'enjeu est le transfert des connaissances déclaratives en procédures automatisées.",
          example:
            "Pour automatiser l'accord sujet-verbe : dictée quotidienne de phrases courtes, puis relecture ciblée des productions d'écrits avec consigne explicite de vérification des accords.",
        },
        no: {
          type: "leaf",
          label: "Démarche DÉDUCTIVE — rappel de la règle puis application",
          rule: "Quand la notion est déjà connue mais pas encore stabilisée, la démarche déductive part de la règle (rappel explicite) pour aller vers les exemples et les exercices d'application. Elle convient à la consolidation, à la révision et à la structuration des savoirs. Étapes : rappel de la règle → exemples commentés → exercices d'application → synthèse.",
          example:
            "Révision du pluriel des noms en -ou : rappel collectif de la règle et des exceptions, exemples au tableau, puis exercices gradués (compléter, transformer, produire des phrases).",
        },
      },
      no: {
        type: "question",
        text: "La notion peut-elle être observée dans un corpus de phrases ou de textes ?",
        yes: {
          type: "question",
          text: "Les élèves sont-ils capables de manipuler et classer de façon autonome ?",
          yes: {
            type: "leaf",
            label: "Démarche INDUCTIVE — observation, manipulation, classement, formulation de la règle",
            rule: "La démarche inductive (recommandée par Eduscol 2021) part de l'observation d'un corpus pour amener les élèves à formuler eux-mêmes la règle. Étapes : 1) observation d'un corpus trié par l'enseignant, 2) manipulation (suppression, déplacement, remplacement, encadrement), 3) classement et comparaison, 4) formulation collective de la régularité, 5) institutionnalisation, 6) exercices d'application. Cette démarche favorise la compréhension du système de la langue.",
            example:
              "Découverte de l'accord sujet-verbe en CE2 : corpus de phrases où le sujet varie → les élèves observent les changements du verbe, classent les phrases, formulent la règle d'accord, puis l'appliquent dans des exercices progressifs.",
          },
          no: {
            type: "leaf",
            label: "Démarche GUIDÉE — observation avec étayage fort, manipulation collective",
            rule: "Quand les élèves ne maîtrisent pas encore les opérations de manipulation syntaxique, l'enseignant guide l'observation du corpus pas à pas. Les manipulations sont réalisées collectivement (au tableau, en binômes encadrés). L'étayage est progressivement réduit au fil des séances. Cette démarche convient aux élèves en difficulté ou aux notions complexes en début de cycle.",
            example:
              "Découverte du complément du nom en CM1 avec des élèves fragiles : l'enseignant affiche un corpus, guide la suppression collective des groupes prépositionnels, fait verbaliser les observations avant d'amener la règle.",
          },
        },
        no: {
          type: "leaf",
          label: "Enseignement EXPLICITE — présentation directe avec exemples et contre-exemples",
          rule: "Quand la notion ne peut pas être facilement observée dans un corpus (notion abstraite, exception, convention orthographique), l'enseignant présente directement la règle de façon claire et structurée, avec des exemples et des contre-exemples. Étapes : 1) présentation explicite de la notion, 2) exemples positifs, 3) contre-exemples, 4) pratique guidée, 5) pratique autonome. Cette démarche est efficace pour les conventions arbitraires et les irrégularités.",
          example:
            "Enseignement des lettres muettes finales : la règle ne se déduit pas facilement d'un corpus. L'enseignant présente la stratégie (chercher un mot de la même famille : « gris → grise », « lent → lente ») avec des exemples et des cas où la stratégie ne fonctionne pas (« bras », « tapis »).",
        },
      },
    },
    workedExample: {
      phrase:
        "Objectif : enseigner l'accord sujet-verbe en CE2 (notion nouvelle pour les élèves).",
      steps: [
        "Étape 1 — Les élèves connaissent-ils déjà la notion ? Non, c'est une découverte. On se dirige vers la branche « Non (découverte) ».",
        "Étape 2 — La notion peut-elle être observée dans un corpus ? Oui, on peut facilement constituer un corpus de phrases où le sujet varie (singulier/pluriel) pour observer les modifications du verbe.",
        "Étape 3 — Les élèves sont-ils capables de manipuler et classer de façon autonome ? En CE2, les élèves ont déjà pratiqué des activités de tri en CE1. On choisit la démarche INDUCTIVE.",
        "Étape 4 — Mise en œuvre : l'enseignant prépare un corpus de 10 phrases (5 avec sujet singulier, 5 avec sujet pluriel, verbes du 1er groupe au présent). Les élèves observent, soulignent les verbes, entourent les sujets, classent les phrases en deux colonnes, puis formulent la règle : « Quand le sujet est au pluriel, le verbe prend la marque du pluriel. »",
        "Étape 5 — Institutionnalisation et entraînement : la règle est consignée dans le cahier de leçons. Des exercices gradués sont proposés (compléter, transformer, puis produire des phrases). Des dictées ciblées permettront l'automatisation dans les semaines suivantes.",
      ],
    },
    quiz: [
      {
        sentence:
          "La démarche inductive part de la règle pour aller vers les exemples.",
        isCorrect: false,
        explanation:
          "FAUX. C'est l'inverse : la démarche inductive part de l'observation d'exemples (corpus) pour amener les élèves à formuler la règle. C'est la démarche déductive qui part de la règle vers les exemples.",
      },
      {
        sentence:
          "Eduscol 2021 recommande la démarche inductive (observation, manipulation, classement) pour l'étude de la langue.",
        isCorrect: true,
        explanation:
          "VRAI. Les documents d'accompagnement Eduscol (2021) préconisent une démarche qui part de l'observation d'un corpus, passe par la manipulation syntaxique et le classement, pour aboutir à la formulation de la règle par les élèves.",
      },
      {
        sentence:
          "L'enseignement explicite est à proscrire en étude de la langue car il est trop transmissif.",
        isCorrect: false,
        explanation:
          "FAUX. L'enseignement explicite est pertinent pour les notions qui ne se déduisent pas facilement d'un corpus (conventions arbitraires, irrégularités, lettres muettes). Aucune démarche n'est à proscrire : le choix dépend de la nature de la notion et du profil des élèves.",
      },
      {
        sentence:
          "Les quatre opérations de manipulation syntaxique sont : suppression, déplacement, remplacement (commutation) et encadrement.",
        isCorrect: true,
        explanation:
          "VRAI. Ces quatre manipulations sont les outils fondamentaux de la grammaire rénovée (Eduscol 2021). Elles permettent aux élèves de tester les propriétés des groupes syntaxiques : supprimer pour vérifier le caractère facultatif, déplacer pour identifier les compléments circonstanciels, remplacer pour identifier la nature, encadrer (par « c'est… qui ») pour identifier le sujet.",
      },
      {
        sentence:
          "La démarche déductive convient uniquement à la découverte de notions nouvelles.",
        isCorrect: false,
        explanation:
          "FAUX. La démarche déductive (de la règle vers les exemples) convient plutôt à la consolidation et à la révision de notions déjà rencontrées. Pour la découverte, les programmes privilégient la démarche inductive (de l'observation vers la règle).",
      },
    ],
    didacticNote:
      "Les programmes 2021 et les documents Eduscol insistent sur l'articulation entre les séances décrochées d'étude de la langue et les activités de lecture-écriture. Quelle que soit la démarche choisie, la notion doit être réinvestie en contexte (production d'écrits, révision de texte, lecture). La démarche inductive n'exclut pas des moments d'enseignement explicite : l'enseignant peut combiner les approches au sein d'une même séquence selon les besoins des élèves et la nature des faits de langue étudiés.",
  },
};
