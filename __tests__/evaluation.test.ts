import { describe, it, expect } from "vitest";
import {
  evaluateExerciseAnswer,
  evaluateSubmission,
  buildExpectedAnswerLabel,
  type SubmissionEvaluation,
} from "@/features/exercises/shared/evaluation";
import type { ExerciseChoice, ExpectedAnswer, ExerciseType } from "@/types/domain";

// ─── Helpers ─────────────────────────────────────────────────

function makeQuestion(
  expectedAnswer: ExpectedAnswer,
  exerciseType: ExerciseType = "qcm",
  choices: ExerciseChoice[] | null = null,
) {
  return { exercise_type: exerciseType, expected_answer: expectedAnswer, choices };
}

// ─── single_choice (QCM) ────────────────────────────────────

describe("evaluateExerciseAnswer — single_choice", () => {
  const expected: ExpectedAnswer = { mode: "single_choice", value: "b" };
  const choices: ExerciseChoice[] = [
    { id: "a", label: "Paris" },
    { id: "b", label: "Lyon" },
    { id: "c", label: "Marseille" },
  ];

  it("marks correct when value matches", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expected, "qcm", choices), "b");
    expect(result.isCorrect).toBe(true);
    expect(result.reason).toBe("correct");
  });

  it("marks incorrect when value differs", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expected, "qcm", choices), "a");
    expect(result.isCorrect).toBe(false);
    expect(result.reason).toBe("incorrect");
  });

  it("returns the expected answer label from choices", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expected, "qcm", choices), "a");
    expect(result.expectedAnswerLabel).toBe("Lyon");
  });

  it("trims whitespace before comparing", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expected, "qcm", choices), "  b  ");
    expect(result.isCorrect).toBe(true);
  });
});

// ─── boolean (vrai/faux) ────────────────────────────────────

describe("evaluateExerciseAnswer — boolean", () => {
  const expectedTrue: ExpectedAnswer = { mode: "boolean", value: true };
  const expectedFalse: ExpectedAnswer = { mode: "boolean", value: false };

  it("accepts 'true' for expected true", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expectedTrue, "vrai_faux"), "true");
    expect(result.isCorrect).toBe(true);
  });

  it("accepts 'vrai' for expected true", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expectedTrue, "vrai_faux"), "vrai");
    expect(result.isCorrect).toBe(true);
  });

  it("accepts 'Vrai' (case insensitive) for expected true", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expectedTrue, "vrai_faux"), "Vrai");
    expect(result.isCorrect).toBe(true);
  });

  it("marks incorrect when submitting false for expected true", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expectedTrue, "vrai_faux"), "faux");
    expect(result.isCorrect).toBe(false);
  });

  it("accepts 'faux' for expected false", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expectedFalse, "vrai_faux"), "faux");
    expect(result.isCorrect).toBe(true);
  });

  it("accepts 'false' for expected false", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expectedFalse, "vrai_faux"), "false");
    expect(result.isCorrect).toBe(true);
  });
});

// ─── text (réponse courte) ──────────────────────────────────

describe("evaluateExerciseAnswer — text", () => {
  const expected: ExpectedAnswer = {
    mode: "text",
    acceptableAnswers: ["Le chat", "le chat"],
  };

  it("marks correct for exact match", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expected, "reponse_courte"), "le chat");
    expect(result.isCorrect).toBe(true);
    expect(result.reason).toBe("correct");
  });

  it("is case-insensitive", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expected, "reponse_courte"), "LE CHAT");
    expect(result.isCorrect).toBe(true);
  });

  it("ignores trailing punctuation", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expected, "reponse_courte"), "le chat.");
    expect(result.isCorrect).toBe(true);
  });

  it("marks incorrect (not accent_only) when accents differ on non-orthographic exercise", () => {
    const expectedAccent: ExpectedAnswer = {
      mode: "text",
      acceptableAnswers: ["élève"],
    };
    const result = evaluateExerciseAnswer(makeQuestion(expectedAccent, "reponse_courte"), "eleve");
    expect(result.isCorrect).toBe(false);
    expect(result.reason).toBe("incorrect");
  });

  it("marks incorrect for wrong text", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expected, "reponse_courte"), "le chien");
    expect(result.isCorrect).toBe(false);
  });

  it("handles empty answer", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expected, "reponse_courte"), "");
    expect(result.isCorrect).toBe(false);
  });

  it("handles extra whitespace", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expected, "reponse_courte"), "  le chat  ");
    expect(result.isCorrect).toBe(true);
  });

  it("returns validation rule for text answers", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expected, "reponse_courte"), "le chat");
    expect(result.validationRule).toBeTruthy();
  });
});

// ─── correction_orthographique ──────────────────────────────

describe("evaluateExerciseAnswer — correction_orthographique", () => {
  const expected: ExpectedAnswer = {
    mode: "text",
    acceptableAnswers: ["définition"],
  };

  it("marks correct when accents match", () => {
    const result = evaluateExerciseAnswer(
      makeQuestion(expected, "correction_orthographique"),
      "définition",
    );
    expect(result.isCorrect).toBe(true);
  });

  it("returns accent_only when only accents differ", () => {
    const result = evaluateExerciseAnswer(
      makeQuestion(expected, "correction_orthographique"),
      "definition",
    );
    expect(result.isCorrect).toBe(false);
    expect(result.reason).toBe("accent_only");
  });

  it("marks incorrect for completely wrong text", () => {
    const result = evaluateExerciseAnswer(
      makeQuestion(expected, "correction_orthographique"),
      "explication",
    );
    expect(result.isCorrect).toBe(false);
    expect(result.reason).toBe("incorrect");
  });

  it("handles typographic apostrophes", () => {
    const expected2: ExpectedAnswer = {
      mode: "text",
      acceptableAnswers: ["l'école"],
    };
    const result = evaluateExerciseAnswer(
      makeQuestion(expected2, "correction_orthographique"),
      "l\u2019école",
    );
    expect(result.isCorrect).toBe(true);
  });
});

