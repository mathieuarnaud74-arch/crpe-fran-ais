import { ExerciseSubdomain, ExerciseType } from "@/types/domain";

type FrenchLevel = "Facile" | "Intermediaire" | "Difficile";

type Choice = {
  id: string;
  label: string;
};

type ExpectedAnswer =
  | {
      mode: "single_choice";
      value: string;
    }
  | {
      mode: "boolean";
      value: boolean;
    }
  | {
      mode: "text";
      acceptableAnswers: string[];
    };

export type FrenchPedagogicalDomain = {
  key: ExerciseSubdomain;
  label: string;
  competencies: string[];
  essentialNotions: string[];
  frequentErrors: string[];
  typicalDifficulties: string[];
  didacticWatchpoints: string[];
  v1Priorities: string[];
};

export type FrenchLearningPath = {
  entryPoint: {
    principle: string;
    operationalSequence: string[];
  };
  progressionLoop: Array<{
    step: string;
    goal: string;
    guidance: string[];
  }>;
  supportForFragileLearners: string[];
  antiCatalogueRules: string[];
};

export type FrenchSeriesPlanItem = {
  priority: number;
  domain: ExerciseSubdomain;
  domainLabel: string;
  subdomain: string;
  subdomainLabel: string;
  level: FrenchLevel;
  title: string;
  exerciseTypes: ExerciseType[];
  pedagogicalObjective: string;
  rationale: string;
};

export type FrenchQuestion = {
  id: string;
  type: ExerciseType;
  instruction: string;
  supportText: string | null;
  choices: Choice[] | null;
  expectedAnswer: ExpectedAnswer;
  explanation: string;
  commonMistake: string | null;
};

export type FrenchSeries = {
  id: string;
  title: string;
  domain: ExerciseSubdomain;
  domainLabel: string;
  subdomain: string;
  subdomainLabel: string;
  level: FrenchLevel;
  objective: string;
  introduction: string;
  estimatedMinutes: number;
  questions: FrenchQuestion[];
  bilan: {
    competenceTravaillee: string;
    pointsARetenir: string[];
    conseilDeReprise: string;
  };
};

export type FrenchEngagementMechanism = {
  key: string;
  label: string;
  purpose: string;
  operation: string[];
  pedagogicalJustification: string;
  implementationNote: string;
  driftToAvoid: string;
};

export type FrenchModuleSeriesIntegration = {
  accessTier: "free" | "premium";
  recommendedOrder: number;
  seedPrefix: string;
  sourceLabel: string;
};

const DOMAIN_LABELS: Record<ExerciseSubdomain, string> = {
  grammaire: "Grammaire",
  orthographe: "Orthographe",
  conjugaison: "Conjugaison",
  lexique: "Lexique",
  comprehension_texte: "Comprehension et analyse de texte",
  analyse_langue: "Analyse de la langue",
  didactique_francais: "Didactique du francais",
};

function textAnswer(...acceptableAnswers: string[]): ExpectedAnswer {
  return {
    mode: "text",
    acceptableAnswers,
  };
}

function qcm(
  id: string,
  instruction: string,
  choices: Choice[],
  value: string,
  explanation: string,
  commonMistake: string,
  supportText: string | null = null,
): FrenchQuestion {
  return {
    id,
    type: "qcm",
    instruction,
    supportText,
    choices,
    expectedAnswer: {
      mode: "single_choice",
      value,
    },
    explanation,
    commonMistake,
  };
}

function vraiFaux(
  id: string,
  instruction: string,
  value: boolean,
  explanation: string,
  commonMistake: string,
  supportText: string | null = null,
): FrenchQuestion {
  return {
    id,
    type: "vrai_faux",
    instruction,
    supportText,
    choices: [
      { id: "true", label: "Vrai" },
      { id: "false", label: "Faux" },
    ],
    expectedAnswer: {
      mode: "boolean",
      value,
    },
    explanation,
    commonMistake,
  };
}

function reponseCourte(
  id: string,
  type: ExerciseType,
  instruction: string,
  acceptableAnswers: string[],
  explanation: string,
  commonMistake: string,
  supportText: string | null = null,
): FrenchQuestion {
  return {
    id,
    type,
    instruction,
    supportText,
    choices: null,
    expectedAnswer: textAnswer(...acceptableAnswers),
    explanation,
    commonMistake,
  };
}

function buildSeries(data: Omit<FrenchSeries, "estimatedMinutes">): FrenchSeries {
  return {
    ...data,
    estimatedMinutes: Math.max(12, data.questions.length * 2),
  };
}

