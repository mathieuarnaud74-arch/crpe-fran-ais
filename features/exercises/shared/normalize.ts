import type {
  ExerciseChoice,
  ExerciseRecord,
  ExerciseType,
  ExpectedAnswer,
  HighlightGroup,
} from "@/types/domain";

function getDefaultBooleanChoices(): ExerciseChoice[] {
  return [
    { id: "true", label: "Vrai" },
    { id: "false", label: "Faux" },
  ];
}

export function normalizeExpectedAnswer(
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

  if ((rawMode === "single_choice" || rawMode === "single") && typeof rawExpected.value === "string") {
    return {
      mode: "single_choice",
      value: rawExpected.value,
    };
  }

  if (
    (rawMode === "text" || rawMode === "acceptableAnswers" || rawMode === "exact") &&
    Array.isArray(rawExpected.acceptableAnswers) &&
    rawExpected.acceptableAnswers.every((answer) => typeof answer === "string")
  ) {
    return {
      mode: "text",
      acceptableAnswers: rawExpected.acceptableAnswers as string[],
    };
  }

  if (
    rawMode === "free_text" &&
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
    rawMode === "categories" &&
    Array.isArray(rawExpected.items) &&
    Array.isArray(rawExpected.categories)
  ) {
    const items = rawExpected.items as { text: string; category: string }[];
    const categories = rawExpected.categories as string[];
    return {
      mode: "categorization",
      categories: categories.map((cat) => ({ id: cat, label: cat })),
      mapping: Object.fromEntries(items.map((item) => [item.text, item.category])),
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

export function normalizeChoices(
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