// ─── categorization ─────────────────────────────────────────

describe("evaluateExerciseAnswer — categorization", () => {
  const expected: ExpectedAnswer = {
    mode: "categorization",
    categories: [
      { id: "cat1", label: "Noms" },
      { id: "cat2", label: "Verbes" },
    ],
    mapping: { item1: "cat1", item2: "cat2", item3: "cat1" },
  };
  const choices: ExerciseChoice[] = [
    { id: "item1", label: "maison" },
    { id: "item2", label: "courir" },
    { id: "item3", label: "arbre" },
  ];

  it("marks correct when all items placed correctly", () => {
    const submission = JSON.stringify({ item1: "cat1", item2: "cat2", item3: "cat1" });
    const result = evaluateExerciseAnswer(makeQuestion(expected, "tri_categories", choices), submission);
    expect(result.isCorrect).toBe(true);
  });

  it("marks incorrect when one item is wrong", () => {
    const submission = JSON.stringify({ item1: "cat1", item2: "cat1", item3: "cat1" });
    const result = evaluateExerciseAnswer(makeQuestion(expected, "tri_categories", choices), submission);
    expect(result.isCorrect).toBe(false);
  });

  it("marks incorrect for invalid JSON", () => {
    const result = evaluateExerciseAnswer(makeQuestion(expected, "tri_categories", choices), "not json");
    expect(result.isCorrect).toBe(false);
  });

  it("builds correct expected answer label", () => {
    const label = buildExpectedAnswerLabel(expected, choices);
    expect(label).toContain("Noms");
    expect(label).toContain("Verbes");
    expect(label).toContain("maison");
    expect(label).toContain("courir");
  });
});

// ─── highlight_groups ───────────────────────────────────────

describe("evaluateExerciseAnswer — highlight_groups", () => {
  const expected: ExpectedAnswer = {
    mode: "highlight_groups",
    groups: [
      { id: "g1", label: "Sujet", color: "#ff0000" },
      { id: "g2", label: "Verbe", color: "#0000ff" },
    ],
    mapping: { w1: "g1", w2: "g2" },
  };
  const choices: ExerciseChoice[] = [
    { id: "w1", label: "Le chat" },
    { id: "w2", label: "mange" },
  ];

  it("marks correct when all highlights match", () => {
    const submission = JSON.stringify({ w1: "g1", w2: "g2" });
    const result = evaluateExerciseAnswer(makeQuestion(expected, "surlignage_propositions", choices), submission);
    expect(result.isCorrect).toBe(true);
  });

  it("marks incorrect when highlights are swapped", () => {
    const submission = JSON.stringify({ w1: "g2", w2: "g1" });
    const result = evaluateExerciseAnswer(makeQuestion(expected, "surlignage_propositions", choices), submission);
    expect(result.isCorrect).toBe(false);
  });

  it("builds correct expected answer label", () => {
    const label = buildExpectedAnswerLabel(expected, choices);
    expect(label).toContain("Sujet");
    expect(label).toContain("Verbe");
    expect(label).toContain("Le chat");
    expect(label).toContain("mange");
  });
});

// ─── evaluateSubmission (convenience wrapper) ───────────────

describe("evaluateSubmission", () => {
  it("returns true for correct text answer", () => {
    const expected: ExpectedAnswer = { mode: "text", acceptableAnswers: ["oui"] };
    expect(evaluateSubmission(expected, "oui")).toBe(true);
  });

  it("returns false for incorrect text answer", () => {
    const expected: ExpectedAnswer = { mode: "text", acceptableAnswers: ["oui"] };
    expect(evaluateSubmission(expected, "non")).toBe(false);
  });

  it("accepts exerciseType override", () => {
    const expected: ExpectedAnswer = { mode: "text", acceptableAnswers: ["définition"] };
    expect(evaluateSubmission(expected, "definition", "correction_orthographique")).toBe(false);
  });
});

// ─── buildExpectedAnswerLabel ───────────────────────────────

describe("buildExpectedAnswerLabel", () => {
  it("returns choice label for single_choice", () => {
    const expected: ExpectedAnswer = { mode: "single_choice", value: "a" };
    const choices: ExerciseChoice[] = [{ id: "a", label: "Paris" }];
    expect(buildExpectedAnswerLabel(expected, choices)).toBe("Paris");
  });

  it("falls back to value if choice not found", () => {
    const expected: ExpectedAnswer = { mode: "single_choice", value: "unknown" };
    expect(buildExpectedAnswerLabel(expected, [])).toBe("unknown");
  });

  it("returns Vrai/Faux for boolean", () => {
    const expectedTrue: ExpectedAnswer = { mode: "boolean", value: true };
    expect(buildExpectedAnswerLabel(expectedTrue, null)).toBe("Vrai");

    const expectedFalse: ExpectedAnswer = { mode: "boolean", value: false };
    expect(buildExpectedAnswerLabel(expectedFalse, null)).toBe("Faux");
  });

  it("joins acceptable answers for text mode", () => {
    const expected: ExpectedAnswer = { mode: "text", acceptableAnswers: ["a", "b", "c"] };
    expect(buildExpectedAnswerLabel(expected, null)).toBe("a / b / c");
  });
});