export const part1CadragePedagogiqueFrancais: FrenchPedagogicalDomain[] = [
  {
    key: "grammaire",
    label: DOMAIN_LABELS.grammaire,
    competencies: [
      "Identifier avec precision les classes grammaticales et les fonctions dans la phrase.",
      "Analyser la structure de phrases simples puis complexes sans confondre nature et fonction.",
      "Justifier une analyse grammaticale de facon courte, exacte et transferable au CRPE.",
    ],
    essentialNotions: [
      "Classes grammaticales usuelles.",
      "Fonctions essentielles: sujet, COD, COI, attribut, expansions du nom.",
      "Phrase simple, proposition, subordination, articulation des groupes.",
    ],
    frequentErrors: [
      "Donner la nature quand la consigne demande la fonction.",
      "Prendre le groupe le plus proche du verbe pour le sujet.",
      "Nommer une classe grammaticale sans pouvoir la justifier dans la phrase.",
    ],
    typicalDifficulties: [
      "Lenteur d'analyse quand plusieurs groupes se ressemblent.",
      "Confusion entre etiquetage scolaire automatique et veritable raisonnement syntaxique.",
      "Difficulte a passer d'une phrase simple a une phrase complexe.",
    ],
    didacticWatchpoints: [
      "Faire distinguer tres explicitement la question 'qu'est-ce que c'est ?' et 'quel role cela joue-t-il ?'.",
      "Stabiliser d'abord les structures courtes avant d'introduire les pieges syntaxiques.",
      "Exiger une justification breve, pas seulement une etiquette.",
    ],
    v1Priorities: ["Nature / fonction", "Fonctions essentielles dans la phrase simple", "Groupe nominal et expansions"],
  },
  {
    key: "orthographe",
    label: DOMAIN_LABELS.orthographe,
    competencies: [
      "Accorder correctement les elements du groupe nominal et le verbe avec son sujet.",
      "Choisir la bonne graphie d'homophones grammaticaux a partir d'un raisonnement.",
      "Mobiliser les regles d'accord du participe passe les plus rentables pour le concours.",
    ],
    essentialNotions: ["Accord sujet-verbe", "Accords dans le groupe nominal", "Homophones grammaticaux et participe passe"],
    frequentErrors: [
      "Accorder avec le mot le plus proche au lieu du noyau syntaxique.",
      "Traiter les homophones comme des mots a memoriser, non comme des formes a analyser.",
      "Appliquer une regle d'accord sans verifier le contexte exact.",
    ],
    typicalDifficulties: [
      "Formes piegeuses avec sujets collectifs, ecrans syntaxiques ou relatives.",
      "Memorisation insuffisante des tests de substitution pour les homophones.",
      "Melange entre orthographe grammaticale et orthographe lexicale.",
    ],
    didacticWatchpoints: [
      "Faire verbaliser la procedure de choix, pas seulement la reponse finale.",
      "Travailler les accords a partir de phrases justifiables, non de listes de mots.",
      "Donner des corrections qui rappellent la regle utile et le geste de reprise.",
    ],
    v1Priorities: ["Accord sujet-verbe", "Homophones grammaticaux", "Participe passe avec etre puis avec avoir"],
  },
  {
    key: "conjugaison",
    label: DOMAIN_LABELS.conjugaison,
    competencies: [
      "Identifier les temps et modes les plus frequents du CRPE.",
      "Conjuguer avec surete dans des phrases contextualisees et non hors sol.",
      "Relier les formes verbales a leur valeur d'emploi dans la phrase et dans le texte.",
    ],
    essentialNotions: ["Present, imparfait, futur, passe compose, passe simple", "Conditionnel et subjonctif", "Valeurs d'emploi et systemes de temps"],
    frequentErrors: [
      "Confondre futur et conditionnel a cause de la proximite graphique.",
      "Employer l'indicatif apres une tournure qui appelle le subjonctif.",
      "Reciter un tableau sans savoir lire le contexte de la phrase.",
    ],
    typicalDifficulties: [
      "Verbes irreguliers et formes peu frequentes.",
      "Lien insuffisant entre morphologie verbale et valeur semantique.",
      "Fragilite dans les systemes de temps du recit.",
    ],
    didacticWatchpoints: [
      "Ancrer la conjugaison dans la phrase et la valeur, pas seulement dans la terminaison.",
      "Prioriser les oppositions les plus discriminantes pour le concours.",
      "Faire repeter des procedures de reperage: declencheur, sujet, radical, terminaison, valeur.",
    ],
    v1Priorities: ["Futur / conditionnel", "Subjonctif apres tournures frequentes", "Temps du recit les plus rentables"],
  },
  {
    key: "lexique",
    label: DOMAIN_LABELS.lexique,
    competencies: [
      "Comprendre les relations de sens entre les mots.",
      "Mobiliser famille de mots, synonymie, antonymie, polysemie et contexte.",
      "Appuyer la comprehension et la production sur un raisonnement lexical precis.",
    ],
    essentialNotions: ["Familles de mots", "Synonymie, antonymie, champ lexical", "Sens en contexte, polysemie, valeur des affixes"],
    frequentErrors: [
      "Choisir un mot voisin sans tenir compte du contexte.",
      "Confondre famille de mots et simple ressemblance sonore.",
      "Reduire le lexique a un stock de definitions.",
    ],
    typicalDifficulties: ["Questions de nuance fine", "Mots polysemiques selon le texte", "Manque d'outils pour justifier un choix lexical"],
    didacticWatchpoints: [
      "Toujours relier le lexique au contexte d'emploi.",
      "Faire travailler la justification semantique, pas seulement la bonne option.",
      "Rendre explicites les reseaux de mots utiles a la comprehension.",
    ],
    v1Priorities: ["Relations de sens utiles a la comprehension", "Familles de mots et affixes frequents", "Sens en contexte"],
  },
  {
    key: "comprehension_texte",
    label: DOMAIN_LABELS.comprehension_texte,
    competencies: [
      "Reperer l'information explicite et construire l'implicite a partir d'indices.",
      "Identifier l'effet des connecteurs, des reprises et du point de vue.",
      "Degager l'essentiel d'un texte court sans paraphrase inutile.",
    ],
    essentialNotions: ["Explicite / implicite", "Inference, connecteurs, reprises pronominales", "Point de vue, titre, idee essentielle, reformulation"],
    frequentErrors: [
      "Projeter une interpretation sans preuve textuelle.",
      "Repondre avec ses connaissances du monde plutot qu'avec les indices du texte.",
      "Confondre detail local et idee directrice.",
    ],
    typicalDifficulties: [
      "Micro-inferences disperses dans un texte bref.",
      "Ambiguites pronominales ou connecteurs mal interpretes.",
      "Resume trop detaille ou trop vague.",
    ],
    didacticWatchpoints: [
      "Exiger un appui explicite sur des indices du texte.",
      "Varier textes narratifs, documentaires et injonctifs sans diluer les objectifs.",
      "Faire de la correction un modele de lecture raisonne.",
    ],
    v1Priorities: ["Inference simple", "Connecteurs et reprises", "Identification de l'idee essentielle d'un texte court"],
  },
  {
    key: "analyse_langue",
    label: DOMAIN_LABELS.analyse_langue,
    competencies: [
      "Observer la phrase comme systeme organise et non comme juxtaposition d'etiquettes.",
      "Articuler groupe nominal, groupe verbal, subordination et chaine d'accords.",
      "Rendre compte d'une analyse plus fine dans les phrases complexes.",
    ],
    essentialNotions: ["Noyau du groupe nominal", "Expansions, relatives, subordonnants, antecedent", "Lien entre analyse syntaxique et orthographe grammaticale"],
    frequentErrors: [
      "S'arreter a l'intuition visuelle au lieu de reconstruire la dependance syntaxique.",
      "Mal identifier le pronom relatif et son antecedent.",
      "Separer l'analyse de langue des consequences orthographiques.",
    ],
    typicalDifficulties: ["Phrases longues a plusieurs niveaux d'emboitement", "Justification trop floue", "Passage difficile de la phrase simple a la phrase complexe"],
    didacticWatchpoints: [
      "Construire une progression vers les phrases complexes, pas un empilement d'exceptions.",
      "Montrer comment l'analyse eclaire l'accord et la comprehension.",
      "Faire verbaliser les liens de dependance.",
    ],
    v1Priorities: ["Nature et fonction dans des phrases moins lineaires", "Groupe nominal et relative", "Lien syntaxe / accord"],
  },
  {
    key: "didactique_francais",
    label: DOMAIN_LABELS.didactique_francais,
    competencies: [
      "Analyser une situation d'enseignement a partir d'un obstacle d'apprentissage identifiable.",
      "Choisir un geste professionnel coherent avec un objectif de lecture, d'ecriture ou d'etude de la langue.",
      "Distinguer correction, remediation, etayage et evaluation formative.",
    ],
    essentialNotions: ["Conscience phonologique, principe alphabetique, fluence", "Strategies de comprehension, production d'ecrit, etude de la langue", "Analyse de l'erreur, explicitation, progressivite, evaluation formative"],
    frequentErrors: [
      "Repondre de facon normative sans analyser l'obstacle reel.",
      "Choisir une activite seduisante mais peu informative didactiquement.",
      "Confondre repetitions mecaniques et apprentissage structure.",
    ],
    typicalDifficulties: [
      "Questions ou plusieurs propositions semblent acceptables mais une seule est didactiquement la plus juste.",
      "Articulation entre savoir disciplinaire et geste professionnel.",
      "Langage de didactique parfois recite sans etre vraiment compris.",
    ],
    didacticWatchpoints: [
      "Toujours relier le geste enseignant a l'obstacle vise.",
      "Faire analyser des erreurs d'eleves plausibles et des choix de dispositifs realistes.",
      "Rester sobre: objectifs, effets attendus, indices de progression.",
    ],
    v1Priorities: ["Lecture: decodage, comprehension, fluence", "Analyser l'erreur en etude de la langue", "Production d'ecrit: planifier, ecrire, reviser"],
  },
];

export const part2StructureParcoursApprentissage: FrenchLearningPath = {
  entryPoint: {
    principle: "Le candidat ne doit pas entrer par un catalogue de series, mais par un repere fiable de ses fragilites.",
    operationalSequence: [
      "Demarrer par un diagnostic equilibre couvrant les 7 domaines.",
      "Fournir un profil court: acquis stables, zones fragiles, priorites immediates.",
      "Proposer 3 series recommandees maximum pour la premiere session.",
      "Afficher un objectif de seance court et atteignable.",
    ],
  },
  progressionLoop: [
    {
      step: "1. Se situer",
      goal: "Repere initial simple et credible.",
      guidance: [
        "Le diagnostic doit deboucher sur des sous-domaines, pas seulement sur un score global.",
        "Chaque resultat doit pointer vers une serie precise et une raison de priorisation.",
      ],
    },
    {
      step: "2. Consolider les fondamentaux",
      goal: "Installer les automatismes les plus rentables.",
      guidance: [
        "Commencer par les series faciles de grammaire, orthographe et conjugaison si les bases sont fragiles.",
        "Eviter d'envoyer trop vite l'apprenant vers des questions complexes de didactique ou d'analyse.",
      ],
    },
    {
      step: "3. Monter en precision",
      goal: "Passer de la bonne intuition a la justification correcte.",
      guidance: [
        "Proposer des series intermediaires centrees sur un obstacle identifiable.",
        "Mettre en avant les corrections detaillees et les erreurs frequentes.",
      ],
    },
    {
      step: "4. Reprendre intelligemment",
      goal: "Transformer l'erreur en nouvelle seance ciblee.",
      guidance: [
        "A la fin d'une serie, isoler 2 ou 3 points de reprise maximum.",
        "Suggerer une serie precedente si l'obstacle releve d'une base non maitrisee.",
      ],
    },
    {
      step: "5. Verifier la stabilisation",
      goal: "Eviter les illusions de maitrise.",
      guidance: [
        "Ne considerer une notion comme solide qu'apres reussite repetee dans des contextes proches mais non identiques.",
        "Reproposer a distance une serie courte de verification.",
      ],
    },
  ],
  supportForFragileLearners: [
    "Toujours proposer une prochaine action explicite: refaire, revoir une serie plus simple, ou passer a la suite.",
    "Limiter les recommandations a un petit nombre de series utiles, jamais a une liste exhaustive.",
    "Formuler les retours en termes de notions a retravailler, non de jugement sur le niveau personnel.",
    "Afficher la logique de progression: base -> consolidation -> variation -> verification.",
  ],
  antiCatalogueRules: [
    "Organiser les series par progression recommandee et non par simple accumulation chronologique.",
    "Donner a chaque serie un objectif pedagogique unique et lisible.",
    "Regrouper les sous-domaines par familles coherentes pour eviter la dispersion.",
    "Ne jamais afficher un mur de contenus sans ordre, filtre ou recommandation.",
  ],
};

