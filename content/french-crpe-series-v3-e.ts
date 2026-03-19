import { ExerciseRecord, RevisionSession } from "@/types/domain";

const createdAt = "2026-03-19T08:00:00.000Z";

type QuestionInput = Omit<
  ExerciseRecord,
  "subject" | "validation_status" | "source" | "is_published" | "created_at" | "updated_at"
>;

type SessionInput = Omit<RevisionSession, "questionCount">;

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
  level: string,
  instruction: string,
  choices: Array<{ id: string; label: string }>,
  value: string,
  explanation: string,
  commonMistake: string,
  access_tier: ExerciseRecord["access_tier"],
) {
  return question({
    id,
    subdomain,
    level,
    exercise_type: "qcm",
    instruction,
    support_text: null,
    choices,
    expected_answer: { mode: "single_choice", value },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    access_tier,
    topic_key: null,
    topic_label: null,
  });
}

function vraiFaux(
  id: string,
  subdomain: ExerciseRecord["subdomain"],
  level: string,
  instruction: string,
  value: boolean,
  explanation: string,
  commonMistake: string,
  access_tier: ExerciseRecord["access_tier"],
) {
  return question({
    id,
    subdomain,
    level,
    exercise_type: "vrai_faux",
    instruction,
    support_text: null,
    choices: [{ id: "true", label: "Vrai" }, { id: "false", label: "Faux" }],
    expected_answer: { mode: "boolean", value },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    access_tier,
    topic_key: null,
    topic_label: null,
  });
}

function reponseCourte(
  id: string,
  subdomain: ExerciseRecord["subdomain"],
  level: string,
  instruction: string,
  acceptableAnswers: string[],
  explanation: string,
  commonMistake: string,
  access_tier: ExerciseRecord["access_tier"],
  exercise_type: ExerciseRecord["exercise_type"] = "reponse_courte",
  support_text: string | null = null,
) {
  return question({
    id,
    subdomain,
    level,
    exercise_type,
    instruction,
    support_text,
    choices: null,
    expected_answer: { mode: "text", acceptableAnswers },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    access_tier,
    topic_key: null,
    topic_label: null,
  });
}

