import { createSupabaseServerClient } from "@/lib/supabase/server";
import {
  cardToDbFields,
  createNewCard,
  dbRowToCard,
  ratingFromAnswer,
  scheduleReview,
} from "@/lib/srs";
import type { Card } from "ts-fsrs";

// ─── Read ────────────────────────────────────────────────

/** Get or create the SRS card for a (user, exercise) pair. */
export async function getOrCreateSrsCard(
  userId: string,
  exerciseId: string,
): Promise<{ card: Card; isNew: boolean }> {
  const supabase = await createSupabaseServerClient();

  const { data } = await supabase
    .from("srs_cards")
    .select("*")
    .eq("user_id", userId)
    .eq("exercise_id", exerciseId)
    .maybeSingle();

  if (data) {
    return { card: dbRowToCard(data), isNew: false };
  }

  return { card: createNewCard(), isNew: true };
}

/** Fetch exercises due for review (due <= now), ordered by most overdue first. */
export async function getDueExercises(
  userId: string,
  limit = 20,
): Promise<
  Array<{
    exercise_id: string;
    due: string;
    state: number;
    reps: number;
    lapses: number;
    exercise: {
      id: string;
      instruction: string;
      subdomain: string;
      exercise_type: string;
      level: string;
      topic_label: string | null;
    } | null;
  }>
> {
  const supabase = await createSupabaseServerClient();

  const { data } = await supabase
    .from("srs_cards")
    .select(
      "exercise_id, due, state, reps, lapses, exercises(id, instruction, subdomain, exercise_type, level, topic_label)",
    )
    .eq("user_id", userId)
    .lte("due", new Date().toISOString())
    .order("due", { ascending: true })
    .limit(limit);

  return (data ?? []).map((row) => ({
    ...row,
    exercise: Array.isArray(row.exercises) ? row.exercises[0] ?? null : row.exercises,
  }));
}

/** Count exercises due for review right now. */
export async function getDueCount(userId: string): Promise<number> {
  const supabase = await createSupabaseServerClient();

  const { count } = await supabase
    .from("srs_cards")
    .select("*", { count: "exact", head: true })
    .eq("user_id", userId)
    .lte("due", new Date().toISOString());

  return count ?? 0;
}

// ─── Write ───────────────────────────────────────────────

/** Record a review: update (or insert) the SRS card after an attempt. */
export async function recordSrsReview(
  userId: string,
  exerciseId: string,
  isCorrect: boolean,
  timeSpentMs: number | null,
): Promise<void> {
  const { card, isNew } = await getOrCreateSrsCard(userId, exerciseId);
  const rating = ratingFromAnswer(isCorrect, timeSpentMs);
  const updatedCard = scheduleReview(card, rating);
  const fields = cardToDbFields(updatedCard);

  const supabase = await createSupabaseServerClient();

  if (isNew) {
    await supabase.from("srs_cards").insert({
      user_id: userId,
      exercise_id: exerciseId,
      ...fields,
    });
  } else {
    await supabase
      .from("srs_cards")
      .update({ ...fields, updated_at: new Date().toISOString() })
      .eq("user_id", userId)
      .eq("exercise_id", exerciseId);
  }
}