export const part3PlanContenuStructure: FrenchSeriesPlanItem[] = [
  {
    priority: 1,
    domain: "orthographe",
    domainLabel: DOMAIN_LABELS.orthographe,
    subdomain: "accord_sujet_verbe",
    subdomainLabel: "Accord sujet-verbe",
    level: "Facile",
    title: "Accord sujet-verbe: reperer le noyau du sujet",
    exerciseTypes: ["correction_orthographique", "qcm", "vrai_faux", "reponse_courte"],
    pedagogicalObjective: "Stabiliser le geste de reperage du sujet reel avant l'accord.",
    rationale: "Serie tres rentable pour le CRPE et facilement remobilisable dans d'autres domaines.",
  },
  {
    priority: 2,
    domain: "grammaire",
    domainLabel: DOMAIN_LABELS.grammaire,
    subdomain: "nature_fonction_phrase_simple",
    subdomainLabel: "Nature et fonction dans la phrase simple",
    level: "Facile",
    title: "Nature ou fonction: ne plus confondre",
    exerciseTypes: ["identification_grammaticale", "qcm", "vrai_faux", "reponse_courte"],
    pedagogicalObjective: "Rendre la lecture de la consigne et l'analyse grammaticale plus fiables.",
    rationale: "Obstacle transversal qui freine ensuite orthographe, analyse de la langue et didactique.",
  },
  {
    priority: 3,
    domain: "orthographe",
    domainLabel: DOMAIN_LABELS.orthographe,
    subdomain: "homophones_grammaticaux",
    subdomainLabel: "Homophones grammaticaux",
    level: "Facile",
    title: "Homophones grammaticaux: choisir par test",
    exerciseTypes: ["qcm", "reponse_courte"],
    pedagogicalObjective: "Associer chaque choix orthographique a un test grammatical stable.",
    rationale: "Format tres frequent en concours et excellent terrain de verbalisation.",
  },
  {
    priority: 4,
    domain: "conjugaison",
    domainLabel: DOMAIN_LABELS.conjugaison,
    subdomain: "futur_conditionnel_subjonctif",
    subdomainLabel: "Futur, conditionnel, subjonctif",
    level: "Intermediaire",
    title: "Temps et modes proches: choisir en contexte",
    exerciseTypes: ["qcm", "vrai_faux", "reponse_courte"],
    pedagogicalObjective: "Relier forme verbale et valeur d'emploi.",
    rationale: "Serie discriminante pour le CRPE et utile au diagnostic fin.",
  },
  {
    priority: 5,
    domain: "comprehension_texte",
    domainLabel: DOMAIN_LABELS.comprehension_texte,
    subdomain: "inferences_et_connecteurs",
    subdomainLabel: "Inferences et connecteurs",
    level: "Intermediaire",
    title: "Lire entre les lignes sans surinterpreter",
    exerciseTypes: ["qcm", "analyse_texte", "vrai_faux", "reponse_courte"],
    pedagogicalObjective: "Justifier chaque reponse par un indice textuel identifiable.",
    rationale: "La comprehension irrigue toute l'epreuve et doit devenir un apprentissage explicite.",
  },
  {
    priority: 6,
    domain: "analyse_langue",
    domainLabel: DOMAIN_LABELS.analyse_langue,
    subdomain: "groupe_nominal_et_relative",
    subdomainLabel: "Groupe nominal et relative",
    level: "Intermediaire",
    title: "Analyser une phrase avec relative sans perdre le fil",
    exerciseTypes: ["identification_grammaticale", "analyse_texte", "reponse_courte"],
    pedagogicalObjective: "Articuler antecedent, relative, fonction et accord.",
    rationale: "Serie passerelle entre grammaire, analyse et orthographe grammaticale.",
  },
  {
    priority: 7,
    domain: "grammaire",
    domainLabel: DOMAIN_LABELS.grammaire,
    subdomain: "formes_de_phrase_et_voix_passive",
    subdomainLabel: "Formes de phrase et voix passive",
    level: "Intermediaire",
    title: "Voix passive: transformer sans perdre le sens",
    exerciseTypes: ["qcm", "vrai_faux", "reponse_courte", "identification_grammaticale"],
    pedagogicalObjective: "Identifier les conditions de la passivation et reussir des transformations stables.",
    rationale: "La voix passive est un classique du CRPE, a la fois en grammaire de phrase et en manipulation syntaxique.",
  },
  {
    priority: 8,
    domain: "analyse_langue",
    domainLabel: DOMAIN_LABELS.analyse_langue,
    subdomain: "transformations_de_phrase_crpe",
    subdomainLabel: "Transformations de phrase type CRPE",
    level: "Intermediaire",
    title: "Transformations de phrase: manipuler comme au CRPE",
    exerciseTypes: ["qcm", "vrai_faux", "reponse_courte", "analyse_texte"],
    pedagogicalObjective: "Utiliser les manipulations de phrase pour justifier une analyse et produire la bonne transformation.",
    rationale: "Les transformations rendent visibles les fonctions et les formes de phrase sans rester dans l'etiquetage abstrait.",
  },
  {
    priority: 9,
    domain: "didactique_francais",
    domainLabel: DOMAIN_LABELS.didactique_francais,
    subdomain: "lecture_et_comprehension",
    subdomainLabel: "Lecture, comprehension et etude de la langue",
    level: "Intermediaire",
    title: "Didactique: choisir le bon geste pour faire progresser",
    exerciseTypes: ["qcm", "vrai_faux", "reponse_courte"],
    pedagogicalObjective: "Lire une situation de classe a partir de l'obstacle d'apprentissage.",
    rationale: "La didactique ne doit pas etre traitee comme un bloc abstrait ou purement theorique.",
  },
];

