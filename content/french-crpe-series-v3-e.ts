import { ExerciseRecord, RevisionSession } from "@/types/domain";

const createdAt = "2026-03-19T08:00:00.000Z";

type QuestionInput = Omit<
  ExerciseRecord,
  "subject" | "validation_status" | "source" | "is_published" | "created_at" | "updated_at" | "level" | "access_tier"
>;

type SessionInput = Omit<RevisionSession, "questionCount" | "level" | "estimatedMinutes" | "access_tier">;

function question(data: QuestionInput): ExerciseRecord {
  return {
    subject: "Francais",
    validation_status: "valide",
    source: "Serie CRPE Francais V3",
    is_published: true,
    created_at: createdAt,
    updated_at: createdAt,
    common_mistake: null,
    ...data,
  };
}

function buildSession(data: SessionInput): RevisionSession {
  return { ...data, questionCount: data.questions.length };
}

function qcm(
  id: string,
  subdomain: ExerciseRecord["subdomain"],
  instruction: string,
  choices: Array<{ id: string; label: string }>,
  value: string,
  explanation: string,
  commonMistake: string,
) {
  return question({
    id,
    subdomain,
    exercise_type: "qcm",
    instruction,
    support_text: null,
    choices,
    expected_answer: { mode: "single_choice", value },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    topic_key: null,
    topic_label: null,
  });
}

function vraiFaux(
  id: string,
  subdomain: ExerciseRecord["subdomain"],
  instruction: string,
  value: boolean,
  explanation: string,
  commonMistake: string,
) {
  return question({
    id,
    subdomain,
    exercise_type: "vrai_faux",
    instruction,
    support_text: null,
    choices: [{ id: "true", label: "Vrai" }, { id: "false", label: "Faux" }],
    expected_answer: { mode: "boolean", value },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    topic_key: null,
    topic_label: null,
  });
}

function reponseCourte(
  id: string,
  subdomain: ExerciseRecord["subdomain"],
  instruction: string,
  acceptableAnswers: string[],
  explanation: string,
  commonMistake: string,
  exercise_type: ExerciseRecord["exercise_type"] = "reponse_courte",
  support_text: string | null = null,
) {
  return question({
    id,
    subdomain,
    exercise_type,
    instruction,
    support_text,
    choices: null,
    expected_answer: { mode: "text", acceptableAnswers },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    topic_key: null,
    topic_label: null,
  });
}

