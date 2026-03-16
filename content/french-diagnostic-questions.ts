export type FrenchDiagnosticSubdomainKey =
  | "grammaire"
  | "orthographe"
  | "conjugaison"
  | "lexique"
  | "analyse_langue"
  | "comprehension_texte"
  | "didactique_francais";

export type FrenchDiagnosticQuestion = {
  id: string;
  subdomain: FrenchDiagnosticSubdomainKey;
  subdomainLabel: string;
  href: string;
  competency: string;
  instruction: string;
  choices: string[];
  correctIndex: number;
  explanation: string;
  retryAdvice: string;
};

type QuestionTuple = readonly [
  id: string,
  competency: string,
  instruction: string,
  choices: [string, string, string],
  correctIndex: number,
  explanation: string,
  retryAdvice: string,
];

const SUBDOMAIN_META: Record<
  FrenchDiagnosticSubdomainKey,
  {
    label: string;
    href: string;
  }
> = {
  grammaire: {
    label: "Grammaire",
    href: "/francais/grammaire",
  },
  orthographe: {
    label: "Orthographe",
    href: "/francais/orthographe",
  },
  conjugaison: {
    label: "Conjugaison",
    href: "/francais/grammaire?subdomain=conjugaison",
  },
  lexique: {
    label: "Lexique",
    href: "/francais/grammaire?subdomain=lexique",
  },
  analyse_langue: {
    label: "Analyse de la langue",
    href: "/francais/analyse-de-la-langue?subdomain=analyse_langue",
  },
  comprehension_texte: {
    label: "Compréhension de texte",
    href: "/francais/analyse-de-la-langue?subdomain=comprehension_texte",
  },
  didactique_francais: {
    label: "Didactique du français",
    href: "/francais/analyse-de-la-langue?subdomain=didactique_francais",
  },
};

export const FRENCH_DIAGNOSTIC_SUBDOMAIN_ORDER: FrenchDiagnosticSubdomainKey[] = [
  "grammaire",
  "orthographe",
  "conjugaison",
  "lexique",
  "analyse_langue",
  "comprehension_texte",
  "didactique_francais",
];

export const FRENCH_DIAGNOSTIC_SESSION_SIZE = 40;

function buildQuestion(
  subdomain: FrenchDiagnosticSubdomainKey,
  [id, competency, instruction, choices, correctIndex, explanation, retryAdvice]: QuestionTuple,
): FrenchDiagnosticQuestion {
  return {
    id,
    subdomain,
    subdomainLabel: SUBDOMAIN_META[subdomain].label,
    href: SUBDOMAIN_META[subdomain].href,
    competency,
    instruction,
    choices,
    correctIndex,
    explanation,
    retryAdvice,
  };
}

function shuffle<T>(items: T[], randomFn: () => number) {
  const copy = items.slice();

  for (let index = copy.length - 1; index > 0; index -= 1) {
    const swapIndex = Math.floor(randomFn() * (index + 1));
    [copy[index], copy[swapIndex]] = [copy[swapIndex], copy[index]];
  }

  return copy;
}