export const part4PremierLotSeriesCompletes: FrenchSeries[] = [
  buildSeries({
    id: "fr-serie-accord-sujet-verbe",
    title: "Accord sujet-verbe: reperer le noyau du sujet",
    domain: "orthographe",
    domainLabel: DOMAIN_LABELS.orthographe,
    subdomain: "accord_sujet_verbe",
    subdomainLabel: "Accord sujet-verbe",
    level: "Facile",
    objective: "Identifier le vrai sujet avant de choisir la forme verbale.",
    introduction:
      "Cette serie installe un automatisme central pour le CRPE: avant d'accorder, il faut retrouver le noyau du sujet et resister au piege du mot le plus proche.",
    questions: [
      reponseCourte(
        "asv-v2-1",
        "correction_orthographique",
        'Corrigez si necessaire : "Les eleves de cette classe travaille serieusement."',
        ["Les eleves de cette classe travaillent serieusement."],
        'Le noyau du sujet est "eleves", au pluriel. Le verbe doit donc prendre la marque du pluriel. Le groupe "de cette classe" n\'est qu\'un complement du nom.',
        "Accorder le verbe avec le nom le plus proche ou oublier d'identifier le noyau du sujet.",
      ),
      qcm(
        "asv-v2-2",
        'Choisissez la forme correcte : "Le bruit des chaises ... la concentration."',
        [
          { id: "a", label: "perturbent" },
          { id: "b", label: "perturbe" },
          { id: "c", label: "perturbes" },
        ],
        "b",
        'Le sujet est "Le bruit", singulier. "Des chaises" complete le nom "bruit" mais ne commande pas l\'accord du verbe.',
        'Accorder avec "chaises" parce que ce nom est juste devant le verbe.',
      ),
      vraiFaux(
        "asv-v2-3",
        'Vrai ou faux : dans "Ni Paul ni ses camarades ne renoncent", le pluriel du verbe est correct.',
        true,
        'Le sujet est compose de deux termes coordonnes. Ici, l\'idee de pluralite justifie le verbe au pluriel.',
        "Accorder seulement avec le premier sujet sans prendre en compte l'ensemble coordonne.",
      ),
      reponseCourte(
        "asv-v2-4",
        "correction_orthographique",
        'Corrigez si necessaire : "La plupart des candidats reussit cette etape."',
        ["La plupart des candidats reussissent cette etape."],
        'Dans cette phrase, l\'expression "la plupart des candidats" renvoie a une pluralite reelle. Le verbe s\'accorde donc au pluriel.',
        'Rester bloque sur le nom "plupart" et oublier le sens de l\'expression.',
      ),
      reponseCourte(
        "asv-v2-5",
        "reponse_courte",
        'Dans "Un grand nombre d\'exercices sont proposes", expliquez en un mot pourquoi le verbe est au pluriel.',
        ["pluralite", "sens", "pluriel logique"],
        "L'accord suit ici l'idee de pluralite portee par l'expression. Le sens de l'ensemble doit etre pris en compte.",
        "Croire qu'un groupe commencant par un nom singulier impose toujours un verbe au singulier.",
      ),
      reponseCourte(
        "asv-v2-6",
        "correction_orthographique",
        'Corrigez si necessaire : "Toi qui relis ce chapitre, tu comprennent mieux la regle."',
        ["Toi qui relis ce chapitre, tu comprends mieux la regle."],
        'Le verbe principal s\'accorde avec le pronom sujet "tu". Il ne faut pas se laisser influencer par une autre forme verbale deja presente dans la phrase.',
        "Se laisser contaminer par la forme d'un autre verbe ou par la relative.",
      ),
      qcm(
        "asv-v2-7",
        'Choisissez la bonne forme : "Une serie de revisions bien pensee ... les candidats les plus fragiles."',
        [
          { id: "a", label: "aident" },
          { id: "b", label: "aide" },
          { id: "c", label: "aider" },
        ],
        "b",
        'Le sujet est "Une serie", singulier. Le groupe "de revisions bien pensee" ne modifie pas l\'accord verbal.',
        'Accorder avec le nom pluriel "revisions".',
      ),
      reponseCourte(
        "asv-v2-8",
        "reponse_courte",
        'Dans "Ce ne sont pas les erreurs mais la fatigue qui explique ce blocage", quel est le verbe correct ?',
        ["explique"],
        'Le relatif "qui" reprend ici "la fatigue". C\'est donc ce groupe, singulier, qui commande l\'accord du verbe.',
        'Accorder avec "les erreurs" parce que ce groupe apparait plus tot dans la phrase.',
      ),
      vraiFaux(
        "asv-v2-9",
        'Vrai ou faux : "Plus d\'un candidat ont hesite" est une phrase correctement accordee.',
        false,
        'Dans l\'usage scolaire de reference, "plus d\'un" commande en principe le singulier: "plus d\'un candidat a hesite".',
        'Traiter automatiquement toute expression quantitative comme un pluriel.',
      ),
      reponseCourte(
        "asv-v2-10",
        "correction_orthographique",
        'Corrigez si necessaire : "Ni la fatigue ni le stress n\'empechent cette candidate de poursuivre."',
        ["Ni la fatigue ni le stress n'empeche cette candidate de poursuivre."],
        'Les deux sujets coordonnes renvoient ici a deux noms singuliers envisages l\'un apres l\'autre. Dans ce type de phrase, le singulier est attendu dans l\'usage scolaire de reference.',
        "Passer au pluriel par automatisme des qu'il y a coordination.",
      ),
    ],
    bilan: {
      competenceTravaillee: "Accorder le verbe avec le sujet reel, y compris dans des structures piegeuses.",
      pointsARetenir: [
        "Le verbe s'accorde avec le noyau du sujet, pas avec le nom le plus proche.",
        "Les groupes coordonnes et quantifies demandent une lecture attentive du sens et de la structure.",
        "Dans les corrections, il faut pouvoir expliquer quel mot commande l'accord.",
      ],
      conseilDeReprise:
        "Lors d'une reprise, soulignez d'abord le sujet, puis son noyau, avant de choisir la terminaison verbale.",
    },
  }),
  buildSeries({
    id: "fr-serie-nature-fonction",
    title: "Nature ou fonction: ne plus confondre",
    domain: "grammaire",
    domainLabel: DOMAIN_LABELS.grammaire,
    subdomain: "nature_fonction_phrase_simple",
    subdomainLabel: "Nature et fonction dans la phrase simple",
    level: "Facile",
    objective: "Distinguer ce qu'un mot est et le role qu'il joue dans la phrase.",
    introduction:
      "L'objectif n'est pas de reciter des etiquettes, mais de repondre exactement a la consigne. On travaille ici le geste le plus rentable: lire, reperer, nommer et justifier.",
    questions: [
      reponseCourte(
        "nf-v1-1",
        "identification_grammaticale",
        'Dans "Les formateurs expliquent la consigne aux candidats", quelle est la fonction de "Les formateurs" ?',
        ["sujet"],
        'Le groupe "Les formateurs" accomplit l\'action exprimee par le verbe "expliquent". Il commande aussi l\'accord du verbe: c\'est le sujet.',
        'Repondre "groupe nominal" alors que la consigne demande la fonction.',
      ),
      reponseCourte(
        "nf-v1-2",
        "identification_grammaticale",
        'Dans la meme phrase, quelle est la fonction de "la consigne" ?',
        ["cod", "complement d'objet direct"],
        'Le groupe complete directement le verbe "expliquent" sans preposition. Il s\'agit donc d\'un COD.',
        'Confondre complement du verbe et nature du groupe.',
        'Phrase support : "Les formateurs expliquent la consigne aux candidats."',
      ),
      reponseCourte(
        "nf-v1-3",
        "identification_grammaticale",
        'Dans la meme phrase, quelle est la fonction de "aux candidats" ?',
        ["coi", "complement d'objet indirect"],
        'Le groupe est introduit par la preposition "a". Il complete le verbe de facon indirecte: c\'est un COI.',
        'Repondre COD sans tenir compte de la preposition.',
        'Phrase support : "Les formateurs expliquent la consigne aux candidats."',
      ),
      qcm(
        "nf-v1-4",
        'Dans "Les eleves semblent fatigues", "fatigues" est :',
        [
          { id: "a", label: "un COD" },
          { id: "b", label: "un attribut du sujet" },
          { id: "c", label: "un complement du nom" },
        ],
        "b",
        'Le verbe "semblent" est un verbe d\'etat. Le groupe attribue une propriete au sujet "Les eleves" : c\'est un attribut du sujet.',
        'Repondre "adjectif" alors que la consigne porte sur la fonction.',
      ),
      reponseCourte(
        "nf-v1-5",
        "reponse_courte",
        'Dans "Le professeur parle a sa classe", pourquoi "a sa classe" n\'est-il pas COD ?',
        [
          "parce qu'il y a une preposition",
          "parce qu'il est introduit par une preposition",
          "parce qu'il y a a",
        ],
        'Un COD complete le verbe directement. Ici, le groupe est introduit par la preposition "a" : ce n\'est donc pas un COD.',
        'Chercher seulement la question "quoi ?" ou "a qui ?" sans regarder la construction du groupe.',
      ),
      vraiFaux(
        "nf-v1-6",
        'Vrai ou faux : dans "Les candidats relisent leur copie", "leur copie" est sujet.',
        false,
        'Le sujet est "Les candidats". Le groupe "leur copie" complete le verbe "relisent" : il s\'agit d\'un COD.',
        "Prendre le groupe le plus proche du verbe pour le sujet.",
      ),
      reponseCourte(
        "nf-v1-7",
        "identification_grammaticale",
        'Dans "Ce manuel utile reste sur la table", quelle est la nature de "Ce" ?',
        ["determinant", "determinant demonstratif"],
        'Le mot "Ce" introduit le nom "manuel". Sa nature grammaticale est celle d\'un determinant demonstratif.',
        'Repondre "pronom" sans remarquer qu\'un nom suit immediatement.',
      ),
      qcm(
        "nf-v1-8",
        'Dans "Les formateurs travaillent dans la salle", "dans la salle" est :',
        [
          { id: "a", label: "un complement circonstanciel de lieu" },
          { id: "b", label: "un attribut du sujet" },
          { id: "c", label: "un COD" },
        ],
        "a",
        'Le groupe indique le lieu ou se deroule l\'action. Il ne complete pas le verbe comme objet: c\'est un complement circonstanciel de lieu.',
        'Vouloir absolument choisir entre COD et COI sans reconnaitre la circonstance.',
      ),
      reponseCourte(
        "nf-v1-9",
        "identification_grammaticale",
        'Dans "La phrase que tu analyses est courte", quelle est la nature de "que" ?',
        ["pronom relatif"],
        'Le mot "que" introduit une relative et reprend l\'antecedent "phrase". Sa nature est donc celle d\'un pronom relatif.',
        'Le prendre pour une simple conjonction parce qu\'il introduit une proposition.',
      ),
      reponseCourte(
        "nf-v1-10",
        "reponse_courte",
        "Expliquez en une courte phrase la difference entre nature et fonction.",
        [
          "la nature dit ce qu'est le mot, la fonction dit son role dans la phrase",
          "la nature dit ce qu'est un mot, la fonction dit le role qu'il joue",
        ],
        "La nature renvoie a la classe grammaticale du mot ou du groupe. La fonction renvoie a son role dans la phrase. Une analyse juste commence par cette distinction.",
        "Donner seulement deux exemples sans formuler la difference conceptuelle.",
      ),
    ],
    bilan: {
      competenceTravaillee: "Lire la consigne grammaticale avec precision et nommer l'analyse attendue.",
      pointsARetenir: [
        "La nature dit ce qu'un mot est; la fonction dit ce qu'il fait dans la phrase.",
        "Le COD n'est pas introduit par une preposition.",
        "Un meme groupe peut avoir une nature stable et une fonction a identifier selon le contexte.",
      ],
      conseilDeReprise:
        "Si vous hésitez, reformulez la consigne en vous demandant: me demande-t-on une etiquette grammaticale ou un role syntaxique ?",
    },
  }),
  buildSeries({
    id: "fr-serie-futur-conditionnel-subjonctif",
    title: "Temps et modes proches: choisir en contexte",
    domain: "conjugaison",
    domainLabel: DOMAIN_LABELS.conjugaison,
    subdomain: "futur_conditionnel_subjonctif",
    subdomainLabel: "Futur, conditionnel, subjonctif",
    level: "Intermediaire",
    objective: "Relier la forme verbale a la valeur exprimee dans la phrase.",
    introduction:
      "Le bon choix verbal ne repose pas seulement sur la terminaison. Cette serie vous oblige a lire le contexte, la valeur d'emploi et le declencheur syntaxique.",
    questions: [
      qcm(
        "fcs-v2-1",
        'Completez : "Demain, nous ... la correction complete."',
        [
          { id: "a", label: "verrions" },
          { id: "b", label: "verrons" },
          { id: "c", label: "voyons" },
        ],
        "b",
        'L\'adverbe "Demain" inscrit l\'action dans l\'avenir presente comme certaine. Le futur simple "verrons" est donc attendu.',
        "Choisir le conditionnel en se fiant seulement a la terminaison.",
      ),
      qcm(
        "fcs-v2-2",
        'Completez : "Avec plus de temps, nous ... davantage d\'exercices."',
        [
          { id: "a", label: "ferons" },
          { id: "b", label: "ferions" },
          { id: "c", label: "faisons" },
        ],
        "b",
        'La phrase exprime une hypothese. Le conditionnel present "ferions" correspond a cette valeur.',
        "Oublier de lire l'idee d'hypothese introduite par le contexte.",
      ),
      reponseCourte(
        "fcs-v2-3",
        "reponse_courte",
        'Conjuguez : "Il faut que vous (prendre) le temps de relire."',
        ["preniez"],
        'Apres "Il faut que", le verbe se met au subjonctif. La forme correcte est "preniez".',
        "Employer l'indicatif par automatisme ou laisser l'infinitif.",
      ),
      vraiFaux(
        "fcs-v2-4",
        'Vrai ou faux : dans "Je voudrais que tu viennes", "viennes" est au subjonctif.',
        true,
        'La subordonnee introduite par "que" depend ici d\'un verbe de souhait. Le subjonctif present "viennes" est correct.',
        "Dire simplement que la forme est au present sans preciser le mode.",
      ),
      qcm(
        "fcs-v2-5",
        'Dans "Si tu travaillais davantage, tu reussirais", "reussirais" est au :',
        [
          { id: "a", label: "futur" },
          { id: "b", label: "conditionnel" },
          { id: "c", label: "subjonctif" },
        ],
        "b",
        'La structure "si + imparfait" appelle ici le conditionnel dans la proposition principale. La valeur est hypothetique.',
        "Confondre futur et conditionnel a cause de la ressemblance morphologique.",
      ),
      reponseCourte(
        "fcs-v2-6",
        "reponse_courte",
        'Donnez l\'infinitif du verbe dans "nous tiendrons".',
        ["tenir"],
        'Le futur de "tenir" se construit sur le radical "tiendr-". Il faut reconnaitre l\'infinitif derriere cette variation du radical.',
        "Reconstruire un infinitif fantaisiste a partir du radical du futur.",
      ),
      qcm(
        "fcs-v2-7",
        'Completez : "Bien qu\'il ... fatigue, il continue."',
        [
          { id: "a", label: "est" },
          { id: "b", label: "soit" },
          { id: "c", label: "sera" },
        ],
        "b",
        'La locution "bien que" introduit une subordonnee qui demande le subjonctif. "Soit" est donc la forme correcte.',
        'Garder l\'indicatif par reflexe sans tenir compte du connecteur.',
      ),
      vraiFaux(
        "fcs-v2-8",
        'Vrai ou faux : dans "Quand tu arriveras, nous commencerons", les deux verbes sont au futur.',
        true,
        'Dans cette phrase, l\'action est envisagee dans l\'avenir pour les deux verbes. Il faut lire la phrase elle-meme plutot qu\'appliquer une regle approximative.',
        "Croire que toute subordonnee introduite par 'quand' devrait forcement etre au present.",
      ),
      qcm(
        "fcs-v2-9",
        "Dans quelle phrase le conditionnel exprime-t-il une attenuation ?",
        [
          { id: "a", label: "Je dirais que cette reponse est juste." },
          { id: "b", label: "Demain, je dirai la verite." },
          { id: "c", label: "Je dis toujours la verite." },
        ],
        "a",
        'Dans "Je dirais", le locuteur prend de la distance et attenue son affirmation. Il ne s\'agit pas d\'un futur mais d\'une valeur modale.',
        "Chercher seulement une forme en -rais sans regarder la valeur de la phrase.",
      ),
      reponseCourte(
        "fcs-v2-10",
        "reponse_courte",
        'Dans "Je dirais que cette reponse est juste", quel mot montre que l\'attenuation est portee par le conditionnel ?',
        ["dirais", "je dirais"],
        "Le conditionnel est porte par le verbe 'dirais'. C'est lui qui introduit la prise de distance.",
        "Chercher un adverbe de modalisation alors que l'indice est la forme verbale elle-meme.",
      ),
    ],
    bilan: {
      competenceTravaillee: "Choisir un temps ou un mode en lisant la valeur d'emploi dans le contexte.",
      pointsARetenir: [
        "Le futur exprime souvent un avenir presente comme certain.",
        "Le conditionnel sert frequemment l'hypothese ou l'attenuation.",
        "Le subjonctif apparait apres certaines tournures comme 'il faut que' ou 'bien que'.",
      ],
      conseilDeReprise:
        "Avant de conjuguer, reperez d'abord le declencheur de valeur: marqueur temporel, hypothese, souhait, obligation ou concession.",
    },
  }),
  buildSeries({
    id: "fr-serie-inferences-connecteurs",
    title: "Lire entre les lignes sans surinterpreter",
    domain: "comprehension_texte",
    domainLabel: DOMAIN_LABELS.comprehension_texte,
    subdomain: "inferences_et_connecteurs",
    subdomainLabel: "Inferences et connecteurs",
    level: "Intermediaire",
    objective: "Justifier chaque reponse de comprehension par un indice textuel.",
    introduction:
      "Une bonne reponse de comprehension n'est ni une intuition vague ni une reformulation floue. Cette serie vous entraine a appuyer chaque choix sur un indice precis du texte.",
    questions: [
      qcm(
        "ic-v1-1",
        "Ou Lina pose-t-elle son cartable ?",
        [
          { id: "a", label: "Sur le banc" },
          { id: "b", label: "Dans l'armoire" },
          { id: "c", label: "Sous la table" },
        ],
        "a",
        'Le texte dit explicitement: "Lina posa son cartable sur le banc". Il faut d\'abord verifier si la reponse est ecrite avant de chercher une inference.',
        "Chercher une interpretation complexe alors que l'information est explicite.",
        'Texte support : "Lina posa son cartable sur le banc avant d\'entrer en classe."',
      ),
      qcm(
        "ic-v1-2",
        "Que peut-on inferer de la situation ?",
        [
          { id: "a", label: "Il fait probablement froid." },
          { id: "b", label: "Il est midi." },
          { id: "c", label: "Le personnage est en vacances." },
        ],
        "a",
        'Le texte ne dit pas explicitement qu\'il fait froid, mais les gestes "serra son manteau" et "pressa le pas" constituent des indices convergents.',
        "Choisir une reponse non appuyee sur les indices du texte.",
        'Texte support : "Paul serra son manteau et pressa le pas."',
      ),
      qcm(
        "ic-v1-3",
        'Dans "Il avait revise, pourtant il a echoue", le mot "pourtant" marque :',
        [
          { id: "a", label: "Une addition" },
          { id: "b", label: "Une opposition" },
          { id: "c", label: "Une cause" },
        ],
        "b",
        'Le connecteur "pourtant" oppose le resultat a ce qu\'on attendait. Il est donc un marqueur d\'opposition.',
        "Lire la phrase sans prendre en compte la relation logique entre les deux propositions.",
      ),
      reponseCourte(
        "ic-v1-4",
        "analyse_texte",
        'Dans "Lina prend son parapluie. Elle sort aussitot.", a qui renvoie le pronom "Elle" ?',
        ["Lina"],
        'Le pronom reprend le personnage feminin deja mentionne. Le referent le plus coherent ici est "Lina".',
        "Choisir le dernier nom du texte meme s'il n'est pas compatible en genre ou en sens.",
      ),
      qcm(
        "ic-v1-5",
        'Quel titre convient le mieux a ce passage ?',
        [
          { id: "a", label: "Une entree sous l'orage" },
          { id: "b", label: "La salle informatique" },
          { id: "c", label: "Une recette de cuisine" },
        ],
        "a",
        'Le passage evoque la pluie, le parapluie et l\'entree en classe. Le premier titre synthetise au mieux l\'atmosphere et l\'action.',
        "Choisir un titre a partir d'un detail secondaire ou sans lien avec le texte.",
        'Texte support : "Lina prend son parapluie, traverse la cour humide et entre rapidement dans le batiment."',
      ),
      qcm(
        "ic-v1-6",
        "Quel etat du personnage peut-on inferer ?",
        [
          { id: "a", label: "Il est amuse." },
          { id: "b", label: "Il est tendu ou en colere." },
          { id: "c", label: "Il s'endort." },
        ],
        "b",
        'Les gestes "serrait les poings" et "evitait les regards" sont compatibles avec une tension emotionnelle. L\'inference doit reposer sur les indices corporels.',
        "Plaquer une emotion sans s'appuyer sur les gestes decrits.",
        'Texte support : "Maya serrait les poings et evitait les regards."',
      ),
      qcm(
        "ic-v1-7",
        'Dans "Elle parla tout bas pour ne pas reveiller son frere", l\'expression "pour ne pas reveiller son frere" indique :',
        [
          { id: "a", label: "La cause" },
          { id: "b", label: "Le but" },
          { id: "c", label: "La consequence" },
        ],
        "b",
        'La tournure introduite par "pour" exprime ici l\'intention du personnage. Elle indique le but de l\'action.',
        "Confondre cause et but des qu'un lien logique apparait.",
      ),
      vraiFaux(
        "ic-v1-8",
        'Vrai ou faux : dans "Je traversai la cour en silence", le narrateur parle a la premiere personne.',
        true,
        'Le pronom "Je" et la terminaison verbale indiquent un point de vue a la premiere personne.',
        "Ne pas mobiliser les indices grammaticaux les plus visibles pour identifier le point de vue.",
      ),
      qcm(
        "ic-v1-9",
        'Dans "Le givre recouvrait la pelouse, c\'est-a-dire une fine couche de glace", l\'expression "c\'est-a-dire" annonce :',
        [
          { id: "a", label: "Une reformulation" },
          { id: "b", label: "Une opposition" },
          { id: "c", label: "Une conclusion" },
        ],
        "a",
        'La seconde partie explicite la premiere. On est bien dans une reformulation destinee a aider la comprehension.',
        "Lire l'expression comme une simple relance du texte sans voir sa fonction explicative.",
      ),
      reponseCourte(
        "ic-v1-10",
        "analyse_texte",
        "Pourquoi la reponse 'Il est midi' n'est-elle pas recevable a la question 2 ?",
        [
          "parce que le texte ne donne aucun indice sur l'heure",
          "aucun indice sur l'heure n'est donne",
          "le texte ne permet pas de savoir l'heure",
        ],
        "Une bonne inference s'appuie sur des indices textuels. Or rien, dans le passage, ne permet de deduire l'heure de la scene. Il faut distinguer l'inference justifiee de l'invention.",
        "Croire que toute hypothese plausible est acceptable en comprehension.",
        'Rappel du texte support de la question 2 : "Paul serra son manteau et pressa le pas."',
      ),
    ],
    bilan: {
      competenceTravaillee: "Lire un texte court en articulant explicite, implicite et indices de cohesion.",
      pointsARetenir: [
        "Une inference valable repose sur des indices precis.",
        "Les connecteurs donnent la relation logique entre les propositions.",
        "Quand l'information manque, il faut savoir dire que le texte ne permet pas de conclure.",
      ],
      conseilDeReprise:
        "En reprise, surlignez dans le texte le ou les indices qui justifient chaque reponse avant de la valider.",
    },
  }),
  buildSeries({
    id: "fr-serie-voix-passive",
    title: "Voix passive: transformer sans perdre le sens",
    domain: "grammaire",
    domainLabel: DOMAIN_LABELS.grammaire,
    subdomain: "formes_de_phrase_et_voix_passive",
    subdomainLabel: "Formes de phrase et voix passive",
    level: "Intermediaire",
    objective:
      "Identifier la voix passive et transformer une phrase active en respectant les fonctions, les temps et les accords.",
    introduction:
      "Au CRPE, la voix passive ne se limite pas a la reconnaitre: il faut aussi savoir expliquer quand elle est possible et produire une transformation correcte sans deformer le sens de la phrase.",
    questions: [
      qcm(
        "vp-v1-1",
        'Dans quelle phrase le verbe est-il a la voix passive ?',
        [
          { id: "a", label: "Le jury corrige les copies avec attention." },
          { id: "b", label: "Les copies sont corrigees avec attention par le jury." },
          { id: "c", label: "Le jury a corrige les copies." },
        ],
        "b",
        'Dans la phrase correcte, le sujet "copies" subit l\'action et la construction "etre + participe passe" signale la voix passive.',
        "Confondre un temps compose de la voix active avec une vraie construction passive.",
      ),
      reponseCourte(
        "vp-v1-2",
        "reponse_courte",
        "Transformez a la voix passive.",
        [
          "les progres des candidats sont soulignes par le jury",
          "les progres des candidats sont soulignes par le jury.",
        ],
        'Le COD de la phrase active devient le sujet du passif. Le verbe "souligne" devient "sont soulignes" pour s\'accorder avec "progres", masculin pluriel.',
        "Conserver l'ordre de la phrase active sans faire monter le COD en position de sujet.",
        'Phrase support : "Le jury souligne les progres des candidats."',
      ),
      vraiFaux(
        "vp-v1-3",
        'Vrai ou faux : on peut transformer en phrase passive "Les eleves telephonent a leur formateur".',
        false,
        'Le verbe "telephoner a" construit ici un COI et non un COD. Sans complement d\'objet direct, la passivation canonique n\'est pas attendue.',
        "Croire que toute phrase verbale peut etre mise a la voix passive.",
      ),
      qcm(
        "vp-v1-4",
        'Quelle est la transformation passive correcte de "Le correcteur relevera les erreurs" ?',
        [
          { id: "a", label: "Les erreurs releveront le correcteur." },
          { id: "b", label: "Les erreurs seront relevees par le correcteur." },
          { id: "c", label: "Les erreurs sont relevees par le correcteur." },
        ],
        "b",
        'Le futur simple actif devient ici un futur passif: "seront relevees". Le participe passe s\'accorde avec "erreurs", feminin pluriel.',
        "Oublier de conserver le temps de la phrase de depart ou mal accorder le participe passe.",
      ),
      reponseCourte(
        "vp-v1-5",
        "identification_grammaticale",
        'Dans "La consigne a ete comprise par les candidats", quelle etait la fonction de "la consigne" dans la phrase active ?',
        ["cod", "complement d'objet direct"],
        'Dans le passage a la voix passive, l\'ancien COD devient le sujet de la nouvelle phrase.',
        'Repondre "sujet" en oubliant que la question porte sur la phrase active de depart.',
      ),
      reponseCourte(
        "vp-v1-6",
        "reponse_courte",
        "Transformez a la voix active.",
        [
          "les candidats ont compris la consigne",
          "les candidats ont compris la consigne.",
        ],
        'Le complement d\'agent "par les candidats" redevient sujet de la phrase active, et "la consigne" reprend sa fonction de COD.',
        "Conserver le passif ou oublier de redonner un sujet actif explicite.",
        'Phrase support : "La consigne a ete comprise par les candidats."',
      ),
      qcm(
        "vp-v1-7",
        'Dans la phrase passive "Les copies seront relues par les formateurs", quel groupe est complement d\'agent ?',
        [
          { id: "a", label: "Les copies" },
          { id: "b", label: "seront relues" },
          { id: "c", label: "par les formateurs" },
        ],
        "c",
        'Le complement d\'agent designe celui qui accomplit reellement l\'action dans une phrase passive. Il est ici introduit par "par".',
        "Prendre le sujet grammatical de la phrase passive pour l'agent de l'action.",
      ),
      vraiFaux(
        "vp-v1-8",
        'Vrai ou faux : dans "Les affiches ont ete collees par les eleves", le participe passe "collees" s\'accorde avec "affiches".',
        true,
        'Dans une construction passive, le participe passe s\'accorde avec le sujet grammatical, ici "affiches", feminin pluriel.',
        "Accorder le participe avec le complement d'agent ou le laisser invariable.",
      ),
    ],
    bilan: {
      competenceTravaillee:
        "Transformer une phrase active ou passive en conservant les relations syntaxiques essentielles.",
      pointsARetenir: [
        "La passivation canonique suppose en general un verbe transitif direct.",
        "Le COD de la phrase active devient le sujet de la phrase passive.",
        "Le temps verbal et l'accord du participe passe doivent etre conserves avec precision.",
      ],
      conseilDeReprise:
        "Avant toute transformation, reperez le sujet, le verbe, le COD et verifiez si un passif canonique est reellement possible.",
    },
  }),
  buildSeries({
    id: "fr-serie-transformations-phrase-crpe",
    title: "Transformations de phrase: manipuler comme au CRPE",
    domain: "analyse_langue",
    domainLabel: DOMAIN_LABELS.analyse_langue,
    subdomain: "transformations_de_phrase_crpe",
    subdomainLabel: "Transformations de phrase type CRPE",
    level: "Intermediaire",
    objective:
      "Produire des transformations de phrase frequentes au CRPE et utiliser les manipulations pour justifier une analyse syntaxique.",
    introduction:
      "Les transformations de phrase servent a verifier qu'une analyse tient vraiment. Cette serie travaille la mise en relief, la pronominalisation, le passage a l'interrogation et quelques manipulations tres classiques du concours.",
    questions: [
      qcm(
        "tpc-v1-1",
        'Quelle est la mise en relief correcte du COD dans "Le professeur explique la regle" ?',
        [
          { id: "a", label: "C'est la regle que le professeur explique." },
          { id: "b", label: "C'est le professeur que la regle explique." },
          { id: "c", label: "C'est la regle qui le professeur explique." },
        ],
        "a",
        'Pour mettre en relief le COD, on utilise ici la tournure "c\'est ... que". Le groupe focalise reste "la regle".',
        'Employer "qui" au lieu de "que" sans tenir compte de la fonction du groupe mis en relief.',
      ),
      reponseCourte(
        "tpc-v1-2",
        "reponse_courte",
        "Mettez la phrase a la forme negative.",
        [
          "les candidats ne comprennent pas encore la consigne",
          "les candidats ne comprennent pas encore la consigne.",
        ],
        'La negation canonique se construit ici avec "ne ... pas" autour du verbe. Le reste de la phrase est conserve.',
        "Ajouter une negation sans encadrer correctement le verbe ou changer inutilement le sens du reste de la phrase.",
        'Phrase support : "Les candidats comprennent encore la consigne."',
      ),
      qcm(
        "tpc-v1-3",
        'Quelle est la transformation interrogative correcte de "Vous comprenez cette consigne" ?',
        [
          { id: "a", label: "Comprenez-vous cette consigne ?" },
          { id: "b", label: "Vous comprenez-vous cette consigne ?" },
          { id: "c", label: "Cette consigne comprenez-vous ?" },
        ],
        "a",
        'L\'interrogation directe avec inversion du sujet se forme ici par "Comprenez-vous ... ?".',
        "Conserver le sujet devant le verbe tout en ajoutant une inversion incorrecte.",
      ),
      vraiFaux(
        "tpc-v1-4",
        'Vrai ou faux : la pronominalisation de "les erreurs de syntaxe" dans "Le jury repere les erreurs de syntaxe" donne "Le jury les repere".',
        true,
        'Le groupe COD "les erreurs de syntaxe" peut etre remplace par le pronom personnel COD "les". Cette manipulation confirme sa fonction.',
        "Choisir un pronom sujet ou un pronom tonique au lieu du pronom de fonction adequate.",
      ),
      reponseCourte(
        "tpc-v1-5",
        "reponse_courte",
        "Transformez en mettant le sujet en relief.",
        [
          "c'est marie qui a trouve la reponse",
          "c'est marie qui a trouve la reponse.",
        ],
        'Pour mettre le sujet en relief, la tournure canonique est "c\'est ... qui". Le sujet focalise est ici "Marie".',
        'Employer "que" alors que le groupe mis en relief est sujet.',
        'Phrase support : "Marie a trouve la reponse."',
      ),
      reponseCourte(
        "tpc-v1-6",
        "reponse_courte",
        "Pronominalisez le COD.",
        [
          "le candidat le consulte",
          "le candidat le consulte.",
        ],
        'Le groupe "le bareme" est COD. Il est repris par le pronom COD "le", place avant le verbe conjugue.',
        "Laisser le groupe nominal en place ou employer un pronom qui ne correspond pas a la fonction du groupe.",
        'Phrase support : "Le candidat consulte le bareme."',
      ),
      qcm(
        "tpc-v1-7",
        'Dans "Dans cette copie, le candidat justifie sa reponse", quelle manipulation montre le mieux que "Dans cette copie" est un complement circonstanciel ?',
        [
          { id: "a", label: "Le deplacement en fin de phrase ou en tete de phrase." },
          { id: "b", label: "Le remplacement par un pronom sujet." },
          { id: "c", label: "L'accord du verbe avec ce groupe." },
        ],
        "a",
        'Le deplacement est une manipulation classique des complements circonstanciels. Il montre ici que le groupe garde sa place mobile sans commander l\'accord.',
        "Chercher a identifier un complement circonstanciel avec une manipulation reservee au sujet.",
      ),
      reponseCourte(
        "tpc-v1-8",
        "analyse_texte",
        'Pourquoi la tournure "Le jury les repere" confirme-t-elle que "les erreurs de syntaxe" est un COD ?',
        [
          "parce que le groupe peut etre remplace par un pronom cod",
          "parce qu'on peut le remplacer par un pronom cod",
          "parce qu'il est remplacable par le pronom les",
        ],
        'La pronominalisation par "les" montre que le groupe occupe une fonction de complement d\'objet direct. La manipulation sert ici de preuve syntaxique.',
        "Donner seulement le resultat de la transformation sans expliquer ce qu'elle prouve.",
      ),
    ],
    bilan: {
      competenceTravaillee:
        "Utiliser les transformations de phrase comme outils d'analyse et non comme recettes isolees.",
      pointsARetenir: [
        'La mise en relief varie selon la fonction du groupe cible: "c\'est ... qui" ou "c\'est ... que".',
        "La pronominalisation est une manipulation tres utile pour verifier une fonction.",
        "Une transformation correcte conserve ce qui doit l'etre: fonction, sens vise et structure grammaticale.",
      ],
      conseilDeReprise:
        "Quand une transformation vous semble artificielle, demandez-vous d'abord ce qu'elle doit prouver: une fonction, une forme de phrase ou une relation syntaxique.",
    },
  }),
  buildSeries({
    id: "fr-serie-didactique-lecture-langue",
    title: "Didactique: choisir le bon geste pour faire progresser",
    domain: "didactique_francais",
    domainLabel: DOMAIN_LABELS.didactique_francais,
    subdomain: "lecture_et_comprehension",
    subdomainLabel: "Lecture, comprehension et etude de la langue",
    level: "Intermediaire",
    objective: "Analyser une situation d'apprentissage en partant de l'obstacle reel de l'eleve.",
    introduction:
      "La didactique du francais ne se reduit ni a des slogans ni a des recettes. Cette serie vous entraine a choisir des gestes professionnels justifies par l'objectif d'apprentissage.",
    questions: [
      qcm(
        "did-v1-1",
        'Un eleve ecrit "les enfant chante". Le premier geste utile de l\'enseignant est de :',
        [
          { id: "a", label: "Dire seulement que c'est faux." },
          { id: "b", label: "Chercher ce que l'eleve a compris ou non de l'accord." },
          { id: "c", label: "Passer immediatement a une autre notion." },
        ],
        "b",
        "La reponse la plus didactiquement juste consiste a analyser l'erreur pour identifier l'obstacle. Sans cela, la correction risque de rester superficielle.",
        "Confondre correction rapide et veritable remediation.",
      ),
      vraiFaux(
        "did-v1-2",
        "Vrai ou faux : la dictee negociee est interessante parce qu'elle oblige les eleves a verbaliser leurs raisonnements orthographiques.",
        true,
        "La dictee negociee ne vaut pas par son aspect collectif en soi, mais parce qu'elle rend visibles les procedures et les justifications des eleves.",
        "Reduire la dictee negociee a une animation de groupe sans enjeu cognitif precis.",
      ),
      qcm(
        "did-v1-3",
        "Quelle pratique aide le plus les eleves a progresser en comprehension ?",
        [
          { id: "a", label: "Leur demander seulement de relire en silence." },
          { id: "b", label: "Enseigner explicitement des strategies comme anticiper, verifier et inferer." },
          { id: "c", label: "Corriger uniquement les mots mal lus." },
        ],
        "b",
        "La comprehension progresse quand les strategies de lecteur sont enseignees et rendues visibles. La simple repetition de lecture ne suffit pas.",
        "Penser que la comprehension s'installe d'elle-meme des que le texte est lu plusieurs fois.",
      ),
      reponseCourte(
        "did-v1-4",
        "reponse_courte",
        "Qu'est-ce que la conscience phonologique ?",
        [
          "la capacite a identifier et manipuler les sons de la langue",
          "identifier et manipuler les sons de la langue",
          "manipuler les sons de la langue",
        ],
        "La conscience phonologique concerne les sons de l'oral: syllabes, rimes, phonemes. Elle ne se confond pas avec la simple connaissance des lettres.",
        "La confondre avec l'orthographe ou l'apprentissage du nom des lettres.",
      ),
      qcm(
        "did-v1-5",
        "Pour installer durablement un mot nouveau, il vaut mieux :",
        [
          { id: "a", label: "Le faire copier une seule fois." },
          { id: "b", label: "Le faire rencontrer et reutiliser dans plusieurs contextes." },
          { id: "c", label: "Le faire memoriser hors de toute phrase." },
        ],
        "b",
        "Le vocabulaire se stabilise grace a des rencontres multiples, des reformulations et des reutilisations. Une exposition unique reste fragile.",
        "Reduire le travail lexical a une definition unique ou a une copie mecanique.",
      ),
      qcm(
        "did-v1-6",
        "Pour aider des eleves a produire un texte, il est pertinent de :",
        [
          { id: "a", label: "Les laisser ecrire sans preparation puis corriger a la fin." },
          { id: "b", label: "Prevoir un temps de planification, de mise en texte puis de revision." },
          { id: "c", label: "Corriger a leur place des la premiere phrase." },
        ],
        "b",
        "La production d'ecrit est un processus. Planifier, ecrire et reviser constituent des etapes complementaires qui rendent l'activite plus apprenable.",
        "Penser qu'ecrire consiste seulement a produire d'un seul jet un texte fini.",
      ),
      vraiFaux(
        "did-v1-7",
        "Vrai ou faux : l'oral joue un role important dans les apprentissages du francais, y compris au-dela de la maternelle.",
        true,
        "L'oral soutient la comprehension, la formulation de la pensee, le lexique et l'acces a l'ecrit. Il ne doit pas etre traite comme un apprentissage secondaire.",
        "Opposer trop rapidement oral et ecrit.",
      ),
      qcm(
        "did-v1-8",
        "Pourquoi un corpus de phrases variees est-il utile pour enseigner une notion grammaticale ?",
        [
          { id: "a", label: "Parce qu'il permet de faire apparaitre des regularites et des contrastes." },
          { id: "b", label: "Parce qu'il remplace toute manipulation." },
          { id: "c", label: "Parce qu'il evite d'avoir a justifier les regles." },
        ],
        "a",
        "Un corpus bien choisi permet de comparer, de classer et de justifier. C'est un support d'observation, pas un simple stock d'exemples.",
        "Voir le corpus comme une juxtaposition de phrases sans logique d'observation.",
      ),
      reponseCourte(
        "did-v1-9",
        "reponse_courte",
        "A quoi sert d'abord une evaluation formative ?",
        [
          "a ajuster l'enseignement et aider l'eleve a progresser",
          "ajuster l'enseignement et aider l'eleve a progresser",
          "faire progresser en ajustant l'enseignement",
        ],
        "L'evaluation formative n'a pas pour premier but de classer. Elle sert a recueillir des indices sur les acquis et les obstacles pour orienter la suite du travail.",
        "La confondre avec une sanction ou un bilan definitif.",
      ),
      qcm(
        "did-v1-10",
        "La fluence en lecture designe surtout :",
        [
          { id: "a", label: "La vitesse seule." },
          { id: "b", label: "Une lecture suffisamment exacte, rapide et expressive pour soutenir la comprehension." },
          { id: "c", label: "La capacite a recopier vite." },
        ],
        "b",
        "La fluence articule exactitude, rythme et prosodie. Elle a du sens parce qu'elle soutient la comprehension du texte, pas parce qu'elle installe une simple performance de vitesse.",
        "Reduire la fluence a un chrono de lecture.",
      ),
    ],
    bilan: {
      competenceTravaillee: "Choisir un geste d'enseignement pertinent a partir d'un obstacle d'apprentissage identifiable.",
      pointsARetenir: [
        "En didactique, on analyse d'abord l'obstacle avant de corriger.",
        "Une pratique est pertinente si elle rend un apprentissage plus visible, plus explicite et plus retravaillable.",
        "Lecture, ecriture, oral et etude de la langue doivent etre relies a des objectifs precis.",
      ],
      conseilDeReprise:
        "Si une question de didactique vous semble abstraite, demandez-vous toujours: quel est l'objectif d'apprentissage, quel est l'obstacle, quel geste aide vraiment a le depasser ?",
    },
  }),
];