export const seriesV3BatchE: RevisionSession[] = [
  buildSession({
    id: "fr-v3-serie-tri-nom-verbe-adjectif",
    title: "Tri par catégories : nom, verbe, adjectif",
    summary: "Classer des mots simples et piégeux dans trois catégories fondamentales de la grammaire.",
    objective: "Distinguer nom, verbe et adjectif en s'appuyant sur le contexte de la phrase.",
    introduction:
      "Le tri par catégories oblige à lire le mot en contexte, pas seulement à reconnaître sa forme. Cette série stabilise un automatisme de base très rentable pour tout le reste de la grammaire.",
    subdomain: "grammaire",
    topicKey: "tri_nom_verbe_adjectif",
    topicLabel: "Tri par catégories : nom, verbe, adjectif",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 61,
    completionSummary: {
      skill: "Classer rapidement un mot comme nom, verbe ou adjectif",
      keyPoints: [
        "Le nom désigne souvent un être, une chose ou une notion et peut être introduit par un déterminant.",
        "Le verbe se reconnaît par sa conjugaison ou par sa place dans le groupe verbal.",
        "L'adjectif qualifie un nom ou un pronom et s'accorde souvent avec lui.",
      ],
      retryAdvice:
        "Quand un mot semble piégeux, regardez ce qui le précède et ce qu'il complète dans la phrase.",
    },
    questions: [
      qcm("v3e-nva-1", "grammaire", 'Dans "Le chat dort", dans quelle catégorie faut-il classer "chat" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "a", '"Chat" est le noyau du groupe nominal sujet "Le chat" : c\'est un nom.', "Se laisser guider par le sens global de la phrase sans repérer le groupe nominal."),
      qcm("v3e-nva-2", "grammaire", 'Dans "Les élèves parlent", dans quelle catégorie faut-il classer "parlent" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "b", '"Parlent" est le verbe conjugué de la phrase : il exprime l\'action et s\'accorde avec "les élèves".', "Confondre le mot qui porte l'action avec un nom d'action."),
      qcm("v3e-nva-3", "grammaire", 'Dans "une candidate courageuse", dans quelle catégorie faut-il classer "courageuse" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "c", '"Courageuse" qualifie le nom "candidate" et s\'accorde avec lui : c\'est un adjectif.', "Répondre épithète ou attribut alors que l'on demande la nature grammaticale."),
      qcm("v3e-nva-4", "grammaire", 'Dans "un conseil utile", dans quelle catégorie faut-il classer "utile" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "c", '"Utile" apporte une qualité au nom "conseil" : c\'est un adjectif.', "Confondre l'adjectif avec le nom qu'il accompagne."),
      qcm("v3e-nva-5", "grammaire", 'Dans "Ils corrigent leur copie", dans quelle catégorie faut-il classer "corrigent" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "b", '"Corrigent" est le verbe conjugué de la phrase. Il commande le groupe verbal.', "Chercher le mot le plus important du sens au lieu de repérer le verbe."),
      vraiFaux("v3e-nva-6", "grammaire", 'Vrai ou faux : dans "la réponse juste", "juste" est un adjectif.', true, '"Juste" qualifie le nom "réponse" : c\'est bien un adjectif.', "Confondre la valeur de qualité avec une fonction syntaxique."),
      reponseCourte("v3e-nva-7", "grammaire", 'Dans "les élèves attentifs", dans quelle catégorie faut-il classer "élèves" ?', ["nom", "un nom", "Nom", "Un nom"], '"Élèves" est le noyau du groupe nominal. C\'est donc un nom.', "Répondre sujet alors que la consigne demande une catégorie grammaticale."),
      qcm("v3e-nva-8", "grammaire", 'Dans "La fatigue revient vite", dans quelle catégorie faut-il classer "fatigue" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "a", 'Ici "fatigue" est précédé de l\'article "la" : le mot est employé comme nom.', "Se fier au fait que fatiguer existe comme verbe sans regarder le contexte."),
      qcm("v3e-nva-9", "grammaire", 'Dans "Il calme le groupe", dans quelle catégorie faut-il classer "calme" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "b", 'Dans cette phrase, "calme" est le verbe conjugué qui dit ce que fait le sujet "il".', "Classer automatiquement calme comme adjectif parce qu'il peut aussi l'être dans d'autres phrases."),
      vraiFaux("v3e-nva-10", "grammaire", 'Vrai ou faux : dans "un texte clair", "clair" appartient à la catégorie des verbes.', false, '"Clair" qualifie le nom "texte" : ce n\'est pas un verbe, mais un adjectif.', "Confondre un mot qualificatif avec le noyau du groupe verbal."),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-determinant-pronom-adverbe",
    title: "Tri par catégories : déterminant, pronom, adverbe",
    summary: "Classer des mots outils très fréquents qui se ressemblent parfois mais n'ont pas la même nature.",
    objective: "Distinguer déterminant, pronom et adverbe dans des phrases courtes.",
    introduction:
      "Ces trois catégories sont souvent confondues parce qu'elles sont courtes et très fréquentes. Le bon réflexe consiste à regarder si le mot accompagne un nom, remplace un groupe nominal ou modifie un autre mot.",
    subdomain: "grammaire",
    topicKey: "tri_determinant_pronom_adverbe",
    topicLabel: "Tri par catégories : déterminant, pronom, adverbe",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 62,
    completionSummary: {
      skill: "Distinguer trois mots-outils très fréquents",
      keyPoints: [
        "Le déterminant accompagne un nom.",
        "Le pronom tient lieu d'un GN (groupe nominal).",
        "L'adverbe modifie souvent un verbe, un adjectif ou un autre adverbe.",
      ],
      retryAdvice:
        "Demandez-vous toujours si le mot est suivi d'un nom, s'il tient lieu d'un GN ou s'il précise un autre mot.",
    },
    questions: [
      qcm("v3e-dpa-1", "grammaire", 'Dans "ce manuel", dans quelle catégorie faut-il classer "ce" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "a", '"Ce" introduit le nom "manuel" : c\'est un déterminant démonstratif.', "Répondre pronom sans voir qu'un nom suit immédiatement."),
      qcm("v3e-dpa-2", "grammaire", 'Dans "ceux qui réussissent", dans quelle catégorie faut-il classer "ceux" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "b", '"Ceux" remplace un groupe nominal entier : c\'est un pronom démonstratif.', "Chercher un nom après le mot alors qu'il fonctionne seul."),
      qcm("v3e-dpa-3", "grammaire", 'Dans "elle relit très vite", dans quelle catégorie faut-il classer "très" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "c", '"Très" modifie l\'adverbe "vite" : c\'est un adverbe.', "Le classer parmi les mots-outils sans regarder ce qu'il modifie."),
      qcm("v3e-dpa-4", "grammaire", 'Dans "leur cahier est prêt", dans quelle catégorie faut-il classer "leur" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "a", '"Leur" accompagne le nom "cahier" : ici, c\'est un déterminant possessif.', 'Confondre avec le pronom "leur" de "je leur parle".'),
      qcm("v3e-dpa-5", "grammaire", 'Dans "Demain, nous réviserons", dans quelle catégorie faut-il classer "demain" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "c", '"Demain" précise le moment de l\'action : c\'est un adverbe.', "Le traiter comme un nom de temps sans regarder sa fonction dans la phrase."),
      qcm("v3e-dpa-6", "grammaire", 'Dans "Personne n\'a répondu", dans quelle catégorie faut-il classer "personne" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "b", '"Personne" remplace un groupe nominal et occupe la place du sujet : c\'est un pronom indéfini.', 'Confondre le mot avec le nom "personne" dans "une personne".'),
      vraiFaux("v3e-dpa-7", "grammaire", 'Vrai ou faux : dans "elles réussissent vite", "vite" est un adverbe.', true, '"Vite" modifie le verbe "réussissent" : c\'est bien un adverbe.', "Le classer comme adjectif parce qu'il exprime une qualité."),
      qcm("v3e-dpa-8", "grammaire", 'Dans "ces règles sont utiles", dans quelle catégorie faut-il classer "ces" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "a", '"Ces" introduit le nom "règles" : c\'est un déterminant démonstratif.', "Oublier de vérifier si le mot est suivi d'un nom."),
      reponseCourte("v3e-dpa-9", "grammaire", 'Dans "Beaucoup travaillent en silence", dans quelle catégorie faut-il classer "beaucoup" ?', ["pronom", "un pronom", "Pronom", "un pronom indéfini", "pronom indéfini", "pronom indéfini", "un pronom indéfini"], 'Dans cette phrase, "beaucoup" remplace un groupe de personnes : il est employé comme pronom indéfini.', 'Répondre adverbe par automatisme sans regarder qu\'il est sujet du verbe.'),
      qcm("v3e-dpa-10", "grammaire", 'Dans "Il travaille beaucoup", dans quelle catégorie faut-il classer "beaucoup" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "c", 'Ici, "beaucoup" modifie le verbe "travaille" : c\'est un adverbe.', "Ne pas voir que le même mot peut changer de catégorie selon le contexte."),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-mots-de-liaison",
    title: "Tri par catégories : mots de liaison",
    summary: "Classer des mots et locutions de liaison selon leur nature grammaticale.",
    objective: "Distinguer préposition, conjonction de coordination et conjonction de subordination.",
    introduction:
      "Les mots de liaison sont décisifs en analyse grammaticale. Cette série entraîne à les classer correctement pour mieux lire les relations entre les groupes et les propositions.",
    subdomain: "grammaire",
    topicKey: "tri_mots_liaison",
    topicLabel: "Tri par catégories : mots de liaison",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 63,
    completionSummary: {
      skill: "Classer correctement les mots de liaison",
      keyPoints: [
        "La préposition introduit un groupe, souvent nominal.",
        "La conjonction de coordination relie des mots, groupes ou propositions de même niveau.",
        "La conjonction de subordination introduit une proposition subordonnée.",
      ],
      retryAdvice:
        "Repérez d'abord si le mot introduit un groupe nominal ou une proposition entière : c'est souvent le bon point de départ.",
    },
    questions: [
      qcm("v3e-lia-1", "grammaire", 'Dans "Il part parce qu\'il est fatigué", dans quelle catégorie faut-il classer "parce que" ?', [{ id: "a", label: "Préposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "c", '"Parce que" introduit une proposition subordonnée de cause : c\'est une conjonction de subordination.', "Confondre la relation logique de cause avec une coordination."),
      qcm("v3e-lia-2", "grammaire", 'Dans "Il voulait venir, mais il était malade", dans quelle catégorie faut-il classer "mais" ?', [{ id: "a", label: "Préposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "b", '"Mais" relie deux propositions de même niveau : c\'est une conjonction de coordination.', "Le traiter comme un simple mot logique sans nommer sa vraie nature."),
      qcm("v3e-lia-3", "grammaire", 'Dans "dans la classe", dans quelle catégorie faut-il classer "dans" ?', [{ id: "a", label: "Préposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "a", '"Dans" introduit le groupe prépositionnel "dans la classe" : c\'est une préposition.', "Confondre l'introduction d'un groupe avec l'introduction d'une proposition."),
      qcm("v3e-lia-4", "grammaire", 'Dans "quoique le cas soit rare", dans quelle catégorie faut-il classer "quoique" ?', [{ id: "a", label: "Préposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "c", '"Quoique" introduit une proposition subordonnée de concession : c\'est une conjonction de subordination.', "Le rapprocher à tort de ou ou de mais."),
      qcm("v3e-lia-5", "grammaire", 'Dans "avec soin", dans quelle catégorie faut-il classer "avec" ?', [{ id: "a", label: "Préposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "a", '"Avec" introduit un groupe prépositionnel : c\'est une préposition.', "Confondre la relation de moyen avec un lien entre deux propositions."),
      vraiFaux("v3e-lia-6", "grammaire", 'Vrai ou faux : dans "ni Paul ni Léa", "ni" est une conjonction de coordination.', true, '"Ni" appartient au groupe des conjonctions de coordination. Il relie ici deux éléments de même niveau dans un contexte négatif.', "Oublier que les coordinations ne sont pas limitées à et et mais."),
      qcm("v3e-lia-7", "grammaire", 'Dans "afin qu\'il comprenne", dans quelle catégorie faut-il classer "afin que" ?', [{ id: "a", label: "Préposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "c", '"Afin que" introduit une subordonnée de but : c\'est une conjonction de subordination.', "Chercher un nom après la locution alors qu'elle introduit un verbe conjugué."),
      qcm("v3e-lia-8", "grammaire", 'Dans "chez le voisin", dans quelle catégorie faut-il classer "chez" ?', [{ id: "a", label: "Préposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "a", '"Chez" introduit un groupe nominal : c\'est une préposition.', "Le confondre avec un adverbe de lieu."),
      reponseCourte("v3e-lia-9", "grammaire", 'Dans "car il avait révisé", dans quelle catégorie faut-il classer "car" ?', ["conjonction de coordination", "coordination"], '"Car" est une conjonction de coordination exprimant la cause.', "Le classer parmi les subordonnants parce qu'il donne une explication."),
      qcm("v3e-lia-10", "grammaire", 'Dans "Il est prêt, or son binôme ne l\'est pas", dans quelle catégorie faut-il classer "or" ?', [{ id: "a", label: "Préposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "b", '"Or" relie deux propositions de même niveau en introduisant une nuance logique : c\'est une conjonction de coordination.', "Ne pas connaître cette conjonction plus rare et la ranger parmi les adverbes."),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-variables-invariables",
    title: "Tri par catégories : variables ou invariables",
    summary: "Identifier si un mot change de forme selon le genre, le nombre, la personne ou reste stable.",
    objective: "Distinguer mots variables et mots invariables avec quelques cas piégeux.",
    introduction:
      "Ce tri est un excellent raccourci pour renforcer l'analyse grammaticale. Savoir si un mot varie ou non aide ensuite à mieux accorder et à mieux classer les mots.",
    subdomain: "grammaire",
    topicKey: "tri_variables_invariables",
    topicLabel: "Tri par catégories : variables ou invariables",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 64,
    completionSummary: {
      skill: "Distinguer les mots variables des mots invariables",
      keyPoints: [
        "Les noms, verbes, adjectifs, déterminants et de nombreux pronoms sont variables.",
        "Les prépositions, conjonctions et beaucoup d'adverbes sont invariables.",
        "La notion de variabilité est morphologique : on regarde la forme du mot, pas seulement son sens.",
      ],
      retryAdvice:
        "Quand vous hésitez, demandez-vous si le mot peut changer de genre, de nombre, de personne ou de temps.",
    },
    questions: [
      qcm("v3e-var-1", "grammaire", 'Dans quelle catégorie faut-il classer "rapidement" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "b", '"Rapidement" est un adverbe : il ne varie pas.', "Penser que tous les mots longs ou dérivés sont nécessairement variables."),
      qcm("v3e-var-2", "grammaire", 'Dans quelle catégorie faut-il classer "belles" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "a", '"Belles" est un adjectif : il varie selon le genre et le nombre.', "Confondre la forme observée avec la propriété générale du mot."),
      qcm("v3e-var-3", "grammaire", 'Dans quelle catégorie faut-il classer "leurs" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "a", '"Leurs" est un déterminant possessif : il varie au moins en nombre.', "Le confondre avec une forme figée à cause de sa terminaison déjà marquée."),
      qcm("v3e-var-4", "grammaire", 'Dans quelle catégorie faut-il classer "très" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "b", '"Très" est un adverbe : il est invariable.', "Chercher une variation de sens au lieu de regarder la forme."),
      vraiFaux("v3e-var-5", "grammaire", 'Vrai ou faux : "parce que" appartient à la catégorie des mots invariables.', true, 'La locution conjonctive "parce que" ne varie pas : elle est invariable.', "Oublier que certaines locutions entières fonctionnent comme des mots invariables."),
      qcm("v3e-var-6", "grammaire", 'Dans quelle catégorie faut-il classer "jamais" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "b", '"Jamais" est un adverbe : sa forme ne varie pas.', "Le ranger parmi les pronoms ou les déterminants parce qu'il est fréquemment employé."),
      qcm("v3e-var-7", "grammaire", 'Dans quelle catégorie faut-il classer "nous" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "a", '"Nous" appartient au système des pronoms personnels, qui varie selon la personne et le nombre.', "Penser qu'un mot court est forcément invariable."),
      reponseCourte("v3e-var-8", "grammaire", 'Dans "cet exercice", "cet" est-il variable ou invariable ?', ["variable", "mot variable", "Variable", "un mot variable"], '"Cet" est un déterminant démonstratif. Il varie selon le genre et le nombre : ce, cet, cette, ces.', "Oublier les autres formes possibles du déterminant démonstratif."),
      vraiFaux("v3e-var-9", "grammaire", 'Vrai ou faux : le mot "et" peut prendre une marque de pluriel.', false, '"Et" est une conjonction de coordination invariable. Il ne prend jamais de marque de genre ou de nombre.', "Confondre la notion de coordination avec un accord syntaxique."),
      qcm("v3e-var-10", "grammaire", 'Dans quelle catégorie faut-il classer "hier" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "b", '"Hier" est un adverbe de temps. Il est invariable.', "Le confondre avec un nom de date ou de moment."),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-familles-determinants",
    title: "Tri par catégories : familles de déterminants",
    summary: "Classer les déterminants selon leur sous-catégorie grammaticale.",
    objective: "Distinguer articles, déterminants possessifs, démonstratifs, indéfinis, interrogatifs et exclamatifs.",
    introduction:
      "Tous les déterminants ne se ressemblent pas. Les classer par familles rend ensuite l'analyse des groupes nominaux beaucoup plus précise.",
    subdomain: "grammaire",
    topicKey: "tri_familles_determinants",
    topicLabel: "Tri par catégories : familles de déterminants",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 65,
    completionSummary: {
      skill: "Identifier la bonne famille de déterminant",
      keyPoints: [
        "Les articles définis, indéfinis et partitifs appartiennent à la famille des articles.",
        "Les déterminants possessifs et démonstratifs se repèrent à leur valeur de possession ou de désignation.",
        "Les déterminants indéfinis, interrogatifs et exclamatifs demandent une lecture fine du contexte.",
      ],
      retryAdvice:
        "Vérifiez toujours la nuance apportée au nom : désignation, possession, quantité vague, question ou exclamation.",
    },
    questions: [
      qcm("v3e-det-1", "grammaire", 'Dans "les élèves", dans quelle famille faut-il classer "les" ?', [{ id: "a", label: "Article défini" }, { id: "b", label: "Article indéfini" }, { id: "c", label: "Déterminant possessif" }, { id: "d", label: "Déterminant démonstratif" }], "a", '"Les" est l\'article défini pluriel.', "Le classer comme démonstratif parce qu'il montre un groupe déjà connu."),
      qcm("v3e-det-2", "grammaire", 'Dans "un exemple", dans quelle famille faut-il classer "un" ?', [{ id: "a", label: "Article défini" }, { id: "b", label: "Article indéfini" }, { id: "c", label: "Article partitif" }, { id: "d", label: "Déterminant possessif" }], "b", '"Un" introduit ici un nom non encore identifié : c\'est un article indéfini.', "Confondre article indéfini et numéral."),
      qcm("v3e-det-3", "grammaire", 'Dans "du courage", dans quelle famille faut-il classer "du" ?', [{ id: "a", label: "Article défini contracté" }, { id: "b", label: "Article indéfini" }, { id: "c", label: "Article partitif" }, { id: "d", label: "Déterminant démonstratif" }], "c", '"Du" devant un nom massif comme "courage" est un article partitif.', "Le traiter comme la contraction de de le sans regarder le sens partitif."),
      qcm("v3e-det-4", "grammaire", 'Dans "ces copies", dans quelle famille faut-il classer "ces" ?', [{ id: "a", label: "Déterminant démonstratif" }, { id: "b", label: "Déterminant possessif" }, { id: "c", label: "Déterminant indéfini" }, { id: "d", label: "Article défini" }], "a", '"Ces" sert à désigner : c\'est un déterminant démonstratif.', 'Le confondre avec le possessif "ses".'),
      qcm("v3e-det-5", "grammaire", 'Dans "mon cahier", dans quelle famille faut-il classer "mon" ?', [{ id: "a", label: "Déterminant démonstratif" }, { id: "b", label: "Déterminant possessif" }, { id: "c", label: "Déterminant indéfini" }, { id: "d", label: "Article indéfini" }], "b", '"Mon" marque la possession : c\'est un déterminant possessif.', "Le traiter comme un simple article devant un nom singulier."),
      qcm("v3e-det-6", "grammaire", 'Dans "plusieurs candidats", dans quelle famille faut-il classer "plusieurs" ?', [{ id: "a", label: "Déterminant démonstratif" }, { id: "b", label: "Déterminant possessif" }, { id: "c", label: "Déterminant indéfini" }, { id: "d", label: "Article défini" }], "c", '"Plusieurs" donne une quantité non précisée exactement : c\'est un déterminant indéfini.', "Le réduire à une simple indication numérique sans voir sa catégorie."),
      vraiFaux("v3e-det-7", "grammaire", 'Vrai ou faux : dans "Quel livre choisis-tu ?", "quel" est un déterminant interrogatif.', true, '"Quel" introduit le nom "livre" dans une question : c\'est un déterminant interrogatif.', "Oublier qu'un même mot peut être interrogatif ou exclamatif selon le contexte."),
      reponseCourte("v3e-det-8", "grammaire", 'Dans "Quelle belle idée !", dans quelle famille faut-il classer "Quelle" ?', ["déterminant exclamatif", "exclamatif"], 'Ici "Quelle" introduit le nom "idée" dans une exclamation : c\'est un déterminant exclamatif.', "Répondre interrogatif uniquement à cause de la forme du mot."),
      qcm("v3e-det-9", "grammaire", 'Dans "aucun élève", dans quelle famille faut-il classer "aucun" ?', [{ id: "a", label: "Déterminant indéfini" }, { id: "b", label: "Déterminant possessif" }, { id: "c", label: "Article défini" }, { id: "d", label: "Article partitif" }], "a", '"Aucun" exprime une quantité nulle sans désigner : c\'est un déterminant indéfini.', "Le prendre pour un adverbe négatif."),
      qcm("v3e-det-10", "grammaire", 'Dans "notre projet", dans quelle famille faut-il classer "notre" ?', [{ id: "a", label: "Déterminant démonstratif" }, { id: "b", label: "Déterminant possessif" }, { id: "c", label: "Déterminant indéfini" }, { id: "d", label: "Article défini" }], "b", '"Notre" exprime la possession : c\'est un déterminant possessif.', "Confondre la possession avec une simple désignation du nom."),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-familles-pronoms",
    title: "Tri par catégories : familles de pronoms",
    summary: "Classer des pronoms selon leur sous-catégorie grammaticale.",
    objective: "Distinguer pronoms personnels, démonstratifs, possessifs, relatifs, indéfinis et interrogatifs.",
    introduction:
      "Les pronoms sont un terrain classique de confusion au CRPE. Cette série vous entraîne à les classer finement en vous appuyant sur leur fonctionnement dans la phrase.",
    subdomain: "grammaire",
    topicKey: "tri_familles_pronoms",
    topicLabel: "Tri par catégories : familles de pronoms",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 66,
    completionSummary: {
      skill: "Identifier la bonne famille de pronom",
      keyPoints: [
        "Le pronom personnel renvoie à une personne grammaticale ou reprend un groupe nominal.",
        "Le pronom relatif introduit une subordonnée et renvoie à un antécédent.",
        "Le pronom démonstratif, possessif, indéfini ou interrogatif se repère par sa valeur et par son contexte.",
      ],
      retryAdvice:
        "Cherchez si le pronom reprend un antécédent, marque la personne, la possession, la désignation, la quantité vague ou l'interrogation.",
    },
    questions: [
      qcm("v3e-pro-1", "grammaire", 'Dans "il réussit", dans quelle famille faut-il classer "il" ?', [{ id: "a", label: "Pronom personnel" }, { id: "b", label: "Pronom démonstratif" }, { id: "c", label: "Pronom relatif" }, { id: "d", label: "Pronom indéfini" }], "a", '"Il" appartient à la série des pronoms personnels.', "Le classer comme démonstratif parce qu'il renvoie à quelqu'un déjà connu."),
      qcm("v3e-pro-2", "grammaire", 'Dans "ceux-ci sont prêts", dans quelle famille faut-il classer "ceux-ci" ?', [{ id: "a", label: "Pronom personnel" }, { id: "b", label: "Pronom démonstratif" }, { id: "c", label: "Pronom possessif" }, { id: "d", label: "Pronom relatif" }], "b", '"Ceux-ci" sert à désigner un groupe : c\'est un pronom démonstratif.', "Le confondre avec un déterminant alors qu'il fonctionne seul."),
      qcm("v3e-pro-3", "grammaire", 'Dans "Le mien est rangé", dans quelle famille faut-il classer "mien" ?', [{ id: "a", label: "Pronom possessif" }, { id: "b", label: "Pronom démonstratif" }, { id: "c", label: "Pronom personnel" }, { id: "d", label: "Pronom relatif" }], "a", '"Le mien" remplace un groupe nominal en marquant la possession : c\'est un pronom possessif.', "Le prendre pour un adjectif possessif sans voir qu'aucun nom ne suit."),
      qcm("v3e-pro-4", "grammaire", 'Dans "La fille qui lit", dans quelle famille faut-il classer "qui" ?', [{ id: "a", label: "Pronom indéfini" }, { id: "b", label: "Pronom démonstratif" }, { id: "c", label: "Pronom relatif" }, { id: "d", label: "Pronom personnel" }], "c", '"Qui" introduit une relative et reprend l\'antécédent "fille" : c\'est un pronom relatif.', "Le ranger parmi les interrogatifs uniquement à cause de sa forme."),
      qcm("v3e-pro-5", "grammaire", 'Dans "Personne ne bouge", dans quelle famille faut-il classer "personne" ?', [{ id: "a", label: "Pronom indéfini" }, { id: "b", label: "Pronom personnel" }, { id: "c", label: "Pronom possessif" }, { id: "d", label: "Pronom démonstratif" }], "a", '"Personne" désigne un référent non spécifié : c\'est un pronom indéfini.', 'Le confondre avec le nom "personne".'),
      vraiFaux("v3e-pro-6", "grammaire", 'Vrai ou faux : dans "Qui vient ?", "Qui" est un pronom interrogatif.', true, 'Dans une question directe, "qui" est bien un pronom interrogatif.', "Confondre forme interrogative et relative sans regarder l'absence d'antécédent."),
      qcm("v3e-pro-7", "grammaire", 'Dans "Celui-là est plus clair", dans quelle famille faut-il classer "Celui-là" ?', [{ id: "a", label: "Pronom possessif" }, { id: "b", label: "Pronom démonstratif" }, { id: "c", label: "Pronom personnel" }, { id: "d", label: "Pronom interrogatif" }], "b", '"Celui-là" désigne un élément : c\'est un pronom démonstratif.', "Chercher un nom absent au lieu de regarder la fonction autonome du mot."),
      reponseCourte("v3e-pro-8", "grammaire", 'Dans "Les tiens arrivent", dans quelle famille faut-il classer "les tiens" ?', ["pronom possessif", "possessif"], '"Les tiens" remplace un groupe nominal tout en marquant la possession : c\'est un pronom possessif.', "Le confondre avec un déterminant possessif alors qu'il n'introduit aucun nom."),
      qcm("v3e-pro-9", "grammaire", 'Dans "J\'en veux encore", dans quelle famille faut-il classer "en" ?', [{ id: "a", label: "Pronom personnel" }, { id: "b", label: "Pronom démonstratif" }, { id: "c", label: "Pronom relatif" }, { id: "d", label: "Pronom indéfini" }], "a", '"En" est ici un pronom personnel adverbial qui reprend un complément.', "Le ranger comme adverbe parce qu'il est court et placé avant le verbe."),
      qcm("v3e-pro-10", "grammaire", 'Dans "Chacun avance à son rythme", dans quelle famille faut-il classer "chacun" ?', [{ id: "a", label: "Pronom indéfini" }, { id: "b", label: "Pronom personnel" }, { id: "c", label: "Pronom possessif" }, { id: "d", label: "Pronom interrogatif" }], "a", '"Chacun" désigne un élément d\'un ensemble sans le nommer : c\'est un pronom indéfini.', "Le confondre avec un déterminant parce qu'il exprime une distribution."),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-formes-verbales",
    title: "Tri par catégories : formes verbales",
    summary: "Classer des formes verbales selon leur statut morphologique.",
    objective: "Distinguer verbe conjugué, infinitif, participe passé et participe présent.",
    introduction:
      "Le verbe n'apparaît pas toujours sous une forme conjuguée. Cette série aide à classer les différentes formes verbales, ce qui soutient autant la conjugaison que l'analyse grammaticale.",
    subdomain: "grammaire",
    topicKey: "tri_formes_verbales",
    topicLabel: "Tri par catégories : formes verbales",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 67,
    completionSummary: {
      skill: "Classer correctement les formes verbales",
      keyPoints: [
        "Le verbe conjugué porte une marque de temps, de mode et souvent de personne.",
        "L'infinitif est la forme non personnelle de base du verbe.",
        "Le participe passé et le participe présent ont des emplois syntaxiques distincts.",
      ],
      retryAdvice:
        "Repérez si la forme peut porter l'accord d'un participe, la marque d'une personne ou si elle reste à la forme de dictionnaire.",
    },
    questions: [
      qcm("v3e-vrb-1", "grammaire", 'Dans quelle catégorie faut-il classer "manger" ?', [{ id: "a", label: "Verbe conjugué" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passé" }, { id: "d", label: "Participe présent" }], "b", '"Manger" est la forme de base du verbe : c\'est un infinitif.', "Le confondre avec une forme conjuguée en -er par simple ressemblance visuelle."),
      qcm("v3e-vrb-2", "grammaire", 'Dans "Il mange vite", dans quelle catégorie faut-il classer "mange" ?', [{ id: "a", label: "Verbe conjugué" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passé" }, { id: "d", label: "Participe présent" }], "a", '"Mange" est une forme personnelle, ici au présent de l\'indicatif : c\'est un verbe conjugué.', "Ne pas tenir compte du sujet il et de la relation d'accord."),
      qcm("v3e-vrb-3", "grammaire", 'Dans "La porte fermée", dans quelle catégorie faut-il classer "fermée" ?', [{ id: "a", label: "Verbe conjugué" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passé" }, { id: "d", label: "Participe présent" }], "c", '"Fermée" est une forme en -e issue du verbe "fermer" : c\'est un participe passé.', "La classer comme adjectif sans voir sa nature verbale d'origine dans ce tri spécifique."),
      qcm("v3e-vrb-4", "grammaire", 'Dans "Un élève souriant", dans quelle catégorie faut-il classer "souriant" ?', [{ id: "a", label: "Verbe conjugué" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passé" }, { id: "d", label: "Participe présent" }], "d", '"Souriant" est ici un participe présent.', "Confondre terminaison en -ant et gérondif sans vérifier la présence de en."),
      qcm("v3e-vrb-5", "grammaire", 'Dans "Elle semble avoir compris", dans quelle catégorie faut-il classer "avoir" ?', [{ id: "a", label: "Verbe conjugué" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passé" }, { id: "d", label: "Participe présent" }], "b", '"Avoir" est à l\'infinitif après le verbe "semble".', "Le confondre avec un auxiliaire conjugué parce qu'il appartient au système verbal."),
      vraiFaux("v3e-vrb-6", "grammaire", 'Vrai ou faux : dans "Ils avaient fermé la porte", "fermé" est un participe passé.', true, '"Fermé" est le participe passé employé avec l\'auxiliaire "avaient".', "Le prendre pour un adjectif à cause de sa forme proche."),
      reponseCourte("v3e-vrb-7", "grammaire", 'Dans "Les volets ouverts laissaient entrer la lumière", dans quelle catégorie faut-il classer "ouverts" ?', ["participe passé"], '"Ouverts" est un participe passé issu du verbe "ouvrir".', "Répondre adjectif sans respecter le tri demandé sur les formes verbales."),
      qcm("v3e-vrb-8", "grammaire", 'Dans "Nous finissons à midi", dans quelle catégorie faut-il classer "finissons" ?', [{ id: "a", label: "Verbe conjugué" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passé" }, { id: "d", label: "Participe présent" }], "a", '"Finissons" est une forme conjuguée à la 1re personne du pluriel.', "Oublier que les terminaisons personnelles marquent une conjugaison."),
      vraiFaux("v3e-vrb-9", "grammaire", 'Vrai ou faux : dans "Souriant, il entra", "souriant" est un participe présent.', true, 'Ici "souriant" est bien un participe présent employé en construction détachée.', "Le confondre avec un adjectif pur sans tenir compte du tri verbal."),
      qcm("v3e-vrb-10", "grammaire", 'Dans "Il va venir", dans quelle catégorie faut-il classer "venir" ?', [{ id: "a", label: "Verbe conjugué" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passé" }, { id: "d", label: "Participe présent" }], "b", '"Venir" est à l\'infinitif après le semi-auxiliaire "va".', "Le classer comme verbe conjugué à cause de la locution verbale globale."),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-mot-tout",
    title: 'Tri par catégories : le mot "tout"',
    summary: 'Classer le mot "tout" selon sa nature dans des contextes variés.',
    objective: 'Distinguer "tout" déterminant, pronom, adverbe et nom.',
    introduction:
      'Le mot "tout" est un classique du CRPE parce qu\'il change souvent de nature. Cette série vous entraîne à le classer correctement selon la phrase.',
    subdomain: "grammaire",
    topicKey: "tri_mot_tout",
    topicLabel: 'Tri par catégories : le mot "tout"',
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 68,
    completionSummary: {
      skill: 'Classer correctement le mot "tout" selon le contexte',
      keyPoints: [
        '"Tout" peut être déterminant devant un nom, pronom quand il remplace un groupe nominal, adverbe devant un adjectif ou un autre adverbe, et nom dans quelques emplois lexicalisés.',
        "Le contexte syntaxique compte plus que la forme du mot.",
        'Le mot "tout" adverbe peut parfois prendre une forme accordée devant un adjectif féminin commençant par consonne.',
      ],
      retryAdvice:
        'Pour chaque occurrence, demandez-vous si "tout" accompagne un nom, remplace un groupe, modifie un adjectif ou désigne un ensemble comme nom.',
    },
    questions: [
      qcm("v3e-tout-1", "grammaire",'Dans "Tout candidat doit relire", dans quelle catégorie faut-il classer "Tout" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "a", '"Tout" accompagne le nom "candidat" : c\'est un déterminant.', "Le confondre avec un pronom parce qu'il exprime la totalité."),
      qcm("v3e-tout-2", "grammaire",'Dans "Tous sont prêts", dans quelle catégorie faut-il classer "Tous" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "b", '"Tous" remplace un groupe nominal entier : c\'est un pronom.', "Chercher un nom absent après le mot."),
      qcm("v3e-tout-3", "grammaire",'Dans "Elle est tout heureuse", dans quelle catégorie faut-il classer "tout" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "c", '"Tout" modifie l\'adjectif "heureuse" : c\'est un adverbe.', "Le classer comme adjectif à cause de l'accord possible dans d'autres contextes."),
      qcm("v3e-tout-4", "grammaire",'Dans "Le tout est de commencer", dans quelle catégorie faut-il classer "tout" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "d", 'Dans cette tournure lexicalisée, "tout" est employé comme nom.', "Vouloir forcer un classement en pronom parce qu'il renvoie à un ensemble."),
      vraiFaux("v3e-tout-5", "grammaire",'Vrai ou faux : dans "Il a lu tout le chapitre", "tout" est un déterminant.', true, '"Tout" accompagne le nom "chapitre" : c\'est un déterminant.', "Le confondre avec un adverbe de quantité."),
      qcm("v3e-tout-6", "grammaire",'Dans "Elles sont toutes contentes", dans quelle catégorie faut-il classer "toutes" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "c", 'Ici "toutes" modifie l\'adjectif "contentes". Malgré l\'accord graphique, il s\'agit d\'un adverbe.', "Penser que toute marque d'accord exclut la catégorie adverbe."),
      qcm("v3e-tout-7", "grammaire",'Dans "Ils ont tout compris", dans quelle catégorie faut-il classer "tout" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "b", '"Tout" remplace ici l\'ensemble des choses comprises : c\'est un pronom.', "Le confondre avec un adverbe d'intensité."),
      reponseCourte("v3e-tout-8", "grammaire",'Dans "Toute la classe écoute", dans quelle catégorie faut-il classer "Toute" ?', ["déterminant", "un déterminant", "Déterminant", "un déterminant", "Déterminant"], '"Toute" introduit le nom "classe" : c\'est un déterminant.', "Répondre adjectif sans regarder la structure du groupe nominal."),
      qcm("v3e-tout-9", "grammaire",'Dans "Le bébé est tout petit", dans quelle catégorie faut-il classer "tout" ?', [{ id: "a", label: "Déterminant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "c", '"Tout" modifie l\'adjectif "petit" : c\'est un adverbe.', "Le prendre pour un déterminant en raison du sens de totalité."),
      vraiFaux("v3e-tout-10", "grammaire",'Vrai ou faux : dans "Le tout forme un ensemble cohérent", "tout" est un nom.', true, 'Dans cette phrase, "tout" est bien employé comme nom.', "Confondre emploi nominal et reprise pronominale."),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-mot-que",
    title: 'Tri par catégories : le mot "que"',
    summary: 'Classer le mot "que" selon ses emplois grammaticaux les plus fréquents.',
    objective:
      'Distinguer "que" pronom relatif, conjonction de subordination, pronom interrogatif, adverbe restrictif et déterminant exclamatif.',
    introduction:
      'Le mot "que" est un grand classique des questions de grammaire parce qu\'il change vite de nature. Cette série vous entraîne à ne plus le classer machinalement.',
    subdomain: "grammaire",
    topicKey: "tri_mot_que",
    topicLabel: 'Tri par catégories : le mot "que"',
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 69,
    completionSummary: {
      skill: 'Classer correctement le mot "que" selon le contexte',
      keyPoints: [
        'Le pronom relatif "que" reprend un antécédent.',
        'La conjonction de subordination "que" introduit une proposition sans reprendre d\'antécédent.',
        '"Que" peut aussi être pronom interrogatif, adverbe restrictif dans "ne... que", ou déterminant exclamatif.',
      ],
      retryAdvice:
        'Cherchez s\'il y a un antécédent, une interrogation, une restriction avec "ne", ou un nom introduit dans une exclamation.',
    },
    questions: [
      qcm("v3e-que-1", "grammaire",'Dans "Le livre que tu lis est dense", dans quelle catégorie faut-il classer "que" ?', [{ id: "a", label: "Pronom relatif" }, { id: "b", label: "Conjonction de subordination" }, { id: "c", label: "Pronom interrogatif" }, { id: "d", label: "Adverbe restrictif" }], "a", '"Que" reprend l\'antécédent "livre" et introduit une relative : c\'est un pronom relatif.', "Le classer comme conjonction en oubliant l'antécédent."),
      qcm("v3e-que-2", "grammaire",'Dans "Je pense qu\'il a raison", dans quelle catégorie faut-il classer "que" ?', [{ id: "a", label: "Pronom relatif" }, { id: "b", label: "Conjonction de subordination" }, { id: "c", label: "Pronom interrogatif" }, { id: "d", label: "Déterminant exclamatif" }], "b", 'Ici "que" introduit une subordonnée complétive et ne reprend aucun antécédent : c\'est une conjonction de subordination.', "Répondre pronom relatif à chaque fois que le mot introduit une proposition."),
      qcm("v3e-que-3", "grammaire",'Dans "Il ne parle que de cela", dans quelle catégorie faut-il classer "que" ?', [{ id: "a", label: "Pronom relatif" }, { id: "b", label: "Conjonction de subordination" }, { id: "c", label: "Adverbe restrictif" }, { id: "d", label: "Pronom interrogatif" }], "c", 'Dans la tournure "ne... que", "que" marque la restriction : c\'est un adverbe restrictif.', "Chercher une proposition subordonnée alors qu'il s'agit d'une tournure négative restrictive."),
      qcm("v3e-que-4", "grammaire",'Dans "Que de questions !", dans quelle catégorie faut-il classer "Que" ?', [{ id: "a", label: "Pronom interrogatif" }, { id: "b", label: "Conjonction de subordination" }, { id: "c", label: "Adverbe restrictif" }, { id: "d", label: "Déterminant exclamatif" }], "d", '"Que" introduit ici le nom "questions" dans une exclamation : c\'est un déterminant exclamatif.', "Le classer comme pronom uniquement à cause de sa forme."),
      vraiFaux("v3e-que-5", "grammaire",'Vrai ou faux : dans "Que veux-tu ?", "que" est un pronom interrogatif.', true, 'Dans cette question directe, "que" est bien un pronom interrogatif.', "Confondre toute interrogation avec une subordonnée."),
      qcm("v3e-que-6", "grammaire",'Dans "Que cherches-tu exactement ?", dans quelle catégorie faut-il classer "Que" ?', [{ id: "a", label: "Pronom interrogatif" }, { id: "b", label: "Pronom relatif" }, { id: "c", label: "Conjonction de subordination" }, { id: "d", label: "Adverbe restrictif" }], "a", 'Que sert ici à interroger sur l\'objet cherché : c\'est un pronom interrogatif.', "Chercher un antécédent qui n'existe pas."),
      qcm("v3e-que-7", "grammaire",'Dans "La réponse qu\'il donne est précise", dans quelle catégorie faut-il classer "qu\'" ?', [{ id: "a", label: "Pronom relatif" }, { id: "b", label: "Conjonction de subordination" }, { id: "c", label: "Pronom interrogatif" }, { id: "d", label: "Déterminant exclamatif" }], "a", 'Qu\' reprend l\'antécédent "réponse" : c\'est un pronom relatif.', "Confondre la présence du verbe avec une complétive."),
      reponseCourte("v3e-que-8", "grammaire",'Dans "Il faut que tu viennes", dans quelle catégorie faut-il classer "que" ?', ["conjonction de subordination", "subordination"], 'Ici "que" introduit une subordonnée complétive sans reprendre d\'antécédent : c\'est une conjonction de subordination.', "Répondre pronom relatif à cause de la forme inchangée du mot."),
      qcm("v3e-que-9", "grammaire",'Dans "Que de patience il faut !", dans quelle catégorie faut-il classer "Que" ?', [{ id: "a", label: "Déterminant exclamatif" }, { id: "b", label: "Pronom interrogatif" }, { id: "c", label: "Pronom relatif" }, { id: "d", label: "Adverbe restrictif" }], "a", '"Que" introduit le nom "patience" dans une exclamation : c\'est un déterminant exclamatif.', "Le classer comme adverbe de quantité alors que le mot introduit un nom."),
      vraiFaux("v3e-que-10", "grammaire",'Vrai ou faux : dans "Il n\'a que deux stylos", "que" appartient à une tournure restrictive.', true, 'La tournure "ne... que" exprime la restriction. "Que" est alors un adverbe restrictif.', "Chercher un emploi de subordonnant dès que le mot que apparaît."),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-mots-double-nature",
    title: "Tri par catégories : mots à double nature",
    summary: "Classer des mots fréquents qui changent de nature selon le contexte.",
    objective: "Distinguer les natures possibles de mots comme leur, même, plusieurs, plus ou bien.",
    introduction:
      "Le CRPE aime les mots à double nature parce qu'ils obligent à analyser la phrase au lieu de réciter une étiquette. Cette série vous entraîne à faire ce basculement contextuel.",
    subdomain: "grammaire",
    topicKey: "tri_mots_double_nature",
    topicLabel: "Tri par catégories : mots à double nature",
    exerciseTypeLabel: "QCM, Vrai/Faux, Réponse courte",
    recommendedOrder: 70,
    completionSummary: {
      skill: "Classer correctement des mots à double nature",
      keyPoints: [
        "Un même mot ne garde pas toujours la même nature grammaticale.",
        "Il faut regarder si le mot accompagne un nom, remplace un groupe, introduit une proposition ou modifie un autre mot.",
        "Les mots pièges les plus rentables sont leur, même, plusieurs, plus et bien.",
      ],
      retryAdvice:
        "Quand un mot vous semble familier, méfiez-vous : ce n'est pas sa forme qui compte, mais sa place et son rôle dans la phrase.",
    },
    questions: [
      qcm("v3e-dbl-1", "grammaire",'Dans "leur cahier est fermé", dans quelle catégorie faut-il classer "leur" ?', [{ id: "a", label: "Déterminant possessif" }, { id: "b", label: "Pronom personnel" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Conjonction de subordination" }], "a", '"Leur" accompagne le nom "cahier" : c\'est un déterminant possessif.', 'Le confondre avec le pronom de "je leur parle".'),
      qcm("v3e-dbl-2", "grammaire",'Dans "Je leur parle souvent", dans quelle catégorie faut-il classer "leur" ?', [{ id: "a", label: "Déterminant possessif" }, { id: "b", label: "Pronom personnel" }, { id: "c", label: "Pronom relatif" }, { id: "d", label: "Adverbe" }], "b", '"Leur" reprend ici des personnes et complète le verbe "parle" : c\'est un pronom personnel.', "Chercher un nom après le mot alors qu'il est placé devant le verbe."),
      qcm("v3e-dbl-3", "grammaire",'Dans "Les élèves eux-mêmes ont vérifié", dans quelle catégorie faut-il classer "mêmes" ?', [{ id: "a", label: "Adjectif" }, { id: "b", label: "Adverbe" }, { id: "c", label: "Pronom" }, { id: "d", label: "Préposition" }], "a", '"Mêmes" renforce le pronom "eux" : on l\'analyse ici comme un adjectif de renforcement.', "Le rendre invariable par automatisme dès que le mot même apparaît."),
      qcm("v3e-dbl-4", "grammaire",'Dans "Même les experts hésitent", dans quelle catégorie faut-il classer "Même" ?', [{ id: "a", label: "Adjectif" }, { id: "b", label: "Adverbe" }, { id: "c", label: "Pronom" }, { id: "d", label: "Déterminant" }], "b", 'Même signifie ici "jusqu\'à / y compris" : c\'est un adverbe.', "Le classer comme adjectif sans tenir compte du sens d'insistance."),
      qcm("v3e-dbl-5", "grammaire",'Dans "Plusieurs ont déjà fini", dans quelle catégorie faut-il classer "Plusieurs" ?', [{ id: "a", label: "Déterminant indéfini" }, { id: "b", label: "Pronom indéfini" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "b", '"Plusieurs" fonctionne seul et remplace un groupe nominal : c\'est un pronom indéfini.', "Le classer comme déterminant sans vérifier s'il introduit un nom."),
      qcm("v3e-dbl-6", "grammaire",'Dans "Plusieurs copies manquent", dans quelle catégorie faut-il classer "Plusieurs" ?', [{ id: "a", label: "Déterminant indéfini" }, { id: "b", label: "Pronom indéfini" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "a", '"Plusieurs" introduit le nom "copies" : c\'est un déterminant indéfini.', "Oublier que le même mot peut être pronom ou déterminant selon le contexte."),
      vraiFaux("v3e-dbl-7", "grammaire",'Vrai ou faux : dans "Ce dossier a un vrai plus", "plus" est un nom.', true, 'Dans cette phrase, "plus" désigne un avantage distinctif : il est employé comme nom.', "Le traiter comme l'adverbe de comparaison par réflexe."),
      qcm("v3e-dbl-8", "grammaire",'Dans "Il travaille plus vite", dans quelle catégorie faut-il classer "plus" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Adverbe" }, { id: "c", label: "Pronom" }, { id: "d", label: "Déterminant" }], "b", '"Plus" modifie l\'adverbe "vite" dans un comparatif : c\'est un adverbe.', "Le confondre avec un nom à cause de sa forme isolée."),
      reponseCourte("v3e-dbl-9", "grammaire",'Dans "Bien qu\'il soit tard, nous continuons", dans quelle catégorie faut-il classer "bien que" ?', ["conjonction de subordination", "subordination"], '"Bien que" est une locution qui introduit une subordonnée de concession : c\'est une conjonction de subordination.', "Se focaliser sur le mot bien comme adverbe sans voir la locution complète."),
      vraiFaux("v3e-dbl-10", "grammaire",'Vrai ou faux : dans "Ce travail est bien organisé", "bien" est un adverbe.', true, '"Bien" modifie l\'adjectif "organisé" : c\'est un adverbe.', 'Le classer comme nom abstrait par analogie avec "le bien".'),
    ],
  }),
];
