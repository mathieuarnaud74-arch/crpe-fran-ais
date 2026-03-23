import { cache } from "react";

import { createSupabaseServerClient } from "@/lib/supabase/server";
import {
  EXERCISE_TYPE_LABELS,
  formatLevelLabel,
  isMathSubdomain,
} from "@/lib/constants";
import {
  ExerciseRecord,
  ExerciseSubdomain,
  ExerciseType,
  RevisionSession,
} from "@/types/domain";
import { normalizeExpectedAnswer, normalizeChoices } from "@/features/exercises/shared/normalize";

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
  nombres_calcul:
    "Cette série porte sur les nombres et le calcul. Mobilisez vos connaissances arithmétiques et votre sens du nombre.",
  geometrie:
    "Cette série porte sur la géométrie. Visualisez les figures, appliquez les propriétés et les théorèmes avec rigueur.",
  grandeurs_mesures:
    "Cette série porte sur les grandeurs et mesures. Convertissez avec méthode et vérifiez la cohérence de vos résultats.",
  organisation_donnees:
    "Cette série porte sur l'organisation et la gestion de données. Lisez attentivement les tableaux et graphiques avant de répondre.",
  didactique_maths:
    "Cette série porte sur la didactique des mathématiques. Analysez les erreurs d'élèves et mobilisez vos connaissances des programmes.",
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
  nombres_calcul: [
    "Posez les calculs par écrit pour éviter les erreurs de calcul mental.",
    "Vérifiez la cohérence de votre résultat par un ordre de grandeur.",
    "Relisez les propriétés utilisées pour consolider vos automatismes.",
  ],
  geometrie: [
    "Faites un schéma clair avant de raisonner.",
    "Identifiez les propriétés géométriques applicables avant de calculer.",
    "Relisez les théorèmes utilisés pour consolider votre raisonnement.",
  ],
  grandeurs_mesures: [
    "Convertissez toutes les grandeurs dans la même unité avant de calculer.",
    "Vérifiez la cohérence dimensionnelle de votre résultat.",
    "Relisez les formules d'aire et de volume pour les consolider.",
  ],
  organisation_donnees: [
    "Lisez attentivement les titres, légendes et unités des graphiques.",
    "Distinguez fréquence, effectif et proportion dans les énoncés.",
    "Relisez les calculs de moyenne et médiane pour consolider la méthode.",
  ],
  didactique_maths: [
    "Reliez chaque notion didactique aux attendus des programmes officiels.",
    "Analysez les erreurs d'élèves en identifiant le type de difficulté.",
    "Relisez les corrections en pensant à la progression des apprentissages.",
  ],
};

