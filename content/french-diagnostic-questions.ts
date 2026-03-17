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
  choices: [string, string, string, string],
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
    ["Un groupe nominal COD", "Une proposition subordonnée complétive", "Une proposition infinitive", "Un groupe verbal apposé"],
    2,
    "Ce groupe a son propre sujet (\"les enfants\") ET un verbe à l'infinitif (\"chanter\") — c'est une proposition infinitive, COD du verbe de perception \"entendre\". Deux éléments à repérer ensemble !",
    "Cherche d'abord si le groupe a son propre sujet exprimé. Si oui → proposition infinitive. Si non → infinitif COD simple.",
  ],
  [
    "diag-gram-2",
    "Distinguer apposition et attribut du sujet",
    "Dans \"Médecin renommé, il comprenait mieux la souffrance\", la fonction de \"Médecin renommé\" est :",
    ["Apposition au sujet détachée", "Attribut du sujet", "Complément circonstanciel de cause", "Épithète détachée"],
    0,
    "Attention ici — ce groupe nominal est détaché en tête de phrase et apporte une précision sur le sujet \"il\". C'est une apposition, pas un attribut : un attribut exige un verbe d'état, il n'y en a pas !",
    "Distingue bien les deux : l'apposition donne une précision sans verbe d'état, l'attribut du sujet est relié par être, sembler, paraître…",
  ],
  [
    "diag-gram-3",
    "Identifier un sujet inversé dans une proposition relative",
    "Dans \"le problème que redoutait l'enseignante\", quelle est la fonction de \"l'enseignante\" ?",
    ["Sujet inversé du verbe \"redoutait\"", "Complément du nom \"problème\"", "Complément d'objet indirect", "Complément d'agent"],
    0,
    "Oui, et c'est logique : le pronom relatif \"que\" occupe déjà la place de COD, donc le sujet réel — \"l'enseignante\" — se retrouve après le verbe. C'est un sujet inversé.",
    "Quand un pronom relatif précède le verbe, cherche le sujet après le verbe — il peut être inversé.",
  ],
  [
    "diag-gram-4",
    "Identifier une proposition participiale absolue",
    "Dans \"Le cours terminé, les élèves s'en allèrent\", \"Le cours terminé\" est :",
    ["Un groupe nominal en apposition", "Une proposition participiale absolue", "Une subordonnée circonstancielle de temps", "Un participe passé épithète"],
    1,
    "C'est la règle clé : une participiale absolue a son propre sujet (\"le cours\"), distinct du sujet de la principale. Elle exprime une circonstance et vaut comme un CC.",
    "Une participiale absolue a toujours son propre sujet exprimé — c'est ce qui la distingue du participe épithète ou attribut.",
  ],
  [
    "diag-gram-5",
    "Analyser le sujet réel d'un verbe impersonnel",
    "Dans \"Il est indispensable de travailler régulièrement\", quelle est la fonction de \"de travailler régulièrement\" ?",
    ["Sujet réel du verbe impersonnel", "COD du verbe impersonnel", "Attribut du sujet apparent", "Complément circonstanciel de manière"],
    0,
    "Exactement ! Le \"il\" est un sujet grammatical apparent, un simple fantôme. Le groupe infinitif \"de travailler régulièrement\" est le vrai sujet — le sujet réel du verbe impersonnel.",
    "Avec un verbe impersonnel, cherche systématiquement le sujet réel exprimé après le verbe.",
  ],
  [
    "diag-gram-6",
    "Identifier un complément d'agent",
    'Dans "La décision a été prise par le directeur", "par le directeur" est :',
    ["Un complément circonstanciel de cause", "Un complément d'objet indirect", "Un complément d'agent", "Un complément circonstanciel de moyen"],
    2,
    "Dans une phrase passive, le complément d'agent désigne celui qui accomplit l'action — ici \"le directeur\" est bien l'auteur de la décision. Il est introduit par \"par\" (ou parfois \"de\").",
    "Repère la voix passive (être + participe passé), puis cherche le groupe introduit par \"par\" — c'est le complément d'agent.",
  ],
  [
    "diag-gram-7",
    "Distinguer épithète liée et apposition détachée",
    'Dans "Le vieil homme, fatigué, s\'arrêta", la fonction de "fatigué" est :',
    ["Apposition détachée", "Épithète liée au nom", "Attribut du sujet", "Complément du nom"],
    0,
    "\"Fatigué\" est isolé par des virgules et détaché du nom — c'est une apposition. L'épithète, elle, s'intègre directement dans le groupe nominal sans pause.",
    "Une apposition est toujours détachée par une virgule ; l'épithète est soudée au nom sans pause.",
  ],
  [
    "diag-gram-8",
    "Identifier la voix passive",
    "Quelle phrase est à la voix passive ?",
    ["Les poubelles sont renversées par le vent.", "Le vent renverse les poubelles.", "Les poubelles se renversent.", "Les poubelles semblent renversées."],
    0,
    "La voix passive inverse sujet et agent : \"les poubelles\" deviennent sujet alors qu'elles subissent l'action. On la reconnaît au schéma : auxiliaire être + participe passé + complément d'agent introduit par \"par\".",
    "Distingue voix passive (être + PP + par) du verbe pronominal passif et de l'attribut du sujet — les trois peuvent se ressembler.",
  ],
  [
    "diag-gram-9",
    "Identifier un attribut du COD",
    'Dans "Les jurés ont déclaré l\'accusé coupable", la fonction de "coupable" est :',
    ["Apposition au COD", "Épithète du COD", "Attribut du COD", "Attribut du sujet"],
    2,
    "\"Coupable\" attribue une qualité au COD \"l'accusé\" via le verbe d'opinion \"déclarer\" — c'est un attribut du COD. Il ne qualifie pas le sujet, il est relié au complément d'objet.",
    "L'attribut du COD accompagne des verbes comme trouver, juger, déclarer, rendre, élire… et qualifie leur complément d'objet direct.",
  ],
  [
    "diag-gram-10",
    "Distinguer relative déterminative et explicative",
    'Dans "Les étudiants qui travaillent réussissent", la subordonnée relative est :',
    ["Explicative — elle ajoute une information sur un référent déjà identifié", "Déterminative — elle restreint l'ensemble désigné par le nom", "Complétive — elle est COD du verbe principal", "Appositive — elle remplace un antécédent nominal"],
    1,
    "La relative \"qui travaillent\" identifie un sous-ensemble : pas tous les étudiants, seulement ceux qui travaillent. C'est une relative déterminative, indispensable au sens.",
    "Relative déterminative = sans virgule, elle restreint le référent. Relative explicative = entre virgules, elle ajoute une précision sur un référent déjà identifié.",
  ],
  [
    "diag-gram-11",
    "Identifier un verbe",
    'Dans "Les enfants joueront demain", quel est le verbe conjugué ?',
    ["Les", "joueront", "enfants", "demain"],
    1,
    "\"Joueront\" porte les marques de temps (futur) et de personne (3e pluriel) — c'est le verbe conjugué de la phrase. Les deux autres mots ne varient pas.",
    "Repère le mot qui varie selon le temps ou la personne.",
  ],
  [
    "diag-gram-12",
    "Identifier le noyau d'un groupe nominal",
    'Dans "Le petit chat blanc", le noyau du groupe nominal est :',
    ["chat", "petit", "blanc", "Le"],
    0,
    "Le nom noyau du groupe nominal, c'est \"chat\" — les adjectifs \"petit\" et \"blanc\" viennent le préciser, mais c'est lui le patron du groupe.",
    "Dans un groupe nominal, cherche le mot qui donne son identité au groupe.",
  ],
  [
    "diag-gram-13",
    "Distinguer phrase simple et phrase complexe",
    'La phrase "Le vent souffle et la pluie tombe" est :',
    ["Une phrase nominale", "Une phrase simple à deux sujets", "Une phrase complexe", "Une phrase interrogative"],
    2,
    "Elle contient deux verbes conjugués (\"souffle\" et \"tombe\"), donc deux propositions — c'est une phrase complexe. Une proposition = un verbe conjugué.",
    "Compte les verbes conjugués pour commencer l'analyse.",
  ],
  [
    "diag-gram-14",
    "Identifier un complément du verbe",
    'Dans "Elle range ses cahiers", la fonction de "ses cahiers" est :',
    ["COI", "CC de temps", "Sujet réel", "COD"],
    3,
    "\"Ses cahiers\" complète directement le verbe \"range\" sans préposition — c'est un COD. Tu peux le vérifier : elle range quoi ? Ses cahiers.",
    "Teste si le groupe vient directement après le verbe, sans préposition.",
  ],
  [
    "diag-gram-15",
    "Identifier une phrase interrogative",
    "Quelle phrase est interrogative ?",
    ["Tu fermes la porte.", "Ferme la porte.", "Fermes-tu la porte ?", "La porte est fermée."],
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
    ["des robes vert clair", "des robes vertes claires", "des robes vert-clairs", "des robes verts clairs"],
    0,
    "C'est la règle clé : un adjectif de couleur composé de deux mots est invariable. On écrit \"vert clair\" — sans accord ET sans trait d'union.",
    "Dès qu'une couleur est nuancée par un autre adjectif ou un nom (vert clair, bleu marine…), elle devient invariable.",
  ],
  [
    "diag-ortho-2",
    "Former le pluriel d'un nom composé verbe + nom",
    "Quel pluriel est correct pour \"un abat-jour\" ?",
    ["des abats-jour", "des abat-jours", "des abats-jours", "des abat-jour"],
    3,
    "Attention ici — dans un nom composé verbe + nom, le verbe est toujours invariable. Et \"jour\" désigne un complément générique qui reste lui aussi invariable : des abat-jour.",
    "Analyse la structure du nom composé (V+N, N+N, N+Prép+N) pour décider quel élément s'accorde.",
  ],
  [
    "diag-ortho-3",
    "Accorder le participe passé avec le pronom 'en'",
    "Dans 'Des romans, j'en ai lu beaucoup', pourquoi 'lu' reste-t-il invariable ?",
    ["Le pronom 'en' est un COD sans genre ni nombre précis", "Le participe passé avec avoir ne s'accorde jamais", "Le sujet est masculin singulier", "Le verbe lire est toujours invariable"],
    0,
    "Oui, et c'est logique : quand le COD est le pronom \"en\", le participe passé reste invariable — \"en\" est un pronom partitif, il n'a pas de genre ni de nombre précis.",
    "Distingue \"en\" (pas d'accord) des autres pronoms COD antéposés comme \"les\", \"la\" ou \"que\" (accord obligatoire).",
  ],
  [
    "diag-ortho-4",
    "Appliquer les rectifications orthographiques de 1990",
    "Selon les rectifications de 1990, quelle graphie est recommandée ?",
    ["un nenufar", "un nénuphar", "Les deux formes sont équivalentes", "un nénufar"],
    3,
    "Les rectifications de 1990 simplifient certaines graphies : \"nénuphar\" devient \"nénufar\" pour aligner l'orthographe sur la prononciation. La réforme touche aussi les accents circonflexes et les mots composés.",
    "Les rectifications de 1990 suppriment certains accents circonflexes, soudent des mots composés et simplifient des graphies étymologiques irrégulières.",
  ],
  [
    "diag-ortho-5",
    "Accorder un adjectif de couleur issu d'un nom commun",
    "Quelle écriture est correcte ?",
    ["des yeux marrons", "des yeux de marron", "des yeux marron", "des yeux marrones"],
    2,
    "\"Marron\" vient d'un nom commun, pas d'un adjectif — et les noms utilisés comme couleur sont invariables. Donc : des yeux marron, sans s.",
    "Les noms de couleur (marron, orange, saumon, crème…) sont invariables quand ils qualifient un nom, contrairement aux adjectifs de couleur simples (rouge, bleu…).",
  ],
  [
    "diag-ortho-6",
    "Choisir ces ou ses",
    'Complétez correctement : "Paul range ____ affaires."',
    ["c'est", "ces", "ses", "s'est"],
    2,
    "\"Ses\" est ici un déterminant possessif — ce sont les affaires de Paul. \"Ces\" désignerait des affaires précises dont on parlerait ensemble.",
    "Demande-toi si le mot exprime la possession ou la désignation.",
  ],
  [
    "diag-ortho-7",
    "Choisir son ou sont",
    'Complétez correctement : "Les cahiers ____ prêts."',
    ["son", "sont", "s'ont", "sons"],
    1,
    "\"Sont\" est le verbe être au présent, à la 3e personne du pluriel. Astuce : si tu peux remplacer par \"étaient\", c'est le verbe — écris \"sont\".",
    "Teste le remplacement : si \"étaient\" fonctionne → c'est le verbe \"sont\". Sinon → c'est \"son\", déterminant possessif.",
  ],
  [
    "diag-ortho-8",
    "Distinguer se et ce",
    'Complétez correctement : "Il ____ lève tôt."',
    ["ce", "se", "ceux", "s'est"],
    1,
    "\"Se\" fait partie du verbe pronominal \"se lever\" — il est collé au verbe. Ce n'est pas un déterminant ou un pronom démonstratif.",
    "Repère si le mot est collé à un verbe pronominal.",
  ],
  [
    "diag-ortho-9",
    "Choisir l'infinitif ou le participe passé",
    'Complétez correctement : "Il faut ____ la consigne."',
    ["relis", "relisant", "relu", "relire"],
    3,
    "Après \"il faut\", on attend toujours un infinitif — la bonne forme est \"relire\". Le participe passé \"relu\" n'a rien à faire ici.",
    "Après un verbe comme falloir, vérifie si l'infinitif est attendu.",
  ],
  [
    "diag-ortho-10",
    "Accorder le participe passé avec être",
    "Quelle phrase est correcte ?",
    ["Elles sont parties.", "Elles sont partis.", "Elles sont parti.", "Elles sont partie."],
    0,
    "Avec l'auxiliaire être, le participe passé s'accorde avec le sujet — \"elles\" est féminin pluriel, donc \"parties\". Deux lettres supplémentaires : e et s.",
    "Repère d'abord l'auxiliaire avant de penser à l'accord.",
  ],
  [
    "diag-ortho-11",
    "Choisir ou et où accentué",
    'Complétez correctement : "Veux-tu du thé ____ du café ?" ',
    ["d'où", "où", "ou", "oû"],
    2,
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
      "Les bruits des chaises perturbe la classe.",
      "Le bruit des chaises pertubes la classe.",
    ],
    1,
    "Attention ici — le sujet, c'est \"bruit\", au singulier. \"Des chaises\" n'est qu'un complément du nom, il ne commande pas l'accord du verbe.",
    "Isole le noyau du sujet avant de choisir la terminaison.",
  ],
  [
    "diag-ortho-13",
    "Choisir leur ou leurs",
    'Complétez correctement : "Les élèves prennent ____ cahiers."',
    ["leurss", "leure", "leur", "leurs"],
    3,
    "\"Leurs\" s'emploie ici car chaque élève prend plusieurs cahiers — le nom \"cahiers\" est au pluriel, donc \"leurs\" prend un s.",
    "Regarde si le nom qui suit est singulier ou pluriel.",
  ],
  [
    "diag-ortho-14",
    "Distinguer on et ont",
    'Complétez correctement : "____ a terminé l\'exercice."',
    ["Ont", "Onn", "On", "On'"],
    2,
    "\"On\" est ici le pronom indéfini sujet du verbe \"a terminé\". \"Ont\" est la forme du verbe avoir — si tu peux remplacer par \"ils ont\", alors c'est \"ont\".",
    "Demande-toi si le mot joue le rôle de sujet ou d'auxiliaire.",
  ],
  [
    "diag-ortho-15",
    "Accorder un adjectif attribut",
    "Quelle phrase est correcte ?",
    ["Ces fleurs sont bel.", "Ces fleurs sont belles.", "Ces fleurs sont beau.", "Ces fleurs sont beaux."],
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
    ["Le subjonctif plus-que-parfait valant conditionnel passé", "Le plus-que-parfait de l'indicatif", "L'imparfait du subjonctif", "Le conditionnel passé 1re forme"],
    0,
    "Dans les textes littéraires soutenus, le subjonctif plus-que-parfait peut remplacer le conditionnel passé — c'est le conditionnel passé 2e forme. \"Eût su\" = \"aurait su\".",
    "Retiens : dans un texte littéraire, \"eût + participe passé\" = conditionnel passé 2e forme.",
  ],
  [
    "diag-conj-2",
    "Comprendre la concordance des temps au discours indirect",
    "Dans 'Il affirmait qu'elle viendrait le lendemain', la forme 'viendrait' exprime :",
    ["Un souhait formulé au présent", "Une hypothèse avec condition", "Le futur dans le passé (futur du passé)", "Une obligation modale"],
    2,
    "Au discours indirect avec un verbe introducteur au passé, le futur simple se transforme en conditionnel présent — c'est le futur du passé. Le sens reste \"elle va venir\".",
    "Règle de concordance : discours direct (futur) → discours indirect au passé (conditionnel présent).",
  ],
  [
    "diag-conj-3",
    "Choisir la forme correcte du subjonctif passé",
    "Complétez : 'Bien qu'il ___ à l'heure, la réunion avait déjà commencé.'",
    ["fût arrivé", "était arrivé", "est arrivé", "soit arrivé"],
    3,
    "Après \"bien que\", le subjonctif est obligatoire. Et comme l'action est antérieure à la principale, tu emploies le subjonctif passé : \"soit arrivé\".",
    "Subjonctif passé = auxiliaire au subjonctif présent + participe passé : il marque une antériorité par rapport à la principale.",
  ],
  [
    "diag-conj-4",
    "Identifier la valeur de l'imparfait dans un système hypothétique oral",
    "Dans 'Si tu m'aidais, on finissait plus vite' (registre oral), l'imparfait de la principale exprime :",
    ["Un conditionnel présent à valeur hypothétique", "Une habitude révolue dans le passé", "Un fait accompli antérieur", "Une action simultanée au passé"],
    0,
    "Dans le registre oral familier, l'imparfait peut se substituer au conditionnel présent dans la principale d'un système hypothétique — c'est courant à l'oral, même si ça reste du non-standard.",
    "Distingue l'imparfait descriptif ou d'habitude de l'imparfait substitué au conditionnel dans les structures hypothétiques.",
  ],
  [
    "diag-conj-5",
    "Identifier le passé simple d'un verbe irrégulier",
    "Quelle forme est le passé simple de 'résoudre' à la 3e personne du singulier ?",
    ["résoudît", "résolut", "résolva", "résoludra"],
    1,
    "Le passé simple de \"résoudre\" est irrégulier — \"il résolut\". Les verbes en -soudre ont un passé simple en -solut/-solus. Pas de -a, pas de -dra.",
    "Mémorise les passés simples irréguliers fréquents : résoudre → résolut, naître → naquit, vaincre → vainquit.",
  ],
  [
    "diag-conj-6",
    "Choisir une forme de passé composé",
    "Quelle phrase est au passé composé ?",
    ["Elle a chanté hier.", "Elle chante depuis une heure.", "Elle chantait hier.", "Elle chanta hier."],
    0,
    "Le passé composé associe un auxiliaire conjugué et un participe passé — \"a chanté\". Les deux autres sont présent, imparfait et passé simple.",
    "Cherche le duo auxiliaire + participe passé.",
  ],
  [
    "diag-conj-7",
    "Identifier l'impératif",
    "Quelle forme est à l'impératif ?",
    ["Tu fermes la porte.", "Il ferme la porte.", "Ferme la porte.", "Vous fermez la porte."],
    2,
    "L'impératif sert à donner un ordre ou une consigne — et c'est sa marque principale : le sujet n'est pas exprimé. \"Ferme la porte\" : ordre direct, sans \"tu\".",
    "Cherche si la phrase donne un ordre directement, sans sujet exprimé.",
  ],
  [
    "diag-conj-8",
    "Conjuguer être au présent",
    'Complétez : "Nous ... en retard."',
    ["serons", "êtes", "sommes", "étions"],
    2,
    "Au présent de l'indicatif, avec \"nous\", le verbe être donne \"sommes\". C'est une forme à mémoriser, elle ne suit pas de règle régulière.",
    "Reprends les tableaux de conjugaison des verbes \"être\" et \"avoir\" si besoin — ils sont incontournables.",
  ],
  [
    "diag-conj-9",
    "Conjuguer avoir au présent",
    'Complétez : "Vous ... raison."',
    ["avons", "aurez", "aviez", "avez"],
    3,
    "Au présent de l'indicatif, avec \"vous\", le verbe avoir donne \"avez\". Associe chaque pronom sujet à sa forme — c'est du cœur du programme.",
    "Associe chaque pronom sujet à sa forme la plus fréquente du verbe \"avoir\".",
  ],
  [
    "diag-conj-10",
    "Reconnaître le passé simple",
    "Quelle forme est au passé simple ?",
    ["il parlait", "il parlera", "il parle", "il parla"],
    3,
    "\"Parla\" appartient au passé simple — c'est le temps du récit écrit, celui des actions ponctuelles. \"Parlait\" est imparfait, \"parlera\" est futur.",
    "Repère les formes brèves en -a, -it ou -urent dans les textes narratifs.",
  ],
  [
    "diag-conj-11",
    "Identifier une valeur du présent",
    'Dans "L\'eau bout à 100 degrés", le présent exprime :',
    ["Une action en cours", "Une vérité générale", "Une habitude", "Une action passée"],
    1,
    "Exactement ! Ce présent énonce un fait scientifique valable en tout temps — c'est le présent de vérité générale. Pas une habitude, pas une action en cours.",
    "Demande-toi si l'énoncé vaut au-delà de la situation immédiate.",
  ],
  [
    "diag-conj-12",
    "Distinguer infinitif et forme conjuguée",
    'Dans "Ils vont partir", "partir" est :',
    ["Un participe passé", "Un verbe à l'imparfait", "Un verbe conjugué au présent", "Un infinitif"],
    3,
    "\"Partir\" suit ici le semi-auxiliaire \"vont\" — il reste à l'infinitif, sans marque de personne. C'est la forme non conjuguée du verbe.",
    "Repère si la forme verbale porte ou non une marque de personne.",
  ],
  [
    "diag-conj-13",
    "Choisir la bonne personne verbale",
    'Complétez : "Tu ... vite."',
    ["courons", "cours", "courez", "court"],
    1,
    "Avec \"tu\", au présent, le verbe \"courir\" donne \"tu cours\". \"Courons\" c'est nous, \"court\" c'est il/elle.",
    "Associe toujours le sujet à la terminaison correspondante.",
  ],
  [
    "diag-conj-14",
    "Identifier le plus-que-parfait",
    "Quelle phrase est au plus-que-parfait ?",
    [
      "Ils comprennent la consigne.",
      "Ils comprendront la consigne.",
      "Ils avaient compris la consigne.",
      "Ils ont compris la consigne.",
    ],
    2,
    "Le plus-que-parfait se forme avec un auxiliaire à l'imparfait et un participe passé — \"avaient compris\". C'est le temps de l'action accomplie avant une autre action passée.",
    "Repère d'abord le temps de l'auxiliaire.",
  ],
  [
    "diag-conj-15",
    "Choisir le bon temps dans un récit",
    'Dans un récit au passé, "Soudain, il ... la porte" s\'écrit plutôt :',
    ["ouvrait", "ouvrira", "avait ouvert", "ouvrit"],
    3,
    "Le passé simple \"ouvrit\" marque ici un événement ponctuel dans le récit — c'est l'action de premier plan. \"Ouvrait\" serait une description ou une habitude.",
    "Distingue les actions de premier plan (passé simple) des descriptions ou habitudes (imparfait).",
  ],
];
const lexiqueTuples: QuestionTuple[] = [
  [
    "diag-lex-1",
    "Distinguer deux paronymes courants",
    "Quelle phrase emploie le terme exact ?",
    ["Il a prononcé une allocution devant ses collègues.", "Il a prononcé une allocation devant ses collègues.", "Les deux termes sont synonymes en contexte officiel.", "Il a prononcé un discours d'allocution."],
    0,
    "\"Allocution\" désigne un discours bref ; \"allocation\" désigne une aide financière — ce sont des paronymes, ils se ressemblent à l'oreille mais n'ont rien à voir !",
    "Mémorise les paronymes par paires : allocution (discours) / allocation (aide financière).",
  ],
  [
    "diag-lex-2",
    "Utiliser l'étymologie pour déduire le sens d'un mot",
    "Le préfixe latin 'circum-' dans 'circonstance' indique :",
    ["La répétition ou le retour", "L'opposition ou le contre", "Le dessous ou l'infériorité", "Le mouvement autour ou ce qui entoure"],
    3,
    "\"Circum\" signifie \"autour\" en latin — \"circonstance\" = ce qui entoure une action, son cadre. L'étymologie te donne la clé du sens.",
    "Connais les préfixes latins (circum, sub, trans, ante, post…) — ils te permettent de déduire le sens de nombreux mots savants.",
  ],
  [
    "diag-lex-3",
    "Identifier une métonymie",
    "'Boire un verre' pour dire 'boire le contenu d'un verre' est un exemple de :",
    ["Hyperbole", "Métaphore", "Synecdoque", "Métonymie"],
    3,
    "On désigne le contenu par le contenant — c'est une métonymie : la substitution repose sur une relation réelle entre les deux termes.",
    "La métonymie repose sur une relation réelle (contenant/contenu, cause/effet…) ; la métaphore, elle, repose sur une ressemblance.",
  ],
  [
    "diag-lex-4",
    "Distinguer litote et euphémisme",
    "'Il n'est pas sans talent' pour dire 'il est très talentueux' est une :",
    ["Hyperbole", "Litote", "Euphémisme", "Antiphrase"],
    1,
    "C'est une litote — elle dit moins pour suggérer davantage, souvent par double négation. \"N'est pas sans talent\" insinue qu'il en a énormément !",
    "Distingue bien les deux : l'euphémisme atténue une réalité pénible ; la litote sous-exprime pour mieux suggérer le contraire en force.",
  ],
  [
    "diag-lex-5",
    "Identifier un archaïsme lexical courant",
    "Dans les textes juridiques et classiques, 'nonobstant' signifie :",
    ["Malgré, en dépit de", "Dorénavant, à partir de maintenant", "En résumé, pour conclure", "Néanmoins, toutefois"],
    0,
    "\"Nonobstant\" est un archaïsme encore présent dans les textes juridiques — il signifie \"malgré\". Décompose : \"non\" + \"obstant\" (de obstare, faire obstacle).",
    "Décompose : \"non\" + \"obstant\" (de obstare, faire obstacle). Sens = malgré l'obstacle.",
  ],
  [
    "diag-lex-6",
    "Identifier la connotation d'un terme",
    "Le mot 'foule' est neutre ; lequel de ces équivalents a une connotation péjorative ?",
    ["Groupe", "Populace", "Assemblée", "Rassemblement"],
    1,
    "\"Populace\" désigne la foule avec un regard méprisant — c'est un terme péjoratif. \"Assemblée\" est plutôt valorisant, \"groupe\" reste neutre. La connotation exprime l'attitude de l'énonciateur.",
    "Repère la charge axiologique d'un mot (positif, négatif, neutre) en observant l'attitude qu'il implique envers ce qu'il désigne.",
  ],
  [
    "diag-lex-7",
    "Distinguer polysémie et homonymie",
    "'Avocat' désignant à la fois le fruit et le professionnel du droit est un exemple de :",
    ["Paronymie — deux mots qui se ressemblent sans être identiques", "Homonymie — deux mots distincts qui ont la même forme", "Polysémie — un même mot qui a développé plusieurs sens", "Synonymie — deux mots de sens voisin"],
    2,
    "Les deux sens d'\"avocat\" partagent la même origine étymologique et le même mot — c'est de la polysémie. L'homonymie désigne deux mots distincts qui ont, par coïncidence, la même forme (ex. : \"louer\" emprunter / louer féliciter).",
    "Polysémie = un mot, plusieurs sens connexes. Homonymie = deux mots d'origine différente qui se retrouvent avec la même forme.",
  ],
  [
    "diag-lex-8",
    "Identifier une antiphrase",
    "'Bravo, encore une brillante performance !' dit sarcastiquement après un échec emploie :",
    ["Une métaphore", "Une antiphrase", "Une litote", "Un euphémisme"],
    1,
    "L'antiphrase consiste à dire le contraire de ce qu'on pense — ici \"brillante performance\" signifie l'inverse dans ce contexte d'ironie. C'est une figure fondée sur le retournement du sens littéral.",
    "L'antiphrase est une ironie lexicale : le mot ou l'expression prend le sens opposé à sa valeur ordinaire grâce au contexte.",
  ],
  [
    "diag-lex-9",
    "Identifier un glissement sémantique",
    "Le mot 'terrible' signifiait à l'origine 'qui inspire la terreur'. Aujourd'hui, 'un film terrible' peut vouloir dire 'un film formidable'. Ce phénomène est :",
    ["Un glissement sémantique vers le sens mélioratif", "Un emprunt à une langue étrangère", "Un néologisme par composition", "Une métaphore figée"],
    0,
    "Le sens d'un mot peut évoluer dans le temps — ici \"terrible\" a glissé d'un sens négatif intense vers un usage positif dans certains contextes oraux. C'est un exemple de glissement sémantique.",
    "Les mots évoluent : un terme péjoratif peut devenir mélioratif (ou l'inverse) selon les usages et les époques.",
  ],
  [
    "diag-lex-10",
    "Identifier un néologisme par préfixation",
    "Le verbe 'désinformer' est formé par :",
    ["Emprunt direct à l'anglais", "Composition savante (grec + latin)", "Préfixation (dé- + informer)", "Suffixation (-er ajouté à un nom)"],
    2,
    "\"Désinformer\" est formé par ajout du préfixe \"dé-\" au verbe \"informer\" — ce préfixe marque l'action inverse ou contraire. C'est un procédé courant de création lexicale en français.",
    "Les néologismes français recourent souvent à la préfixation (dé-, re-, sur-, sous-…) ou à la suffixation (-isation, -iser…).",
  ],
  [
    "diag-lex-11",
    "Identifier un mot générique",
    'Le mot générique qui peut regrouper "chien", "chat" et "lapin" est :',
    ["objets", "plantes", "vehicules", "animaux"],
    3,
    "\"Animaux\" est le terme générique qui englobe ces trois noms particuliers — c'est le mot plus large qui les contient tous.",
    "Demande-toi quel mot plus large peut contenir les autres.",
  ],
  [
    "diag-lex-12",
    "Distinguer sens propre et sens figuré",
    'Dans "Cette nouvelle m\'a glacé", l\'expression relève :',
    ["D'une définition scientifique", "D'une hyperbole au sens propre", "Du sens figuré", "Du sens propre"],
    2,
    "On ne parle pas ici de température réelle — le verbe est employé au sens figuré pour exprimer un choc émotionnel intense.",
    "Teste si l'interprétation concrète reste possible dans le contexte.",
  ],
  [
    "diag-lex-13",
    "Identifier un verbe dérivé",
    'Quel verbe est dérivé du nom "courage" ?',
    ["courir", "encourager", "couvrir", "décourager"],
    1,
    "\"Encourager\" est formé sur le nom \"courage\" — il en partage le radical. \"Courir\" et \"couvrir\" n'ont aucun lien étymologique.",
    "Repère le radical de base avant de comparer les mots.",
  ],
  [
    "diag-lex-14",
    "Reconnaître une nuance de sens",
    'Quel mot est le plus proche de "observer" ?',
    ["regarder attentivement", "oublier", "fabriquer", "glancer"],
    0,
    "\"Observer\" signifie regarder avec attention, en cherchant à remarquer quelque chose — c'est bien plus que simplement \"voir\".",
    "Cherche une reformulation précise, pas seulement un mot vaguement voisin.",
  ],
  [
    "diag-lex-15",
    "Identifier une expression imagée",
    'Dans "Il a une faim de loup", l\'expression signifie :',
    ["Il a peur des loups", "Il a très faim", "Il chasse les loups", "Il déteste les loups"],
    1,
    "L'expression intensifie l'idée de faim — elle ne parle pas vraiment de loups ! C'est une image qui dit : il a une faim extrême.",
    "Quand une expression paraît exagérée ou étrange au sens littéral, vérifie si elle fonctionne comme image.",
  ],
];
const analyseTuples: QuestionTuple[] = [
  [
    "diag-analyse-1",
    "Analyser la valeur d'une proposition participiale absolue",
    "Dans 'Les négociations ayant échoué, la grève fut déclarée', la proposition participiale exprime :",
    ["La cause logique", "La condition", "L'opposition", "La concession"],
    0,
    "La proposition participiale absolue (\"Les négociations ayant échoué\") exprime ici la cause qui motive la déclaration de grève — c'est le contexte qui décide de la valeur.",
    "Le contexte détermine la valeur (cause, condition, temps, opposition) d'une participiale absolue.",
  ],
  [
    "diag-analyse-2",
    "Identifier la fonction sujet réel d'une complétive",
    "Dans 'Il est regrettable qu'il soit absent', quelle est la fonction de 'qu'il soit absent' ?",
    ["Attribut du sujet apparent", "COD du verbe impersonnel", "Sujet réel du verbe impersonnel", "Complément circonstanciel de cause"],
    2,
    "Avec les verbes impersonnels, \"il\" est le sujet grammatical apparent — un leurre. La complétive \"qu'il soit absent\" est le vrai sujet : le sujet réel.",
    "Repère le sujet apparent \"il\" et cherche le sujet réel exprimé après le verbe impersonnel.",
  ],
  [
    "diag-analyse-3",
    "Identifier un discours indirect libre",
    "Dans 'Elle rentra chez elle. La journée avait été épuisante, vraiment.', le second énoncé est :",
    ["Un discours indirect libre", "Un discours direct", "Une narration omnisciente neutre", "Un discours indirect introduit par un verbe de parole"],
    0,
    "Le discours indirect libre intègre les pensées d'un personnage dans la narration sans marque introductive — et l'adverbe \"vraiment\" trahit clairement la voix du personnage.",
    "Cherche les adverbes ou interjections modaux (\"vraiment\", \"décidément\"…) qui signalent une voix intérieure dans la narration.",
  ],
  [
    "diag-analyse-4",
    "Identifier le mode dans une subordonnée consécutive réelle",
    "Dans 'Il était si fatigué qu'il s'endormit aussitôt', le mode de 's'endormit' est :",
    ["Conditionnel (fait hypothétique)", "Indicatif (fait présenté comme réel)", "Subjonctif (fait incertain)", "Impératif (ordre exprimé)"],
    1,
    "Quand la conséquence est un fait constaté, la subordonnée consécutive se met à l'indicatif — on présente ce qui s'est vraiment passé.",
    "Avec \"si… que\", \"tellement… que\" : indicatif si la conséquence est un fait ; subjonctif si c'est une intensité attendue.",
  ],
  [
    "diag-analyse-5",
    "Analyser une apposition double coordonnée",
    "Dans 'Élève brillante mais imprévisible, elle déstabilisait parfois ses professeurs', le groupe détaché est :",
    ["Un attribut du COD", "Un complément du sujet", "Un complément circonstanciel de manière", "Une apposition double coordonnée"],
    3,
    "Le groupe \"Élève brillante mais imprévisible\" est une apposition double — coordonnée par \"mais\" — détachée en tête de phrase. Une apposition peut elle-même être complexe !",
    "Une apposition peut elle-même être complexe et coordonner plusieurs éléments qualificatifs.",
  ],
  [
    "diag-analyse-6",
    "Identifier une expansion du nom",
    'Dans "une maison très ancienne", l\'expansion du nom est :',
    ["une", "maison", "très", "très ancienne"],
    3,
    "Le groupe adjectival \"très ancienne\" enrichit le nom \"maison\" — c'est son expansion. \"Une\" est le déterminant, \"maison\" est le noyau.",
    "Distingue le déterminant, le nom noyau et ce qui le précise.",
  ],
  [
    "diag-analyse-7",
    "Identifier la proposition principale",
    'Dans "Quand la cloche sonne, les élèves sortent", la proposition principale est :',
    ["quand la cloche", "Quand la cloche sonne", "les élèves sortent", "Quand la cloche sonne, les élèves"],
    2,
    "La proposition principale, c'est celle qui pourrait subsister seule — \"les élèves sortent\" se suffit. \"Quand la cloche sonne\" est subordonnée, elle dépend de la principale.",
    "Cherche la proposition qui porte le sens principal et peut exister seule.",
  ],
  [
    "diag-analyse-8",
    "Identifier un complément du nom dans un GN",
    'Dans "le cahier de Marie", "de Marie" est :',
    ["Un COD", "Un complément du nom", "Une épithète", "Un complément d'agent"],
    1,
    "Le groupe prépositionnel \"de Marie\" enrichit le nom \"cahier\" — c'est un complément du nom. Il dépend du nom, pas du verbe.",
    "Demande-toi si le groupe dépend d'un nom ou d'un verbe.",
  ],
  [
    "diag-analyse-9",
    "Identifier un mot subordonnant",
    'Dans "Je partirai si tu viens", la nature de "si" est :',
    ["Pronom relatif", "Adverbe de degré", "Conjonction de subordination", "Préposition"],
    2,
    "\"Si\" introduit ici une proposition subordonnée circonstancielle de condition — c'est une conjonction de subordination. Elle crée une relation logique entre les deux propositions.",
    "Repère si le mot introduit une relation logique entre deux propositions.",
  ],
  [
    "diag-analyse-10",
    "Identifier le référent d'un pronom",
    'Dans "Paul parle à Hugo parce qu\'il est inquiet", le pronom "il" est :',
    ["Ambigu sans contexte supplémentaire", "Toujours Paul", "Toujours Hugo", "Nécessairement le locuteur"],
    0,
    "Attention ici — la phrase seule ne permet pas de trancher. \"Il\" peut renvoyer à Paul ou à Hugo selon le contexte. C'est une ambiguïté réelle.",
    "N'impose pas une interprétation si la phrase reste ambiguë — dis-le clairement.",
  ],
  [
    "diag-analyse-11",
    "Identifier une phrase nominale",
    "Quelle phrase est nominale ?",
    ["Le maître parle.", "Silence dans le couloir.", "Les élèves se taisent.", "Silence total dans la salle."],
    1,
    "La phrase nominale ne comporte pas de verbe conjugué — et c'est exactement le cas de \"Silence dans le couloir\". Les deux autres ont chacune un verbe conjugué.",
    "Vérifie la présence ou l'absence d'un verbe conjugué.",
  ],
  [
    "diag-analyse-12",
    "Identifier une subordonnée relative",
    'Dans "La fille dont je parle arrive", "dont je parle" est :',
    ["Une complétive", "Une subordonnée relative", "Une proposition principale", "Une subordonnée circonstancielle"],
    1,
    "La proposition est introduite par le pronom relatif \"dont\" et complète le nom \"fille\" — c'est bien une subordonnée relative. \"Dont\" a comme antécédent \"la fille\".",
    "Repère l'antécédent du pronom relatif pour confirmer l'analyse.",
  ],
  [
    "diag-analyse-13",
    "Distinguer phrase simple et complexe",
    'La phrase "Il ouvre la fenêtre puis il écoute" est :',
    ["Simple", "Interrogative", "Nominale", "Complexe"],
    3,
    "Elle comporte deux verbes conjugués (\"ouvre\" et \"écoute\") — donc deux propositions, donc une phrase complexe.",
    "Le nombre de verbes conjugués reste un bon premier indicateur.",
  ],
  [
    "diag-analyse-14",
    "Identifier une forme infinitive",
    'Dans "Elle va partir demain", "partir" est :',
    ["Un infinitif", "Un verbe à l'imparfait", "Un participe passé", "Un verbe conjugué au présent"],
    0,
    "\"Partir\" suit le semi-auxiliaire \"va\" — il reste à l'infinitif, sans marque de personne. C'est la forme non conjuguée du verbe.",
    "Regarde si la forme verbale porte une marque de personne ; si non, c'est un infinitif.",
  ],
  [
    "diag-analyse-15",
    "Identifier la nature d'un groupe",
    'Dans "Très rapidement", la nature du groupe est :',
    ["Groupe verbal", "Groupe adverbial", "Groupe nominal", "Groupe adjectival"],
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
    ["Accepter la parole du personnage comme vraie", "Ignorer les gestes, car seules les paroles comptent", "Considérer la description comme une erreur narrative", "Interpréter les indices non verbaux pour nuancer ou contredire la parole"],
    3,
    "L'inférence pragmatique, c'est dépasser le sens littéral grâce aux indices du contexte — ici, les gestes contredisent clairement les mots. Le corps ne ment pas !",
    "En lecture, les indices non verbaux, le ton et le contexte permettent souvent d'aller au-delà du sens littéral.",
  ],
  [
    "diag-comp-2",
    "Identifier l'ironie dans un texte",
    "'Quelle brillante idée de partir sous cet orage !' dit le narrateur sarcastique. Cette phrase emploie :",
    ["Une métaphore filée", "Un euphémisme", "Une ironie", "Une antithèse"],
    2,
    "L'ironie consiste à dire le contraire de ce qu'on pense — ici, l'éloge ne colle pas du tout à la situation. Ce décalage entre le sens littéral et le contexte, c'est la marque de l'ironie.",
    "Cherche le décalage entre le sens littéral et le contexte : si l'éloge ne colle pas à la réalité, il y a ironie.",
  ],
  [
    "diag-comp-3",
    "Comprendre la structure d'un texte argumentatif",
    "Dans un texte argumentatif bien construit, les arguments :",
    ["Doivent toujours commencer par un contre-argument", "Sont organisés pour renforcer progressivement la thèse", "Sont juxtaposés sans lien logique", "Doivent rester indépendants les uns des autres"],
    1,
    "Un texte argumentatif efficace organise ses arguments de manière progressive pour convaincre — du plus faible au plus fort, ou du général au particulier. L'ordre n'est pas aléatoire.",
    "Repère les connecteurs logiques pour comprendre comment les arguments s'articulent et se hiérarchisent.",
  ],
  [
    "diag-comp-4",
    "Distinguer texte injonctif et texte explicatif",
    "Ce qui distingue fonctionnellement un texte injonctif d'un texte explicatif est :",
    ["L'injonctif vise à faire agir le lecteur ; l'explicatif vise à lui faire comprendre", "L'injonctif utilise le présent ; l'explicatif utilise le passé", "L'injonctif est toujours plus court que l'explicatif", "L'injonctif s'adresse à des experts ; l'explicatif au grand public"],
    0,
    "C'est la règle clé : le texte injonctif (recette, mode d'emploi) engage à l'action. Le texte explicatif (documentaire, encyclopédie) cherche à faire comprendre. L'intention de communication, c'est tout.",
    "Interroge-toi sur l'intention de communication : faire faire ? faire savoir ? faire ressentir ?",
  ],
  [
    "diag-comp-5",
    "Reconnaître un argument par analogie",
    "Un auteur compare l'apprentissage de la lecture à l'apprentissage du vélo pour expliquer le rôle de la pratique. Il emploie :",
    ["Un contre-argument", "Un argument d'autorité", "Un argument par analogie", "Un argument par l'exemple"],
    2,
    "L'argument par analogie établit une comparaison structurelle entre deux domaines différents pour rendre une idée plus claire ou convaincante — ici, lire et faire du vélo partagent la même logique de pratique.",
    "Repère les comparaisons entre domaines différents : elles valident une idée par similitude de structure.",
  ],
  [
    "diag-comp-6",
    "Comprendre la relation cause-conséquence",
    'Dans "Comme il pleuvait, la sortie fut annulée", quelle est la cause ?',
    ["L'annulation", "La sortie", "Le mauvais temps prévu", "La pluie"],
    3,
    "La pluie explique l'annulation — c'est elle la cause. \"Comme\" introduit ici une relation causale, pas temporelle.",
    "Repère ce qui explique l'autre événement.",
  ],
  [
    "diag-comp-7",
    "Identifier le sens d'un titre",
    'Un titre comme "Le dernier voyage" annonce plutôt :',
    [
      "Une recette de cuisine",
      "Un récit centré sur un départ important",
      "Un texte documentaire sur les outils",
      "Un texte explicatif sur la géographie",
    ],
    1,
    "Le lexique du \"voyage\" et l'adjectif \"dernier\" orientent vers un récit autour d'un départ marquant — le titre est toujours une hypothèse de lecture.",
    "Utilise le titre comme hypothèse de lecture, puis confronte-la au texte.",
  ],
  [
    "diag-comp-8",
    "Distinguer explicite et implicite",
    'Dans "Paul serra son manteau et pressa le pas", on peut inférer que :',
    ["Il veut dormir", "Il a chaud", "Il est pressé par une obligation", "Il fait probablement froid"],
    3,
    "Serrer son manteau et accélérer sont des indices convergents qui laissent penser qu'il fait froid — même si ce n'est pas dit explicitement.",
    "Cherche les indices convergents dans les gestes ou les réactions du personnage.",
  ],
  [
    "diag-comp-9",
    "Identifier un présupposé",
    "Dans 'Il a enfin arrêté de fumer', qu'est-ce qui est présupposé ?",
    ["La personne fumait auparavant", "La personne ne fumait pas auparavant", "La personne va reprendre de fumer", "La personne est en bonne santé"],
    0,
    "Le présupposé est une information non dite mais nécessairement vraie pour que l'énoncé ait du sens. \"Enfin arrêté de fumer\" présuppose qu'il fumait — sans ce présupposé la phrase ne tient pas. Le posé, lui, est qu'il a arrêté.",
    "Un présupposé reste vrai même si on nie la phrase : 'Il n'a pas enfin arrêté de fumer' présuppose encore qu'il fumait.",
  ],
  [
    "diag-comp-10",
    "Repérer l'intention d'un personnage",
    'Dans "Elle parla tout bas pour ne pas réveiller son frère", pourquoi parle-t-elle tout bas ?',
    ["Pour se mettre en colère", "Pour gagner du temps", "Pour ne pas le réveiller", "Pour attirer l'attention"],
    2,
    "La proposition finale introduite par \"pour\" donne explicitement l'intention du personnage — c'est écrit noir sur blanc dans la phrase !",
    "Repère les tournures de but comme \"pour\" ou \"afin de\".",
  ],
  [
    "diag-comp-11",
    "Identifier le point de vue narratif",
    "Dans un récit où le narrateur décrit uniquement les pensées et émotions d'un seul personnage, le point de vue est :",
    ["Omniscient — le narrateur sait tout sur tous les personnages", "Interne — le récit est filtré par la conscience d'un personnage", "Externe — le narrateur ne décrit que ce qui est observable de l'extérieur", "Zéro — le narrateur est absent du récit"],
    1,
    "Le point de vue interne (ou focalisation interne) filtre le récit par la conscience d'un seul personnage — on accède à ses pensées et ressentis, mais pas à ceux des autres. L'omniscient sait tout ; l'externe se limite à l'observable.",
    "Mémorise les trois focalisations : zéro (omniscient, sait tout), interne (par un personnage), externe (observateur neutre, gestes et paroles seulement).",
  ],
  [
    "diag-comp-12",
    "Comprendre l'effet d'un connecteur",
    'Dans "Il était fatigué, mais il continua", "mais" montre que :',
    [
      "La deuxième action va dans le même sens",
      "La phrase donne une définition",
      "La phrase exprime une cause",
      "La deuxième action surprend par rapport à la première",
    ],
    3,
    "Le connecteur \"mais\" introduit une rupture avec ce qu'on attendait — fatigué, on s'attendrait à ce qu'il s'arrête. Il continue : c'est une surprise, une opposition.",
    "Demande-toi si le connecteur confirme ou contrarie l'attente du lecteur.",
  ],
  [
    "diag-comp-13",
    "Identifier une reformulation",
    'Dans "Le givre recouvrait la pelouse, c\'est-à-dire une fine couche de glace", l\'expression "c\'est-à-dire" annonce :',
    ["Une conclusion", "Une reformulation", "Une opposition", "Un exemple"],
    1,
    "\"C'est-à-dire\" annonce une reformulation — la seconde partie explicite la première en d'autres mots. C'est un marqueur de clarification.",
    "Repère les marqueurs qui expliquent autrement une idée déjà dite.",
  ],
  [
    "diag-comp-14",
    "Comprendre un sentiment implicite",
    'Dans "Maya serrait les poings et évitait les regards", on peut penser qu\'elle est plutôt :',
    ["Apaisée", "Endormie", "Tendue ou en colère", "Joyeuse mais timide"],
    2,
    "Les gestes décrits — serrer les poings, éviter les regards — renvoient à une tension émotionnelle forte. C'est implicite, mais lisible dans le corps.",
    "Appuie-toi sur les gestes, le corps et les paroles pour inférer l'état intérieur.",
  ],
  [
    "diag-comp-15",
    "Identifier une modalisation épistémique",
    "Dans 'Il semble que la réforme ait été abandonnée', l'auteur exprime :",
    ["Un ordre adressé au lecteur", "Une certitude présentée comme objective", "Une réserve sur la vérité de l'information", "Un souhait formulé à la 3e personne"],
    2,
    "\"Il semble que\" est un modalisateur épistémique — il signale que l'énonciateur n'est pas certain de l'information. Cette prise de distance sur la vérité du propos s'appelle la modalisation.",
    "Repère les modalisateurs : 'il semble', 'apparemment', 'sans doute', 'peut-être'… Ils signalent une réserve sur la certitude ou la vérité de l'énoncé.",
  ],
];
const didactiqueTuples: QuestionTuple[] = [
  [
    "diag-did-1",
    "Comprendre la zone proximale de développement",
    "La zone proximale de développement (Vygotski) désigne :",
    ["Le niveau maximal qu'un élève peut atteindre", "Ce que l'élève sait déjà faire seul", "L'écart entre ce que l'élève fait seul et ce qu'il peut faire avec l'aide d'autrui", "Le niveau moyen de la classe"],
    2,
    "La ZPD, c'est l'espace entre le niveau actuel (ce que l'élève fait seul) et le niveau potentiel (ce qu'il accomplit avec guidage) — c'est là que l'enseignement doit se situer.",
    "Retiens : la ZPD justifie l'importance du guidage pédagogique et du travail en groupe hétérogène.",
  ],
  [
    "diag-did-2",
    "Identifier le concept d'étayage selon Bruner",
    "L'étayage en pédagogie (Bruner) consiste à :",
    ["Simplifier définitivement la tâche", "Adapter temporairement les aides pour permettre à l'élève d'accomplir ce qu'il ne peut pas encore faire seul", "Évaluer l'élève systématiquement à chaque étape", "Regrouper les élèves par niveau homogène"],
    1,
    "L'étayage, c'est un soutien temporaire et progressivement retiré — il permet à l'élève de travailler dans sa ZPD sans rester bloqué. L'idée clé : on retire les aides au fur et à mesure.",
    "Distingue étayage (aide temporaire, retrait progressif) et différenciation (adaptation durable des objectifs ou outils).",
  ],
  [
    "diag-did-3",
    "Distinguer décodage et compréhension en lecture",
    "Un élève déchiffre correctement tous les mots mais ne comprend pas le texte. Cela illustre que :",
    ["La compréhension orale suffit à comprendre un texte écrit", "Il n'a pas encore acquis le principe alphabétique", "La fluidité de lecture garantit la compréhension", "Le décodage automatisé est nécessaire mais insuffisant pour la compréhension"],
    3,
    "La lecture experte requiert deux composantes : le décodage (identification des mots) et la compréhension (construction du sens). Les deux sont nécessaires — l'un sans l'autre ne suffit pas.",
    "Réfère-toi au modèle de Gough et Tunmer (\"Simple View of Reading\") : compréhension = décodage × compréhension du langage.",
  ],
  [
    "diag-did-4",
    "Comprendre le rôle des représentations initiales des élèves",
    "Avant d'enseigner une notion, explorer les représentations initiales des élèves permet principalement de :",
    ["Classer les élèves par niveau avant d'enseigner", "Repérer les obstacles et les points d'appui pour mieux cibler l'enseignement", "Éviter que les élèves fassent des erreurs à l'avenir", "Mesurer l'efficacité de la séquence précédente"],
    1,
    "Les représentations initiales sont à la fois des obstacles (si erronées) et des points d'appui (si partiellement correctes) — les identifier te permet d'adapter l'enseignement là où ça compte.",
    "En didactique, l'erreur n'est pas un manque — c'est une étape révélatrice de la logique de l'élève.",
  ],
  [
    "diag-did-5",
    "Identifier une pratique d'enseignement explicite",
    "L'enseignement explicite d'une stratégie de lecture consiste principalement à :",
    ["Modéliser la stratégie à voix haute, guider les élèves, puis les laisser l'appliquer de façon autonome", "Laisser les élèves découvrir la stratégie par eux-mêmes en silence", "Donner une liste de règles à mémoriser sans les contextualiser", "Évaluer la stratégie sans l'enseigner préalablement"],
    0,
    "L'enseignement explicite suit trois phases : modelage (je fais en pensant à voix haute), pratique guidée, pratique autonome. Pas de découverte silencieuse — on rend la stratégie visible.",
    "Retiens la progression : \"je fais\" → \"on fait ensemble\" → \"tu fais seul\".",
  ],
  [
    "diag-did-6",
    "Comprendre l'intérêt de la lecture à voix haute du maître",
    "La lecture magistrale régulière sert notamment à :",
    [
      "Éviter les échanges autour des textes",
      "Remplacer toutes les lectures des élèves",
      "Nourrir la compréhension, le vocabulaire et la culture de l'écrit",
      "Évaluer la fluidité des élèves",
    ],
    2,
    "La lecture à voix haute du maître donne accès à des textes plus riches et soutient la compréhension — elle nourrit le vocabulaire et la culture de l'écrit des élèves.",
    "Cherche toujours l'effet d'apprentissage, pas seulement l'organisation pratique.",
  ],
  [
    "diag-did-7",
    "Identifier une pratique d'écriture efficace",
    "Pour aider des élèves à produire un texte, il est pertinent de :",
    [
      "Corriger tout à leur place dès la première phrase",
      "Prévoir un temps de planification, de mise en texte puis de révision",
      "Leur demander d'écrire directement sans préparation",
      "Imposer un texte modèle à reproduire mot pour mot",
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
      "Ajuster l'enseignement et aider l'élève à progresser",
      "Supprimer toute correction",
      "Classer définitivement les élèves",
      "Certifier les acquis en fin de cycle",
    ],
    0,
    "L'évaluation formative sert à faire progresser, pas à sanctionner — elle informe l'enseignant ET l'élève pour ajuster la suite des apprentissages.",
    "Demande-toi si l'évaluation informe la suite des apprentissages.",
  ],
  [
    "diag-did-9",
    "Identifier l'intérêt de la dictée négociée",
    "La dictée négociée est intéressante car elle permet surtout de :",
    [
      "Éviter toute justification",
      "Faire copier plus vite",
      "Réduire le nombre de fautes par élève",
      "Verbaliser les raisonnements orthographiques",
    ],
    3,
    "La confrontation des solutions pousse les élèves à expliciter leurs choix orthographiques — c'est exactement ça l'intérêt : rendre le raisonnement visible et discutable.",
    "Cherche les dispositifs qui rendent les raisonnements visibles.",
  ],
  [
    "diag-did-10",
    "Reconnaître une aide efficace en vocabulaire",
    "Pour enseigner un mot nouveau durablement, il vaut mieux :",
    [
      "Le faire mémoriser sans phrase",
      "Le rencontrer dans plusieurs contextes et le réutiliser",
      "Le faire recopier une seule fois",
      "L'associer à une définition dictée à copier",
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
      "La capacité à recopier sans erreur",
      "Une lecture suffisamment précise, rapide et expressive pour soutenir la compréhension",
      "La maîtrise du décodage phonémique uniquement",
    ],
    2,
    "La fluence ne se réduit pas à aller vite — elle articule exactitude, rythme et prosodie. C'est la lecture fluide qui libère des ressources pour comprendre.",
    "Méfie-toi des définitions trop réductrices d'un apprentissage complexe.",
  ],
  [
    "diag-did-12",
    "Identifier un obstacle d'apprentissage",
    'Si un élève confond souvent "et" et "est", il est utile de travailler :',
    [
      "Seulement la copie du mot",
      "Uniquement l'ordre alphabétique",
      "La prononciation des deux formes à voix haute",
      "Des procédures de distinction grammaticale en contexte",
    ],
    3,
    "L'élève a besoin de critères pour distinguer les valeurs grammaticales des homophones — la copie seule ne sert à rien si la logique de distinction n'est pas comprise.",
    "Cherche le savoir qui manque à l'élève, pas seulement la forme à mémoriser.",
  ],
  [
    "diag-did-13",
    "Comprendre la place de l'oral",
    "Dans l'apprentissage du français, l'oral est important parce qu'il :",
    [
      "Ne sert qu'en maternelle",
      "Soutient la compréhension, le lexique et la formulation de la pensée",
      "Est secondaire par rapport à l'écrit",
      "Remplace avantageusement l'écrit en cycle 2",
    ],
    1,
    "L'oral joue un rôle central dans les apprentissages langagiers, de la compréhension à la production — il n'est pas secondaire et ne disparaît pas après la maternelle.",
    "Ne cloisonne pas trop vite oral et écrit.",
  ],
  [
    "diag-did-14",
    "Reconnaître un support pertinent en étude de la langue",
    "Pour travailler une notion grammaticale, un corpus de phrases variées est utile car il permet de :",
    [
      "Remplacer la manipulation par la simple copie",
      "Éviter toute réflexion",
      "Rendre visible une régularité et des contrastes",
      "Évaluer la vitesse de lecture des élèves",
    ],
    2,
    "Un corpus bien choisi fait apparaître ce qui varie et ce qui reste stable dans la notion étudiée — c'est ça qui permet de construire une règle par observation.",
    "Cherche les situations qui permettent de comparer et justifier.",
  ],
  [
    "diag-did-15",
    "Comprendre la progressivité des apprentissages",
    "Une progression efficace en français consiste surtout à :",
    [
      "Travailler une notion une seule fois dans l'année",
      "Passer très vite d'une notion à l'autre sans retour",
      "Suivre l'ordre alphabétique des notions du programme",
      "Revenir régulièrement sur les notions dans des situations variées",
    ],
    3,
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
        frenchDiagnosticQuestionBank
          .filter((question) => question.subdomain === subdomain)
          .slice(0, 10),
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
