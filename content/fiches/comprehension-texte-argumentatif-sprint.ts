import type { Fiche } from "@/features/fiches/types";

export const texteArgumentatifSprint: Fiche = {
  id: "comprehension-texte-argumentatif-sprint",
  slug: "texte-argumentatif-sprint",
  title: "Le texte argumentatif",
  domaine: "comprehension_texte",
  model: "sprint",
  accessTier: "free",
  difficulte: "avance",
  utilite: "haute",
  estimatedMinutes: 5,
  tags: ["argumentation", "thèse", "argument", "concession", "texte argumentatif"],
  notionsLiees: ["connecteurs-sprint", "enonciation-sprint"],
  exercicesAssocies: ["cpt_texte_argumentatif", "comprehension_structure_argumentative"],
  content: {
    model: "sprint",
    disclaimer:
      "Cette fiche est de niveau avancé : elle suppose la maîtrise des connecteurs logiques et des notions de base de la rhétorique. L'argumentation est systématiquement présente dans les épreuves CRPE, que ce soit pour analyser un texte documentaire ou produire un écrit réflexif.",
    oneLiner:
      "Un texte argumentatif défend une thèse à l'aide d'arguments organisés (faits, témoignages, autorités, analogies) et d'exemples. Structure canonique : thèse + arguments + exemples. La concession (reconnaître l'adversaire pour mieux le réfuter) renforce la thèse au lieu de l'affaiblir.",
    exampleCorrect: {
      sentence:
        "« La lecture favorise le développement du vocabulaire [thèse]. En effet, chaque texte expose le lecteur à des mots nouveaux dans leur contexte naturel d'emploi [argument par le fait]. Ainsi, les études PISA montrent que les lecteurs réguliers maîtrisent un lexique deux fois plus étendu [exemple/preuve]. »",
      explanation:
        "Structure thèse-argument-exemple clairement articulée. L'argument est de type factuel, étayé par une référence à une étude reconnue (argument d'autorité). Les connecteurs (en effet, ainsi) signalent les relations logiques. C'est le schéma attendu dans un développement argumentatif au CRPE.",
    },
    exampleWrong: {
      sentence:
        "Le premier paragraphe d'un texte de Rousseau qui expose le sujet est la thèse de l'auteur.",
      explanation:
        "FAUX. L'introduction ou l'exposé du sujet n'est pas la thèse. La thèse est la position précise et défendable que l'auteur soutient tout au long du texte. Un premier paragraphe peut présenter le contexte, poser la question ou exposer les deux positions avant de trancher. Confondre introduction et thèse est une erreur courante dans l'analyse de texte au CRPE.",
    },
    mainTrap:
      "Une concession n'est PAS un abandon de la thèse : c'est une stratégie rhétorique qui consiste à reconnaître la part de vérité dans la position adverse (certes, il est vrai que…) avant de la dépasser par une réfutation (mais, cependant, néanmoins…). L'auteur qui concède montre sa rigueur intellectuelle et renforce sa crédibilité. Ne pas confondre avec une capitulation argumentative.",
    quiz: [
      {
        sentence:
          "Dans une argumentation directe (essai, article), l'auteur exprime sa thèse en son propre nom.",
        isCorrect: true,
        explanation:
          "Exact. L'argumentation directe : l'auteur prend position explicitement à la première personne ou via des formules assertives (il est clair que, force est de constater que…). L'essai, l'éditorial, le plaidoyer en sont des exemples. À distinguer de l'argumentation indirecte (fable, conte philosophique) où la thèse est voilée derrière une fiction.",
      },
      {
        sentence:
          "Un argument ad hominem (attaque de la personne plutôt que de ses idées) est un argument logiquement valide.",
        isCorrect: false,
        explanation:
          "FAUX. L'argument ad hominem est un sophisme : il attaque la personne qui formule l'argument plutôt que l'argument lui-même. Il est rhétoriquement persuasif mais logiquement invalide. Au CRPE, savoir identifier les arguments fallacieux fait partie de la culture argumentative attendue.",
      },
      {
        sentence:
          "Dans une fable de La Fontaine, la thèse est exprimée par la morale explicite.",
        isCorrect: true,
        explanation:
          "Généralement, oui. La morale (souvent placée en fin de fable) explicite la thèse que le récit allégorique a illustrée. C'est un exemple d'argumentation indirecte : la fiction (récit animal) sert de vecteur à une thèse sur la conduite humaine, énoncée dans la morale.",
      },
      {
        sentence:
          "Un exemple est suffisant pour constituer un argument dans un texte argumentatif.",
        isCorrect: false,
        explanation:
          "FAUX. Un exemple illustre un argument mais ne le constitue pas. La structure attendue est : argument (pourquoi la thèse est vraie) puis exemple (preuve concrète). Un exemple seul, sans la règle générale qu'il illustre, ne suffit pas à convaincre — c'est un cas particulier, pas un principe.",
      },
      {
        sentence:
          "Distinguer un fait d'une opinion est une compétence argumentative travaillée dès le cycle 3.",
        isCorrect: true,
        explanation:
          "Exact. Les programmes de cycle 3 (CM1-CM2-6e) incluent explicitement la distinction fait/opinion parmi les compétences de lecture critique et d'expression orale. Un fait est vérifiable objectivement ; une opinion exprime un point de vue subjectif. Cette distinction est le fondement de toute éducation à l'argumentation.",
      },
    ],
  },
};
