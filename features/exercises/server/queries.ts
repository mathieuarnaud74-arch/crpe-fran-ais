import { cache } from "react";

import { createSupabaseServerClient } from "@/lib/supabase/server";
import {
  EXERCISE_TYPE_LABELS,
  formatLevelLabel,
} from "@/lib/constants";
import {
  ExerciseChoice,
  ExerciseRecord,
  ExerciseSubdomain,
  ExerciseType,
  ExpectedAnswer,
  HighlightGroup,
  RevisionSession,
} from "@/types/domain";

type ExerciseFilters = {
  subdomain?: ExerciseSubdomain;
  type?: ExerciseType;
  level?: string;
  subject?: string;
};

const DEFAULT_SUBJECT = "Francais";

function formatExerciseTypeLabel(value: ExerciseType) {
  return EXERCISE_TYPE_LABELS[value];
}

function getDefaultBooleanChoices(): ExerciseChoice[] {
  return [
    { id: "true", label: "Vrai" },
    { id: "false", label: "Faux" },
  ];
}

function normalizeExpectedAnswer(
  expectedAnswer: ExerciseRecord["expected_answer"] | Record<string, unknown>,
  exerciseType: ExerciseType,
): ExpectedAnswer {
  const rawExpected = expectedAnswer as Record<string, unknown>;
  const rawMode = typeof rawExpected.mode === "string" ? rawExpected.mode : null;

  if (exerciseType === "vrai_faux") {
    if (rawMode === "boolean" && typeof rawExpected.value === "boolean") {
      return expectedAnswer as ExpectedAnswer;
    }

    const rawValue = String(rawExpected.value ?? "").toLocaleLowerCase("fr");
    return {
      mode: "boolean",
      value: rawValue === "true" || rawValue === "vrai",
    };
  }

  if (rawMode === "single_choice" && typeof rawExpected.value === "string") {
    return {
      mode: "single_choice",
      value: rawExpected.value,
    };
  }

  if (
    rawMode === "text" &&
    Array.isArray(rawExpected.acceptableAnswers) &&
    rawExpected.acceptableAnswers.every((answer) => typeof answer === "string")
  ) {
    return {
      mode: "text",
      acceptableAnswers: rawExpected.acceptableAnswers as string[],
    };
  }

  if (rawMode === "free_text" && typeof rawExpected.value === "string") {
    return {
      mode: "text",
      acceptableAnswers: [rawExpected.value],
    };
  }

  if (
    rawMode === "categorization" &&
    Array.isArray(rawExpected.categories) &&
    rawExpected.mapping !== null &&
    typeof rawExpected.mapping === "object" &&
    !Array.isArray(rawExpected.mapping)
  ) {
    return {
      mode: "categorization",
      categories: rawExpected.categories as { id: string; label: string }[],
      mapping: rawExpected.mapping as Record<string, string>,
    };
  }

  if (
    rawMode === "highlight_groups" &&
    Array.isArray(rawExpected.groups) &&
    rawExpected.mapping !== null &&
    typeof rawExpected.mapping === "object" &&
    !Array.isArray(rawExpected.mapping)
  ) {
    return {
      mode: "highlight_groups",
      groups: rawExpected.groups as HighlightGroup[],
      mapping: rawExpected.mapping as Record<string, string>,
    };
  }

  if (typeof rawExpected.value === "string") {
    return {
      mode: "text",
      acceptableAnswers: [rawExpected.value],
    };
  }

  console.warn(
    "[normalizeExpectedAnswer] Unrecognized expected_answer format, falling back to empty acceptableAnswers:",
    rawExpected,
  );
  return {
    mode: "text",
    acceptableAnswers: [],
  };
}

function normalizeChoices(
  choices: ExerciseRecord["choices"] | unknown,
  exerciseType: ExerciseType,
) {
  if (exerciseType === "vrai_faux") {
    return getDefaultBooleanChoices();
  }

  if (!Array.isArray(choices)) {
    return null;
  }

  const normalizedChoices = choices.filter((choice): choice is ExerciseChoice => {
    if (!choice || typeof choice !== "object") {
      return false;
    }

    return typeof choice.id === "string" && typeof choice.label === "string";
  });

  return normalizedChoices.length > 0 ? normalizedChoices : null;
}

