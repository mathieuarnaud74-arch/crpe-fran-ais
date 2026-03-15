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
    href: "/francais/grammaire",
  },
  lexique: {
    label: "Lexique",
    href: "/francais/grammaire",
  },
  analyse_langue: {
    label: "Analyse de la langue",
    href: "/francais/analyse-de-la-langue",
  },
  comprehension_texte: {
    label: "Comprehension de texte",
    href: "/francais/analyse-de-la-langue",
  },
  didactique_francais: {
    label: "Didactique du francais",
    href: "/francais/analyse-de-la-langue",
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

function getDifficultyTier(questionId: string) {
  const numericSuffix = Number(questionId.split("-").pop());

  if (Number.isFinite(numericSuffix) && numericSuffix >= 6) {
    return "avance";
  }

  return "fondation";
}

const grammaireTuples: QuestionTuple[] = [
  [
    "diag-gram-1",
    "Identifier une fonction dans la phrase",
    'Dans "Le chat noir ronronne doucement", quel est le role grammatical de "doucement" ?',
    ["Sujet", "Complement circonstanciel de maniere", "Attribut du sujet"],
    1,
    '"Doucement" precise la maniere dont le chat ronronne. Ce mot complete le verbe en indiquant une circonstance.',
    "Reperez d'abord le verbe, puis demandez-vous si le mot nomme un etre, un objet ou une circonstance.",
  ],
  [
    "diag-gram-2",
    "Distinguer COD et COI",
    'Dans "La maitresse parle aux eleves", la fonction de "aux eleves" est :',
    ["COD", "COI", "Attribut du sujet"],
    1,
    'Le groupe "aux eleves" complete le verbe avec la preposition "a". Il s\'agit donc d\'un COI.',
    'Quand un groupe est introduit par "a" ou "de", testez d\'abord l\'hypothese du COI.',
  ],
  [
    "diag-gram-3",
    "Identifier le sujet",
    'Dans "Les cahiers de l\'eleve sont ranges", quel est le sujet du verbe ?',
    ["Les cahiers", "de l'eleve", "sont ranges"],
    0,
    'Le noyau du sujet est "cahiers". Le groupe "de l\'eleve" ne fait qu\'enrichir le groupe sujet.',
    "Cherchez le groupe qui commande l'accord du verbe.",
  ],
  [
    "diag-gram-4",
    "Reconnaitre un attribut du sujet",
    'Dans "Cette lecon semble simple", la fonction de "simple" est :',
    ["COD", "Attribut du sujet", "CC de maniere"],
    1,
    'Le verbe "sembler" est un verbe d\'etat. "Simple" donne une propriete au sujet "cette lecon".',
    "Reperez les verbes d'etat comme etre, sembler ou devenir pour tester l'attribut du sujet.",
  ],
  [
    "diag-gram-5",
    "Identifier un complement circonstanciel de lieu",
    'Dans "Les enfants jouent dans la cour", "dans la cour" est :',
    ["Un COD", "Un complement circonstanciel de lieu", "Un sujet inverse"],
    1,
    'Le groupe indique le lieu de l\'action. Il s\'agit d\'un complement circonstanciel de lieu.',
    "Posez la question 'ou ?' apres le verbe pour verifier l'hypothese.",
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
    "Accorder le verbe avec son sujet",
    "Quelle phrase est correctement orthographiee ?",
    [
      "Les enfants chante dans la cour.",
      "Les enfants chantent dans la cour.",
      "Les enfants chantes dans la cour.",
    ],
    1,
    'Le noyau du sujet est "enfants", au pluriel. Le verbe doit donc prendre la terminaison "-ent".',
    "Soulignez le sujet reel avant de regarder la terminaison verbale.",
  ],
  [
    "diag-ortho-2",
    "Choisir le bon homophone grammatical",
    'Completez correctement : "Ils ____ range leurs cahiers avant de partir."',
    ["ont", "on", "sont"],
    0,
    '"Ont" est l\'auxiliaire avoir au present. Ici, il sert a former le passe compose.',
    'Testez mentalement une autre personne: si "avaient" fonctionne, l\'homophone attendu est souvent "ont".',
  ],
  [
    "diag-ortho-3",
    "Distinguer a et a accentue",
    'Completez correctement : "Il ____ oublie son manteau."',
    ["a", "à", "as"],
    0,
    '"A" est ici le verbe avoir. On pouvait le remplacer par "avait".',
    'Essayez le remplacement par "avait" pour verifier.',
  ],
  [
    "diag-ortho-4",
    "Distinguer et et est",
    'Completez correctement : "Le cahier ____ le livre sont poses."',
    ["et", "est", "aient"],
    0,
    '"Et" coordonne deux groupes nominaux: "le cahier" et "le livre".',
    'Demandez-vous si le mot relie deux elements ou s\'il conjugue le verbe etre.',
  ],
  [
    "diag-ortho-5",
    "Accorder dans le groupe nominal",
    "Quelle ecriture est correcte ?",
    ["des fleur rouges", "des fleurs rouge", "des fleurs rouges"],
    2,
    'Le nom "fleurs" est au pluriel et l\'adjectif "rouges" s\'accorde avec lui.',
    "Accordez d'abord le nom, puis faites suivre l'adjectif.",
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
    "Identifier un mode verbal",
    'Quel est le mode de "Qu\'il vienne" ?',
    ["Indicatif", "Conditionnel", "Subjonctif"],
    2,
    'La tournure exprime ici un souhait ou une eventualite. Le verbe est au subjonctif present.',
    "Reperez les tournures de souhait, de doute ou de necessite.",
  ],
  [
    "diag-conj-2",
    "Choisir une forme juste dans une subordonnee",
    'Quelle forme convient dans "Il faut que tu ... ton exercice" ?',
    ["fais", "fasses", "feras"],
    1,
    'Apres "il faut que", on attend le subjonctif. La forme correcte est "fasses".',
    'Memorisez quelques declencheurs frequents de subjonctif, comme "il faut que".',
  ],
  [
    "diag-conj-3",
    "Reconnaitre le futur simple",
    "Quelle forme est au futur simple ?",
    ["nous partirons", "nous partions", "nous partirions"],
    0,
    'La terminaison "-rons" marque ici le futur simple de "partir".',
    "Comparez les finales du futur simple et du conditionnel.",
  ],
  [
    "diag-conj-4",
    "Distinguer futur et conditionnel",
    "Quelle phrase est au conditionnel present ?",
    ["Je viendrai demain.", "Je viendrais si je pouvais.", "Je viens demain."],
    1,
    'La forme "viendrais" marque une hypothese. C\'est le conditionnel present.',
    "Cherchez l'idee d'hypothese et la finale en -rais, -rait ou -rions.",
  ],
  [
    "diag-conj-5",
    "Identifier l'imparfait",
    "Quelle forme est a l'imparfait ?",
    ["ils jouaient", "ils jouerent", "ils joueront"],
    0,
    'La terminaison "-aient" renvoie ici a l\'imparfait du verbe "jouer".',
    "Reperez la base du present a la 1re personne du pluriel pour reconstruire l'imparfait.",
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
    "Maitriser les relations de sens",
    'Quel mot est un antonyme de "rigoureux" ?',
    ["Meticuleux", "Negligent", "Precis"],
    1,
    '"Negligent" exprime l\'idee contraire de "rigoureux".',
    "Eliminez d'abord les mots voisins du sens avant de chercher le contraire exact.",
  ],
  [
    "diag-lex-2",
    "Identifier une famille de mots",
    'Quel mot appartient a la meme famille que "lecture" ?',
    ["Lointain", "Lecteur", "Lecon"],
    1,
    '"Lecture" et "lecteur" sont formes sur le meme radical et renvoient a l\'activite de lire.',
    "Cherchez le radical commun et verifiez qu'il s'agit bien d'un lien de formation.",
  ],
  [
    "diag-lex-3",
    "Identifier un synonyme",
    'Quel mot est le plus proche de "rapide" ?',
    ["Lent", "Vif", "Lourd"],
    1,
    '"Vif" est le plus proche de "rapide" dans le sens propose ici.',
    "Cherchez le mot qui conserve le sens sans l'inverser.",
  ],
  [
    "diag-lex-4",
    "Reconnaitre un registre de langue",
    'Le mot "demeure" appartient plutot au registre :',
    ["familier", "courant", "soutenu"],
    2,
    '"Demeure" pour dire "maison" releve d\'un registre plus soutenu que l\'usage courant.',
    "Comparez le mot a son equivalent le plus habituel dans la vie quotidienne.",
  ],
  [
    "diag-lex-5",
    "Comprendre la polysemie",
    'Dans "La feuille tombe", le mot "feuille" designe ici :',
    ["Un organe de plante", "Une page de cahier", "Un journal"],
    0,
    'Le contexte de la chute renvoie ici a la feuille de l\'arbre ou de la plante.',
    "Lisez le mot dans sa phrase: c'est le contexte qui fixe le bon sens.",
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
    "Identifier la nature d'une subordonnee",
    'Dans "Je pense que tu as raison", quelle est la nature de "que tu as raison" ?',
    [
      "Proposition subordonnee relative",
      "Proposition subordonnee completive",
      "Proposition independante",
    ],
    1,
    'La proposition complete le verbe "pense". Elle introduit le contenu de la pensee.',
    "Demandez-vous si le groupe complete un nom ou un verbe.",
  ],
  [
    "diag-analyse-2",
    "Identifier la nature d'un pronom relatif",
    'Dans "Le livre que j\'ai lu", la nature de "que" est :',
    ["Conjonction de subordination", "Pronom relatif", "Determinant interrogatif"],
    1,
    '"Que" reprend ici le nom "livre" et introduit une proposition relative.',
    "Cherchez si le mot reprend un antecedent present juste avant.",
  ],
  [
    "diag-analyse-3",
    "Reconnaitre une proposition relative",
    'Dans "Le stylo qui est sur la table est bleu", la proposition relative est :',
    ["Le stylo", "qui est sur la table", "est bleu"],
    1,
    'Le groupe "qui est sur la table" complete le nom "stylo".',
    "Reperez le pronom relatif puis delimitez toute la proposition qu'il introduit.",
  ],
  [
    "diag-analyse-4",
    "Reconnaitre une subordonnee circonstancielle",
    'Dans "Quand il pleut, nous restons dedans", "Quand il pleut" est :',
    ["Une subordonnee circonstancielle de temps", "Une relative", "Une principale"],
    0,
    'Le groupe introduit par "quand" situe l\'action dans le temps.',
    "Reperez le connecteur et la relation qu'il introduit.",
  ],
  [
    "diag-analyse-5",
    "Identifier la voix passive",
    'La phrase "Le ballon est attrape par Lina" est :',
    ["A la voix active", "A la voix passive", "A la forme impersonnelle"],
    1,
    'Le sujet "ballon" subit l\'action. La construction avec "etre" et le complement introduit par "par" marque la voix passive.',
    "Cherchez qui fait reellement l'action et qui la subit.",
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
    "Comprendre l'implicite",
    "Qu'est-ce qu'une inference dans un texte ?",
    [
      "Un resume du texte",
      "Une information implicite que le lecteur doit deduire",
      "Le sens litteral d'une phrase",
    ],
    1,
    "Faire une inference consiste a relier des indices du texte et ses connaissances pour comprendre une information non dite explicitement.",
    "Quand vous lisez, demandez-vous ce que le texte laisse comprendre sans l'affirmer directement.",
  ],
  [
    "diag-comp-2",
    "Identifier un point de vue narratif simple",
    'Dans "Je traversai la cour en silence", le narrateur raconte :',
    ["A la premiere personne", "A la deuxieme personne", "A la troisieme personne"],
    0,
    'Le pronom "je" montre que le narrateur parle de lui-meme.',
    "Reperez les pronoms sujets dominants avant de conclure.",
  ],
  [
    "diag-comp-3",
    "Identifier une information explicite",
    'Dans "Lina posa son cartable sur le banc avant d\'entrer en classe", ou pose-t-elle son cartable ?',
    ["Sous la table", "Sur le banc", "Dans l'armoire"],
    1,
    'La reponse est donnee explicitement dans la phrase: "sur le banc".',
    "Avant d'inferer, verifiez si la reponse est deja ecrite dans le texte.",
  ],
  [
    "diag-comp-4",
    "Reconnaitre un connecteur d'opposition",
    'Dans la phrase "Il avait revise, pourtant il a echoue", le mot "pourtant" marque :',
    ["Une addition", "Une opposition", "Une cause"],
    1,
    '"Pourtant" oppose ici le resultat a ce qu\'on pouvait attendre.',
    "Appuyez-vous sur la relation logique entre les deux morceaux de phrase.",
  ],
  [
    "diag-comp-5",
    "Identifier le referent d'un pronom en lecture",
    'Dans "Lina prend son parapluie. Elle sort aussitot.", le pronom "Elle" renvoie a :',
    ["Lina", "Le parapluie", "La porte"],
    0,
    '"Elle" reprend le personnage feminin deja mentionne: Lina.',
    "Cherchez le dernier nom compatible en genre et en nombre.",
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
    "Identifier un enjeu didactique fondamental",
    "Qu'est-ce que la conscience phonologique ?",
    [
      "La connaissance des regles d'orthographe",
      "La capacite a identifier et manipuler les sons de la langue",
      "La reconnaissance des lettres de l'alphabet",
    ],
    1,
    "La conscience phonologique concerne les sons de la langue orale: syllabes, rimes, phonemes.",
    "Distinguez bien ce qui releve de l'oral, de l'ecrit et du code orthographique.",
  ],
  [
    "diag-did-2",
    "Reconnaitre une pratique efficace en comprehension",
    "Parmi ces pratiques, laquelle aide le plus les eleves a progresser en comprehension ?",
    [
      "Leur demander seulement de relire en silence",
      "Enseigner explicitement des strategies comme anticiper, verifier et inferer",
      "Se limiter a corriger les mots mal lus",
    ],
    1,
    "Les progres en comprehension passent par un enseignement explicite des procedures de lecteur.",
    "Cherchez la pratique qui rend visible une strategie d'apprentissage.",
  ],
  [
    "diag-did-3",
    "Comprendre le principe alphabetique",
    "Le principe alphabetique correspond d'abord au fait que :",
    [
      "Les lettres sont rangees dans un ordre fixe",
      "Les graphies codent des unites sonores de la langue",
      "Chaque mot doit etre appris globalement",
    ],
    1,
    "Le principe alphabetique repose sur la relation entre l'ecrit et les sons de la langue.",
    "Reliez toujours l'apprentissage du code aux correspondances graphemes-phonemes.",
  ],
  [
    "diag-did-4",
    "Analyser une erreur d'eleve",
    'Un eleve ecrit "les enfant chante". La premiere attitude utile de l\'enseignant est de :',
    [
      "Dire seulement que c'est faux",
      "Chercher ce que l'eleve a compris ou non de l'accord",
      "Passer a un autre exercice",
    ],
    1,
    "L'erreur devient exploitable quand on essaie d'en comprendre la logique.",
    "En didactique, on analyse d'abord l'obstacle avant de remedier.",
  ],
  [
    "diag-did-5",
    "Identifier une activite de conscience phonologique",
    "Laquelle de ces activites releve de la conscience phonologique ?",
    [
      "Trouver des mots qui riment",
      "Recopier dix fois une regle",
      "Classer des noms par ordre alphabetique",
    ],
    0,
    "Chercher des rimes revient a manipuler les sons de la langue orale.",
    "Distinguez les taches sur les sons, sur les lettres et sur les regles.",
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
      (() => {
        const questions = frenchDiagnosticQuestionBank.filter(
          (question) => question.subdomain === subdomain,
        );
        const advancedQuestions = shuffle(
          questions.filter((question) => getDifficultyTier(question.id) === "avance"),
          randomFn,
        );
        const foundationQuestions = shuffle(
          questions.filter((question) => getDifficultyTier(question.id) === "fondation"),
          randomFn,
        );

        return [...advancedQuestions, ...foundationQuestions];
      })(),
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
