import { describe, it, expect } from "vitest";

import { normalizeExpectedAnswer, normalizeChoices } from "@/features/exercises/shared/normalize";

// ─── normalizeExpectedAnswer ─────────────────────────────────

describe("normalizeExpectedAnswer", () => {
  // --- vrai_faux ---

  it("vrai_faux with mode=boolean and boolean value passes through", () => {
    const input = { mode: "boolean", value: true };
    const result = normalizeExpectedAnswer(input, "vrai_faux");
    expect(result).toEqual({ mode: "boolean", value: true });
  });

  it("vrai_faux converts string 'Vrai' to boolean true", () => {
    const result = normalizeExpectedAnswer({ mode: "text", value: "Vrai" }, "vrai_faux");
    expect(result).toEqual({ mode: "boolean", value: true });
  });

  it("vrai_faux converts string 'faux' (lowercase) to boolean false", () => {
    const result = normalizeExpectedAnswer({ mode: "text", value: "faux" }, "vrai_faux");
    expect(result).toEqual({ mode: "boolean", value: false });
  });

  it("vrai_faux converts string 'true' to boolean true", () => {
    const result = normalizeExpectedAnswer({ value: "true" }, "vrai_faux");
    expect(result).toEqual({ mode: "boolean", value: true });
  });

  // --- single_choice / single ---

  it("QCM mode=single_choice passes through", () => {
    const result = normalizeExpectedAnswer({ mode: "single_choice", value: "a" }, "qcm");
    expect(result).toEqual({ mode: "single_choice", value: "a" });
  });

  it("QCM mode=single converts to single_choice", () => {
    const result = normalizeExpectedAnswer({ mode: "single", value: "b" }, "qcm");
    expect(result).toEqual({ mode: "single_choice", value: "b" });
  });

  // --- text / acceptableAnswers / exact ---

  it("mode=text with acceptableAnswers passes through", () => {
    const result = normalizeExpectedAnswer(
      { mode: "text", acceptableAnswers: ["foo", "bar"] },
      "reponse_courte",
    );
    expect(result).toEqual({ mode: "text", acceptableAnswers: ["foo", "bar"] });
  });

  it("mode=exact with acceptableAnswers converts to text", () => {
    const result = normalizeExpectedAnswer(
      { mode: "exact", acceptableAnswers: ["hello"] },
      "reponse_courte",
    );
    expect(result).toEqual({ mode: "text", acceptableAnswers: ["hello"] });
  });

  it("mode=acceptableAnswers with array converts to text", () => {
    const result = normalizeExpectedAnswer(
      { mode: "acceptableAnswers", acceptableAnswers: ["a"] },
      "reponse_courte",
    );
    expect(result).toEqual({ mode: "text", acceptableAnswers: ["a"] });
  });

  // --- free_text ---

  it("mode=free_text with acceptableAnswers array converts to text", () => {
    const result = normalizeExpectedAnswer(
      { mode: "free_text", acceptableAnswers: ["x", "y"] },
      "reponse_courte",
    );
    expect(result).toEqual({ mode: "text", acceptableAnswers: ["x", "y"] });
  });

  it("mode=free_text with string value wraps into array", () => {
    const result = normalizeExpectedAnswer(
      { mode: "free_text", value: "answer" },
      "reponse_courte",
    );
    expect(result).toEqual({ mode: "text", acceptableAnswers: ["answer"] });
  });

  // --- categorization ---

  it("mode=categorization passes through", () => {
    const categories = [{ id: "nom", label: "Nom" }];
    const mapping = { chat: "nom" };
    const result = normalizeExpectedAnswer(
      { mode: "categorization", categories, mapping },
      "tri_categories",
    );
    expect(result).toEqual({ mode: "categorization", categories, mapping });
  });

  it("mode=categories (old format) converts to categorization", () => {
    const result = normalizeExpectedAnswer(
      {
        mode: "categories",
        categories: ["A", "B"],
        items: [
          { text: "x", category: "A" },
          { text: "y", category: "B" },
        ],
      },
      "tri_categories",
    );
    expect(result).toEqual({
      mode: "categorization",
      categories: [
        { id: "A", label: "A" },
        { id: "B", label: "B" },
      ],
      mapping: { x: "A", y: "B" },
    });
  });

  // --- highlight_groups ---

  it("mode=highlight_groups passes through", () => {
    const groups = [{ id: "g1", label: "Group 1", color: "#ff0000" }];
    const mapping = { word: "g1" };
    const result = normalizeExpectedAnswer(
      { mode: "highlight_groups", groups, mapping },
      "surlignage_propositions",
    );
    expect(result).toEqual({ mode: "highlight_groups", groups, mapping });
  });

  // --- fallbacks ---

  it("unknown format with string value falls back to text", () => {
    const result = normalizeExpectedAnswer(
      { mode: "unknown_mode", value: "fallback" },
      "reponse_courte",
    );
    expect(result).toEqual({ mode: "text", acceptableAnswers: ["fallback"] });
  });

  it("totally unknown format falls back to empty acceptableAnswers", () => {
    const result = normalizeExpectedAnswer(
      { mode: "totally_unknown", data: 42 },
      "reponse_courte",
    );
    expect(result).toEqual({ mode: "text", acceptableAnswers: [] });
  });
});

// ─── normalizeChoices ────────────────────────────────────────

describe("normalizeChoices", () => {
  it("returns default boolean choices for vrai_faux", () => {
    const result = normalizeChoices(null, "vrai_faux");
    expect(result).toEqual([
      { id: "true", label: "Vrai" },
      { id: "false", label: "Faux" },
    ]);
  });

  it("returns null for non-array choices", () => {
    expect(normalizeChoices("not-array", "qcm")).toBeNull();
    expect(normalizeChoices(null, "qcm")).toBeNull();
  });

  it("filters out invalid choice objects", () => {
    const choices = [
      { id: "a", label: "Option A" },
      { id: 42, label: "Bad" },
      null,
      { id: "b", label: "Option B" },
    ];
    const result = normalizeChoices(choices, "qcm");
    expect(result).toEqual([
      { id: "a", label: "Option A" },
      { id: "b", label: "Option B" },
    ]);
  });

  it("returns null when all choices are invalid", () => {
    const result = normalizeChoices([null, { bad: true }], "qcm");
    expect(result).toBeNull();
  });
});