const grammaireTuples: QuestionTuple[] = [
  [
    "diag-gram-1",
    "Identifier une proposition infinitive",
    "Dans \"J'entends les enfants chanter dans la cour\", le groupe \"les enfants chanter\" est :",
    ["Un groupe nominal COD", "Une proposition infinitive", "Une subordonnée complétive"],
    1,
    "Ce groupe a son propre sujet (\"les enfants\") ET un verbe à l'infinitif (\"chanter\") — c'est une proposition infinitive, COD du verbe de perception \"entendre\". Deux éléments à repérer ensemble !",
    "Cherche d'abord si le groupe a son propre sujet exprimé. Si oui → proposition infinitive. Si non → infinitif COD simple.",
  ],
  [
    "diag-gram-2",
    "Distinguer apposition et attribut du sujet",
    "Dans \"Médecin renommé, il comprenait mieux la souffrance\", la fonction de \"Médecin renommé\" est :",
    ["Attribut du sujet", "Apposition au sujet détachée", "Complément circonstanciel de cause"],
    1,
    "Attention ici — ce groupe nominal est détaché en tête de phrase et apporte une précision sur le sujet \"il\". C'est une apposition, pas un attribut : un attribut exige un verbe d'état, il n'y en a pas !",
    "Distingue bien les deux : l'apposition donne une précision sans verbe d'état, l'attribut du sujet est relié par être, sembler, paraître…",
  ],
  [
    "diag-gram-3",
    "Identifier un sujet inversé dans une proposition relative",
    "Dans \"le problème que redoutait l'enseignante\", quelle est la fonction de \"l'enseignante\" ?",
    ["Complément du nom \"problème\"", "Sujet inversé du verbe \"redoutait\"", "Complément d'objet indirect"],
    1,
    "Oui, et c'est logique : le pronom relatif \"que\" occupe déjà la place de COD, donc le sujet réel — \"l'enseignante\" — se retrouve après le verbe. C'est un sujet inversé.",
    "Quand un pronom relatif précède le verbe, cherche le sujet après le verbe — il peut être inversé.",
  ],
  [
    "diag-gram-4",
    "Identifier une proposition participiale absolue",
    "Dans \"Le cours terminé, les élèves s'en allèrent\", \"Le cours terminé\" est :",
    ["Un groupe nominal en apposition", "Une proposition participiale absolue", "Une subordonnée circonstancielle de temps"],
    1,
    "C'est la règle clé : une participiale absolue a son propre sujet (\"le cours\"), distinct du sujet de la principale. Elle exprime une circonstance et vaut comme un CC.",
    "Une participiale absolue a toujours son propre sujet exprimé — c'est ce qui la distingue du participe épithète ou attribut.",
  ],
  [
    "diag-gram-5",
    "Analyser le sujet réel d'un verbe impersonnel",
    "Dans \"Il est indispensable de travailler régulièrement\", quelle est la fonction de \"de travailler régulièrement\" ?",
    ["Sujet réel du verbe impersonnel", "COD du verbe impersonnel", "Attribut du sujet apparent"],
    0,
    "Exactement ! Le \"il\" est un sujet grammatical apparent, un simple fantôme. Le groupe infinitif \"de travailler régulièrement\" est le vrai sujet — le sujet réel du verbe impersonnel.",
    "Avec un verbe impersonnel, cherche systématiquement le sujet réel exprimé après le verbe.",
  ],
  [
    "diag-gram-6",
    "Identifier la nature d'un mot",
    'Dans "Ces grands arbres bordent la route", la nature de "grands" est :',
    ["Adjectif qualificatif", "Nom commun", "Adverbe"],
    0,
    "\"Grands\" qualifie le nom \"arbres\" — c'est donc un adjectif qualificatif. Simple à vérifier : il dit comment sont les arbres.",
    "Demande-toi si le mot nomme, qualifie ou modifie.",
  ],
  [
    "diag-gram-7",
    "Identifier un determinant",
    'Dans "Cette histoire est courte", la nature de "cette" est :',
    ["Pronom demonstratif", "Determinant demonstratif", "Adjectif qualificatif"],
    1,
    "\"Cette\" introduit le nom \"histoire\" — c'est un déterminant démonstratif. Il accompagne le nom, il ne le remplace pas.",
    "Si le mot accompagne immédiatement un nom, commence par vérifier la piste du déterminant.",
  ],
  [
    "diag-gram-8",
    "Identifier un pronom personnel",
    'Dans "Ils observent la carte", la nature de "ils" est :',
    ["Pronom personnel", "Determinant", "Nom commun"],
    0,
    "\"Ils\" remplace des personnes ou des éléments déjà connus du contexte — c'est un pronom personnel sujet. Il ne nomme pas, il représente.",
    "Demande-toi si le mot remplace un nom déjà connu dans le contexte.",
  ],
  [
    "diag-gram-9",
    "Identifier une conjonction",
    'Dans "Il lit mais il hésite", la nature de "mais" est :',
    ["Preposition", "Conjonction de coordination", "Adverbe"],
    1,
    "\"Mais\" relie deux propositions et marque une opposition — c'est une conjonction de coordination. Mémo : mais, ou, et, donc, or, ni, car.",
    "Repère d'abord si le mot sert à relier des groupes ou des propositions.",
  ],
  [
    "diag-gram-10",
    "Reconnaitre une expansion du nom",
    'Dans "Un livre de contes", "de contes" est :',
    ["Un complement du nom", "Un COD", "Un attribut du sujet"],
    0,
    "Le groupe prépositionnel complète le nom \"livre\" — c'est un complément du nom. Il enrichit le GN, il ne complète pas le verbe.",
    "Regarde si le groupe enrichit un nom ou s'il complète le verbe.",
  ],
  [
    "diag-gram-11",
    "Identifier un verbe",
    'Dans "Les enfants joueront demain", quel est le verbe conjugué ?',
    ["enfants", "joueront", "demain"],
    1,
    "\"Joueront\" porte les marques de temps (futur) et de personne (3e pluriel) — c'est le verbe conjugué de la phrase. Les deux autres mots ne varient pas.",
    "Repère le mot qui varie selon le temps ou la personne.",
  ],
  [
    "diag-gram-12",
    "Identifier le noyau d'un groupe nominal",
    'Dans "Le petit chat blanc", le noyau du groupe nominal est :',
    ["petit", "chat", "blanc"],
    1,
    "Le nom noyau du groupe nominal, c'est \"chat\" — les adjectifs \"petit\" et \"blanc\" viennent le préciser, mais c'est lui le patron du groupe.",
    "Dans un groupe nominal, cherche le mot qui donne son identité au groupe.",
  ],
  [
    "diag-gram-13",
    "Distinguer phrase simple et phrase complexe",
    'La phrase "Le vent souffle et la pluie tombe" est :',
    ["Une phrase simple", "Une phrase complexe", "Une phrase nominale"],
    1,
    "Elle contient deux verbes conjugués (\"souffle\" et \"tombe\"), donc deux propositions — c'est une phrase complexe. Une proposition = un verbe conjugué.",
    "Compte les verbes conjugués pour commencer l'analyse.",
  ],
  [
    "diag-gram-14",
    "Identifier un complement du verbe",
    'Dans "Elle range ses cahiers", la fonction de "ses cahiers" est :',
    ["COD", "COI", "CC de temps"],
    0,
    "\"Ses cahiers\" complète directement le verbe \"range\" sans préposition — c'est un COD. Tu peux le vérifier : elle range quoi ? Ses cahiers.",
    "Teste si le groupe vient directement après le verbe, sans préposition.",
  ],
  [
    "diag-gram-15",
    "Identifier une phrase interrogative",
    "Quelle phrase est interrogative ?",
    ["Tu fermes la porte.", "Ferme la porte.", "Fermes-tu la porte ?"],
    2,
    "La troisième phrase pose une question — le point d'interrogation et l'inversion sujet-verbe le montrent clairement. Les deux autres sont déclarative et impérative.",
    "Cherche les indices de question : ponctuation, mot interrogatif ou inversion.",
  ],
];
const orthographeTuples: QuestionTuple[] = [
  [
    "diag-ortho-1",
    "Accorder un adjectif de couleur composé",
    "Quelle écriture est correcte ?",
    ["des robes vert clair", "des robes vertes claires", "des robes vert-clairs"],
    0,
    "C'est la règle clé : un adjectif de couleur composé de deux mots est invariable. On écrit \"vert clair\" — sans accord ET sans trait d'union.",
    "Dès qu'une couleur est nuancée par un autre adjectif ou un nom (vert clair, bleu marine…), elle devient invariable.",
  ],
  [
    "diag-ortho-2",
    "Former le pluriel d'un nom composé verbe + nom",
    "Quel pluriel est correct pour \"un abat-jour\" ?",
    ["des abat-jours", "des abats-jour", "des abat-jour"],
    2,
    "Attention ici — dans un nom composé verbe + nom, le verbe est toujours invariable. Et \"jour\" désigne un complément générique qui reste lui aussi invariable : des abat-jour.",
    "Analyse la structure du nom composé (V+N, N+N, N+Prép+N) pour décider quel élément s'accorde.",
  ],
  [
    "diag-ortho-3",
    "Accorder le participe passé avec le pronom 'en'",
    "Dans 'Des romans, j'en ai lu beaucoup', pourquoi 'lu' reste-t-il invariable ?",
    ["Le sujet est masculin singulier", "Le pronom 'en' est un COD sans genre ni nombre précis", "Le verbe lire est toujours invariable"],
    1,
    "Oui, et c'est logique : quand le COD est le pronom \"en\", le participe passé reste invariable — \"en\" est un pronom partitif, il n'a pas de genre ni de nombre précis.",
    "Distingue \"en\" (pas d'accord) des autres pronoms COD antéposés comme \"les\", \"la\" ou \"que\" (accord obligatoire).",
  ],
  [
    "diag-ortho-4",
    "Appliquer les rectifications orthographiques de 1990",
    "Selon les rectifications de 1990, quelle graphie est recommandée ?",
    ["un nénuphar", "un nénufar", "Les deux formes sont équivalentes"],
    1,
    "Les rectifications de 1990 simplifient certaines graphies : \"nénuphar\" devient \"nénufar\" pour aligner l'orthographe sur la prononciation. La réforme touche aussi les accents circonflexes et les mots composés.",
    "Les rectifications de 1990 suppriment certains accents circonflexes, soudent des mots composés et simplifient des graphies étymologiques irrégulières.",
  ],
  [
    "diag-ortho-5",
    "Accorder un adjectif de couleur issu d'un nom commun",
    "Quelle écriture est correcte ?",
    ["des yeux marrons", "des yeux marron", "des yeux marrones"],
    1,
    "\"Marron\" vient d'un nom commun, pas d'un adjectif — et les noms utilisés comme couleur sont invariables. Donc : des yeux marron, sans s.",
    "Les noms de couleur (marron, orange, saumon, crème…) sont invariables quand ils qualifient un nom, contrairement aux adjectifs de couleur simples (rouge, bleu…).",
  ],
  [
    "diag-ortho-6",
    "Choisir ces ou ses",
    'Completez correctement : "Paul range ____ affaires."',
    ["ces", "ses", "c'est"],
    1,
    "\"Ses\" est ici un déterminant possessif — ce sont les affaires de Paul. \"Ces\" désignerait des affaires précises dont on parlerait ensemble.",
    "Demande-toi si le mot exprime la possession ou la désignation.",
  ],
  [
    "diag-ortho-7",
    "Choisir son ou sont",
    'Completez correctement : "Les cahiers ____ prêts."',
    ["son", "sont", "sons"],
    1,
    "\"Sont\" est le verbe être au présent, à la 3e personne du pluriel. Astuce : si tu peux remplacer par \"étaient\", c'est le verbe — écris \"sont\".",
    "Teste le remplacement : si \"étaient\" fonctionne → c'est le verbe \"sont\". Sinon → c'est \"son\", déterminant possessif.",
  ],
  [
    "diag-ortho-8",
    "Distinguer se et ce",
    'Completez correctement : "Il ____ lève tôt."',
    ["se", "ce", "ceux"],
    0,
    "\"Se\" fait partie du verbe pronominal \"se lever\" — il est collé au verbe. Ce n'est pas un déterminant ou un pronom démonstratif.",
    "Repère si le mot est collé à un verbe pronominal.",
  ],
  [
    "diag-ortho-9",
    "Choisir l'infinitif ou le participe passé",
    'Completez correctement : "Il faut ____ la consigne."',
    ["relire", "relu", "relis"],
    0,
    "Après \"il faut\", on attend toujours un infinitif — la bonne forme est \"relire\". Le participe passé \"relu\" n'a rien à faire ici.",
    "Après un verbe comme falloir, vérifie si l'infinitif est attendu.",
  ],
  [
    "diag-ortho-10",
    "Accorder le participe passé avec être",
    "Quelle phrase est correcte ?",
    ["Elles sont parti.", "Elles sont parties.", "Elles sont partis."],
    1,
    "Avec l'auxiliaire être, le participe passé s'accorde avec le sujet — \"elles\" est féminin pluriel, donc \"parties\". Deux lettres supplémentaires : e et s.",
    "Repère d'abord l'auxiliaire avant de penser à l'accord.",
  ],
  [
    "diag-ortho-11",
    "Choisir ou et où accentué",
    'Completez correctement : "Veux-tu du thé ____ du café ?" ',
    ["ou", "où", "d'où"],
    0,
    "\"Ou\" sans accent marque ici le choix entre deux boissons — c'est une alternative. \"Où\" avec accent est réservé au lieu ou à la question de lieu.",
    "Distingue la question de lieu (où ?) de l'idée d'alternative (ou = ou bien).",
  ],
  [
    "diag-ortho-12",
    "Accorder un verbe avec un sujet éloigné",
    "Quelle forme est correcte ?",
    [
      "Le bruit des chaises perturbent la classe.",
      "Le bruit des chaises perturbe la classe.",
      "Le bruit des chaises pertubes la classe.",
    ],
    1,
    "Attention ici — le sujet, c'est \"bruit\", au singulier. \"Des chaises\" n'est qu'un complément du nom, il ne commande pas l'accord du verbe.",
    "Isole le noyau du sujet avant de choisir la terminaison.",
  ],
  [
    "diag-ortho-13",
    "Choisir leur ou leurs",
    'Completez correctement : "Les élèves prennent ____ cahiers."',
    ["leur", "leurs", "leurss"],
    1,
    "\"Leurs\" s'emploie ici car chaque élève prend plusieurs cahiers — le nom \"cahiers\" est au pluriel, donc \"leurs\" prend un s.",
    "Regarde si le nom qui suit est singulier ou pluriel.",
  ],
  [
    "diag-ortho-14",
    "Distinguer on et ont",
    'Completez correctement : "____ a terminé l\'exercice."',
    ["On", "Ont", "Onn"],
    0,
    "\"On\" est ici le pronom indéfini sujet du verbe \"a terminé\". \"Ont\" est la forme du verbe avoir — si tu peux remplacer par \"ils ont\", alors c'est \"ont\".",
    "Demande-toi si le mot joue le rôle de sujet ou d'auxiliaire.",
  ],
  [
    "diag-ortho-15",
    "Accorder un adjectif attribut",
    "Quelle phrase est correcte ?",
    ["Ces fleurs sont beau.", "Ces fleurs sont belles.", "Ces fleurs sont bel."],
    1,
    "L'adjectif attribut \"belles\" s'accorde avec le sujet \"ces fleurs\", féminin pluriel — beau → belle → belles. L'accord passe par le verbe d'état.",
    "Avec un verbe d'état, pense à l'accord de l'attribut avec le sujet.",
  ],
];
const conjugaisonTuples: QuestionTuple[] = [
  [
    "diag-conj-1",
    "Identifier le conditionnel passé 2e forme",
    "Dans 'S'il eût su la vérité, il eût agi différemment', les formes verbales appartiennent à :",
    ["L'imparfait du subjonctif", "Le subjonctif plus-que-parfait valant conditionnel passé", "Le plus-que-parfait de l'indicatif"],
    1,
    "Dans les textes littéraires soutenus, le subjonctif plus-que-parfait peut remplacer le conditionnel passé — c'est le conditionnel passé 2e forme. \"Eût su\" = \"aurait su\".",
    "Retiens : dans un texte littéraire, \"eût + participe passé\" = conditionnel passé 2e forme.",
  ],
  [
    "diag-conj-2",
    "Comprendre la concordance des temps au discours indirect",
    "Dans 'Il affirmait qu'elle viendrait le lendemain', la forme 'viendrait' exprime :",
    ["Une hypothèse avec condition", "Le futur dans le passé (futur du passé)", "Un souhait formulé au présent"],
    1,
    "Au discours indirect avec un verbe introducteur au passé, le futur simple se transforme en conditionnel présent — c'est le futur du passé. Le sens reste \"elle va venir\".",
    "Règle de concordance : discours direct (futur) → discours indirect au passé (conditionnel présent).",
  ],
  [
    "diag-conj-3",
    "Choisir la forme correcte du subjonctif passé",
    "Complétez : 'Bien qu'il ___ à l'heure, la réunion avait déjà commencé.'",
    ["est arrivé", "soit arrivé", "était arrivé"],
    1,
    "Après \"bien que\", le subjonctif est obligatoire. Et comme l'action est antérieure à la principale, tu emploies le subjonctif passé : \"soit arrivé\".",
    "Subjonctif passé = auxiliaire au subjonctif présent + participe passé : il marque une antériorité par rapport à la principale.",
  ],
  [
    "diag-conj-4",
    "Identifier la valeur de l'imparfait dans un système hypothétique oral",
    "Dans 'Si tu m'aidais, on finissait plus vite' (registre oral), l'imparfait de la principale exprime :",
    ["Une habitude révolue dans le passé", "Un conditionnel présent à valeur hypothétique", "Une action simultanée au passé"],
    1,
    "Dans le registre oral familier, l'imparfait peut se substituer au conditionnel présent dans la principale d'un système hypothétique — c'est courant à l'oral, même si ça reste du non-standard.",
    "Distingue l'imparfait descriptif ou d'habitude de l'imparfait substitué au conditionnel dans les structures hypothétiques.",
  ],
  [
    "diag-conj-5",
    "Identifier le passé simple d'un verbe irrégulier",
    "Quelle forme est le passé simple de 'résoudre' à la 3e personne du singulier ?",
    ["résolva", "résolut", "résoludra"],
    1,
    "Le passé simple de \"résoudre\" est irrégulier — \"il résolut\". Les verbes en -soudre ont un passé simple en -solut/-solus. Pas de -a, pas de -dra.",
    "Mémorise les passés simples irréguliers fréquents : résoudre → résolut, naître → naquit, vaincre → vainquit.",
  ],
  [
    "diag-conj-6",
    "Choisir une forme de passé composé",
    "Quelle phrase est au passé composé ?",
    ["Elle chante depuis une heure.", "Elle a chanté hier.", "Elle chantait hier."],
    1,
    "Le passé composé associe un auxiliaire conjugué et un participe passé — \"a chanté\". Les deux autres sont présent et imparfait.",
    "Cherche le duo auxiliaire + participe passé.",
  ],
  [
    "diag-conj-7",
    "Identifier l'impératif",
    "Quelle forme est à l'impératif ?",
    ["Tu fermes la porte.", "Ferme la porte.", "Il ferme la porte."],
    1,
    "L'impératif sert à donner un ordre ou une consigne — et c'est sa marque principale : le sujet n'est pas exprimé. \"Ferme la porte\" : ordre direct, sans \"tu\".",
    "Cherche si la phrase donne un ordre directement, sans sujet exprimé.",
  ],
  [
    "diag-conj-8",
    "Conjuguer être au présent",
    'Completez : "Nous ... en retard."',
    ["sommes", "êtes", "serons"],
    0,
    "Au présent de l'indicatif, avec \"nous\", le verbe être donne \"sommes\". C'est une forme à mémoriser, elle ne suit pas de règle régulière.",
    "Reprends les tableaux de conjugaison des verbes \"être\" et \"avoir\" si besoin — ils sont incontournables.",
  ],
  [
    "diag-conj-9",
    "Conjuguer avoir au présent",
    'Completez : "Vous ... raison."',
    ["avez", "avons", "aurez"],
    0,
    "Au présent de l'indicatif, avec \"vous\", le verbe avoir donne \"avez\". Associe chaque pronom sujet à sa forme — c'est du cœur du programme.",
    "Associe chaque pronom sujet à sa forme la plus fréquente du verbe \"avoir\".",
  ],
  [
    "diag-conj-10",
    "Reconnaitre le passé simple",
    "Quelle forme est au passé simple ?",
    ["il parla", "il parlait", "il parlera"],
    0,
    "\"Parla\" appartient au passé simple — c'est le temps du récit écrit, celui des actions ponctuelles. \"Parlait\" est imparfait, \"parlera\" est futur.",
    "Repère les formes brèves en -a, -it ou -urent dans les textes narratifs.",
  ],
  [
    "diag-conj-11",
    "Identifier une valeur du présent",
    'Dans "L\'eau bout à 100 degrés", le présent exprime :',
    ["Une habitude", "Une vérité générale", "Une action passée"],
    1,
    "Exactement ! Ce présent énonce un fait scientifique valable en tout temps — c'est le présent de vérité générale. Pas une habitude, pas une action en cours.",
    "Demande-toi si l'énoncé vaut au-delà de la situation immédiate.",
  ],
  [
    "diag-conj-12",
    "Distinguer infinitif et forme conjuguée",
    'Dans "Ils vont partir", "partir" est :',
    ["Un infinitif", "Un participe passé", "Un verbe à l'imparfait"],
    0,
    "\"Partir\" suit ici le semi-auxiliaire \"vont\" — il reste à l'infinitif, sans marque de personne. C'est la forme non conjuguée du verbe.",
    "Repère si la forme verbale porte ou non une marque de personne.",
  ],
  [
    "diag-conj-13",
    "Choisir la bonne personne verbale",
    'Completez : "Tu ... vite."',
    ["courons", "cours", "court"],
    1,
    "Avec \"tu\", au présent, le verbe \"courir\" donne \"tu cours\". \"Courons\" c'est nous, \"court\" c'est il/elle.",
    "Associe toujours le sujet à la terminaison correspondante.",
  ],
  [
    "diag-conj-14",
    "Identifier le plus-que-parfait",
    "Quelle phrase est au plus-que-parfait ?",
    [
      "Ils avaient compris la consigne.",
      "Ils comprennent la consigne.",
      "Ils comprendront la consigne.",
    ],
    0,
    "Le plus-que-parfait se forme avec un auxiliaire à l'imparfait et un participe passé — \"avaient compris\". C'est le temps de l'action accomplie avant une autre action passée.",
    "Repère d'abord le temps de l'auxiliaire.",
  ],
  [
    "diag-conj-15",
    "Choisir le bon temps dans un récit",
    'Dans un récit au passé, "Soudain, il ... la porte" s\'écrit plutôt :',
    ["ouvrait", "ouvrira", "ouvrit"],
    2,
    "Le passé simple \"ouvrit\" marque ici un événement ponctuel dans le récit — c'est l'action de premier plan. \"Ouvrait\" serait une description ou une habitude.",
    "Distingue les actions de premier plan (passé simple) des descriptions ou habitudes (imparfait).",
  ],
];
const lexiqueTuples: QuestionTuple[] = [
  [
    "diag-lex-1",
    "Distinguer deux paronymes courants",
    "Quelle phrase emploie le terme exact ?",
    ["Il a prononcé une allocution devant ses collègues.", "Il a prononcé une allocation devant ses collègues.", "Les deux termes sont synonymes en contexte officiel."],
    0,
    "\"Allocution\" désigne un discours bref ; \"allocation\" désigne une aide financière — ce sont des paronymes, ils se ressemblent à l'oreille mais n'ont rien à voir !",
    "Mémorise les paronymes par paires : allocution (discours) / allocation (aide financière).",
  ],
  [
    "diag-lex-2",
    "Utiliser l'étymologie pour déduire le sens d'un mot",
    "Le préfixe latin 'circum-' dans 'circonstance' indique :",
    ["Le dessous ou l'infériorité", "Le mouvement autour ou ce qui entoure", "La répétition ou le retour"],
    1,
    "\"Circum\" signifie \"autour\" en latin — \"circonstance\" = ce qui entoure une action, son cadre. L'étymologie te donne la clé du sens.",
    "Connais les préfixes latins (circum, sub, trans, ante, post…) — ils te permettent de déduire le sens de nombreux mots savants.",
  ],
  [
    "diag-lex-3",
    "Identifier une métonymie",
    "'Boire un verre' pour dire 'boire le contenu d'un verre' est un exemple de :",
    ["Métaphore", "Métonymie", "Hyperbole"],
    1,
    "On désigne le contenu par le contenant — c'est une métonymie : la substitution repose sur une relation réelle entre les deux termes.",
    "La métonymie repose sur une relation réelle (contenant/contenu, cause/effet…) ; la métaphore, elle, repose sur une ressemblance.",
  ],
  [
    "diag-lex-4",
    "Distinguer litote et euphémisme",
    "'Il n'est pas sans talent' pour dire 'il est très talentueux' est une :",
    ["Hyperbole", "Euphémisme", "Litote"],
    2,
    "C'est une litote — elle dit moins pour suggérer davantage, souvent par double négation. \"N'est pas sans talent\" insinue qu'il en a énormément !",
    "Distingue bien les deux : l'euphémisme atténue une réalité pénible ; la litote sous-exprime pour mieux suggérer le contraire en force.",
  ],
  [
    "diag-lex-5",
    "Identifier un archaïsme lexical courant",
    "Dans les textes juridiques et classiques, 'nonobstant' signifie :",
    ["Dorénavant, à partir de maintenant", "Malgré, en dépit de", "En résumé, pour conclure"],
    1,
    "\"Nonobstant\" est un archaïsme encore présent dans les textes juridiques — il signifie \"malgré\". Décompose : \"non\" + \"obstant\" (de obstare, faire obstacle).",
    "Décompose : \"non\" + \"obstant\" (de obstare, faire obstacle). Sens = malgré l'obstacle.",
  ],
  [
    "diag-lex-6",
    "Identifier un préfixe",
    'Dans le mot "impossible", le préfixe "im-" marque :',
    ["L'opposition ou la négation", "La répétition", "La grandeur"],
    0,
    "Le préfixe \"im-\" inverse le sens du mot de base \"possible\" — c'est un marqueur de négation. Même famille : illégal, irréel, in-utile.",
    "Repère si le préfixe change le sens vers la négation, la répétition ou l'intensité.",
  ],
  [
    "diag-lex-7",
    "Identifier un suffixe",
    'Dans "douceur", le suffixe "-eur" sert ici à former :',
    ["Un verbe", "Un nom", "Un adjectif"],
    1,
    "Le suffixe \"-eur\" transforme ici l'adjectif \"doux\" en nom abstrait : \"douceur\". Le suffixe change la classe grammaticale du mot.",
    "Demande-toi à quelle classe grammaticale appartient le mot obtenu.",
  ],
  [
    "diag-lex-8",
    "Comprendre un mot en contexte",
    'Dans "un ton sec", le mot "sec" signifie surtout :',
    ["Mouillé", "Brutal ou sans chaleur", "Fragile"],
    1,
    "Ici, \"sec\" ne parle pas d'humidité — il décrit une manière de parler, jugée rude et sans chaleur. C'est le sens figuré qui s'impose au contexte.",
    "Cherche si le contexte est concret ou figuré.",
  ],
  [
    "diag-lex-9",
    "Distinguer homonymie et famille de mots",
    "Quel couple forme une famille de mots ?",
    ["mer / maire", "chant / chanter", "ver / verre"],
    1,
    "\"Chant\" et \"chanter\" partagent le même radical et ont un lien de formation — c'est une vraie famille de mots. \"Mer\" et \"maire\" se ressemblent à l'oreille mais n'ont aucun lien.",
    "Ne confonds pas ressemblance sonore et même famille de mots.",
  ],
  [
    "diag-lex-10",
    "Reconnaitre un champ lexical",
    'Quel mot appartient au champ lexical de la mer ?',
    ["voile", "racine", "ardoise"],
    0,
    "\"Voile\" appartient à l'univers marin — une voile de bateau. \"Racine\" et \"ardoise\" n'ont aucun lien avec la mer.",
    "Cherche les mots qui renvoient à un même domaine d'expérience.",
  ],
  [
    "diag-lex-11",
    "Identifier un mot générique",
    'Le mot générique qui peut regrouper "chien", "chat" et "lapin" est :',
    ["animaux", "objets", "vehicules"],
    0,
    "\"Animaux\" est le terme générique qui englobe ces trois noms particuliers — c'est le mot plus large qui les contient tous.",
    "Demande-toi quel mot plus large peut contenir les autres.",
  ],
  [
    "diag-lex-12",
    "Distinguer sens propre et sens figuré",
    'Dans "Cette nouvelle m\'a glacé", l\'expression relève :',
    ["Du sens propre", "Du sens figuré", "D'une définition scientifique"],
    1,
    "On ne parle pas ici de température réelle — le verbe est employé au sens figuré pour exprimer un choc émotionnel intense.",
    "Teste si l'interprétation concrète reste possible dans le contexte.",
  ],
  [
    "diag-lex-13",
    "Identifier un verbe dérivé",
    'Quel verbe est dérivé du nom "courage" ?',
    ["encourager", "courir", "couvrir"],
    0,
    "\"Encourager\" est formé sur le nom \"courage\" — il en partage le radical. \"Courir\" et \"couvrir\" n'ont aucun lien étymologique.",
    "Repère le radical de base avant de comparer les mots.",
  ],
  [
    "diag-lex-14",
    "Reconnaitre une nuance de sens",
    'Quel mot est le plus proche de "observer" ?',
    ["regarder attentivement", "oublier", "fabriquer"],
    0,
    "\"Observer\" signifie regarder avec attention, en cherchant à remarquer quelque chose — c'est bien plus que simplement \"voir\".",
    "Cherche une reformulation précise, pas seulement un mot vaguement voisin.",
  ],
  [
    "diag-lex-15",
    "Identifier une expression imagée",
    'Dans "Il a une faim de loup", l\'expression signifie :',
    ["Il a très faim", "Il a peur des loups", "Il chasse les loups"],
    0,
    "L'expression intensifie l'idée de faim — elle ne parle pas vraiment de loups ! C'est une image qui dit : il a une faim extrême.",
    "Quand une expression paraît exagérée ou étrange au sens littéral, vérifie si elle fonctionne comme image.",
  ],
];
const analyseTuples: QuestionTuple[] = [
  [
    "diag-analyse-1",
    "Analyser la valeur d'une proposition participiale absolue",
    "Dans 'Les négociations ayant échoué, la grève fut déclarée', la proposition participiale exprime :",
    ["La condition", "La cause logique", "L'opposition"],
    1,
    "La proposition participiale absolue (\"Les négociations ayant échoué\") exprime ici la cause qui motive la déclaration de grève — c'est le contexte qui décide de la valeur.",
    "Le contexte détermine la valeur (cause, condition, temps, opposition) d'une participiale absolue.",
  ],
  [
    "diag-analyse-2",
    "Identifier la fonction sujet réel d'une complétive",
    "Dans 'Il est regrettable qu'il soit absent', quelle est la fonction de 'qu'il soit absent' ?",
    ["COD du verbe impersonnel", "Sujet réel du verbe impersonnel", "Attribut du sujet apparent"],
    1,
    "Avec les verbes impersonnels, \"il\" est le sujet grammatical apparent — un leurre. La complétive \"qu'il soit absent\" est le vrai sujet : le sujet réel.",
    "Repère le sujet apparent \"il\" et cherche le sujet réel exprimé après le verbe impersonnel.",
  ],
  [
    "diag-analyse-3",
    "Identifier un discours indirect libre",
    "Dans 'Elle rentra chez elle. La journée avait été épuisante, vraiment.', le second énoncé est :",
    ["Un discours direct", "Un discours indirect libre", "Une narration omnisciente neutre"],
    1,
    "Le discours indirect libre intègre les pensées d'un personnage dans la narration sans marque introductive — et l'adverbe \"vraiment\" trahit clairement la voix du personnage.",
    "Cherche les adverbes ou interjections modaux (\"vraiment\", \"décidément\"…) qui signalent une voix intérieure dans la narration.",
  ],
  [
    "diag-analyse-4",
    "Identifier le mode dans une subordonnée consécutive réelle",
    "Dans 'Il était si fatigué qu'il s'endormit aussitôt', le mode de 's'endormit' est :",
    ["Subjonctif (fait incertain)", "Conditionnel (fait hypothétique)", "Indicatif (fait présenté comme réel)"],
    2,
    "Quand la conséquence est un fait constaté, la subordonnée consécutive se met à l'indicatif — on présente ce qui s'est vraiment passé.",
    "Avec \"si… que\", \"tellement… que\" : indicatif si la conséquence est un fait ; subjonctif si c'est une intensité attendue.",
  ],
  [
    "diag-analyse-5",
    "Analyser une apposition double coordonnée",
    "Dans 'Élève brillante mais imprévisible, elle déstabilisait parfois ses professeurs', le groupe détaché est :",
    ["Un attribut du COD", "Une apposition double coordonnée", "Un complément circonstanciel de manière"],
    1,
    "Le groupe \"Élève brillante mais imprévisible\" est une apposition double — coordonnée par \"mais\" — détachée en tête de phrase. Une apposition peut elle-même être complexe !",
    "Une apposition peut elle-même être complexe et coordonner plusieurs éléments qualificatifs.",
  ],
  [
    "diag-analyse-6",
    "Identifier une expansion du nom",
    'Dans "une maison très ancienne", l\'expansion du nom est :',
    ["très ancienne", "une", "maison"],
    0,
    "Le groupe adjectival \"très ancienne\" enrichit le nom \"maison\" — c'est son expansion. \"Une\" est le déterminant, \"maison\" est le noyau.",
    "Distingue le déterminant, le nom noyau et ce qui le précise.",
  ],
  [
    "diag-analyse-7",
    "Identifier la proposition principale",
    'Dans "Quand la cloche sonne, les élèves sortent", la proposition principale est :',
    ["Quand la cloche sonne", "les élèves sortent", "quand la cloche"],
    1,
    "La proposition principale, c'est celle qui pourrait subsister seule — \"les élèves sortent\" se suffit. \"Quand la cloche sonne\" est subordonnée, elle dépend de la principale.",
    "Cherche la proposition qui porte le sens principal et peut exister seule.",
  ],
  [
    "diag-analyse-8",
    "Identifier un complément du nom dans un GN",
    'Dans "le cahier de Marie", "de Marie" est :',
    ["Une épithète", "Un complément du nom", "Un COD"],
    1,
    "Le groupe prépositionnel \"de Marie\" enrichit le nom \"cahier\" — c'est un complément du nom. Il dépend du nom, pas du verbe.",
    "Demande-toi si le groupe dépend d'un nom ou d'un verbe.",
  ],
  [
    "diag-analyse-9",
    "Identifier un mot subordonnant",
    'Dans "Je partirai si tu viens", la nature de "si" est :',
    ["Conjonction de subordination", "Pronom relatif", "Préposition"],
    0,
    "\"Si\" introduit ici une proposition subordonnée circonstancielle de condition — c'est une conjonction de subordination. Elle crée une relation logique entre les deux propositions.",
    "Repère si le mot introduit une relation logique entre deux propositions.",
  ],
  [
    "diag-analyse-10",
    "Identifier le référent d'un pronom",
    'Dans "Paul parle à Hugo parce qu\'il est inquiet", le pronom "il" est :',
    ["Toujours Paul", "Toujours Hugo", "Ambigu sans contexte supplémentaire"],
    2,
    "Attention ici — la phrase seule ne permet pas de trancher. \"Il\" peut renvoyer à Paul ou à Hugo selon le contexte. C'est une ambiguïté réelle.",
    "N'impose pas une interprétation si la phrase reste ambiguë — dis-le clairement.",
  ],
  [
    "diag-analyse-11",
    "Identifier une phrase nominale",
    "Quelle phrase est nominale ?",
    ["Silence dans le couloir.", "Les élèves se taisent.", "Le maître parle."],
    0,
    "La phrase nominale ne comporte pas de verbe conjugué — et c'est exactement le cas de \"Silence dans le couloir\". Les deux autres ont chacune un verbe conjugué.",
    "Vérifie la présence ou l'absence d'un verbe conjugué.",
  ],
  [
    "diag-analyse-12",
    "Identifier une subordonnée relative",
    'Dans "La fille dont je parle arrive", "dont je parle" est :',
    ["Une subordonnée relative", "Une complétive", "Une proposition principale"],
    0,
    "La proposition est introduite par le pronom relatif \"dont\" et complète le nom \"fille\" — c'est bien une subordonnée relative. \"Dont\" a comme antécédent \"la fille\".",
    "Repère l'antécédent du pronom relatif pour confirmer l'analyse.",
  ],
  [
    "diag-analyse-13",
    "Distinguer phrase simple et complexe",
    'La phrase "Il ouvre la fenêtre puis il écoute" est :',
    ["Simple", "Complexe", "Nominale"],
    1,
    "Elle comporte deux verbes conjugués (\"ouvre\" et \"écoute\") — donc deux propositions, donc une phrase complexe.",
    "Le nombre de verbes conjugués reste un bon premier indicateur.",
  ],
  [
    "diag-analyse-14",
    "Identifier une forme infinitive",
    'Dans "J\'entends les enfants chanter", "chanter" est :',
    ["Un infinitif", "Un participe passé", "Un adverbe"],
    0,
    "\"Chanter\" est ici un verbe à l'infinitif, dépendant du verbe \"entends\" — il ne porte aucune marque de personne.",
    "Regarde si la forme verbale porte une marque de personne.",
  ],
  [
    "diag-analyse-15",
    "Identifier la nature d'un groupe",
    'Dans "Très rapidement", la nature du groupe est :',
    ["Groupe nominal", "Groupe adverbial", "Groupe verbal"],
    1,
    "Le noyau du groupe, c'est l'adverbe \"rapidement\", intensifié par \"très\" — c'est donc un groupe adverbial.",
    "Cherche la nature du mot noyau du groupe.",
  ],
];
const comprehensionTuples: QuestionTuple[] = [
  [
    "diag-comp-1",
    "Comprendre une inférence pragmatique",
    "Un personnage dit 'Je vais très bien' mais le texte précise qu'il serre les poings et détourne les yeux. La lecture correcte est :",
    ["Accepter la parole du personnage comme vraie", "Interpréter les indices non verbaux pour nuancer ou contredire la parole", "Ignorer les gestes, car seules les paroles comptent"],
    1,
    "L'inférence pragmatique, c'est dépasser le sens littéral grâce aux indices du contexte — ici, les gestes contredisent clairement les mots. Le corps ne ment pas !",
    "En lecture, les indices non verbaux, le ton et le contexte permettent souvent d'aller au-delà du sens littéral.",
  ],
  [
    "diag-comp-2",
    "Identifier l'ironie dans un texte",
    "'Quelle brillante idée de partir sous cet orage !' dit le narrateur sarcastique. Cette phrase emploie :",
    ["Une métaphore filée", "Une ironie", "Un euphémisme"],
    1,
    "L'ironie consiste à dire le contraire de ce qu'on pense — ici, l'éloge ne colle pas du tout à la situation. Ce décalage entre le sens littéral et le contexte, c'est la marque de l'ironie.",
    "Cherche le décalage entre le sens littéral et le contexte : si l'éloge ne colle pas à la réalité, il y a ironie.",
  ],
  [
    "diag-comp-3",
    "Comprendre la structure d'un texte argumentatif",
    "Dans un texte argumentatif bien construit, les arguments :",
    ["Sont juxtaposés sans lien logique", "Sont organisés pour renforcer progressivement la thèse", "Doivent toujours commencer par un contre-argument"],
    1,
    "Un texte argumentatif efficace organise ses arguments de manière progressive pour convaincre — du plus faible au plus fort, ou du général au particulier. L'ordre n'est pas aléatoire.",
    "Repère les connecteurs logiques pour comprendre comment les arguments s'articulent et se hiérarchisent.",
  ],
  [
    "diag-comp-4",
    "Distinguer texte injonctif et texte explicatif",
    "Ce qui distingue fonctionnellement un texte injonctif d'un texte explicatif est :",
    ["L'injonctif utilise le présent ; l'explicatif utilise le passé", "L'injonctif vise à faire agir le lecteur ; l'explicatif vise à lui faire comprendre", "L'injonctif est toujours plus court que l'explicatif"],
    1,
    "C'est la règle clé : le texte injonctif (recette, mode d'emploi) engage à l'action. Le texte explicatif (documentaire, encyclopédie) cherche à faire comprendre. L'intention de communication, c'est tout.",
    "Interroge-toi sur l'intention de communication : faire faire ? faire savoir ? faire ressentir ?",
  ],
  [
    "diag-comp-5",
    "Reconnaître un argument par analogie",
    "Un auteur compare l'apprentissage de la lecture à l'apprentissage du vélo pour expliquer le rôle de la pratique. Il emploie :",
    ["Un argument d'autorité", "Un argument par analogie", "Un contre-argument"],
    1,
    "L'argument par analogie établit une comparaison structurelle entre deux domaines différents pour rendre une idée plus claire ou convaincante — ici, lire et faire du vélo partagent la même logique de pratique.",
    "Repère les comparaisons entre domaines différents : elles valident une idée par similitude de structure.",
  ],
  [
    "diag-comp-6",
    "Comprendre la relation cause-conséquence",
    'Dans "Comme il pleuvait, la sortie fut annulée", quelle est la cause ?',
    ["La sortie", "La pluie", "L'annulation"],
    1,
    "La pluie explique l'annulation — c'est elle la cause. \"Comme\" introduit ici une relation causale, pas temporelle.",
    "Repère ce qui explique l'autre événement.",
  ],
  [
    "diag-comp-7",
    "Identifier le sens d'un titre",
    'Un titre comme "Le dernier voyage" annonce plutôt :',
    [
      "Un texte documentaire sur les outils",
      "Un récit centré sur un départ important",
      "Une recette de cuisine",
    ],
    1,
    "Le lexique du \"voyage\" et l'adjectif \"dernier\" orientent vers un récit autour d'un départ marquant — le titre est toujours une hypothèse de lecture.",
    "Utilise le titre comme hypothèse de lecture, puis confronte-la au texte.",
  ],
  [
    "diag-comp-8",
    "Distinguer explicite et implicite",
    'Dans "Paul serra son manteau et pressa le pas", on peut inférer que :',
    ["Il a chaud", "Il fait probablement froid", "Il veut dormir"],
    1,
    "Serrer son manteau et accélérer sont des indices convergents qui laissent penser qu'il fait froid — même si ce n'est pas dit explicitement.",
    "Cherche les indices convergents dans les gestes ou les réactions du personnage.",
  ],
  [
    "diag-comp-9",
    "Identifier un connecteur temporel",
    'Dans "D\'abord il observa, puis il répondit", le mot "puis" marque :',
    ["Une comparaison", "Une succession temporelle", "Une explication"],
    1,
    "\"Puis\" organise ici la succession des actions dans le temps — d'abord, puis. C'est un connecteur temporel, pas logique.",
    "Repère si le connecteur relie des idées, des causes ou des étapes chronologiques.",
  ],
  [
    "diag-comp-10",
    "Repérer l'intention d'un personnage",
    'Dans "Elle parla tout bas pour ne pas réveiller son frère", pourquoi parle-t-elle tout bas ?',
    ["Pour gagner du temps", "Pour ne pas le réveiller", "Pour se mettre en colère"],
    1,
    "La proposition finale introduite par \"pour\" donne explicitement l'intention du personnage — c'est écrit noir sur blanc dans la phrase !",
    "Repère les tournures de but comme \"pour\" ou \"afin de\".",
  ],
  [
    "diag-comp-11",
    "Identifier le genre d'un texte très court",
    "Un texte qui explique comment planter des graines est plutôt :",
    ["Narratif", "Injonctif ou explicatif", "Poétique"],
    1,
    "Un texte qui donne des étapes ou des consignes relève d'un fonctionnement injonctif ou explicatif — il cherche à faire faire ou à faire comprendre, pas à raconter.",
    "Interroge-toi sur la fonction du texte : raconter, expliquer ou faire agir.",
  ],
  [
    "diag-comp-12",
    "Comprendre l'effet d'un connecteur",
    'Dans "Il était fatigué, mais il continua", "mais" montre que :',
    [
      "La deuxième action va dans le même sens",
      "La deuxième action surprend par rapport à la première",
      "La phrase donne une définition",
    ],
    1,
    "Le connecteur \"mais\" introduit une rupture avec ce qu'on attendait — fatigué, on s'attendrait à ce qu'il s'arrête. Il continue : c'est une surprise, une opposition.",
    "Demande-toi si le connecteur confirme ou contrarie l'attente du lecteur.",
  ],
  [
    "diag-comp-13",
    "Identifier une reformulation",
    'Dans "Le givre recouvrait la pelouse, c\'est-à-dire une fine couche de glace", l\'expression "c\'est-à-dire" annonce :',
    ["Une opposition", "Une reformulation", "Une conclusion"],
    1,
    "\"C'est-à-dire\" annonce une reformulation — la seconde partie explicite la première en d'autres mots. C'est un marqueur de clarification.",
    "Repère les marqueurs qui expliquent autrement une idée déjà dite.",
  ],
  [
    "diag-comp-14",
    "Comprendre un sentiment implicite",
    'Dans "Maya serrait les poings et évitait les regards", on peut penser qu\'elle est plutôt :',
    ["Apaisée", "Tendue ou en colère", "Endormie"],
    1,
    "Les gestes décrits — serrer les poings, éviter les regards — renvoient à une tension émotionnelle forte. C'est implicite, mais lisible dans le corps.",
    "Appuie-toi sur les gestes, le corps et les paroles pour inférer l'état intérieur.",
  ],
  [
    "diag-comp-15",
    "Identifier le résumé le plus fidèle",
    "Pour résumer un texte, il faut surtout :",
    [
      "Recopier toutes les phrases importantes",
      "Garder les idées essentielles en les reformulant",
      "Ne conserver que les détails amusants",
    ],
    1,
    "Un résumé retient l'essentiel et le reformule — ce n'est ni une copie ni une sélection de détails, mais une reconstruction des idées clés.",
    "Distingue l'essentiel, le secondaire et l'exemple.",
  ],
];
const didactiqueTuples: QuestionTuple[] = [
  [
    "diag-did-1",
    "Comprendre la zone proximale de développement",
    "La zone proximale de développement (Vygotski) désigne :",
    ["Ce que l'élève sait déjà faire seul", "L'écart entre ce que l'élève fait seul et ce qu'il peut faire avec l'aide d'autrui", "Le niveau maximal qu'un élève peut atteindre"],
    1,
    "La ZPD, c'est l'espace entre le niveau actuel (ce que l'élève fait seul) et le niveau potentiel (ce qu'il accomplit avec guidage) — c'est là que l'enseignement doit se situer.",
    "Retiens : la ZPD justifie l'importance du guidage pédagogique et du travail en groupe hétérogène.",
  ],
  [
    "diag-did-2",
    "Identifier le concept d'étayage selon Bruner",
    "L'étayage en pédagogie (Bruner) consiste à :",
    ["Évaluer l'élève systématiquement à chaque étape", "Adapter temporairement les aides pour permettre à l'élève d'accomplir ce qu'il ne peut pas encore faire seul", "Simplifier définitivement la tâche"],
    1,
    "L'étayage, c'est un soutien temporaire et progressivement retiré — il permet à l'élève de travailler dans sa ZPD sans rester bloqué. L'idée clé : on retire les aides au fur et à mesure.",
    "Distingue étayage (aide temporaire, retrait progressif) et différenciation (adaptation durable des objectifs ou outils).",
  ],
  [
    "diag-did-3",
    "Distinguer décodage et compréhension en lecture",
    "Un élève déchiffre correctement tous les mots mais ne comprend pas le texte. Cela illustre que :",
    ["Il n'a pas encore acquis le principe alphabétique", "Le décodage automatisé est nécessaire mais insuffisant pour la compréhension", "La compréhension orale suffit à comprendre un texte écrit"],
    1,
    "La lecture experte requiert deux composantes : le décodage (identification des mots) et la compréhension (construction du sens). Les deux sont nécessaires — l'un sans l'autre ne suffit pas.",
    "Réfère-toi au modèle de Gough et Tunmer (\"Simple View of Reading\") : compréhension = décodage × compréhension du langage.",
  ],
  [
    "diag-did-4",
    "Comprendre le rôle des représentations initiales des élèves",
    "Avant d'enseigner une notion, explorer les représentations initiales des élèves permet principalement de :",
    ["Éviter que les élèves fassent des erreurs à l'avenir", "Repérer les obstacles et les points d'appui pour mieux cibler l'enseignement", "Classer les élèves par niveau avant d'enseigner"],
    1,
    "Les représentations initiales sont à la fois des obstacles (si erronées) et des points d'appui (si partiellement correctes) — les identifier te permet d'adapter l'enseignement là où ça compte.",
    "En didactique, l'erreur n'est pas un manque — c'est une étape révélatrice de la logique de l'élève.",
  ],
  [
    "diag-did-5",
    "Identifier une pratique d'enseignement explicite",
    "L'enseignement explicite d'une stratégie de lecture consiste principalement à :",
    ["Laisser les élèves découvrir la stratégie par eux-mêmes en silence", "Modéliser la stratégie à voix haute, guider les élèves, puis les laisser l'appliquer de façon autonome", "Donner une liste de règles à mémoriser sans les contextualiser"],
    1,
    "L'enseignement explicite suit trois phases : modelage (je fais en pensant à voix haute), pratique guidée, pratique autonome. Pas de découverte silencieuse — on rend la stratégie visible.",
    "Retiens la progression : \"je fais\" → \"on fait ensemble\" → \"tu fais seul\".",
  ],
  [
    "diag-did-6",
    "Comprendre l'intérêt de la lecture à voix haute du maître",
    "La lecture magistrale régulière sert notamment à :",
    [
      "Remplacer toutes les lectures des élèves",
      "Nourrir la compréhension, le vocabulaire et la culture de l'écrit",
      "Éviter les échanges autour des textes",
    ],
    1,
    "La lecture à voix haute du maître donne accès à des textes plus riches et soutient la compréhension — elle nourrit le vocabulaire et la culture de l'écrit des élèves.",
    "Cherche toujours l'effet d'apprentissage, pas seulement l'organisation pratique.",
  ],
  [
    "diag-did-7",
    "Identifier une pratique d'écriture efficace",
    "Pour aider des élèves à produire un texte, il est pertinent de :",
    [
      "Leur demander d'écrire directement sans préparation",
      "Prévoir un temps de planification, de mise en texte puis de révision",
      "Corriger tout à leur place dès la première phrase",
    ],
    1,
    "La production d'écrit gagne à être pensée comme un processus en plusieurs étapes : planification, mise en texte, révision. Écrire directement sans préparer, c'est souvent aller dans le mur.",
    "Repère les dispositifs qui rendent visibles les étapes de l'écriture.",
  ],
  [
    "diag-did-8",
    "Comprendre l'évaluation formative",
    "Une évaluation formative sert surtout à :",
    [
      "Classer définitivement les élèves",
      "Ajuster l'enseignement et aider l'élève à progresser",
      "Supprimer toute correction",
    ],
    1,
    "L'évaluation formative sert à faire progresser, pas à sanctionner — elle informe l'enseignant ET l'élève pour ajuster la suite des apprentissages.",
    "Demande-toi si l'évaluation informe la suite des apprentissages.",
  ],
  [
    "diag-did-9",
    "Identifier l'intérêt de la dictée négociée",
    "La dictée négociée est intéressante car elle permet surtout de :",
    [
      "Faire copier plus vite",
      "Verbaliser les raisonnements orthographiques",
      "Éviter toute justification",
    ],
    1,
    "La confrontation des solutions pousse les élèves à expliciter leurs choix orthographiques — c'est exactement ça l'intérêt : rendre le raisonnement visible et discutable.",
    "Cherche les dispositifs qui rendent les raisonnements visibles.",
  ],
  [
    "diag-did-10",
    "Reconnaitre une aide efficace en vocabulaire",
    "Pour enseigner un mot nouveau durablement, il vaut mieux :",
    [
      "Le faire recopier une seule fois",
      "Le rencontrer dans plusieurs contextes et le réutiliser",
      "Le faire mémoriser sans phrase",
    ],
    1,
    "Le vocabulaire se stabilise mieux par des rencontres multiples et des réutilisations variées — un mot vu une fois, c'est souvent oublié. Un mot rencontré dix fois dans des contextes différents, ça reste.",
    "Repère les situations qui multiplient les usages du mot.",
  ],
  [
    "diag-did-11",
    "Comprendre la fluence",
    "La fluence en lecture désigne surtout :",
    [
      "La vitesse seule",
      "Une lecture suffisamment précise, rapide et expressive pour soutenir la compréhension",
      "La capacité à recopier sans erreur",
    ],
    1,
    "La fluence ne se réduit pas à aller vite — elle articule exactitude, rythme et prosodie. C'est la lecture fluide qui libère des ressources pour comprendre.",
    "Méfie-toi des définitions trop réductrices d'un apprentissage complexe.",
  ],
  [
    "diag-did-12",
    "Identifier un obstacle d'apprentissage",
    'Si un élève confond souvent "et" et "est", il est utile de travailler :',
    [
      "Des procédures de distinction grammaticale en contexte",
      "Seulement la copie du mot",
      "Uniquement l'ordre alphabétique",
    ],
    0,
    "L'élève a besoin de critères pour distinguer les valeurs grammaticales des homophones — la copie seule ne sert à rien si la logique de distinction n'est pas comprise.",
    "Cherche le savoir qui manque à l'élève, pas seulement la forme à mémoriser.",
  ],
  [
    "diag-did-13",
    "Comprendre la place de l'oral",
    "Dans l'apprentissage du français, l'oral est important parce qu'il :",
    [
      "Est secondaire par rapport à l'écrit",
      "Soutient la compréhension, le lexique et la formulation de la pensée",
      "Ne sert qu'en maternelle",
    ],
    1,
    "L'oral joue un rôle central dans les apprentissages langagiers, de la compréhension à la production — il n'est pas secondaire et ne disparaît pas après la maternelle.",
    "Ne cloisonne pas trop vite oral et écrit.",
  ],
  [
    "diag-did-14",
    "Reconnaitre un support pertinent en étude de la langue",
    "Pour travailler une notion grammaticale, un corpus de phrases variées est utile car il permet de :",
    [
      "Rendre visible une régularité et des contrastes",
      "Éviter toute réflexion",
      "Remplacer la manipulation par la simple copie",
    ],
    0,
    "Un corpus bien choisi fait apparaître ce qui varie et ce qui reste stable dans la notion étudiée — c'est ça qui permet de construire une règle par observation.",
    "Cherche les situations qui permettent de comparer et justifier.",
  ],
  [
    "diag-did-15",
    "Comprendre la progressivité des apprentissages",
    "Une progression efficace en français consiste surtout à :",
    [
      "Passer très vite d'une notion à l'autre sans retour",
      "Revenir régulièrement sur les notions dans des situations variées",
      "Travailler une notion une seule fois dans l'année",
    ],
    1,
    "Les apprentissages langagiers demandent des reprises, des entraînements et des changements de contexte — apprendre, c'est revenir, pas juste avancer.",
    "Cherche une logique de reprise plutôt qu'un simple parcours linéaire.",
  ],
];

