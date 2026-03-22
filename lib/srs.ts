import { createEmptyCard, fsrs, type Card, type Grade, Rating, State } from "ts-fsrs";

// ─── FSRS instance (default parameters, tuned for educational content) ───

const f = fsrs({
  request_retention: 0.85, // target 85% recall — good balance for exam prep
  maximum_interval: 180,   // cap at 6 months (CRPE exam cycle)
});

export { Rating, State };
export type { Card, Grade };

// ─── Helpers ─────────────────────────────────────────────

/** Maps a correct/incorrect answer to an FSRS rating. */
export function ratingFromAnswer(isCorrect: boolean, timeSpentMs: number | null): Grade {
  if (!isCorrect) return Rating.Again;

  // Fast correct → Easy, normal correct → Good
  if (timeSpentMs !== null && timeSpentMs < 10_000) return Rating.Easy;
  return Rating.Good;
}

/** Creates a fresh FSRS card (for first-time encounters). */
export function createNewCard(): Card {
  return createEmptyCard();
}

/** Converts a DB row into an FSRS Card object. */
export function dbRowToCard(row: {
  due: string;
  stability: number;
  difficulty: number;
  elapsed_days: number;
  scheduled_days: number;
  reps: number;
  lapses: number;
  state: number;
  last_review: string | null;
}): Card {
  return {
    due: new Date(row.due),
    stability: row.stability,
    difficulty: row.difficulty,
    elapsed_days: row.elapsed_days,
    scheduled_days: row.scheduled_days,
    reps: row.reps,
    lapses: row.lapses,
    state: row.state as State,
    last_review: row.last_review ? new Date(row.last_review) : undefined,
  } as Card;
}

/** Converts an FSRS Card back to DB-friendly flat fields. */
export function cardToDbFields(card: Card) {
  return {
    due: card.due.toISOString(),
    stability: card.stability,
    difficulty: card.difficulty,
    elapsed_days: card.elapsed_days,
    scheduled_days: card.scheduled_days,
    reps: card.reps,
    lapses: card.lapses,
    state: card.state as number,
    last_review: card.last_review ? new Date(card.last_review).toISOString() : null,
  };
}

/**
 * Core scheduling function.
 * Takes current card state + rating, returns updated card.
 */
export function scheduleReview(card: Card, rating: Grade): Card {
  const now = new Date();
  const scheduling = f.repeat(card, now);
  return scheduling[rating].card;
}