export const seriesV3BatchE: RevisionSession[] = [
  buildSession({
    id: "fr-v3-serie-tri-nom-verbe-adjectif",
    title: "Tri par categories : nom, verbe, adjectif",
    summary: "Classer des mots simples et piegeux dans trois categories fondamentales de la grammaire.",
    objective: "Distinguer nom, verbe et adjectif en s'appuyant sur le contexte de la phrase.",
    introduction:
      "Le tri par categories oblige a lire le mot en contexte, pas seulement a reconnaitre sa forme. Cette serie stabilise un automatisme de base tres rentable pour tout le reste de la grammaire.",
    subdomain: "grammaire",
    topicKey: "tri_nom_verbe_adjectif",
    topicLabel: "Tri par categories : nom, verbe, adjectif",
    level: "Facile",
    exerciseTypeLabel: "QCM, Vrai/Faux, Reponse courte",
    estimatedMinutes: 11,
    access_tier: "free",
    recommendedOrder: 61,
    completionSummary: {
      skill: "Classer rapidement un mot comme nom, verbe ou adjectif",
      keyPoints: [
        "Le nom designe souvent un etre, une chose ou une notion et peut etre introduit par un determinant.",
        "Le verbe se reconnait par sa conjugaison ou par sa place dans le groupe verbal.",
        "L'adjectif qualifie un nom ou un pronom et s'accorde souvent avec lui.",
      ],
      retryAdvice:
        "Quand un mot semble piegeux, regardez ce qui le precede et ce qu'il complete dans la phrase.",
    },
    questions: [
      qcm("v3e-nva-1", "grammaire", "Facile", 'Dans "Le chat dort", dans quelle categorie faut-il classer "chat" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "a", '"Chat" est le noyau du groupe nominal sujet "Le chat" : c\'est un nom.', "Se laisser guider par le sens global de la phrase sans reperer le groupe nominal.", "free"),
      qcm("v3e-nva-2", "grammaire", "Facile", 'Dans "Les eleves parlent", dans quelle categorie faut-il classer "parlent" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "b", '"Parlent" est le verbe conjugue de la phrase : il exprime l\'action et s\'accorde avec "les eleves".', "Confondre le mot qui porte l'action avec un nom d'action.", "free"),
      qcm("v3e-nva-3", "grammaire", "Facile", 'Dans "une candidate courageuse", dans quelle categorie faut-il classer "courageuse" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "c", '"Courageuse" qualifie le nom "candidate" et s\'accorde avec lui : c\'est un adjectif.', "Repondre epithete ou attribut alors que l'on demande la nature grammaticale.", "free"),
      qcm("v3e-nva-4", "grammaire", "Facile", 'Dans "un conseil utile", dans quelle categorie faut-il classer "utile" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "c", '"Utile" apporte une qualite au nom "conseil" : c\'est un adjectif.', "Confondre l'adjectif avec le nom qu'il accompagne.", "free"),
      qcm("v3e-nva-5", "grammaire", "Facile", 'Dans "Ils corrigent leur copie", dans quelle categorie faut-il classer "corrigent" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "b", '"Corrigent" est le verbe conjugue de la phrase. Il commande le groupe verbal.', "Chercher le mot le plus important du sens au lieu de reperer le verbe.", "free"),
      vraiFaux("v3e-nva-6", "grammaire", "Facile", 'Vrai ou faux : dans "la reponse juste", "juste" est un adjectif.', true, '"Juste" qualifie le nom "reponse" : c\'est bien un adjectif.', "Confondre la valeur de qualite avec une fonction syntaxique.", "free"),
      reponseCourte("v3e-nva-7", "grammaire", "Facile", 'Dans "les eleves attentifs", dans quelle categorie faut-il classer "eleves" ?', ["nom"], '"Eleves" est le noyau du groupe nominal. C\'est donc un nom.', "Repondre sujet alors que la consigne demande une categorie grammaticale.", "free"),
      qcm("v3e-nva-8", "grammaire", "Facile", 'Dans "La fatigue revient vite", dans quelle categorie faut-il classer "fatigue" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "a", 'Ici "fatigue" est precede de l\'article "la" : le mot est employe comme nom.', "Se fier au fait que fatiguer existe comme verbe sans regarder le contexte.", "free"),
      qcm("v3e-nva-9", "grammaire", "Facile", 'Dans "Il calme le groupe", dans quelle categorie faut-il classer "calme" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Verbe" }, { id: "c", label: "Adjectif" }], "b", 'Dans cette phrase, "calme" est le verbe conjugue qui dit ce que fait le sujet "il".', "Classer automatiquement calme comme adjectif parce qu'il peut aussi l'etre dans d'autres phrases.", "free"),
      vraiFaux("v3e-nva-10", "grammaire", "Facile", 'Vrai ou faux : dans "un texte clair", "clair" appartient a la categorie des verbes.', false, '"Clair" qualifie le nom "texte" : ce n\'est pas un verbe, mais un adjectif.', "Confondre un mot qualificatif avec le noyau du groupe verbal.", "free"),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-determinant-pronom-adverbe",
    title: "Tri par categories : determinant, pronom, adverbe",
    summary: "Classer des mots outils tres frequents qui se ressemblent parfois mais n'ont pas la meme nature.",
    objective: "Distinguer determinant, pronom et adverbe dans des phrases courtes.",
    introduction:
      "Ces trois categories sont souvent confondues parce qu'elles sont courtes et tres frequentes. Le bon reflexe consiste a regarder si le mot accompagne un nom, remplace un groupe nominal ou modifie un autre mot.",
    subdomain: "grammaire",
    topicKey: "tri_determinant_pronom_adverbe",
    topicLabel: "Tri par categories : determinant, pronom, adverbe",
    level: "Facile",
    exerciseTypeLabel: "QCM, Vrai/Faux, Reponse courte",
    estimatedMinutes: 11,
    access_tier: "free",
    recommendedOrder: 62,
    completionSummary: {
      skill: "Distinguer trois mots-outils tres frequents",
      keyPoints: [
        "Le determinant accompagne un nom.",
        "Le pronom remplace un nom ou un groupe nominal.",
        "L'adverbe modifie souvent un verbe, un adjectif ou un autre adverbe.",
      ],
      retryAdvice:
        "Demandez-vous toujours si le mot est suivi d'un nom, s'il remplace quelque chose ou s'il precise un autre mot.",
    },
    questions: [
      qcm("v3e-dpa-1", "grammaire", "Facile", 'Dans "ce manuel", dans quelle categorie faut-il classer "ce" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "a", '"Ce" introduit le nom "manuel" : c\'est un determinant demonstratif.', "Repondre pronom sans voir qu'un nom suit immediatement.", "free"),
      qcm("v3e-dpa-2", "grammaire", "Facile", 'Dans "ceux qui reussissent", dans quelle categorie faut-il classer "ceux" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "b", '"Ceux" remplace un groupe nominal entier : c\'est un pronom demonstratif.', "Chercher un nom apres le mot alors qu'il fonctionne seul.", "free"),
      qcm("v3e-dpa-3", "grammaire", "Facile", 'Dans "elle relit tres vite", dans quelle categorie faut-il classer "tres" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "c", '"Tres" modifie l\'adverbe "vite" : c\'est un adverbe.', "Le classer parmi les mots-outils sans regarder ce qu'il modifie.", "free"),
      qcm("v3e-dpa-4", "grammaire", "Facile", 'Dans "leur cahier est pret", dans quelle categorie faut-il classer "leur" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "a", '"Leur" accompagne le nom "cahier" : ici, c\'est un determinant possessif.', 'Confondre avec le pronom "leur" de "je leur parle".', "free"),
      qcm("v3e-dpa-5", "grammaire", "Facile", 'Dans "Demain, nous reviserons", dans quelle categorie faut-il classer "demain" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "c", '"Demain" precise le moment de l\'action : c\'est un adverbe.', "Le traiter comme un nom de temps sans regarder sa fonction dans la phrase.", "free"),
      qcm("v3e-dpa-6", "grammaire", "Facile", 'Dans "Personne n\'a repondu", dans quelle categorie faut-il classer "personne" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "b", '"Personne" remplace un groupe nominal et occupe la place du sujet : c\'est un pronom indefini.', 'Confondre le mot avec le nom "personne" dans "une personne".', "free"),
      vraiFaux("v3e-dpa-7", "grammaire", "Facile", 'Vrai ou faux : dans "elles reussissent vite", "vite" est un adverbe.', true, '"Vite" modifie le verbe "reussissent" : c\'est bien un adverbe.', "Le classer comme adjectif parce qu'il exprime une qualite.", "free"),
      qcm("v3e-dpa-8", "grammaire", "Facile", 'Dans "ces regles sont utiles", dans quelle categorie faut-il classer "ces" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "a", '"Ces" introduit le nom "regles" : c\'est un determinant demonstratif.', "Oublier de verifier si le mot est suivi d'un nom.", "free"),
      reponseCourte("v3e-dpa-9", "grammaire", "Facile", 'Dans "Beaucoup travaillent en silence", dans quelle categorie faut-il classer "beaucoup" ?', ["pronom"], 'Dans cette phrase, "beaucoup" remplace un groupe de personnes : il est employe comme pronom indefini.', 'Repondre adverbe par automatisme sans regarder qu\'il est sujet du verbe.', "free"),
      qcm("v3e-dpa-10", "grammaire", "Facile", 'Dans "Il travaille beaucoup", dans quelle categorie faut-il classer "beaucoup" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }], "c", 'Ici, "beaucoup" modifie le verbe "travaille" : c\'est un adverbe.', "Ne pas voir que le meme mot peut changer de categorie selon le contexte.", "free"),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-mots-de-liaison",
    title: "Tri par categories : mots de liaison",
    summary: "Classer des mots et locutions de liaison selon leur nature grammaticale.",
    objective: "Distinguer preposition, conjonction de coordination et conjonction de subordination.",
    introduction:
      "Les mots de liaison sont decisifs en analyse grammaticale. Cette serie entraine a les classer correctement pour mieux lire les relations entre les groupes et les propositions.",
    subdomain: "grammaire",
    topicKey: "tri_mots_liaison",
    topicLabel: "Tri par categories : mots de liaison",
    level: "Intermediaire",
    exerciseTypeLabel: "QCM, Vrai/Faux, Reponse courte",
    estimatedMinutes: 12,
    access_tier: "free",
    recommendedOrder: 63,
    completionSummary: {
      skill: "Classer correctement les mots de liaison",
      keyPoints: [
        "La preposition introduit un groupe, souvent nominal.",
        "La conjonction de coordination relie des mots, groupes ou propositions de meme niveau.",
        "La conjonction de subordination introduit une proposition subordonnee.",
      ],
      retryAdvice:
        "Reperez d'abord si le mot introduit un groupe nominal ou une proposition entiere : c'est souvent le bon point de depart.",
    },
    questions: [
      qcm("v3e-lia-1", "grammaire", "Intermediaire", 'Dans "Il part parce qu\'il est fatigue", dans quelle categorie faut-il classer "parce que" ?', [{ id: "a", label: "Preposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "c", '"Parce que" introduit une proposition subordonnee de cause : c\'est une conjonction de subordination.', "Confondre la relation logique de cause avec une coordination.", "free"),
      qcm("v3e-lia-2", "grammaire", "Intermediaire", 'Dans "Il voulait venir, mais il etait malade", dans quelle categorie faut-il classer "mais" ?', [{ id: "a", label: "Preposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "b", '"Mais" relie deux propositions de meme niveau : c\'est une conjonction de coordination.', "Le traiter comme un simple mot logique sans nommer sa vraie nature.", "free"),
      qcm("v3e-lia-3", "grammaire", "Intermediaire", 'Dans "dans la classe", dans quelle categorie faut-il classer "dans" ?', [{ id: "a", label: "Preposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "a", '"Dans" introduit le groupe prepositionnel "dans la classe" : c\'est une preposition.', "Confondre l'introduction d'un groupe avec l'introduction d'une proposition.", "free"),
      qcm("v3e-lia-4", "grammaire", "Intermediaire", 'Dans "quoique le cas soit rare", dans quelle categorie faut-il classer "quoique" ?', [{ id: "a", label: "Preposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "c", '"Quoique" introduit une proposition subordonnee de concession : c\'est une conjonction de subordination.', "Le rapprocher a tort de ou ou de mais.", "free"),
      qcm("v3e-lia-5", "grammaire", "Intermediaire", 'Dans "avec soin", dans quelle categorie faut-il classer "avec" ?', [{ id: "a", label: "Preposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "a", '"Avec" introduit un groupe prepositionnel : c\'est une preposition.', "Confondre la relation de moyen avec un lien entre deux propositions.", "free"),
      vraiFaux("v3e-lia-6", "grammaire", "Intermediaire", 'Vrai ou faux : dans "ni Paul ni Lea", "ni" est une conjonction de coordination.', true, '"Ni" appartient au groupe des conjonctions de coordination. Il relie ici deux elements de meme niveau dans un contexte negatif.', "Oublier que les coordinations ne sont pas limitees a et et mais.", "free"),
      qcm("v3e-lia-7", "grammaire", "Intermediaire", 'Dans "afin qu\'il comprenne", dans quelle categorie faut-il classer "afin que" ?', [{ id: "a", label: "Preposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "c", '"Afin que" introduit une subordonnee de but : c\'est une conjonction de subordination.', "Chercher un nom apres la locution alors qu'elle introduit un verbe conjugue.", "free"),
      qcm("v3e-lia-8", "grammaire", "Intermediaire", 'Dans "chez le voisin", dans quelle categorie faut-il classer "chez" ?', [{ id: "a", label: "Preposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "a", '"Chez" introduit un groupe nominal : c\'est une preposition.', "Le confondre avec un adverbe de lieu.", "free"),
      reponseCourte("v3e-lia-9", "grammaire", "Intermediaire", 'Dans "car il avait revise", dans quelle categorie faut-il classer "car" ?', ["conjonction de coordination", "coordination"], '"Car" est une conjonction de coordination exprimant la cause.', "Le classer parmi les subordonnants parce qu'il donne une explication.", "free"),
      qcm("v3e-lia-10", "grammaire", "Intermediaire", 'Dans "Il est pret, or son binome ne l\'est pas", dans quelle categorie faut-il classer "or" ?', [{ id: "a", label: "Preposition" }, { id: "b", label: "Conjonction de coordination" }, { id: "c", label: "Conjonction de subordination" }], "b", '"Or" relie deux propositions de meme niveau en introduisant une nuance logique : c\'est une conjonction de coordination.', "Ne pas connaitre cette conjonction plus rare et la ranger parmi les adverbes.", "free"),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-variables-invariables",
    title: "Tri par categories : variables ou invariables",
    summary: "Identifier si un mot change de forme selon le genre, le nombre, la personne ou reste stable.",
    objective: "Distinguer mots variables et mots invariables avec quelques cas piegeux.",
    introduction:
      "Ce tri est un excellent raccourci pour renforcer l'analyse grammaticale. Savoir si un mot varie ou non aide ensuite a mieux accorder et a mieux classer les mots.",
    subdomain: "grammaire",
    topicKey: "tri_variables_invariables",
    topicLabel: "Tri par categories : variables ou invariables",
    level: "Facile",
    exerciseTypeLabel: "QCM, Vrai/Faux, Reponse courte",
    estimatedMinutes: 10,
    access_tier: "free",
    recommendedOrder: 64,
    completionSummary: {
      skill: "Distinguer les mots variables des mots invariables",
      keyPoints: [
        "Les noms, verbes, adjectifs, determinants et de nombreux pronoms sont variables.",
        "Les prepositions, conjonctions et beaucoup d'adverbes sont invariables.",
        "La notion de variabilite est morphologique : on regarde la forme du mot, pas seulement son sens.",
      ],
      retryAdvice:
        "Quand vous hesitez, demandez-vous si le mot peut changer de genre, de nombre, de personne ou de temps.",
    },
    questions: [
      qcm("v3e-var-1", "grammaire", "Facile", 'Dans quelle categorie faut-il classer "rapidement" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "b", '"Rapidement" est un adverbe : il ne varie pas.', "Penser que tous les mots longs ou derives sont necessairement variables.", "free"),
      qcm("v3e-var-2", "grammaire", "Facile", 'Dans quelle categorie faut-il classer "belles" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "a", '"Belles" est un adjectif qualificatif : il varie selon le genre et le nombre.', "Confondre la forme observee avec la propriete generale du mot.", "free"),
      qcm("v3e-var-3", "grammaire", "Facile", 'Dans quelle categorie faut-il classer "leurs" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "a", '"Leurs" est un determinant possessif : il varie au moins en nombre.', "Le confondre avec une forme figee a cause de sa terminaison deja marquee.", "free"),
      qcm("v3e-var-4", "grammaire", "Facile", 'Dans quelle categorie faut-il classer "tres" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "b", '"Tres" est un adverbe : il est invariable.', "Chercher une variation de sens au lieu de regarder la forme.", "free"),
      vraiFaux("v3e-var-5", "grammaire", "Facile", 'Vrai ou faux : "parce que" appartient a la categorie des mots invariables.', true, 'La locution conjonctive "parce que" ne varie pas : elle est invariable.', "Oublier que certaines locutions entieres fonctionnent comme des mots invariables.", "free"),
      qcm("v3e-var-6", "grammaire", "Facile", 'Dans quelle categorie faut-il classer "jamais" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "b", '"Jamais" est un adverbe : sa forme ne varie pas.', "Le ranger parmi les pronoms ou les determinants parce qu'il est frequemment employe.", "free"),
      qcm("v3e-var-7", "grammaire", "Facile", 'Dans quelle categorie faut-il classer "nous" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "a", '"Nous" appartient au systeme des pronoms personnels, qui varie selon la personne et le nombre.', "Penser qu'un mot court est forcement invariable.", "free"),
      reponseCourte("v3e-var-8", "grammaire", "Facile", 'Dans "cet exercice", "cet" est-il variable ou invariable ?', ["variable"], '"Cet" est un determinant demonstratif. Il varie selon le genre et le nombre : ce, cet, cette, ces.', "Oublier les autres formes possibles du determinant demonstratif.", "free"),
      vraiFaux("v3e-var-9", "grammaire", "Facile", 'Vrai ou faux : le mot "et" peut prendre une marque de pluriel.', false, '"Et" est une conjonction de coordination invariable. Il ne prend jamais de marque de genre ou de nombre.', "Confondre la notion de coordination avec un accord syntaxique.", "free"),
      qcm("v3e-var-10", "grammaire", "Facile", 'Dans quelle categorie faut-il classer "hier" : mot variable ou mot invariable ?', [{ id: "a", label: "Variable" }, { id: "b", label: "Invariable" }], "b", '"Hier" est un adverbe de temps. Il est invariable.', "Le confondre avec un nom de date ou de moment.", "free"),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-familles-determinants",
    title: "Tri par categories : familles de determinants",
    summary: "Classer les determinants selon leur sous-categorie grammaticale.",
    objective: "Distinguer articles, determinants possessifs, demonstratifs, indefinis, interrogatifs et exclamatifs.",
    introduction:
      "Tous les determinants ne se ressemblent pas. Les classer par familles rend ensuite l'analyse des groupes nominaux beaucoup plus precise.",
    subdomain: "grammaire",
    topicKey: "tri_familles_determinants",
    topicLabel: "Tri par categories : familles de determinants",
    level: "Intermediaire",
    exerciseTypeLabel: "QCM, Vrai/Faux, Reponse courte",
    estimatedMinutes: 12,
    access_tier: "free",
    recommendedOrder: 65,
    completionSummary: {
      skill: "Identifier la bonne famille de determinant",
      keyPoints: [
        "Les articles definis, indefinis et partitifs appartiennent a la famille des articles.",
        "Les determinants possessifs et demonstratifs se reperent a leur valeur de possession ou de designation.",
        "Les determinants indefinis, interrogatifs et exclamatifs demandent une lecture fine du contexte.",
      ],
      retryAdvice:
        "Verifiez toujours la nuance apportee au nom : designation, possession, quantite vague, question ou exclamation.",
    },
    questions: [
      qcm("v3e-det-1", "grammaire", "Intermediaire", 'Dans "les eleves", dans quelle famille faut-il classer "les" ?', [{ id: "a", label: "Article defini" }, { id: "b", label: "Article indefini" }, { id: "c", label: "Determinant possessif" }, { id: "d", label: "Determinant demonstratif" }], "a", '"Les" est l\'article defini pluriel.', "Le classer comme demonstratif parce qu'il montre un groupe deja connu.", "free"),
      qcm("v3e-det-2", "grammaire", "Intermediaire", 'Dans "un exemple", dans quelle famille faut-il classer "un" ?', [{ id: "a", label: "Article defini" }, { id: "b", label: "Article indefini" }, { id: "c", label: "Article partitif" }, { id: "d", label: "Determinant possessif" }], "b", '"Un" introduit ici un nom non encore identifie : c\'est un article indefini.', "Confondre article indefini et numeral.", "free"),
      qcm("v3e-det-3", "grammaire", "Intermediaire", 'Dans "du courage", dans quelle famille faut-il classer "du" ?', [{ id: "a", label: "Article defini contracte" }, { id: "b", label: "Article indefini" }, { id: "c", label: "Article partitif" }, { id: "d", label: "Determinant demonstratif" }], "c", '"Du" devant un nom massif comme "courage" est un article partitif.', "Le traiter comme la contraction de de le sans regarder le sens partitif.", "free"),
      qcm("v3e-det-4", "grammaire", "Intermediaire", 'Dans "ces copies", dans quelle famille faut-il classer "ces" ?', [{ id: "a", label: "Determinant demonstratif" }, { id: "b", label: "Determinant possessif" }, { id: "c", label: "Determinant indefini" }, { id: "d", label: "Article defini" }], "a", '"Ces" sert a designer : c\'est un determinant demonstratif.', 'Le confondre avec le possessif "ses".', "free"),
      qcm("v3e-det-5", "grammaire", "Intermediaire", 'Dans "mon cahier", dans quelle famille faut-il classer "mon" ?', [{ id: "a", label: "Determinant demonstratif" }, { id: "b", label: "Determinant possessif" }, { id: "c", label: "Determinant indefini" }, { id: "d", label: "Article indefini" }], "b", '"Mon" marque la possession : c\'est un determinant possessif.', "Le traiter comme un simple article devant un nom singulier.", "free"),
      qcm("v3e-det-6", "grammaire", "Intermediaire", 'Dans "plusieurs candidats", dans quelle famille faut-il classer "plusieurs" ?', [{ id: "a", label: "Determinant demonstratif" }, { id: "b", label: "Determinant possessif" }, { id: "c", label: "Determinant indefini" }, { id: "d", label: "Article defini" }], "c", '"Plusieurs" donne une quantite non precisee exactement : c\'est un determinant indefini.', "Le reduire a une simple indication numerique sans voir sa categorie.", "free"),
      vraiFaux("v3e-det-7", "grammaire", "Intermediaire", 'Vrai ou faux : dans "Quel livre choisis-tu ?", "quel" est un determinant interrogatif.', true, '"Quel" introduit le nom "livre" dans une question : c\'est un determinant interrogatif.', "Oublier qu'un meme mot peut etre interrogatif ou exclamatif selon le contexte.", "free"),
      reponseCourte("v3e-det-8", "grammaire", "Intermediaire", 'Dans "Quelle belle idee !", dans quelle famille faut-il classer "Quelle" ?', ["determinant exclamatif", "exclamatif"], 'Ici "Quelle" introduit le nom "idee" dans une exclamation : c\'est un determinant exclamatif.', "Repondre interrogatif uniquement a cause de la forme du mot.", "free"),
      qcm("v3e-det-9", "grammaire", "Intermediaire", 'Dans "aucun eleve", dans quelle famille faut-il classer "aucun" ?', [{ id: "a", label: "Determinant indefini" }, { id: "b", label: "Determinant possessif" }, { id: "c", label: "Article defini" }, { id: "d", label: "Article partitif" }], "a", '"Aucun" exprime une quantite nulle sans designer : c\'est un determinant indefini.', "Le prendre pour un adverbe negatif.", "free"),
      qcm("v3e-det-10", "grammaire", "Intermediaire", 'Dans "notre projet", dans quelle famille faut-il classer "notre" ?', [{ id: "a", label: "Determinant demonstratif" }, { id: "b", label: "Determinant possessif" }, { id: "c", label: "Determinant indefini" }, { id: "d", label: "Article defini" }], "b", '"Notre" exprime la possession : c\'est un determinant possessif.', "Confondre la possession avec une simple designation du nom.", "free"),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-familles-pronoms",
    title: "Tri par categories : familles de pronoms",
    summary: "Classer des pronoms selon leur sous-categorie grammaticale.",
    objective: "Distinguer pronoms personnels, demonstratifs, possessifs, relatifs, indefinis et interrogatifs.",
    introduction:
      "Les pronoms sont un terrain classique de confusion au CRPE. Cette serie vous entraine a les classer finement en vous appuyant sur leur fonctionnement dans la phrase.",
    subdomain: "grammaire",
    topicKey: "tri_familles_pronoms",
    topicLabel: "Tri par categories : familles de pronoms",
    level: "Intermediaire",
    exerciseTypeLabel: "QCM, Vrai/Faux, Reponse courte",
    estimatedMinutes: 12,
    access_tier: "free",
    recommendedOrder: 66,
    completionSummary: {
      skill: "Identifier la bonne famille de pronom",
      keyPoints: [
        "Le pronom personnel renvoie a une personne grammaticale ou reprend un groupe nominal.",
        "Le pronom relatif introduit une subordonnee et renvoie a un antecedent.",
        "Le pronom demonstratif, possessif, indefini ou interrogatif se repere par sa valeur et par son contexte.",
      ],
      retryAdvice:
        "Cherchez si le pronom reprend un antecedent, marque la personne, la possession, la designation, la quantite vague ou l'interrogation.",
    },
    questions: [
      qcm("v3e-pro-1", "grammaire", "Intermediaire", 'Dans "il reussit", dans quelle famille faut-il classer "il" ?', [{ id: "a", label: "Pronom personnel" }, { id: "b", label: "Pronom demonstratif" }, { id: "c", label: "Pronom relatif" }, { id: "d", label: "Pronom indefini" }], "a", '"Il" appartient a la serie des pronoms personnels.', "Le classer comme demonstratif parce qu'il renvoie a quelqu'un deja connu.", "free"),
      qcm("v3e-pro-2", "grammaire", "Intermediaire", 'Dans "ceux-ci sont prets", dans quelle famille faut-il classer "ceux-ci" ?', [{ id: "a", label: "Pronom personnel" }, { id: "b", label: "Pronom demonstratif" }, { id: "c", label: "Pronom possessif" }, { id: "d", label: "Pronom relatif" }], "b", '"Ceux-ci" sert a designer un groupe : c\'est un pronom demonstratif.', "Le confondre avec un determinant alors qu'il fonctionne seul.", "free"),
      qcm("v3e-pro-3", "grammaire", "Intermediaire", 'Dans "Le mien est range", dans quelle famille faut-il classer "mien" ?', [{ id: "a", label: "Pronom possessif" }, { id: "b", label: "Pronom demonstratif" }, { id: "c", label: "Pronom personnel" }, { id: "d", label: "Pronom relatif" }], "a", '"Le mien" remplace un groupe nominal en marquant la possession : c\'est un pronom possessif.', "Le prendre pour un adjectif possessif sans voir qu'aucun nom ne suit.", "free"),
      qcm("v3e-pro-4", "grammaire", "Intermediaire", 'Dans "La fille qui lit", dans quelle famille faut-il classer "qui" ?', [{ id: "a", label: "Pronom indefini" }, { id: "b", label: "Pronom demonstratif" }, { id: "c", label: "Pronom relatif" }, { id: "d", label: "Pronom personnel" }], "c", '"Qui" introduit une relative et reprend l\'antecedent "fille" : c\'est un pronom relatif.', "Le ranger parmi les interrogatifs uniquement a cause de sa forme.", "free"),
      qcm("v3e-pro-5", "grammaire", "Intermediaire", 'Dans "Personne ne bouge", dans quelle famille faut-il classer "personne" ?', [{ id: "a", label: "Pronom indefini" }, { id: "b", label: "Pronom personnel" }, { id: "c", label: "Pronom possessif" }, { id: "d", label: "Pronom demonstratif" }], "a", '"Personne" designe un referent non specifie : c\'est un pronom indefini.', 'Le confondre avec le nom "personne".', "free"),
      vraiFaux("v3e-pro-6", "grammaire", "Intermediaire", 'Vrai ou faux : dans "Qui vient ?", "Qui" est un pronom interrogatif.', true, 'Dans une question directe, "qui" est bien un pronom interrogatif.', "Confondre forme interrogative et relative sans regarder l'absence d'antecedent.", "free"),
      qcm("v3e-pro-7", "grammaire", "Intermediaire", 'Dans "Celui-la est plus clair", dans quelle famille faut-il classer "Celui-la" ?', [{ id: "a", label: "Pronom possessif" }, { id: "b", label: "Pronom demonstratif" }, { id: "c", label: "Pronom personnel" }, { id: "d", label: "Pronom interrogatif" }], "b", '"Celui-la" designe un element : c\'est un pronom demonstratif.', "Chercher un nom absent au lieu de regarder la fonction autonome du mot.", "free"),
      reponseCourte("v3e-pro-8", "grammaire", "Intermediaire", 'Dans "Les tiens arrivent", dans quelle famille faut-il classer "les tiens" ?', ["pronom possessif", "possessif"], '"Les tiens" remplace un groupe nominal tout en marquant la possession : c\'est un pronom possessif.', "Le confondre avec un determinant possessif alors qu'il n'introduit aucun nom.", "free"),
      qcm("v3e-pro-9", "grammaire", "Intermediaire", 'Dans "J\'en veux encore", dans quelle famille faut-il classer "en" ?', [{ id: "a", label: "Pronom personnel" }, { id: "b", label: "Pronom demonstratif" }, { id: "c", label: "Pronom relatif" }, { id: "d", label: "Pronom indefini" }], "a", '"En" est ici un pronom personnel adverbial qui reprend un complement.', "Le ranger comme adverbe parce qu'il est court et place avant le verbe.", "free"),
      qcm("v3e-pro-10", "grammaire", "Intermediaire", 'Dans "Chacun avance a son rythme", dans quelle famille faut-il classer "chacun" ?', [{ id: "a", label: "Pronom indefini" }, { id: "b", label: "Pronom personnel" }, { id: "c", label: "Pronom possessif" }, { id: "d", label: "Pronom interrogatif" }], "a", '"Chacun" designe un element d\'un ensemble sans le nommer : c\'est un pronom indefini.', "Le confondre avec un determinant parce qu'il exprime une distribution.", "free"),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-formes-verbales",
    title: "Tri par categories : formes verbales",
    summary: "Classer des formes verbales selon leur statut morphologique.",
    objective: "Distinguer verbe conjugue, infinitif, participe passe et participe present.",
    introduction:
      "Le verbe n'apparait pas toujours sous une forme conjuguee. Cette serie aide a classer les differentes formes verbales, ce qui soutient autant la conjugaison que l'analyse grammaticale.",
    subdomain: "grammaire",
    topicKey: "tri_formes_verbales",
    topicLabel: "Tri par categories : formes verbales",
    level: "Intermediaire",
    exerciseTypeLabel: "QCM, Vrai/Faux, Reponse courte",
    estimatedMinutes: 12,
    access_tier: "free",
    recommendedOrder: 67,
    completionSummary: {
      skill: "Classer correctement les formes verbales",
      keyPoints: [
        "Le verbe conjugue porte une marque de temps, de mode et souvent de personne.",
        "L'infinitif est la forme non personnelle de base du verbe.",
        "Le participe passe et le participe present ont des emplois syntaxiques distincts.",
      ],
      retryAdvice:
        "Reperez si la forme peut porter l'accord d'un participe, la marque d'une personne ou si elle reste a la forme de dictionnaire.",
    },
    questions: [
      qcm("v3e-vrb-1", "grammaire", "Intermediaire", 'Dans quelle categorie faut-il classer "manger" ?', [{ id: "a", label: "Verbe conjugue" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passe" }, { id: "d", label: "Participe present" }], "b", '"Manger" est la forme de base du verbe : c\'est un infinitif.', "Le confondre avec une forme conjuguee en -er par simple ressemblance visuelle.", "free"),
      qcm("v3e-vrb-2", "grammaire", "Intermediaire", 'Dans "Il mange vite", dans quelle categorie faut-il classer "mange" ?', [{ id: "a", label: "Verbe conjugue" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passe" }, { id: "d", label: "Participe present" }], "a", '"Mange" est une forme personnelle, ici au present de l\'indicatif : c\'est un verbe conjugue.', "Ne pas tenir compte du sujet il et de la relation d'accord.", "free"),
      qcm("v3e-vrb-3", "grammaire", "Intermediaire", 'Dans "La porte fermee", dans quelle categorie faut-il classer "fermee" ?', [{ id: "a", label: "Verbe conjugue" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passe" }, { id: "d", label: "Participe present" }], "c", '"Fermee" est une forme en -e issue du verbe "fermer" : c\'est un participe passe.', "La classer comme adjectif sans voir sa nature verbale d'origine dans ce tri specifique.", "free"),
      qcm("v3e-vrb-4", "grammaire", "Intermediaire", 'Dans "Un eleve souriant", dans quelle categorie faut-il classer "souriant" ?', [{ id: "a", label: "Verbe conjugue" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passe" }, { id: "d", label: "Participe present" }], "d", '"Souriant" est ici un participe present.', "Confondre terminaison en -ant et gerondif sans verifier la presence de en.", "free"),
      qcm("v3e-vrb-5", "grammaire", "Intermediaire", 'Dans "Elle semble avoir compris", dans quelle categorie faut-il classer "avoir" ?', [{ id: "a", label: "Verbe conjugue" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passe" }, { id: "d", label: "Participe present" }], "b", '"Avoir" est a l\'infinitif apres le verbe "semble".', "Le confondre avec un auxiliaire conjugue parce qu'il appartient au systeme verbal.", "free"),
      vraiFaux("v3e-vrb-6", "grammaire", "Intermediaire", 'Vrai ou faux : dans "Ils avaient ferme la porte", "ferme" est un participe passe.', true, '"Ferme" est le participe passe employe avec l\'auxiliaire "avaient".', "Le prendre pour un adjectif a cause de sa forme proche.", "free"),
      reponseCourte("v3e-vrb-7", "grammaire", "Intermediaire", 'Dans "Les volets ouverts laissaient entrer la lumiere", dans quelle categorie faut-il classer "ouverts" ?', ["participe passe"], '"Ouverts" est un participe passe issu du verbe "ouvrir".', "Repondre adjectif sans respecter le tri demande sur les formes verbales.", "free"),
      qcm("v3e-vrb-8", "grammaire", "Intermediaire", 'Dans "Nous finissons a midi", dans quelle categorie faut-il classer "finissons" ?', [{ id: "a", label: "Verbe conjugue" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passe" }, { id: "d", label: "Participe present" }], "a", '"Finissons" est une forme conjuguee a la 1re personne du pluriel.', "Oublier que les terminaisons personnelles marquent une conjugaison.", "free"),
      vraiFaux("v3e-vrb-9", "grammaire", "Intermediaire", 'Vrai ou faux : dans "Souriant, il entra", "souriant" est un participe present.', true, 'Ici "souriant" est bien un participe present employe en construction detachee.', "Le confondre avec un adjectif pur sans tenir compte du tri verbal.", "free"),
      qcm("v3e-vrb-10", "grammaire", "Intermediaire", 'Dans "Il va venir", dans quelle categorie faut-il classer "venir" ?', [{ id: "a", label: "Verbe conjugue" }, { id: "b", label: "Infinitif" }, { id: "c", label: "Participe passe" }, { id: "d", label: "Participe present" }], "b", '"Venir" est a l\'infinitif apres le semi-auxiliaire "va".', "Le classer comme verbe conjugue a cause de la locution verbale globale.", "free"),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-mot-tout",
    title: 'Tri par categories : le mot "tout"',
    summary: 'Classer le mot "tout" selon sa nature dans des contextes varies.',
    objective: 'Distinguer "tout" determinant, pronom, adverbe et nom.',
    introduction:
      'Le mot "tout" est un classique du CRPE parce qu\'il change souvent de nature. Cette serie vous entraine a le classer correctement selon la phrase.',
    subdomain: "grammaire",
    topicKey: "tri_mot_tout",
    topicLabel: 'Tri par categories : le mot "tout"',
    level: "Difficile",
    exerciseTypeLabel: "QCM, Vrai/Faux, Reponse courte",
    estimatedMinutes: 13,
    access_tier: "free",
    recommendedOrder: 68,
    completionSummary: {
      skill: 'Classer correctement le mot "tout" selon le contexte',
      keyPoints: [
        '"Tout" peut etre determinant devant un nom, pronom quand il remplace un groupe nominal, adverbe devant un adjectif ou un autre adverbe, et nom dans quelques emplois lexicalises.',
        "Le contexte syntaxique compte plus que la forme du mot.",
        'Le mot "tout" adverbe peut parfois prendre une forme accordee devant un adjectif feminin commencant par consonne.',
      ],
      retryAdvice:
        'Pour chaque occurrence, demandez-vous si "tout" accompagne un nom, remplace un groupe, modifie un adjectif ou designe un ensemble comme nom.',
    },
    questions: [
      qcm("v3e-tout-1", "grammaire", "Difficile", 'Dans "Tout candidat doit relire", dans quelle categorie faut-il classer "Tout" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "a", '"Tout" accompagne le nom "candidat" : c\'est un determinant.', "Le confondre avec un pronom parce qu'il exprime la totalite.", "free"),
      qcm("v3e-tout-2", "grammaire", "Difficile", 'Dans "Tous sont prets", dans quelle categorie faut-il classer "Tous" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "b", '"Tous" remplace un groupe nominal entier : c\'est un pronom.', "Chercher un nom absent apres le mot.", "free"),
      qcm("v3e-tout-3", "grammaire", "Difficile", 'Dans "Elle est tout heureuse", dans quelle categorie faut-il classer "tout" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "c", '"Tout" modifie l\'adjectif "heureuse" : c\'est un adverbe.', "Le classer comme adjectif a cause de l'accord possible dans d'autres contextes.", "free"),
      qcm("v3e-tout-4", "grammaire", "Difficile", 'Dans "Le tout est de commencer", dans quelle categorie faut-il classer "tout" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "d", 'Dans cette tournure lexicalisee, "tout" est employe comme nom.', "Vouloir forcer un classement en pronom parce qu'il renvoie a un ensemble.", "free"),
      vraiFaux("v3e-tout-5", "grammaire", "Difficile", 'Vrai ou faux : dans "Il a lu tout le chapitre", "tout" est un determinant.', true, '"Tout" accompagne le nom "chapitre" : c\'est un determinant.', "Le confondre avec un adverbe de quantite.", "free"),
      qcm("v3e-tout-6", "grammaire", "Difficile", 'Dans "Elles sont toutes contentes", dans quelle categorie faut-il classer "toutes" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "c", 'Ici "toutes" modifie l\'adjectif "contentes". Malgre l\'accord graphique, il s\'agit d\'un adverbe.', "Penser que toute marque d'accord exclut la categorie adverbe.", "free"),
      qcm("v3e-tout-7", "grammaire", "Difficile", 'Dans "Ils ont tout compris", dans quelle categorie faut-il classer "tout" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "b", '"Tout" remplace ici l\'ensemble des choses comprises : c\'est un pronom.', "Le confondre avec un adverbe d'intensite.", "free"),
      reponseCourte("v3e-tout-8", "grammaire", "Difficile", 'Dans "Toute la classe ecoute", dans quelle categorie faut-il classer "Toute" ?', ["determinant"], '"Toute" introduit le nom "classe" : c\'est un determinant.', "Repondre adjectif sans regarder la structure du groupe nominal.", "free"),
      qcm("v3e-tout-9", "grammaire", "Difficile", 'Dans "Le bebe est tout petit", dans quelle categorie faut-il classer "tout" ?', [{ id: "a", label: "Determinant" }, { id: "b", label: "Pronom" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "c", '"Tout" modifie l\'adjectif "petit" : c\'est un adverbe.', "Le prendre pour un determinant en raison du sens de totalite.", "free"),
      vraiFaux("v3e-tout-10", "grammaire", "Difficile", 'Vrai ou faux : dans "Le tout forme un ensemble coherent", "tout" est un nom.', true, 'Dans cette phrase, "tout" est bien employe comme nom.', "Confondre emploi nominal et reprise pronominale.", "free"),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-mot-que",
    title: 'Tri par categories : le mot "que"',
    summary: 'Classer le mot "que" selon ses emplois grammaticaux les plus frequents.',
    objective:
      'Distinguer "que" pronom relatif, conjonction de subordination, pronom interrogatif, adverbe restrictif et determinant exclamatif.',
    introduction:
      'Le mot "que" est un grand classique des questions de grammaire parce qu\'il change vite de nature. Cette serie vous entraine a ne plus le classer machinalement.',
    subdomain: "grammaire",
    topicKey: "tri_mot_que",
    topicLabel: 'Tri par categories : le mot "que"',
    level: "Difficile",
    exerciseTypeLabel: "QCM, Vrai/Faux, Reponse courte",
    estimatedMinutes: 14,
    access_tier: "free",
    recommendedOrder: 69,
    completionSummary: {
      skill: 'Classer correctement le mot "que" selon le contexte',
      keyPoints: [
        'Le pronom relatif "que" reprend un antecedent.',
        'La conjonction de subordination "que" introduit une proposition sans reprendre d\'antecedent.',
        '"Que" peut aussi etre pronom interrogatif, adverbe restrictif dans "ne... que", ou determinant exclamatif.',
      ],
      retryAdvice:
        'Cherchez s\'il y a un antecedent, une interrogation, une restriction avec "ne", ou un nom introduit dans une exclamation.',
    },
    questions: [
      qcm("v3e-que-1", "grammaire", "Difficile", 'Dans "Le livre que tu lis est dense", dans quelle categorie faut-il classer "que" ?', [{ id: "a", label: "Pronom relatif" }, { id: "b", label: "Conjonction de subordination" }, { id: "c", label: "Pronom interrogatif" }, { id: "d", label: "Adverbe restrictif" }], "a", '"Que" reprend l\'antecedent "livre" et introduit une relative : c\'est un pronom relatif.', "Le classer comme conjonction en oubliant l'antecedent.", "free"),
      qcm("v3e-que-2", "grammaire", "Difficile", 'Dans "Je pense qu\'il a raison", dans quelle categorie faut-il classer "que" ?', [{ id: "a", label: "Pronom relatif" }, { id: "b", label: "Conjonction de subordination" }, { id: "c", label: "Pronom interrogatif" }, { id: "d", label: "Determinant exclamatif" }], "b", 'Ici "que" introduit une subordonnee completive et ne reprend aucun antecedent : c\'est une conjonction de subordination.', "Repondre pronom relatif a chaque fois que le mot introduit une proposition.", "free"),
      qcm("v3e-que-3", "grammaire", "Difficile", 'Dans "Il ne parle que de cela", dans quelle categorie faut-il classer "que" ?', [{ id: "a", label: "Pronom relatif" }, { id: "b", label: "Conjonction de subordination" }, { id: "c", label: "Adverbe restrictif" }, { id: "d", label: "Pronom interrogatif" }], "c", 'Dans la tournure "ne... que", "que" marque la restriction : c\'est un adverbe restrictif.', "Chercher une proposition subordonnee alors qu'il s'agit d'une tournure negative restrictive.", "free"),
      qcm("v3e-que-4", "grammaire", "Difficile", 'Dans "Que de questions !", dans quelle categorie faut-il classer "Que" ?', [{ id: "a", label: "Pronom interrogatif" }, { id: "b", label: "Conjonction de subordination" }, { id: "c", label: "Adverbe restrictif" }, { id: "d", label: "Determinant exclamatif" }], "d", '"Que" introduit ici le nom "questions" dans une exclamation : c\'est un determinant exclamatif.', "Le classer comme pronom uniquement a cause de sa forme.", "free"),
      vraiFaux("v3e-que-5", "grammaire", "Difficile", 'Vrai ou faux : dans "Que veux-tu ?", "que" est un pronom interrogatif.', true, 'Dans cette question directe, "que" est bien un pronom interrogatif.', "Confondre toute interrogation avec une subordonnee.", "free"),
      qcm("v3e-que-6", "grammaire", "Difficile", 'Dans "Que cherches-tu exactement ?", dans quelle categorie faut-il classer "Que" ?', [{ id: "a", label: "Pronom interrogatif" }, { id: "b", label: "Pronom relatif" }, { id: "c", label: "Conjonction de subordination" }, { id: "d", label: "Adverbe restrictif" }], "a", 'Que sert ici a interroger sur l\'objet cherche : c\'est un pronom interrogatif.', "Chercher un antecedent qui n'existe pas.", "free"),
      qcm("v3e-que-7", "grammaire", "Difficile", 'Dans "La reponse qu\'il donne est precise", dans quelle categorie faut-il classer "qu\'" ?', [{ id: "a", label: "Pronom relatif" }, { id: "b", label: "Conjonction de subordination" }, { id: "c", label: "Pronom interrogatif" }, { id: "d", label: "Determinant exclamatif" }], "a", 'Qu\' reprend l\'antecedent "reponse" : c\'est un pronom relatif.', "Confondre la presence du verbe avec une completive.", "free"),
      reponseCourte("v3e-que-8", "grammaire", "Difficile", 'Dans "Il faut que tu viennes", dans quelle categorie faut-il classer "que" ?', ["conjonction de subordination", "subordination"], 'Ici "que" introduit une subordonnee completive sans reprendre d\'antecedent : c\'est une conjonction de subordination.', "Repondre pronom relatif a cause de la forme inchangee du mot.", "free"),
      qcm("v3e-que-9", "grammaire", "Difficile", 'Dans "Que de patience il faut !", dans quelle categorie faut-il classer "Que" ?', [{ id: "a", label: "Determinant exclamatif" }, { id: "b", label: "Pronom interrogatif" }, { id: "c", label: "Pronom relatif" }, { id: "d", label: "Adverbe restrictif" }], "a", '"Que" introduit le nom "patience" dans une exclamation : c\'est un determinant exclamatif.', "Le classer comme adverbe de quantite alors que le mot introduit un nom.", "free"),
      vraiFaux("v3e-que-10", "grammaire", "Difficile", 'Vrai ou faux : dans "Il n\'a que deux stylos", "que" appartient a une tournure restrictive.', true, 'La tournure "ne... que" exprime la restriction. "Que" est alors un adverbe restrictif.', "Chercher un emploi de subordonnant des que le mot que apparait.", "free"),
    ],
  }),
  buildSession({
    id: "fr-v3-serie-tri-mots-double-nature",
    title: "Tri par categories : mots a double nature",
    summary: "Classer des mots frequents qui changent de nature selon le contexte.",
    objective: "Distinguer les natures possibles de mots comme leur, meme, plusieurs, plus ou bien.",
    introduction:
      "Le CRPE aime les mots a double nature parce qu'ils obligent a analyser la phrase au lieu de reciter une etiquette. Cette serie vous entraine a faire ce basculement contextuel.",
    subdomain: "grammaire",
    topicKey: "tri_mots_double_nature",
    topicLabel: "Tri par categories : mots a double nature",
    level: "Difficile",
    exerciseTypeLabel: "QCM, Vrai/Faux, Reponse courte",
    estimatedMinutes: 14,
    access_tier: "free",
    recommendedOrder: 70,
    completionSummary: {
      skill: "Classer correctement des mots a double nature",
      keyPoints: [
        "Un meme mot ne garde pas toujours la meme nature grammaticale.",
        "Il faut regarder si le mot accompagne un nom, remplace un groupe, introduit une proposition ou modifie un autre mot.",
        "Les mots pieges les plus rentables sont leur, meme, plusieurs, plus et bien.",
      ],
      retryAdvice:
        "Quand un mot vous semble familier, mefiez-vous : ce n'est pas sa forme qui compte, mais sa place et son role dans la phrase.",
    },
    questions: [
      qcm("v3e-dbl-1", "grammaire", "Difficile", 'Dans "leur cahier est ferme", dans quelle categorie faut-il classer "leur" ?', [{ id: "a", label: "Determinant possessif" }, { id: "b", label: "Pronom personnel" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Conjonction de subordination" }], "a", '"Leur" accompagne le nom "cahier" : c\'est un determinant possessif.', 'Le confondre avec le pronom de "je leur parle".', "free"),
      qcm("v3e-dbl-2", "grammaire", "Difficile", 'Dans "Je leur parle souvent", dans quelle categorie faut-il classer "leur" ?', [{ id: "a", label: "Determinant possessif" }, { id: "b", label: "Pronom personnel" }, { id: "c", label: "Pronom relatif" }, { id: "d", label: "Adverbe" }], "b", '"Leur" reprend ici des personnes et complete le verbe "parle" : c\'est un pronom personnel.', "Chercher un nom apres le mot alors qu'il est place devant le verbe.", "free"),
      qcm("v3e-dbl-3", "grammaire", "Difficile", 'Dans "Les eleves eux-memes ont verifie", dans quelle categorie faut-il classer "memes" ?', [{ id: "a", label: "Adjectif" }, { id: "b", label: "Adverbe" }, { id: "c", label: "Pronom" }, { id: "d", label: "Preposition" }], "a", '"Memes" renforce le pronom "eux" : on l\'analyse ici comme un adjectif de renforcement.', "Le rendre invariable par automatisme des que le mot meme apparait.", "free"),
      qcm("v3e-dbl-4", "grammaire", "Difficile", 'Dans "Meme les experts hesitent", dans quelle categorie faut-il classer "Meme" ?', [{ id: "a", label: "Adjectif" }, { id: "b", label: "Adverbe" }, { id: "c", label: "Pronom" }, { id: "d", label: "Determinant" }], "b", 'Meme signifie ici "jusqu\'a / y compris" : c\'est un adverbe.', "Le classer comme adjectif sans tenir compte du sens d'insistance.", "free"),
      qcm("v3e-dbl-5", "grammaire", "Difficile", 'Dans "Plusieurs ont deja fini", dans quelle categorie faut-il classer "Plusieurs" ?', [{ id: "a", label: "Determinant indefini" }, { id: "b", label: "Pronom indefini" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "b", '"Plusieurs" fonctionne seul et remplace un groupe nominal : c\'est un pronom indefini.', "Le classer comme determinant sans verifier s'il introduit un nom.", "free"),
      qcm("v3e-dbl-6", "grammaire", "Difficile", 'Dans "Plusieurs copies manquent", dans quelle categorie faut-il classer "Plusieurs" ?', [{ id: "a", label: "Determinant indefini" }, { id: "b", label: "Pronom indefini" }, { id: "c", label: "Adverbe" }, { id: "d", label: "Nom" }], "a", '"Plusieurs" introduit le nom "copies" : c\'est un determinant indefini.', "Oublier que le meme mot peut etre pronom ou determinant selon le contexte.", "free"),
      vraiFaux("v3e-dbl-7", "grammaire", "Difficile", 'Vrai ou faux : dans "Ce dossier a un vrai plus", "plus" est un nom.', true, 'Dans cette phrase, "plus" designe un avantage distinctif : il est employe comme nom.', "Le traiter comme l'adverbe de comparaison par reflexe.", "free"),
      qcm("v3e-dbl-8", "grammaire", "Difficile", 'Dans "Il travaille plus vite", dans quelle categorie faut-il classer "plus" ?', [{ id: "a", label: "Nom" }, { id: "b", label: "Adverbe" }, { id: "c", label: "Pronom" }, { id: "d", label: "Determinant" }], "b", '"Plus" modifie l\'adverbe "vite" dans un comparatif : c\'est un adverbe.', "Le confondre avec un nom a cause de sa forme isolee.", "free"),
      reponseCourte("v3e-dbl-9", "grammaire", "Difficile", 'Dans "Bien qu\'il soit tard, nous continuons", dans quelle categorie faut-il classer "bien que" ?', ["conjonction de subordination", "subordination"], '"Bien que" est une locution qui introduit une subordonnee de concession : c\'est une conjonction de subordination.', "Se focaliser sur le mot bien comme adverbe sans voir la locution complete.", "free"),
      vraiFaux("v3e-dbl-10", "grammaire", "Difficile", 'Vrai ou faux : dans "Ce travail est bien organise", "bien" est un adverbe.', true, '"Bien" modifie l\'adjectif "organise" : c\'est un adverbe.', 'Le classer comme nom abstrait par analogie avec "le bien".', "free"),
    ],
  }),
];
