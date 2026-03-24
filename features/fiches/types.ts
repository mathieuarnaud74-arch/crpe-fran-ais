import type { ExerciseSubdomain } from "@/types/domain";

export type AccessTier = "free" | "premium";

export type FicheModel = "reference" | "sprint" | "operatoire";
export type FicheDomaine = ExerciseSubdomain;
export type FicheDifficulte = "debutant" | "intermediaire" | "avance";
export type FicheUtilite = "haute" | "moyenne";

// ─── Blocs de contenu ────────────────────────────────────────────────────────

export type BlockRule = {
  kind: "rule";
  content: string;
  linguisticLogic?: string;
  watchout?: string;
};

export type BlockExample = {
  kind: "example";
  sentence: string;
  annotation?: string;
  isCorrect?: boolean;
};

export type BlockTable = {
  kind: "table";
  caption?: string;
  headers: string[];
  rows: string[][];
};

export type BlockWatchout = {
  kind: "watchout";
  items: Array<{ label: string; explanation: string; correction?: string }>;
};

export type BlockTip = {
  kind: "tip";
  text: string;
};

export type DecisionNode =
  | { type: "question"; text: string; yes: DecisionNode; no: DecisionNode }
  | { type: "leaf"; label: string; rule: string; example?: string };

export type BlockDecisionTree = {
  kind: "decision-tree";
  root: DecisionNode;
};

export type BlockDidactic = {
  kind: "didactic";
  cycleEntries: Array<{ cycle: string; content: string }>;
  studentErrors: string[];
  activities: string[];
  toAvoid?: string[];
};

export type BlockRelated = {
  kind: "related";
  fiches?: Array<{ label: string; slug: string }>;
  exercises?: Array<{ label: string; topicKey: string }>;
};

export type FicheBlock =
  | BlockRule
  | BlockExample
  | BlockTable
  | BlockWatchout
  | BlockTip
  | BlockDecisionTree
  | BlockDidactic
  | BlockRelated;

// ─── Section ─────────────────────────────────────────────────────────────────

export type FicheSection = {
  id: string;
  title: string;
  badge?: string;
  collapsible?: boolean;
  blocks: FicheBlock[];
};

// ─── Quiz ─────────────────────────────────────────────────────────────────────

export type QuizItem = {
  sentence: string;
  isCorrect: boolean;
  explanation: string;
};

// ─── Contenus par modèle ─────────────────────────────────────────────────────

export type FicheContentReference = {
  model: "reference";
  intro: string;
  sections: FicheSection[];
  keyPoints: string[];
  quiz: QuizItem[];
};

export type FicheContentSprint = {
  model: "sprint";
  disclaimer: string;
  oneLiner: string;
  exampleCorrect: { sentence: string; explanation: string };
  exampleWrong: { sentence: string; explanation: string };
  mainTrap: string;
  quiz: QuizItem[];
  linkToReference?: string;
};

export type FicheContentOperatoire = {
  model: "operatoire";
  startingQuestion: string;
  decisionTree: DecisionNode;
  workedExample: { phrase: string; steps: string[] };
  quiz: QuizItem[];
  didacticNote?: string;
};

export type FicheContent =
  | FicheContentReference
  | FicheContentSprint
  | FicheContentOperatoire;

// ─── Fiche principale ────────────────────────────────────────────────────────

export type Fiche = {
  id: string;
  slug: string;
  title: string;
  subtitle?: string;
  domaine: FicheDomaine;
  model: FicheModel;
  accessTier: AccessTier;
  difficulte: FicheDifficulte;
  utilite: FicheUtilite;
  estimatedMinutes: number;
  tags: string[];
  notionsLiees: string[];
  exercicesAssocies: string[];
  content: FicheContent;
};