function normalizeExerciseRecord(exercise: ExerciseRecord) {
  return {
    ...exercise,
    choices: normalizeChoices(exercise.choices, exercise.exercise_type),
    expected_answer: normalizeExpectedAnswer(exercise.expected_answer, exercise.exercise_type),
  } satisfies ExerciseRecord;
}

function getTopicMetadata(exercise: ExerciseRecord) {
  return {
    topicKey: exercise.topic_key ?? `${exercise.subdomain}_${exercise.exercise_type}`,
    topicLabel: exercise.topic_label ?? formatExerciseTypeLabel(exercise.exercise_type),
  };
}

const SUBDOMAIN_INTRO: Record<string, string> = {
  grammaire:
    "Cette série porte sur les mécanismes grammaticaux fondamentaux. Analysez chaque phrase avec méthode avant de répondre.",
  orthographe:
    "Cette série teste l'orthographe grammaticale et lexicale. Appliquez les règles d'accord avec précision.",
  conjugaison:
    "Cette série porte sur les formes verbales. Conjuguez en vérifiant le temps, le mode et les accords.",
  lexique:
    "Cette série porte sur le vocabulaire et la formation des mots. Mobilisez vos connaissances morphologiques et sémantiques.",
  analyse_langue:
    "Cette série entraîne l'analyse syntaxique et grammaticale. Identifiez les fonctions et les propositions avec méthode.",
  comprehension_texte:
    "Cette série développe la compréhension de textes variés. Lisez attentivement avant de répondre et repérez les indices du texte.",
  didactique_francais:
    "Cette série porte sur la didactique de l'enseignement du français. Mobilisez vos connaissances pédagogiques et institutionnelles.",
};

const SUBDOMAIN_KEYPOINTS: Record<string, string[]> = {
  grammaire: [
    "Analysez la phrase en commençant par le verbe, puis le sujet.",
    "Vérifiez la nature et la fonction de chaque mot avant de répondre.",
    "Relisez les corrections pour identifier vos automatismes fragiles.",
  ],
  orthographe: [
    "Appliquez la chaîne d'accord : déterminant → nom → adjectif.",
    "Vérifiez chaque accord verbal : personne, nombre, temps.",
    "Relisez les homophones dans leur contexte pour les distinguer.",
  ],
  conjugaison: [
    "Identifiez le temps et le mode demandés avant de conjuguer.",
    "Vérifiez les terminaisons selon le groupe du verbe.",
    "Relisez les valeurs des temps pour ne pas confondre leurs emplois.",
  ],
  lexique: [
    "Identifiez le radical, le préfixe et le suffixe pour déduire le sens.",
    "En contexte, cherchez les indices sémantiques autour du mot inconnu.",
    "Relisez les distinctions synonymes/paronymes pour éviter les confusions.",
  ],
  analyse_langue: [
    "Délimitez d'abord les propositions, puis analysez les fonctions.",
    "Pour chaque subordonnée, identifiez son type et sa fonction.",
    "Relisez les erreurs de transposition pour consolider la méthode.",
  ],
  comprehension_texte: [
    "Repérez les informations explicites avant de traiter l'implicite.",
    "Identifiez les connecteurs pour comprendre la progression du texte.",
    "Relisez les explications pour enrichir votre vocabulaire analytique.",
  ],
  didactique_francais: [
    "Reliez chaque notion didactique à son ancrage dans les programmes officiels.",
    "Distinguez les approches pédagogiques recommandées des approches déconseillées.",
    "Relisez les corrections en pensant à leur application en classe.",
  ],
};

