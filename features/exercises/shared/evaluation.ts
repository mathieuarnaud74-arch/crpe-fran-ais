import { stripDiacritics, normalizeTypographicText } from "@/lib/utils";
import { ExerciseChoice, ExerciseRecord, ExerciseType, ExpectedAnswer } from "@/types/domain";

type TextValidationPolicy = {
  accentsRequired: boolean;
  rule: string;
};

export type SubmissionEvaluation = {
  isCorrect: boolean;
  reason: "correct" | "incorrect" | "accent_only";
  expectedAnswerLabel: string;
  validationRule: string | null;
};

const TRUE_FALSE_CHOICES: ExerciseChoice[] = [
  { id: "true", label: "Vrai" },
  { id: "false", label: "Faux" },
];

function getTextValidationPolicy(exerciseType: ExerciseType): TextValidationPolicy {
  if (exerciseType === "correction_orthographique") {
    return {
      accentsRequired: true,
      rule:
        "Exercice d'orthographe : les accents comptent. Les majuscules, les apostrophes typographiques et la ponctuation finale sont tolérées.",
    };
  }

  return {
    accentsRequired: false,
    rule:
      "Exercice de réponse textuelle : les accents, les apostrophes typographiques, les majuscules/minuscules et la ponctuation finale sont tolérés.",
  };
}

function normalizeComparedText(value: string, ignoreAccents: boolean) {
  const normalized = normalizeTypographicText(value)
    .replace(/[.!?;:]+$/u, "")
    .toLocaleLowerCase("fr");

  return ignoreAccents ? stripDiacritics(normalized) : normalized;
}

function normalizeBooleanInput(value: string) {
  const normalized = normalizeComparedText(value, true);

  if (normalized === "true" || normalized === "vrai") {
    return true;
  }

  if (normalized === "false" || normalized === "faux") {
    return false;
  }

  return null;
}

function getChoiceLabel(
  value: string,
  choices: ExerciseChoice[] | null | undefined,
  fallbackChoices: ExerciseChoice[] = [],
) {
  return [...(choices ?? []), ...fallbackChoices].find((choice) => choice.id === value)?.label ?? value;
}

export function buildExpectedAnswerLabel(
  expectedAnswer: ExpectedAnswer,
  choices: ExerciseChoice[] | null | undefined,
) {
  if (expectedAnswer.mode === "single_choice") {
    return getChoiceLabel(expectedAnswer.value, choices);
  }

  if (expectedAnswer.mode === "boolean") {
    return getChoiceLabel(String(expectedAnswer.value), choices, TRUE_FALSE_CHOICES);
  }

  return expectedAnswer.acceptableAnswers.join(" / ");
}

export function getAnswerValidationRule(exerciseType: ExerciseType) {
  return getTextValidationPolicy(exerciseType).rule;
}

export function evaluateExerciseAnswer(
  question: Pick<ExerciseRecord, "exercise_type" | "expected_answer" | "choices">,
  submittedValue: string,
): SubmissionEvaluation {
  const trimmedValue = submittedValue.trim();
  const expectedAnswerLabel = buildExpectedAnswerLabel(question.expected_answer, question.choices);

  if (question.expected_answer.mode === "single_choice") {
    return {
      isCorrect: trimmedValue === question.expected_answer.value,
      reason: trimmedValue === question.expected_answer.value ? "correct" : "incorrect",
      expectedAnswerLabel,
      validationRule: null,
    };
  }

  if (question.expected_answer.mode === "boolean") {
    const submittedBoolean = normalizeBooleanInput(trimmedValue);
    const isCorrect = submittedBoolean === question.expected_answer.value;

    return {
      isCorrect,
      reason: isCorrect ? "correct" : "incorrect",
      expectedAnswerLabel,
      validationRule: null,
    };
  }

  const policy = getTextValidationPolicy(question.exercise_type);
  const submittedStrict = normalizeComparedText(trimmedValue, false);
  const submittedLoose = normalizeComparedText(trimmedValue, true);

  const strictMatch = question.expected_answer.acceptableAnswers.some(
    (candidate) => normalizeComparedText(candidate, false) === submittedStrict,
  );

  if (strictMatch) {
    return {
      isCorrect: true,
      reason: "correct",
      expectedAnswerLabel,
      validationRule: policy.rule,
    };
  }

  const looseMatch = question.expected_answer.acceptableAnswers.some(
    (candidate) => normalizeComparedText(candidate, true) === submittedLoose,
  );

  const reason = policy.accentsRequired && looseMatch ? "accent_only" : "incorrect";

  return {
    isCorrect: false,
    reason,
    expectedAnswerLabel,
    validationRule: policy.rule,
  };
}

export function evaluateSubmission(
  expectedAnswer: ExpectedAnswer,
  submittedValue: string,
  exerciseType: ExerciseType = "reponse_courte",
) {
  return evaluateExerciseAnswer(
    {
      exercise_type: exerciseType,
      expected_answer: expectedAnswer,
      choices: null,
    },
    submittedValue,
  ).isCorrect;
}