export const part5MecanismesEngagementSobres: FrenchEngagementMechanism[] = [
  {
    key: "progression_visible_par_domaine",
    label: "Progression visible par domaine",
    purpose: "Donner un repere simple sur ce qui est en cours, fragile ou solide.",
    operation: [
      "Afficher un etat par domaine et sous-domaine.",
      "Actualiser cet etat a partir des series reussies puis stabilisees.",
      "Eviter les pourcentages trompeurs sans contexte.",
    ],
    pedagogicalJustification:
      "L'apprenant adulte a besoin de se situer sans etre noye dans les chiffres. Une progression lisible aide a choisir la bonne suite.",
    implementationNote:
      "Utiliser des statuts courts du type 'a reprendre', 'en consolidation', 'maitrise en cours'.",
    driftToAvoid:
      "Transformer la progression en collection de badges deconnectes des apprentissages reels.",
  },
  {
    key: "series_recommandees",
    label: "Series recommandees",
    purpose: "Eviter l'errance dans le catalogue.",
    operation: [
      "Apres diagnostic ou serie terminee, proposer 1 a 3 series maximum.",
      "Associer chaque recommandation a une raison explicite.",
      "Distinguer recommandation de consolidation et recommandation de progression.",
    ],
    pedagogicalJustification:
      "La recommandation sobre remplace utilement la gamification: elle aide a agir sans surcharger.",
    implementationNote:
      "Afficher la raison pedagogique en une phrase courte: notion fragile, reprise necessaire, passage au niveau suivant.",
    driftToAvoid:
      "Multiplier les recommandations jusqu'a recreer un effet de catalogue confus.",
  },
  {
    key: "reprise_des_erreurs",
    label: "Reprise des erreurs frequentes",
    purpose: "Faire de l'erreur un objet de travail et non une simple faute passee.",
    operation: [
      "Conserver les erreurs recurrentes par notion.",
      "Faire remonter une serie courte ou une reprise ciblee sur ces erreurs.",
      "Associer un conseil de reprise concret a chaque groupe d'erreurs.",
    ],
    pedagogicalJustification:
      "La repetition utile porte sur les obstacles identifies, pas sur l'ensemble du catalogue.",
    implementationNote:
      "Regrouper les erreurs par notion et par type de confusion, pas uniquement par question.",
    driftToAvoid:
      "Afficher brutalement toutes les erreurs accumulees sans hierarchisation.",
  },
  {
    key: "objectif_de_seance",
    label: "Objectif court de seance",
    purpose: "Aider le candidat a travailler meme avec peu de temps et sans dispersion.",
    operation: [
      "Avant une serie, afficher l'objectif de travail en une phrase.",
      "A la fin, rappeler ce qui a ete travaille et la prochaine etape utile.",
      "Garder des seances courtes, coherentes et comparables.",
    ],
    pedagogicalJustification:
      "Un objectif de seance clarifie l'intention d'apprentissage et renforce l'engagement sans artifice.",
    implementationNote:
      "Reprendre le meme objectif dans l'introduction, la correction et le bilan final.",
    driftToAvoid:
      "Ajouter des promesses motivationnelles vagues qui n'aident pas vraiment a apprendre.",
  },
  {
    key: "reperes_de_maitrise",
    label: "Reperes de maitrise",
    purpose: "Montrer qu'une notion n'est pas simplement 'faite', mais plus ou moins stabilisee.",
    operation: [
      "Distinguer premiere reussite, consolidation et maitrise suffisamment stable.",
      "Conditionner la maitrise a plusieurs reussites dans des contextes proches mais non identiques.",
      "Afficher un message d'encouragement uniquement apres progression verifiable.",
    ],
    pedagogicalJustification:
      "Cela reduit l'illusion de maitrise et favorise une reprise lucide.",
    implementationNote:
      "Rester sobre dans les libelles et privilegier des criteres visibles.",
    driftToAvoid:
      "Distribuer trop vite des statuts de maitrise qui flattent mais desorientent.",
  },
  {
    key: "encouragement_sobre",
    label: "Encouragement sobre",
    purpose: "Soutenir l'effort sans infantiliser.",
    operation: [
      "Afficher un retour bref apres une progression reelle.",
      "Nommer la notion qui progresse plutot que complimenter de facon generique.",
      "Associer l'encouragement a une prochaine action utile.",
    ],
    pedagogicalJustification:
      "Un adulte s'engage mieux quand le retour porte sur un apprentissage observable, pas sur une animation artificielle.",
    implementationNote:
      'Exemple: "Accord sujet-verbe en nette amelioration. Refaire une serie du meme type pour stabiliser."',
    driftToAvoid:
      "Multiplier les felicitations creuses ou theatrales apres chaque clic.",
  },
];

