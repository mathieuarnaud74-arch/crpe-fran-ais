import { describe, it, expect } from "vitest";
import {
  cn,
  formatPercent,
  normalizeTextAnswer,
  normalizeTypographicText,
  stripDiacritics,
  formatCount,
} from "@/lib/utils";

// ─── cn() ───────────────────────────────────────────────────

describe("cn", () => {
  it("merges simple classes", () => {
    expect(cn("px-2", "py-1")).toBe("px-2 py-1");
  });

  it("resolves conflicting Tailwind classes (last wins)", () => {
    expect(cn("px-2", "px-4")).toBe("px-4");
  });

  it("handles conditional classes", () => {
    expect(cn("base", false && "hidden", "extra")).toBe("base extra");
  });

  it("handles undefined and null", () => {
    expect(cn("a", undefined, null, "b")).toBe("a b");
  });

  it("handles empty input", () => {
    expect(cn()).toBe("");
  });

  it("resolves conflicting text colors", () => {
    expect(cn("text-red-500", "text-blue-500")).toBe("text-blue-500");
  });
});

// ─── formatPercent ──────────────────────────────────────────

describe("formatPercent", () => {
  it("formats integer percentage", () => {
    expect(formatPercent(75)).toBe("75 %");
  });

  it("rounds decimal percentage", () => {
    expect(formatPercent(33.7)).toBe("34 %");
  });

  it("formats zero", () => {
    expect(formatPercent(0)).toBe("0 %");
  });

  it("formats 100", () => {
    expect(formatPercent(100)).toBe("100 %");
  });
});

// ─── normalizeTextAnswer ────────────────────────────────────

describe("normalizeTextAnswer", () => {
  it("trims and lowercases", () => {
    expect(normalizeTextAnswer("  Hello World  ")).toBe("hello world");
  });

  it("collapses multiple spaces", () => {
    expect(normalizeTextAnswer("a   b   c")).toBe("a b c");
  });

  it("handles empty string", () => {
    expect(normalizeTextAnswer("")).toBe("");
  });
});

// ─── normalizeTypographicText ───────────────────────────────

describe("normalizeTypographicText", () => {
  it("replaces curly apostrophe with straight", () => {
    expect(normalizeTypographicText("l\u2019école")).toBe("l'école");
  });

  it("replaces em-dash with hyphen", () => {
    expect(normalizeTypographicText("a\u2014b")).toBe("a-b");
  });

  it("collapses multiple spaces", () => {
    expect(normalizeTypographicText("a   b")).toBe("a b");
  });

  it("removes space before punctuation", () => {
    expect(normalizeTypographicText("Bonjour !")).toBe("Bonjour!");
  });

  it("trims", () => {
    expect(normalizeTypographicText("  hello  ")).toBe("hello");
  });
});

// ─── stripDiacritics ────────────────────────────────────────

describe("stripDiacritics", () => {
  it("removes accents from French text", () => {
    expect(stripDiacritics("définition")).toBe("definition");
  });

  it("removes cedilla", () => {
    expect(stripDiacritics("français")).toBe("francais");
  });

  it("leaves non-accented text unchanged", () => {
    expect(stripDiacritics("hello")).toBe("hello");
  });

  it("handles mixed accents", () => {
    expect(stripDiacritics("élève à l'école")).toBe("eleve a l'ecole");
  });
});

// ─── formatCount ────────────────────────────────────────────

describe("formatCount", () => {
  it("uses singular for 1", () => {
    expect(formatCount(1, "question")).toBe("1 question");
  });

  it("uses plural for > 1", () => {
    expect(formatCount(5, "question")).toBe("5 questions");
  });

  it("uses singular for 0", () => {
    expect(formatCount(0, "question")).toBe("0 question");
  });

  it("accepts custom plural", () => {
    expect(formatCount(3, "animal", "animaux")).toBe("3 animaux");
  });
});