export const frenchDiagnosticQuestionBank: FrenchDiagnosticQuestion[] = [
  ...grammaireTuples.map((tuple) => buildQuestion("grammaire", tuple)),
  ...orthographeTuples.map((tuple) => buildQuestion("orthographe", tuple)),
  ...conjugaisonTuples.map((tuple) => buildQuestion("conjugaison", tuple)),
  ...lexiqueTuples.map((tuple) => buildQuestion("lexique", tuple)),
  ...analyseTuples.map((tuple) => buildQuestion("analyse_langue", tuple)),
  ...comprehensionTuples.map((tuple) => buildQuestion("comprehension_texte", tuple)),
  ...didactiqueTuples.map((tuple) => buildQuestion("didactique_francais", tuple)),
];

export const FRENCH_DIAGNOSTIC_BANK_SIZE = frenchDiagnosticQuestionBank.length;

export function buildBalancedFrenchDiagnosticSession(
  questionCount = FRENCH_DIAGNOSTIC_SESSION_SIZE,
  randomFn: () => number = Math.random,
) {
  const selectedQuestions: FrenchDiagnosticQuestion[] = [];
  const remainingBySubdomain = new Map<
    FrenchDiagnosticSubdomainKey,
    FrenchDiagnosticQuestion[]
  >(
    FRENCH_DIAGNOSTIC_SUBDOMAIN_ORDER.map((subdomain) => [
      subdomain,
      shuffle(
        frenchDiagnosticQuestionBank.filter((question) => question.subdomain === subdomain),
        randomFn,
      ),
    ]),
  );

  const baseTake = Math.floor(questionCount / FRENCH_DIAGNOSTIC_SUBDOMAIN_ORDER.length);
  let remaining = questionCount;

  for (const subdomain of FRENCH_DIAGNOSTIC_SUBDOMAIN_ORDER) {
    const bucket = remainingBySubdomain.get(subdomain) ?? [];
    const takeCount = Math.min(baseTake, bucket.length);
    selectedQuestions.push(...bucket.splice(0, takeCount));
    remaining -= takeCount;
  }

  const subdomainOrder = shuffle(FRENCH_DIAGNOSTIC_SUBDOMAIN_ORDER, randomFn);
  let cursor = 0;

  while (remaining > 0) {
    const currentSubdomain = subdomainOrder[cursor % subdomainOrder.length];
    const bucket = remainingBySubdomain.get(currentSubdomain) ?? [];

    if (bucket.length > 0) {
      const nextQuestion = bucket.shift();

      if (nextQuestion) {
        selectedQuestions.push(nextQuestion);
        remaining -= 1;
      }
    }

    cursor += 1;

    if (cursor > 500) {
      break;
    }
  }

  return shuffle(selectedQuestions, randomFn);
}