export const frenchModuleSeriesIntegration: Record<string, FrenchModuleSeriesIntegration> = {
  "fr-serie-accord-sujet-verbe": {
    accessTier: "free",
    recommendedOrder: 13,
    seedPrefix: "51000000",
    sourceLabel: "Module Francais CRPE V1",
  },
  "fr-serie-nature-fonction": {
    accessTier: "free",
    recommendedOrder: 14,
    seedPrefix: "52000000",
    sourceLabel: "Module Francais CRPE V1",
  },
  "fr-serie-futur-conditionnel-subjonctif": {
    accessTier: "premium",
    recommendedOrder: 15,
    seedPrefix: "53000000",
    sourceLabel: "Module Francais CRPE V1",
  },
  "fr-serie-inferences-connecteurs": {
    accessTier: "free",
    recommendedOrder: 16,
    seedPrefix: "54000000",
    sourceLabel: "Module Francais CRPE V1",
  },
  "fr-serie-didactique-lecture-langue": {
    accessTier: "premium",
    recommendedOrder: 17,
    seedPrefix: "55000000",
    sourceLabel: "Module Francais CRPE V1",
  },
  "fr-serie-voix-passive": {
    accessTier: "free",
    recommendedOrder: 18,
    seedPrefix: "56000000",
    sourceLabel: "Module Francais CRPE V1",
  },
  "fr-serie-transformations-phrase-crpe": {
    accessTier: "premium",
    recommendedOrder: 19,
    seedPrefix: "57000000",
    sourceLabel: "Module Francais CRPE V1",
  },
};

export const frenchCrpeModuleDeliverable = {
  "1_cadrage_pedagogique": part1CadragePedagogiqueFrancais,
  "2_structure_parcours_apprentissage": part2StructureParcoursApprentissage,
  "3_plan_contenu_structure": part3PlanContenuStructure,
  "4_premier_lot_series_completes": part4PremierLotSeriesCompletes,
  "5_mecanismes_engagement_sobres": part5MecanismesEngagementSobres,
  "6_integration_series": frenchModuleSeriesIntegration,
};
