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
    "Le groupe possède son propre sujet (\"les enfants\") et un verbe à l'infinitif (\"chanter\"). C'est une proposition infinitive, COD du verbe de perception \"entendre\".",
    "Repérez si le groupe possède un sujet propre exprimé : c'est ce qui distingue la proposition infinitive du simple infinitif COD.",
  ],
  [
    "diag-gram-2",
    "Distinguer apposition et attribut du sujet",
    "Dans \"Médecin renommé, il comprenait mieux la souffrance\", la fonction de \"Médecin renommé\" est :",
    ["Attribut du sujet", "Apposition au sujet détachée", "Complément circonstanciel de cause"],
    1,
    "Le groupe nominal détaché en tête de phrase apporte une précision sur le sujet \"il\". C'est une apposition, non un attribut (qui exige un verbe d'état).",
    "Distinguez l'apposition (précision sans verbe d'état) de l'attribut du sujet (propriété reliée par être, sembler, paraître…).",
  ],
  [
    "diag-gram-3",
    "Identifier un sujet inversé dans une proposition relative",
    "Dans \"le problème que redoutait l'enseignante\", quelle est la fonction de \"l'enseignante\" ?",
    ["Complément du nom \"problème\"", "Sujet inversé du verbe \"redoutait\"", "Complément d'objet indirect"],
    1,
    "Le pronom relatif \"que\" est COD du verbe \"redoutait\". Le sujet réel est \"l'enseignante\", placé après le verbe : c'est un sujet inversé.",
    "Quand un pronom relatif précède le verbe, cherchez le sujet après le verbe — il peut être inversé.",
  ],
  [
    "diag-gram-4",
    "Identifier une proposition participiale absolue",
    "Dans \"Le cours terminé, les élèves s'en allèrent\", \"Le cours terminé\" est :",
    ["Un groupe nominal en apposition", "Une proposition participiale absolue", "Une subordonnée circonstancielle de temps"],
    1,
    "La proposition participiale a son propre sujet (\"le cours\"), distinct du sujet de la principale. Elle exprime une circonstance et équivaut à un CC.",
    "Une participiale absolue a toujours son propre sujet exprimé : c'est ce qui la distingue du participe épithète ou attribut.",
  ],
  [
    "diag-gram-5",
    "Analyser le sujet réel d'un verbe impersonnel",
    "Dans \"Il est indispensable de travailler régulièrement\", quelle est la fonction de \"de travailler régulièrement\" ?",
    ["Sujet réel du verbe impersonnel", "COD du verbe impersonnel", "Attribut du sujet apparent"],
    0,
    "Le pronom \"il\" est le sujet grammatical apparent. Le groupe infinitif \"de travailler régulièrement\" est le sujet réel du verbe impersonnel.",
    "Avec un verbe impersonnel, cherchez systématiquement le sujet réel exprimé après le verbe.",
  ],
  [
    "diag-gram-6",
    "Identifier la nature d'un mot",
    'Dans "Ces grands arbres bordent la route", la nature de "grands" est :',
    ["Adjectif qualificatif", "Nom commun", "Adverbe"],
    0,
    '"Grands" qualifie le nom "arbres". C\'est donc un adjectif qualificatif.',
    "Demandez-vous si le mot nomme, qualifie ou modifie.",
  ],
  [
    "diag-gram-7",
    "Identifier un determinant",
    'Dans "Cette histoire est courte", la nature de "cette" est :',
    ["Pronom demonstratif", "Determinant demonstratif", "Adjectif qualificatif"],
    1,
    '"Cette" introduit le nom "histoire". C\'est un determinant demonstratif.',
    "Si le mot accompagne immediatement un nom, commencez par verifier la piste du determinant.",
  ],
  [
    "diag-gram-8",
    "Identifier un pronom personnel",
    'Dans "Ils observent la carte", la nature de "ils" est :',
    ["Pronom personnel", "Determinant", "Nom commun"],
    0,
    '"Ils" remplace des personnes ou des elements deja connus. C\'est un pronom personnel sujet.',
    "Demandez-vous si le mot remplace un nom deja connu dans le contexte.",
  ],
  [
    "diag-gram-9",
    "Identifier une conjonction",
    'Dans "Il lit mais il hesite", la nature de "mais" est :',
    ["Preposition", "Conjonction de coordination", "Adverbe"],
    1,
    '"Mais" relie deux propositions et marque une opposition. C\'est une conjonction de coordination.',
    "Reperez d'abord si le mot sert a relier des groupes ou des propositions.",
  ],
  [
    "diag-gram-10",
    "Reconnaitre une expansion du nom",
    'Dans "Un livre de contes", "de contes" est :',
    ["Un complement du nom", "Un COD", "Un attribut du sujet"],
    0,
    'Le groupe prepositionnel complete le nom "livre". Il s\'agit d\'un complement du nom.',
    "Regardez si le groupe enrichit un nom ou s'il complete le verbe.",
  ],
  [
    "diag-gram-11",
    "Identifier un verbe",
    'Dans "Les enfants joueront demain", quel est le verbe conjugue ?',
    ["enfants", "joueront", "demain"],
    1,
    '"Joueront" porte les marques de temps et de personne. C\'est le verbe conjugue de la phrase.',
    "Reperez le mot qui varie selon le temps ou la personne.",
  ],
  [
    "diag-gram-12",
    "Identifier le noyau d'un groupe nominal",
    'Dans "Le petit chat blanc", le noyau du groupe nominal est :',
    ["petit", "chat", "blanc"],
    1,
    'Le nom noyau du groupe nominal est "chat". Les adjectifs viennent le preciser.',
    "Dans un groupe nominal, cherchez le mot qui donne son identite au groupe.",
  ],
  [
    "diag-gram-13",
    "Distinguer phrase simple et phrase complexe",
    'La phrase "Le vent souffle et la pluie tombe" est :',
    ["Une phrase simple", "Une phrase complexe", "Une phrase nominale"],
    1,
    'Elle contient deux verbes conjugues, donc deux propositions. C\'est une phrase complexe.',
    "Comptez les verbes conjugues pour commencer l'analyse.",
  ],
  [
    "diag-gram-14",
    "Identifier un complement du verbe",
    'Dans "Elle range ses cahiers", la fonction de "ses cahiers" est :',
    ["COD", "COI", "CC de temps"],
    0,
    'Le groupe complete directement le verbe "range" sans preposition. C\'est un COD.',
    "Testez si le groupe vient directement apres le verbe, sans preposition.",
  ],
  [
    "diag-gram-15",
    "Identifier une phrase interrogative",
    "Quelle phrase est interrogative ?",
    ["Tu fermes la porte.", "Ferme la porte.", "Fermes-tu la porte ?"],
    2,
    'La troisieme phrase pose une question. Sa ponctuation et l\'inversion sujet-verbe le montrent.',
    "Cherchez les indices de question: ponctuation, mot interrogatif ou inversion.",
  ],
];
const orthographeTuples: QuestionTuple[] = [
  [
    "diag-ortho-1",
    "Accorder un adjectif de couleur composé",
    "Quelle écriture est correcte ?",
    ["des robes vert clair", "des robes vertes claires", "des robes vert-clairs"],
    0,
    "Un adjectif de couleur composé de deux mots est invariable. On écrit \"vert clair\" sans accord ni trait d'union.",
    "Dès qu'une couleur est nuancée par un autre adjectif ou un nom (vert clair, bleu marine…), elle devient invariable.",
  ],
  [
    "diag-ortho-2",
    "Former le pluriel d'un nom composé verbe + nom",
    "Quel pluriel est correct pour \"un abat-jour\" ?",
    ["des abat-jours", "des abats-jour", "des abat-jour"],
    2,
    "Dans un nom composé verbe + nom, le verbe est invariable. \"Jour\" désigne un complément générique et reste invariable : des abat-jour.",
    "Analysez la structure du nom composé (V+N, N+N, N+Prép+N) pour décider quel élément s'accorde.",
  ],
    [
    "diag-ortho-3",
    "Accorder le participe passé avec le pronom 'en'",
    "Dans 'Des romans, j'en ai lu beaucoup', pourquoi 'lu' reste-t-il invariable ?",
    ["Le sujet est masculin singulier", "Le pronom 'en' est un COD sans genre ni nombre précis", "Le verbe lire est toujours invariable"],
    1,
    "Quand le COD est le pronom 'en', le participe passé reste invariable car 'en' est un pronom partitif non marqué en genre ou en nombre.",
    "Distinguez 'en' (pas d'accord) des autres pronoms COD antéposés comme 'les', 'la' ou 'que' (accord obligatoire).",
  ],
  [
    "diag-ortho-4",
    "Appliquer les rectifications orthographiques de 1990",
    "Selon les rectifications de 1990, quelle graphie est recommandée ?",
    ["un nénuphar", "un nénufar", "Les deux formes sont équivalentes"],
    1,
    "Les rectifications de 1990 simplifient certaines graphies : 'nénuphar' devient 'nénufar' pour aligner l'orthographe sur la prononciation.",
    "Les rectifications de 1990 suppriment certains accents circonflexes, soudent des mots composés et simplifient des graphies étymologiques irrégulières.",
  ],
  [
    "diag-ortho-5",
    "Accorder un adjectif de couleur issu d'un nom commun",
    "Quelle écriture est correcte ?",
    ["des yeux marrons", "des yeux marron", "des yeux marrones"],
    1,
    "'Marron' employé comme adjectif de couleur vient d'un nom commun. Les adjectifs de couleur issus d'un nom restent invariables : 'des yeux marron'.",
    "Les noms de couleur (marron, orange, saumon, crème…) sont invariables quand ils qualifient un nom, contrairement aux adjectifs de couleur simples (rouge, bleu…).",
  ],
[
    "diag-ortho-6",
    "Choisir ces ou ses",
    'Completez correctement : "Paul range ____ affaires."',
    ["ces", "ses", "c'est"],
    1,
    '"Ses" est ici un determinant possessif: il s\'agit des affaires de Paul.',
    "Demandez-vous si le mot exprime la possession ou la designation.",
  ],
  [
    "diag-ortho-7",
    "Choisir son ou sont",
    'Completez correctement : "Les cahiers ____ prets."',
    ["son", "sont", "sons"],
    1,
    '"Sont" est le verbe etre au present, a la troisieme personne du pluriel.',
    'Si vous pouvez remplacer par "etaient", choisissez souvent "sont".',
  ],
  [
    "diag-ortho-8",
    "Distinguer se et ce",
    'Completez correctement : "Il ____ leve tot."',
    ["se", "ce", "ceux"],
    0,
    '"Se" fait partie d\'un verbe pronominal: "se lever".',
    "Reperez si le mot est colle a un verbe pronominal.",
  ],
  [
    "diag-ortho-9",
    "Choisir l'infinitif ou le participe passe",
    'Completez correctement : "Il faut ____ la consigne."',
    ["relire", "relu", "relis"],
    0,
    'Apres "il faut", on attend un infinitif. La bonne forme est "relire".',
    "Apres un verbe comme falloir, verifiez si l'infinitif est attendu.",
  ],
  [
    "diag-ortho-10",
    "Accorder le participe passe avec etre",
    "Quelle phrase est correcte ?",
    ["Elles sont parti.", "Elles sont parties.", "Elles sont partis."],
    1,
    'Avec l\'auxiliaire etre, le participe passe s\'accorde avec le sujet: "elles sont parties".',
    "Reperez d'abord l'auxiliaire avant de penser a l'accord.",
  ],
  [
    "diag-ortho-11",
    "Choisir ou et ou accentue",
    'Completez correctement : "Veux-tu du the ____ du cafe ?" ',
    ["ou", "où", "d'ou"],
    0,
    '"Ou" sans accent marque ici le choix entre deux boissons.',
    "Distinguez la question de lieu de l'idee d'alternative.",
  ],
  [
    "diag-ortho-12",
    "Accorder un verbe avec un sujet eloigne",
    "Quelle forme est correcte ?",
    [
      "Le bruit des chaises perturbent la classe.",
      "Le bruit des chaises perturbe la classe.",
      "Le bruit des chaises pertubes la classe.",
    ],
    1,
    'Le sujet est "bruit", au singulier. "Des chaises" n\'est qu\'un complement du nom.',
    "Isolez le noyau du sujet avant de choisir la terminaison.",
  ],
  [
    "diag-ortho-13",
    "Choisir leur ou leurs",
    'Completez correctement : "Les eleves prennent ____ cahiers."',
    ["leur", "leurs", "leurss"],
    1,
    '"Leurs" s\'emploie ici car chaque eleve prend plusieurs cahiers.',
    "Regardez si le nom qui suit est singulier ou pluriel.",
  ],
  [
    "diag-ortho-14",
    "Distinguer on et ont",
    'Completez correctement : "____ a termine l\'exercice."',
    ["On", "Ont", "Onn"],
    0,
    '"On" est ici le pronom indefini sujet du verbe "a termine".',
    "Demandez-vous si le mot joue le role de sujet ou d'auxiliaire.",
  ],
  [
    "diag-ortho-15",
    "Accorder un adjectif attribut",
    "Quelle phrase est correcte ?",
    ["Ces fleurs sont beau.", "Ces fleurs sont belles.", "Ces fleurs sont bel."],
    1,
    'L\'adjectif attribut "belles" s\'accorde avec le sujet "ces fleurs", feminin pluriel.',
    "Avec un verbe d'etat, pensez a l'accord de l'attribut avec le sujet.",
  ],
];
const conjugaisonTuples: QuestionTuple[] = [
    [
    "diag-conj-1",
    "Identifier le conditionnel passé 2e forme",
    "Dans 'S'il eût su la vérité, il eût agi différemment', les formes verbales appartiennent à :",
    ["L'imparfait du subjonctif", "Le subjonctif plus-que-parfait valant conditionnel passé", "Le plus-que-parfait de l'indicatif"],
    1,
    "Dans les textes littéraires soutenus, le subjonctif plus-que-parfait peut remplacer le conditionnel passé. 'Eût su' = 'aurait su'.",
    "Retenez : dans un texte littéraire, 'eût + participe passé' = conditionnel passé 2e forme.",
  ],
  [
    "diag-conj-2",
    "Comprendre la concordance des temps au discours indirect",
    "Dans 'Il affirmait qu'elle viendrait le lendemain', la forme 'viendrait' exprime :",
    ["Une hypothèse avec condition", "Le futur dans le passé (futur du passé)", "Un souhait formulé au présent"],
    1,
    "Au discours indirect avec un verbe introducteur au passé, le futur simple se transforme en conditionnel présent : c'est le futur du passé.",
    "Règle de concordance : discours direct (futur) → discours indirect au passé (conditionnel présent).",
  ],
  [
    "diag-conj-3",
    "Choisir la forme correcte du subjonctif passé",
    "Complétez : 'Bien qu'il ___ à l'heure, la réunion avait déjà commencé.'",
    ["est arrivé", "soit arrivé", "était arrivé"],
    1,
    "Après 'bien que', le subjonctif est requis. L'action étant antérieure à la principale, on emploie le subjonctif passé : 'soit arrivé'.",
    "Subjonctif passé = auxiliaire au subjonctif présent + participe passé : il marque une antériorité par rapport à la principale.",
  ],
  [
    "diag-conj-4",
    "Identifier la valeur de l'imparfait dans un système hypothétique oral",
    "Dans 'Si tu m'aidais, on finissait plus vite' (registre oral), l'imparfait de la principale exprime :",
    ["Une habitude révolue dans le passé", "Un conditionnel présent à valeur hypothétique", "Une action simultanée au passé"],
    1,
    "Dans le registre oral familier, l'imparfait peut se substituer au conditionnel présent dans la principale d'un système hypothétique.",
    "Distinguez l'imparfait descriptif ou d'habitude de l'imparfait substitué au conditionnel dans les structures hypothétiques.",
  ],
  [
    "diag-conj-5",
    "Identifier le passé simple d'un verbe irrégulier",
    "Quelle forme est le passé simple de 'résoudre' à la 3e personne du singulier ?",
    ["résolva", "résolut", "résoludra"],
    1,
    "Le passé simple de 'résoudre' est irrégulier : 'il résolut'. Les verbes en -soudre ont un passé simple en -solut/-solus.",
    "Mémorisez les passés simples irréguliers fréquents : résoudre → résolut, naître → naquit, vaincre → vainquit.",
  ],
[
    "diag-conj-6",
    "Choisir une forme de passe compose",
    "Quelle phrase est au passe compose ?",
    ["Elle chante depuis une heure.", "Elle a chante hier.", "Elle chantait hier."],
    1,
    'Le passe compose associe un auxiliaire conjugue et un participe passe: "a chante".',
    "Cherchez le duo auxiliaire + participe passe.",
  ],
  [
    "diag-conj-7",
    "Identifier l'imperatif",
    "Quelle forme est a l'imperatif ?",
    ["Tu fermes la porte.", "Ferme la porte.", "Il ferme la porte."],
    1,
    "L'imperatif sert a donner un ordre ou une consigne. Ici, le sujet n'est pas exprime.",
    "Cherchez si la phrase donne un ordre directement.",
  ],
  [
    "diag-conj-8",
    "Conjuguer etre au present",
    'Completez : "Nous ... en retard."',
    ["sommes", "etes", "serons"],
    0,
    'Au present de l\'indicatif, avec "nous", le verbe etre donne "sommes".',
    'Reprenez les tableaux de conjugaison des verbes "etre" et "avoir" si besoin.',
  ],
  [
    "diag-conj-9",
    "Conjuguer avoir au present",
    'Completez : "Vous ... raison."',
    ["avez", "avons", "aurez"],
    0,
    'Au present de l\'indicatif, avec "vous", le verbe avoir donne "avez".',
    'Associez chaque pronom sujet a sa forme la plus frequente du verbe "avoir".',
  ],
  [
    "diag-conj-10",
    "Reconnaitre le passe simple",
    "Quelle forme est au passe simple ?",
    ["il parla", "il parlait", "il parlera"],
    0,
    'La forme "parla" appartient au passe simple, temps frequent dans les recits ecrits.',
    "Reperez les formes breves en -a, -it ou -urent dans les textes narratifs.",
  ],
  [
    "diag-conj-11",
    "Identifier une valeur du present",
    'Dans "L\'eau bout a 100 degres", le present exprime :',
    ["Une habitude", "Une verite generale", "Une action passee"],
    1,
    "Le present enonce ici un fait scientifique valable de maniere generale.",
    "Demandez-vous si l'enonce vaut au-dela de la situation immediate.",
  ],
  [
    "diag-conj-12",
    "Distinguer infinitif et forme conjuguee",
    'Dans "Ils vont partir", "partir" est :',
    ["Un infinitif", "Un participe passe", "Un verbe a l'imparfait"],
    0,
    '"Partir" suit ici le semi-auxiliaire "vont". Il reste a l\'infinitif.',
    "Reperez si le verbe porte ou non une marque de personne.",
  ],
  [
    "diag-conj-13",
    "Choisir la bonne personne verbale",
    'Completez : "Tu ... vite."',
    ["courons", "cours", "court"],
    1,
    'Avec "tu", au present, le verbe "courir" donne "tu cours".',
    "Associez toujours le sujet a la terminaison correspondante.",
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
    'Le plus-que-parfait se forme avec un auxiliaire a l\'imparfait et un participe passe: "avaient compris".',
    "Reperez d'abord le temps de l'auxiliaire.",
  ],
  [
    "diag-conj-15",
    "Choisir le bon temps dans un recit",
    'Dans un recit au passe, "Soudain, il ... la porte" s\'ecrit plutot :',
    ["ouvrait", "ouvrira", "ouvrit"],
    2,
    'Le passe simple "ouvrit" marque ici un evenement ponctuel dans le recit.',
    "Distinguez les actions de premier plan des descriptions ou habitudes.",
  ],
];
const lexiqueTuples: QuestionTuple[] = [
    [
    "diag-lex-1",
    "Distinguer deux paronymes courants",
    "Quelle phrase emploie le terme exact ?",
    ["Il a prononcé une allocution devant ses collègues.", "Il a prononcé une allocation devant ses collègues.", "Les deux termes sont synonymes en contexte officiel."],
    0,
    "'Allocution' désigne un discours bref ; 'allocation' désigne une aide financière. Ces paronymes ont des sens entièrement différents.",
    "Mémorisez les paronymes par paires : allocution (discours) / allocation (aide financière).",
  ],
  [
    "diag-lex-2",
    "Utiliser l'étymologie pour déduire le sens d'un mot",
    "Le préfixe latin 'circum-' dans 'circonstance' indique :",
    ["Le dessous ou l'infériorité", "Le mouvement autour ou ce qui entoure", "La répétition ou le retour"],
    1,
    "'Circum' signifie 'autour' en latin. 'Circonstance' = ce qui entoure une action, son cadre.",
    "Connaître les préfixes latins (circum, sub, trans, ante, post…) permet de déduire le sens de nombreux mots savants.",
  ],
  [
    "diag-lex-3",
    "Identifier une métonymie",
    "'Boire un verre' pour dire 'boire le contenu d'un verre' est un exemple de :",
    ["Métaphore", "Métonymie", "Hyperbole"],
    1,
    "On désigne le contenu par le contenant. Cette substitution fondée sur une relation réelle est une métonymie.",
    "La métonymie repose sur une relation réelle entre les termes (contenant/contenu, cause/effet…) ; la métaphore sur une ressemblance.",
  ],
  [
    "diag-lex-4",
    "Distinguer litote et euphémisme",
    "'Il n'est pas sans talent' pour dire 'il est très talentueux' est une :",
    ["Hyperbole", "Euphémisme", "Litote"],
    2,
    "La litote dit moins pour suggérer davantage, souvent par double négation. 'N'est pas sans talent' insinue qu'il en a beaucoup.",
    "L'euphémisme atténue une réalité pénible ; la litote sous-exprime pour mieux suggérer le contraire en force.",
  ],
  [
    "diag-lex-5",
    "Identifier un archaïsme lexical courant",
    "Dans les textes juridiques et classiques, 'nonobstant' signifie :",
    ["Dorénavant, à partir de maintenant", "Malgré, en dépit de", "En résumé, pour conclure"],
    1,
    "'Nonobstant' est un archaïsme encore présent dans les textes juridiques : il signifie 'malgré'.",
    "Décomposez : 'non' + 'obstant' (de obstare, faire obstacle). Sens = malgré l'obstacle.",
  ],
[
    "diag-lex-6",
    "Identifier un prefixe",
    'Dans le mot "impossible", le prefixe "im-" marque :',
    ["L'opposition ou la negation", "La repetition", "La grandeur"],
    0,
    'Le prefixe "im-" inverse le sens du mot de base "possible".',
    "Reperez si le prefixe change le sens vers la negation, la repetition ou l'intensite.",
  ],
  [
    "diag-lex-7",
    "Identifier un suffixe",
    'Dans "douceur", le suffixe "-eur" sert ici a former :',
    ["Un verbe", "Un nom", "Un adjectif"],
    1,
    'Le suffixe transforme ici l\'adjectif "doux" en nom abstrait: "douceur".',
    "Demandez-vous a quelle classe grammaticale appartient le mot obtenu.",
  ],
  [
    "diag-lex-8",
    "Comprendre un mot en contexte",
    'Dans "un ton sec", le mot "sec" signifie surtout :',
    ["Mouille", "Brutal ou sans chaleur", "Fragile"],
    1,
    'Ici, "sec" ne parle pas d\'humidite mais de la maniere de parler, jugee rude.',
    "Cherchez si le contexte est concret ou figure.",
  ],
  [
    "diag-lex-9",
    "Distinguer homonymie et famille de mots",
    "Quel couple forme une famille de mots ?",
    ["mer / maire", "chant / chanter", "ver / verre"],
    1,
    '"Chant" et "chanter" partagent un meme radical et un lien de formation.',
    "Ne confondez pas ressemblance sonore et meme famille de mots.",
  ],
  [
    "diag-lex-10",
    "Reconnaitre un champ lexical",
    'Quel mot appartient au champ lexical de la mer ?',
    ["voile", "racine", "ardoise"],
    0,
    '"Voile" appartient ici a l\'univers marin, contrairement aux deux autres mots.',
    "Cherchez les mots qui renvoient a un meme domaine d'experience.",
  ],
  [
    "diag-lex-11",
    "Identifier un mot generique",
    'Le mot generique qui peut regrouper "chien", "chat" et "lapin" est :',
    ["animaux", "objets", "vehicules"],
    0,
    '"Animaux" est le terme generique qui englobe ces trois noms particuliers.',
    "Demandez-vous quel mot plus large peut contenir les autres.",
  ],
  [
    "diag-lex-12",
    "Distinguer sens propre et sens figure",
    'Dans "Cette nouvelle m\'a glace", l\'expression releve :',
    ["Du sens propre", "Du sens figure", "D'une definition scientifique"],
    1,
    "On ne parle pas ici de temperature reelle: le verbe est employe au sens figure.",
    "Testez si l'interpretation concrete reste possible dans le contexte.",
  ],
  [
    "diag-lex-13",
    "Identifier un verbe derive",
    'Quel verbe est derive du nom "courage" ?',
    ["encourager", "courir", "couvrir"],
    0,
    '"Encourager" est forme sur le nom "courage".',
    "Reperez le radical de base avant de comparer les mots.",
  ],
  [
    "diag-lex-14",
    "Reconnaitre une nuance de sens",
    'Quel mot est le plus proche de "observer" ?',
    ["regarder attentivement", "oublier", "fabriquer"],
    0,
    '"Observer" signifie regarder avec attention, en cherchant a remarquer quelque chose.',
    "Cherchez une reformulation proche, pas seulement un mot vaguement voisin.",
  ],
  [
    "diag-lex-15",
    "Identifier une expression imagee",
    'Dans "Il a une faim de loup", l\'expression signifie :',
    ["Il a tres faim", "Il a peur des loups", "Il chasse les loups"],
    0,
    "L'expression intensifie l'idee de faim. Elle ne parle pas reellement de loups.",
    "Quand une expression parait exageree, verifiez si elle fonctionne comme image.",
  ],
];
const analyseTuples: QuestionTuple[] = [
    [
    "diag-analyse-1",
    "Analyser la valeur d'une proposition participiale absolue",
    "Dans 'Les négociations ayant échoué, la grève fut déclarée', la proposition participiale exprime :",
    ["La condition", "La cause logique", "L'opposition"],
    1,
    "La proposition participiale absolue ('Les négociations ayant échoué') exprime ici la cause qui motive la déclaration de grève.",
    "Le contexte détermine la valeur (cause, condition, temps, opposition) d'une participiale absolue.",
  ],
  [
    "diag-analyse-2",
    "Identifier la fonction sujet réel d'une complétive",
    "Dans 'Il est regrettable qu'il soit absent', quelle est la fonction de 'qu'il soit absent' ?",
    ["COD du verbe impersonnel", "Sujet réel du verbe impersonnel", "Attribut du sujet apparent"],
    1,
    "Avec les verbes impersonnels, 'il' est le sujet grammatical apparent. La complétive 'qu'il soit absent' est le sujet réel.",
    "Repérez le sujet apparent 'il' et cherchez le sujet réel exprimé après le verbe impersonnel.",
  ],
  [
    "diag-analyse-3",
    "Identifier un discours indirect libre",
    "Dans 'Elle rentra chez elle. La journée avait été épuisante, vraiment.', le second énoncé est :",
    ["Un discours direct", "Un discours indirect libre", "Une narration omnisciente neutre"],
    1,
    "Le discours indirect libre intègre les pensées d'un personnage dans la narration sans marque introductive. L'adverbe 'vraiment' trahit la voix du personnage.",
    "Cherchez les adverbes ou interjections modaux ('vraiment', 'décidément'…) qui signalent une voix intérieure dans la narration.",
  ],
  [
    "diag-analyse-4",
    "Identifier le mode dans une subordonnée consécutive réelle",
    "Dans 'Il était si fatigué qu'il s'endormit aussitôt', le mode de 's'endormit' est :",
    ["Subjonctif (fait incertain)", "Conditionnel (fait hypothétique)", "Indicatif (fait présenté comme réel)"],
    2,
    "Quand la conséquence est un fait constaté, la subordonnée consécutive se met à l'indicatif.",
    "Avec 'si... que', 'tellement... que' : indicatif si la conséquence est un fait ; subjonctif si c'est une intensité attendue.",
  ],
  [
    "diag-analyse-5",
    "Analyser une apposition double coordonnée",
    "Dans 'Élève brillante mais imprévisible, elle déstabilisait parfois ses professeurs', le groupe détaché est :",
    ["Un attribut du COD", "Une apposition double coordonnée", "Un complément circonstanciel de manière"],
    1,
    "Le groupe 'Élève brillante mais imprévisible' est une apposition double (coordonnée par 'mais') détachée en tête de phrase.",
    "Une apposition peut elle-même être complexe et coordonner plusieurs éléments qualificatifs.",
  ],
[
    "diag-analyse-6",
    "Identifier une expansion du nom",
    'Dans "une maison tres ancienne", l\'expansion du nom est :',
    ["tres ancienne", "une", "maison"],
    0,
    'Le groupe adjectival "tres ancienne" enrichit le nom "maison".',
    "Distinguez le determinant, le nom noyau et ce qui le precise.",
  ],
  [
    "diag-analyse-7",
    "Identifier la proposition principale",
    'Dans "Quand la cloche sonne, les eleves sortent", la proposition principale est :',
    ["Quand la cloche sonne", "les eleves sortent", "quand la cloche"],
    1,
    'La proposition principale pourrait subsister seule: "les eleves sortent".',
    "Cherchez la proposition qui porte le sens principal de la phrase.",
  ],
  [
    "diag-analyse-8",
    "Identifier un complement du nom dans un GN",
    'Dans "le cahier de Marie", "de Marie" est :',
    ["Une epithete", "Un complement du nom", "Un COD"],
    1,
    'Le groupe prepositionnel enrichit le nom "cahier".',
    "Demandez-vous si le groupe depend d'un nom ou d'un verbe.",
  ],
  [
    "diag-analyse-9",
    "Identifier un mot subordonnant",
    'Dans "Je partirai si tu viens", la nature de "si" est :',
    ["Conjonction de subordination", "Pronom relatif", "Preposition"],
    0,
    '"Si" introduit ici une proposition subordonnee circonstancielle de condition.',
    "Reperez si le mot introduit une relation logique entre deux propositions.",
  ],
  [
    "diag-analyse-10",
    "Identifier le referent d'un pronom",
    'Dans "Paul parle a Hugo parce qu\'il est inquiet", le pronom "il" est :',
    ["Toujours Paul", "Toujours Hugo", "Ambigu sans contexte supplementaire"],
    2,
    "La phrase seule ne permet pas de trancher avec certitude. Le pronom peut renvoyer a l'un ou l'autre selon le contexte.",
    "N'imposez pas une interpretation si la phrase reste ambigue.",
  ],
  [
    "diag-analyse-11",
    "Identifier une phrase nominale",
    "Quelle phrase est nominale ?",
    ["Silence dans le couloir.", "Les eleves se taisent.", "Le maitre parle."],
    0,
    'La phrase nominale ne comporte pas de verbe conjugue. C\'est le cas de "Silence dans le couloir".',
    "Verifiez la presence ou l'absence d'un verbe conjugue.",
  ],
  [
    "diag-analyse-12",
    "Identifier une subordonnee relative",
    'Dans "La fille dont je parle arrive", "dont je parle" est :',
    ["Une subordonnee relative", "Une completive", "Une proposition principale"],
    0,
    'La proposition est introduite par le pronom relatif "dont" et complete le nom "fille".',
    "Reperez l'antecedent du pronom relatif pour confirmer l'analyse.",
  ],
  [
    "diag-analyse-13",
    "Distinguer phrase simple et complexe",
    'La phrase "Il ouvre la fenetre puis il ecoute" est :',
    ["Simple", "Complexe", "Nominale"],
    1,
    'Elle comporte deux verbes conjugues et donc deux propositions.',
    "Le nombre de verbes conjugues reste un bon premier indicateur.",
  ],
  [
    "diag-analyse-14",
    "Identifier une forme infinitive",
    'Dans "J\'entends les enfants chanter", "chanter" est :',
    ["Un infinitif", "Un participe passe", "Un adverbe"],
    0,
    '"Chanter" est ici un verbe a l\'infinitif, dependant du verbe "entends".',
    "Regardez si la forme verbale porte une marque de personne.",
  ],
  [
    "diag-analyse-15",
    "Identifier la nature d'un groupe",
    'Dans "Tres rapidement", la nature du groupe est :',
    ["Groupe nominal", "Groupe adverbial", "Groupe verbal"],
    1,
    'Le noyau du groupe est l\'adverbe "rapidement", intensifie par "tres".',
    "Cherchez la nature du mot noyau du groupe.",
  ],
];
const comprehensionTuples: QuestionTuple[] = [
    [
    "diag-comp-1",
    "Comprendre une inférence pragmatique",
    "Un personnage dit 'Je vais très bien' mais le texte précise qu'il serre les poings et détourne les yeux. La lecture correcte est :",
    ["Accepter la parole du personnage comme vraie", "Interpréter les indices non verbaux pour nuancer ou contredire la parole", "Ignorer les gestes, car seules les paroles comptent"],
    1,
    "L'inférence pragmatique consiste à dépasser le sens littéral grâce aux indices du contexte. Les gestes contredisent ici les mots.",
    "En lecture, les indices non verbaux, le ton et le contexte permettent souvent d'aller au-delà du sens littéral.",
  ],
  [
    "diag-comp-2",
    "Identifier l'ironie dans un texte",
    "'Quelle brillante idée de partir sous cet orage !' dit le narrateur sarcastique. Cette phrase emploie :",
    ["Une métaphore filée", "Une ironie", "Un euphémisme"],
    1,
    "L'ironie consiste à dire le contraire de ce qu'on pense en adoptant un ton ou un lexique qui ne correspond pas à la situation réelle.",
    "Cherchez le décalage entre le sens littéral et le contexte : si l'éloge ne colle pas à la réalité, il y a ironie.",
  ],
  [
    "diag-comp-3",
    "Comprendre la structure d'un texte argumentatif",
    "Dans un texte argumentatif bien construit, les arguments :",
    ["Sont juxtaposés sans lien logique", "Sont organisés pour renforcer progressivement la thèse", "Doivent toujours commencer par un contre-argument"],
    1,
    "Un texte argumentatif efficace organise ses arguments de manière progressive pour convaincre : du plus faible au plus fort, ou du général au particulier.",
    "Repérez les connecteurs logiques pour comprendre comment les arguments s'articulent et se hiérarchisent.",
  ],
  [
    "diag-comp-4",
    "Distinguer texte injonctif et texte explicatif",
    "Ce qui distingue fonctionnellement un texte injonctif d'un texte explicatif est :",
    ["L'injonctif utilise le présent ; l'explicatif utilise le passé", "L'injonctif vise à faire agir le lecteur ; l'explicatif vise à lui faire comprendre", "L'injonctif est toujours plus court que l'explicatif"],
    1,
    "Le texte injonctif (recette, mode d'emploi) engage à l'action. Le texte explicatif (documentaire, encyclopédie) cherche à faire comprendre.",
    "Interrogez-vous sur l'intention de communication : faire faire ? faire savoir ? faire ressentir ?",
  ],
  [
    "diag-comp-5",
    "Reconnaître un argument par analogie",
    "Un auteur compare l'apprentissage de la lecture à l'apprentissage du vélo pour expliquer le rôle de la pratique. Il emploie :",
    ["Un argument d'autorité", "Un argument par analogie", "Un contre-argument"],
    1,
    "L'argument par analogie établit une comparaison structurelle entre deux domaines différents pour rendre une idée plus claire ou convaincante.",
    "Repérez les comparaisons entre domaines différents : elles valident une idée par similitude de structure.",
  ],
[
    "diag-comp-6",
    "Comprendre la relation cause-consequence",
    'Dans "Comme il pleuvait, la sortie fut annulee", quel est la cause ?',
    ["La sortie", "La pluie", "L'annulation"],
    1,
    "La pluie explique ici l'annulation de la sortie.",
    "Reperez ce qui explique l'autre evenement.",
  ],
  [
    "diag-comp-7",
    "Identifier le sens d'un titre",
    'Un titre comme "Le dernier voyage" annonce plutot :',
    [
      "Un texte documentaire sur les outils",
      "Un recit centre sur un depart important",
      "Une recette de cuisine",
    ],
    1,
    'Le lexique du "voyage" et l\'adjectif "dernier" orientent vers un recit autour d\'un depart marquant.',
    "Utilisez le titre comme hypothese de lecture, puis confrontez-le au texte.",
  ],
  [
    "diag-comp-8",
    "Distinguer explicite et implicite",
    'Dans "Paul serra son manteau et pressa le pas", on peut inferer que :',
    ["Il a chaud", "Il fait probablement froid", "Il veut dormir"],
    1,
    'Serrer son manteau et accelerer sont des indices qui laissent penser qu\'il fait froid.',
    "Cherchez les indices convergents dans les gestes ou les reactions du personnage.",
  ],
  [
    "diag-comp-9",
    "Identifier un connecteur temporel",
    'Dans "D\'abord il observa, puis il repondit", le mot "puis" marque :',
    ["Une comparaison", "Une succession temporelle", "Une explication"],
    1,
    '"Puis" organise ici la succession des actions dans le temps.',
    "Reperez si le connecteur relie des idees, des causes ou des etapes chronologiques.",
  ],
  [
    "diag-comp-10",
    "Reperer l'intention d'un personnage",
    'Dans "Elle parla tout bas pour ne pas reveiller son frere", pourquoi parle-t-elle tout bas ?',
    ["Pour gagner du temps", "Pour ne pas le reveiller", "Pour se mettre en colere"],
    1,
    'La proposition finale introduite par "pour" donne explicitement l\'intention du personnage.',
    "Reperez les tournures de but comme 'pour' ou 'afin de'.",
  ],
  [
    "diag-comp-11",
    "Identifier le genre d'un texte tres court",
    "Un texte qui explique comment planter des graines est plutot :",
    ["Narratif", "Injonctif ou explicatif", "Poetique"],
    1,
    "Un texte qui donne des etapes ou des consignes releve d'un fonctionnement injonctif ou explicatif.",
    "Interrogez-vous sur la fonction du texte: raconter, expliquer ou faire agir.",
  ],
  [
    "diag-comp-12",
    "Comprendre l'effet d'un connecteur",
    'Dans "Il etait fatigue, mais il continua", "mais" montre que :',
    [
      "La deuxieme action va dans le meme sens",
      "La deuxieme action surprend par rapport a la premiere",
      "La phrase donne une definition",
    ],
    1,
    'Le connecteur "mais" introduit une rupture avec ce qu\'on attendait.',
    "Demandez-vous si le connecteur confirme ou contrarie l'attente du lecteur.",
  ],
  [
    "diag-comp-13",
    "Identifier une reformulation",
    'Dans "Le givre recouvrait la pelouse, c\'est-a-dire une fine couche de glace", l\'expression "c\'est-a-dire" annonce :',
    ["Une opposition", "Une reformulation", "Une conclusion"],
    1,
    "La seconde partie explicite la premiere. Il s'agit d'une reformulation.",
    "Reperez les marqueurs qui expliquent autrement une idee deja dite.",
  ],
  [
    "diag-comp-14",
    "Comprendre un sentiment implicite",
    'Dans "Maya serrait les poings et evitait les regards", on peut penser qu\'elle est plutot :',
    ["Apaisee", "Tendue ou en colere", "Endormie"],
    1,
    "Les gestes decrits renvoient a une tension emotionnelle.",
    "Appuyez-vous sur les gestes, le corps et les paroles pour inferrer l'etat interieur.",
  ],
  [
    "diag-comp-15",
    "Identifier le resume le plus fidele",
    "Pour resumer un texte, il faut surtout :",
    [
      "Recopier toutes les phrases importantes",
      "Garder les idees essentielles en les reformulant",
      "Ne conserver que les details amusants",
    ],
    1,
    "Un resume retient l'essentiel du texte et le reformule sans l'accumulation des details secondaires.",
    "Distinguez l'essentiel, le secondaire et l'exemple.",
  ],
];
const didactiqueTuples: QuestionTuple[] = [
    [
    "diag-did-1",
    "Comprendre la zone proximale de développement",
    "La zone proximale de développement (Vygotski) désigne :",
    ["Ce que l'élève sait déjà faire seul", "L'écart entre ce que l'élève fait seul et ce qu'il peut faire avec l'aide d'autrui", "Le niveau maximal qu'un élève peut atteindre"],
    1,
    "La ZPD est l'espace entre le niveau actuel (ce que l'élève fait seul) et le niveau potentiel (ce qu'il accomplit avec guidage).",
    "Retenez : la ZPD justifie l'importance du guidage pédagogique et du travail en groupe hétérogène.",
  ],
  [
    "diag-did-2",
    "Identifier le concept d'étayage selon Bruner",
    "L'étayage en pédagogie (Bruner) consiste à :",
    ["Évaluer l'élève systématiquement à chaque étape", "Adapter temporairement les aides pour permettre à l'élève d'accomplir ce qu'il ne peut pas encore faire seul", "Simplifier définitivement la tâche"],
    1,
    "L'étayage est un soutien temporaire et progressivement retiré, qui permet à l'élève de travailler dans sa ZPD.",
    "Distinguez étayage (aide temporaire, retrait progressif) et différenciation (adaptation durable des objectifs ou outils).",
  ],
  [
    "diag-did-3",
    "Distinguer décodage et compréhension en lecture",
    "Un élève déchiffre correctement tous les mots mais ne comprend pas le texte. Cela illustre que :",
    ["Il n'a pas encore acquis le principe alphabétique", "Le décodage automatisé est nécessaire mais insuffisant pour la compréhension", "La compréhension orale suffit à comprendre un texte écrit"],
    1,
    "La lecture experte requiert deux composantes : le décodage (identification des mots) et la compréhension (construction du sens). Les deux sont nécessaires.",
    "Référez-vous au modèle de Gough et Tunmer ('Simple View of Reading') : compréhension = décodage × compréhension du langage.",
  ],
  [
    "diag-did-4",
    "Comprendre le rôle des représentations initiales des élèves",
    "Avant d'enseigner une notion, explorer les représentations initiales des élèves permet principalement de :",
    ["Éviter que les élèves fassent des erreurs à l'avenir", "Repérer les obstacles et les points d'appui pour mieux cibler l'enseignement", "Classer les élèves par niveau avant d'enseigner"],
    1,
    "Les représentations initiales sont à la fois des obstacles (si erronées) et des points d'appui (si partiellement correctes). Les identifier permet d'adapter l'enseignement.",
    "En didactique, l'erreur n'est pas un manque mais une étape révélatrice de la logique de l'élève.",
  ],
  [
    "diag-did-5",
    "Identifier une pratique d'enseignement explicite",
    "L'enseignement explicite d'une stratégie de lecture consiste principalement à :",
    ["Laisser les élèves découvrir la stratégie par eux-mêmes en silence", "Modéliser la stratégie à voix haute, guider les élèves, puis les laisser l'appliquer de façon autonome", "Donner une liste de règles à mémoriser sans les contextualiser"],
    1,
    "L'enseignement explicite suit trois phases : modelage (je fais en pensant à voix haute), pratique guidée, pratique autonome.",
    "Retenez la progression : 'je fais' → 'on fait ensemble' → 'tu fais seul'.",
  ],
[
    "diag-did-6",
    "Comprendre l'interet de la lecture a voix haute du maitre",
    "La lecture magistrale reguliere sert notamment a :",
    [
      "Remplacer toutes les lectures des eleves",
      "Nourrir la comprehension, le vocabulaire et la culture de l'ecrit",
      "Eviter les echanges autour des textes",
    ],
    1,
    "La lecture a voix haute du maitre donne acces a des textes plus riches et soutient la comprehension.",
    "Cherchez toujours l'effet d'apprentissage, pas seulement l'organisation pratique.",
  ],
  [
    "diag-did-7",
    "Identifier une pratique d'ecriture efficace",
    "Pour aider des eleves a produire un texte, il est pertinent de :",
    [
      "Leur demander d'ecrire directement sans preparation",
      "Prevoir un temps de planification, de mise en texte puis de revision",
      "Corriger tout a leur place des la premiere phrase",
    ],
    1,
    "La production d'ecrit gagne a etre pensee comme un processus en plusieurs etapes.",
    "Reperez les dispositifs qui rendent visibles les etapes de l'ecriture.",
  ],
  [
    "diag-did-8",
    "Comprendre l'evaluation formative",
    "Une evaluation formative sert surtout a :",
    [
      "Classer definitivement les eleves",
      "Ajuster l'enseignement et aider l'eleve a progresser",
      "Supprimer toute correction",
    ],
    1,
    "L'evaluation formative sert a faire progresser, pas seulement a sanctionner.",
    "Demandez-vous si l'evaluation informe la suite des apprentissages.",
  ],
  [
    "diag-did-9",
    "Identifier l'interet de la dictee negociee",
    "La dictee negociee est interessante car elle permet surtout de :",
    [
      "Faire copier plus vite",
      "Verbaliser les raisonnements orthographiques",
      "Eviter toute justification",
    ],
    1,
    "La confrontation des solutions pousse les eleves a expliciter leurs choix orthographiques.",
    "Cherchez les dispositifs qui rendent les raisonnements visibles.",
  ],
  [
    "diag-did-10",
    "Reconnaitre une aide efficace en vocabulaire",
    "Pour enseigner un mot nouveau durablement, il vaut mieux :",
    [
      "Le faire recopier une seule fois",
      "Le rencontrer dans plusieurs contextes et le reutiliser",
      "Le faire memoriser sans phrase",
    ],
    1,
    "Le vocabulaire se stabilise mieux par des rencontres multiples et des reutilisations variees.",
    "Reperez les situations qui multiplient les usages du mot.",
  ],
  [
    "diag-did-11",
    "Comprendre la fluence",
    "La fluence en lecture designe surtout :",
    [
      "La vitesse seule",
      "Une lecture suffisamment precise, rapide et expressive pour soutenir la comprehension",
      "La capacite a recopier sans erreur",
    ],
    1,
    "La fluence ne se reduit pas a aller vite: elle articule exactitude, rythme et prosodie.",
    "Mefiez-vous des definitions trop reductrices d'un apprentissage complexe.",
  ],
  [
    "diag-did-12",
    "Identifier un obstacle d'apprentissage",
    'Si un eleve confond souvent "et" et "est", il est utile de travailler :',
    [
      "Des procedures de distinction grammaticale en contexte",
      "Seulement la copie du mot",
      "Uniquement l'ordre alphabetique",
    ],
    0,
    "L'eleve a besoin de criteres pour distinguer les valeurs grammaticales des homophones.",
    "Cherchez le savoir qui manque a l'eleve, pas seulement la forme a memoriser.",
  ],
  [
    "diag-did-13",
    "Comprendre la place de l'oral",
    "Dans l'apprentissage du francais, l'oral est important parce qu'il :",
    [
      "Est secondaire par rapport a l'ecrit",
      "Soutient la comprehension, le lexique et la formulation de la pensee",
      "Ne sert qu'en maternelle",
    ],
    1,
    "L'oral joue un role central dans les apprentissages langagiers, de la comprehension a la production.",
    "Ne cloisonnez pas trop vite oral et ecrit.",
  ],
  [
    "diag-did-14",
    "Reconnaitre un support pertinent en etude de la langue",
    "Pour travailler une notion grammaticale, un corpus de phrases variees est utile car il permet de :",
    [
      "Rendre visible une regularite et des contrastes",
      "Eviter toute reflexion",
      "Remplacer la manipulation par la simple copie",
    ],
    0,
    "Un corpus bien choisi fait apparaitre ce qui varie et ce qui reste stable dans la notion etudiee.",
    "Cherchez les situations qui permettent de comparer et justifier.",
  ],
  [
    "diag-did-15",
    "Comprendre la progressivite des apprentissages",
    "Une progression efficace en francais consiste surtout a :",
    [
      "Passer tres vite d'une notion a l'autre sans retour",
      "Revenir regulierement sur les notions dans des situations variees",
      "Travailler une notion une seule fois dans l'annee",
    ],
    1,
    "Les apprentissages langagiers demandent des reprises, des entrainements et des changements de contexte.",
    "Cherchez une logique de reprise plutot qu'un simple parcours lineaire.",
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