function buildSessionsFromExercises(exercises: ExerciseRecord[]): RevisionSession[] {
  const groups = new Map<string, ExerciseRecord[]>();

  for (const exercise of exercises) {
    const { topicKey } = getTopicMetadata(exercise);
    const key = `${topicKey}::${exercise.level}::${exercise.access_tier}`;
    const current = groups.get(key) ?? [];
    current.push(exercise);
    groups.set(key, current);
  }

  return Array.from(groups.entries()).flatMap(([key, rows], groupIndex) => {
    const [topicKey, level, accessTier] = key.split("::");
    const firstQuestion = rows[0];
    const { topicLabel } = getTopicMetadata(firstQuestion);
    const chunks: RevisionSession[] = [];

    for (let i = 0; i < rows.length; i += 10) {
      const questions = rows.slice(i, i + 10);
      const chunkNumber = Math.floor(i / 10) + 1;

      chunks.push({
        id: `session-${topicKey}-${level}-${chunkNumber}`,
        title: `Série ${groupIndex + 1}.${chunkNumber} - ${topicLabel}`,
        summary: "Série construite automatiquement à partir des questions disponibles.",
        objective: `Maîtriser ${topicLabel} — compétence attendue au CRPE de français.`,
        introduction:
          SUBDOMAIN_INTRO[firstQuestion.subdomain] ??
          `Cette série porte sur la notion « ${topicLabel} ». Répondez avec méthode.`,
        subdomain: firstQuestion.subdomain as ExerciseSubdomain,
        topicKey,
        topicLabel,
        level: formatLevelLabel(level),
        exerciseTypeLabel: Array.from(
          new Set(questions.map((question) => EXERCISE_TYPE_LABELS[question.exercise_type])),
        ).join(", "),
        questionCount: questions.length,
        estimatedMinutes: Math.max(questions.length * 2, 8),
        access_tier: accessTier as RevisionSession["access_tier"],
        recommendedOrder: groupIndex * 10 + chunkNumber,
        questions,
        completionSummary: {
          skill: `Consolider ${topicLabel} par la relecture attentive des corrections.`,
          keyPoints:
            SUBDOMAIN_KEYPOINTS[firstQuestion.subdomain] ?? [
              "Relire la consigne avant de répondre.",
              "Comparer les erreurs pour détecter les automatismes fragiles.",
              "Refaire la série pour consolider la logique des corrections.",
            ],
          retryAdvice:
            "Reprenez les questions ratées en explicitant à voix haute la règle ou le raisonnement attendu.",
        },
      });
    }

    return chunks;
  });
}

const fetchExercisesCached = cache(async (filters: ExerciseFilters) => {
  const supabase = await createSupabaseServerClient();
  const subject = filters.subject ?? DEFAULT_SUBJECT;
  let query = supabase
    .from("exercises")
    .select("*")
    .eq("is_published", true)
    .eq("subject", subject)
    .order("subdomain")
    .order("created_at", { ascending: true });

  if (filters.subdomain) {
    query = query.eq("subdomain", filters.subdomain);
  }

  if (filters.type) {
    query = query.eq("exercise_type", filters.type);
  }

  if (filters.level) {
    query = query.eq("level", filters.level);
  }

  const { data } = await query;
  return buildSessionsFromExercises(((data ?? []) as ExerciseRecord[]).map(normalizeExerciseRecord));
});

export async function getExercises(filters: ExerciseFilters = {}) {
  return fetchExercisesCached(filters);
}

export async function getExerciseById(id: string) {
  const supabase = await createSupabaseServerClient();
  const { data } = await supabase
    .from("exercises")
    .select("*")
    .eq("id", id)
    .eq("subject", DEFAULT_SUBJECT)
    .eq("is_published", true)
    .maybeSingle();

  return data ? normalizeExerciseRecord(data as ExerciseRecord) : null;
}

export async function getExerciseSessionById(id: string) {
  const sessions = await getExercises();
  return sessions.find((session) => session.id === id) ?? null;
}

export async function getAttemptsForHistory(userId: string, limit?: number) {
  const supabase = await createSupabaseServerClient();
  let query = supabase
    .from("attempts")
    .select("id, submitted_answer, is_correct, score, answered_at, exercises(instruction, subdomain)")
    .eq("user_id", userId)
    .order("answered_at", { ascending: false });

  if (limit) {
    query = query.limit(limit);
  }

  const { data } = await query;
  return data ?? [];
}

export async function getAttemptsCountToday(userId: string) {
  const supabase = await createSupabaseServerClient();
  const startOfDay = new Date();
  startOfDay.setHours(0, 0, 0, 0);

  const { count } = await supabase
    .from("attempts")
    .select("*", { count: "exact", head: true })
    .eq("user_id", userId)
    .gte("answered_at", startOfDay.toISOString());

  return count ?? 0;
}