function buildSessionsFromExercises(exercises: ExerciseRecord[]): RevisionSession[] {
  const groups = new Map<string, ExerciseRecord[]>();

  for (const exercise of exercises) {
    const { topicKey } = getTopicMetadata(exercise);
    // Sujets blancs : grouper par topicKey seul (pas de split par level)
    const isSujetBlanc = topicKey.startsWith("sujet_blanc");
    const key = isSujetBlanc
      ? `${topicKey}::Difficile::${exercise.access_tier}`
      : `${topicKey}::${exercise.level}::${exercise.access_tier}`;
    const current = groups.get(key) ?? [];
    current.push(exercise);
    groups.set(key, current);
  }

  return Array.from(groups.entries()).flatMap(([key, rows], groupIndex) => {
    const [topicKey, level, accessTier] = key.split("::");
    const firstQuestion = rows[0];
    const { topicLabel } = getTopicMetadata(firstQuestion);
    const chunks: RevisionSession[] = [];
    const isMath = isMathSubdomain(firstQuestion.subdomain);
    const subjectName = isMath ? "mathématiques" : "français";

    for (let i = 0; i < rows.length; i += 10) {
      const questions = rows.slice(i, i + 10);
      const chunkNumber = Math.floor(i / 10) + 1;

      const isSujetBlanc = topicKey.startsWith("sujet_blanc");

      chunks.push({
        id: `session-${topicKey}-${level}-${chunkNumber}`,
        title: isSujetBlanc
          ? topicLabel
          : `Série ${groupIndex + 1}.${chunkNumber} - ${topicLabel}`,
        summary: isSujetBlanc
          ? `Épreuve sur texte littéraire en 2 parties : étude de la langue et analyse du lexique.`
          : "Série construite automatiquement à partir des questions disponibles.",
        objective: isSujetBlanc
          ? `Analyser un texte littéraire : grammaire, subordonnées, réécriture, lexique — comme au CRPE.`
          : `Maîtriser ${topicLabel} — compétence attendue au CRPE de ${subjectName}.`,
        introduction: isSujetBlanc
          ? `Ce sujet blanc est construit autour d'un texte littéraire, sur le modèle de l'épreuve écrite du CRPE. Lisez attentivement le texte support avant de répondre aux questions.`
          : (SUBDOMAIN_INTRO[firstQuestion.subdomain] ??
            `Cette série porte sur la notion « ${topicLabel} ». Répondez avec méthode.`),
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
          skill: isMath
            ? `Consolider ${topicLabel} par la reprise méthodique des corrections.`
            : `Consolider ${topicLabel} par la relecture attentive des corrections.`,
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

const PAGE_SIZE = 1000;

async function fetchAllExercises(filters: ExerciseFilters): Promise<ExerciseRecord[]> {
  const supabase = await createSupabaseServerClient();
  const subject = filters.subject ?? DEFAULT_SUBJECT;
  const allRows: ExerciseRecord[] = [];
  let from = 0;

  while (true) {
    let query = supabase
      .from("exercises")
      .select("*")
      .eq("is_published", true)
      .eq("subject", subject)
      .order("subdomain")
      .order("created_at", { ascending: true })
      .range(from, from + PAGE_SIZE - 1);

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
    const rows = (data ?? []) as ExerciseRecord[];
    allRows.push(...rows);

    if (rows.length < PAGE_SIZE) break;
    from += PAGE_SIZE;
  }

  return allRows;
}

function filtersToKey(filters: ExerciseFilters): string {
  return `${filters.subdomain ?? ""}|${filters.type ?? ""}|${filters.level ?? ""}|${filters.subject ?? ""}`;
}

const fetchExercisesCachedByKey = cache(async (_key: string, filters: ExerciseFilters) => {
  const rows = await fetchAllExercises(filters);
  return buildSessionsFromExercises(rows.map(normalizeExerciseRecord));
});

export async function getExercises(filters: ExerciseFilters = {}) {
  return fetchExercisesCachedByKey(filtersToKey(filters), filters);
}

export async function getExerciseById(id: string) {
  const supabase = await createSupabaseServerClient();
  const { data } = await supabase
    .from("exercises")
    .select("*")
    .eq("id", id)
    .eq("is_published", true)
    .maybeSingle();

  return data ? normalizeExerciseRecord(data as ExerciseRecord) : null;
}

export async function getExerciseSessionById(id: string) {
  const frenchSessions = await getExercises({ subject: "Francais" });
  const found = frenchSessions.find((session) => session.id === id);
  if (found) return found;

  const mathSessions = await getExercises({ subject: "Mathematiques" });
  return mathSessions.find((session) => session.id === id) ?? null;
}

export async function getAttemptsForHistory(userId: string, limit?: number) {
  const supabase = await createSupabaseServerClient();
  let query = supabase
    .from("attempts")
    .select("id, submitted_answer, is_correct, score, answered_at, exercises(instruction, subdomain)")
    .eq("user_id", userId)
    .order("answered_at", { ascending: false });

  if (limit !== undefined) {
    query = query.limit(limit);
  }

  const { data } = await query;
  return data ?? [];
}

/**
 * Fetches N random published exercises (individual questions, not grouped into sessions).
 * Used by the random exercise mode.
 */
export async function getRandomExercises(count = 10, subject?: string) {
  const supabase = await createSupabaseServerClient();
  const POOL_SIZE = 100;

  const { data } = await supabase
    .from("exercises")
    .select("*")
    .eq("is_published", true)
    .eq("subject", subject ?? DEFAULT_SUBJECT)
    .eq("access_tier", "free")
    .limit(POOL_SIZE);

  if (!data || data.length === 0) return [];

  const normalized = (data as ExerciseRecord[]).map(normalizeExerciseRecord);

  // Fisher–Yates shuffle on limited pool
  for (let i = normalized.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [normalized[i], normalized[j]] = [normalized[j], normalized[i]];
  }

  return normalized.slice(0, count);
}

export async function getAttemptsCountToday(userId: string) {
  const supabase = await createSupabaseServerClient();
  const parisDate = new Date().toLocaleDateString("en-CA", { timeZone: "Europe/Paris" });
  const noonUtc = new Date(`${parisDate}T12:00:00Z`);
  const parisHour = parseInt(
    noonUtc.toLocaleString("en-US", { timeZone: "Europe/Paris", hour: "numeric", hour12: false }),
    10,
  );
  const startOfDay = new Date(`${parisDate}T00:00:00Z`);
  startOfDay.setUTCHours(-(parisHour - 12));

  const { count } = await supabase
    .from("attempts")
    .select("*", { count: "exact", head: true })
    .eq("user_id", userId)
    .gte("answered_at", startOfDay.toISOString());

  return count ?? 0;
}
