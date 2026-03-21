/** Sous-domaines du Français couverts par la plateforme */
export type ExerciseSubdomain =
  | "grammaire"
  | "orthographe"
  | "conjugaison"
  | "lexique"
  | "comprehension_texte"
  | "analyse_langue"
  | "didactique_francais";

/** Types d'exercices disponibles */
export type ExerciseType =
  | "qcm"
  | "vrai_faux"
  | "reponse_courte"
  | "identification_grammaticale"
  | "correction_orthographique"
  | "analyse_texte"
  | "tri_categories"
  | "surlignage_propositions";

/** Mode de validation de la réponse attendue */
export type AnswerMode = "single_choice" | "boolean" | "text" | "categorization" | "highlight_groups";

/** Niveau d'accès d'un exercice ou d'une série */
export type AccessTier = "free" | "premium";

/** Statut de validation éditoriale */
export type ValidationStatus = "brouillon" | "valide";

/** Statut de progression d'un domaine */
export type ProgressStatus = "prioritaire" | "fragile" | "en_cours" | "acquis";

/** Statut d'apprentissage d'une série */
export type LearningStatus = "non_commencee" | "en_cours" | "a_revoir" | "maitrisee";

/** Catégorie de badge de gamification */
export type BadgeCategory = "milestone" | "streak" | "mastery" | "engagement";

/** Clés des domaines du Français (utilisées dans les URLs) */
export type FrenchDomainKey =
  | "grammaire"
  | "lexique"
  | "orthographe"
  | "analyse-de-la-langue"
  | "didactique-du-francais";

export type ExerciseChoice = {
  id: string;
  label: string;
};

export type CategorizationCategory = {
  id: string;
  label: string;
};

export type HighlightGroup = {
  id: string;
  label: string;
  color: string;
};

export type ExpectedAnswer =
  | {
      mode: "single_choice";
      value: string;
    }
  | {
      mode: "boolean";
      value: boolean;
    }
  | {
      mode: "text";
      acceptableAnswers: string[];
    }
  | {
      mode: "categorization";
      categories: CategorizationCategory[];
      mapping: Record<string, string>;
    }
  | {
      mode: "highlight_groups";
      groups: HighlightGroup[];
      mapping: Record<string, string>;
    };

export type ExerciseRecord = {
  id: string;
  subject: string;
  subdomain: ExerciseSubdomain;
  topic_key?: string | null;
  topic_label?: string | null;
  level: string;
  exercise_type: ExerciseType;
  instruction: string;
  support_text: string | null;
  choices: ExerciseChoice[] | null;
  expected_answer: ExpectedAnswer;
  detailed_explanation: string;
  validation_status: ValidationStatus;
  source: string | null;
  access_tier: AccessTier;
  is_published: boolean;
  created_at: string;
  updated_at: string;
  common_mistake?: string | null;
};

export type RevisionSession = {
  id: string;
  title: string;
  summary: string;
  objective: string;
  introduction: string;
  subdomain: ExerciseSubdomain;
  topicKey: string;
  topicLabel: string;
  level: string;
  exerciseTypeLabel: string;
  questionCount: number;
  estimatedMinutes: number;
  access_tier: AccessTier;
  recommendedOrder: number;
  questions: ExerciseRecord[];
  completionSummary: {
    skill: string;
    keyPoints: string[];
    retryAdvice: string;
  };
};

export type DashboardDomainProgress = {
  domain: ExerciseSubdomain;
  label: string;
  totalSeries: number;
  completedSeries: number;
  inProgressSeries: number;
  attemptedQuestions: number;
  attempts: number;
  correctRate: number | null;
  status: ProgressStatus;
  lastAnsweredAt: string | null;
  startedSubdomains: number;
  acquiredSubdomains: number;
  fragileSubdomains: number;
  prioritySubdomains: number;
  subdomains: DashboardSubdomainProgress[];
};

export type DashboardSubdomainProgress = {
  key: string;
  label: string;
  domain: ExerciseSubdomain;
  domainLabel: string;
  attempts: number;
  attemptedQuestions: number;
  completedSeries: number;
  inProgressSeries: number;
  totalSeries: number;
  correctRate: number | null;
  status: ProgressStatus;
  lastAnsweredAt: string | null;
  reviewReason: string;
};

export type DashboardFrequentMistake = {
  key: string;
  title: string;
  exampleInstruction: string;
  occurrences: number;
  lastAnsweredAt: string;
  domainLabel: string;
  subdomainLabel: string;
};

export type DashboardActivity = {
  attemptId: string;
  instruction: string;
  domainLabel: string;
  subdomainLabel: string;
  sessionTitle: string;
  isCorrect: boolean;
  answeredAt: string;
};

export type DashboardSessionProgress = {
  id: string;
  title: string;
  summary: string;
  topicKey: string;
  topicLabel: string;
  domainKey: FrenchDomainKey;
  domainLabel: string;
  subdomain: ExerciseSubdomain;
  subdomainLabel: string;
  level: string;
  questionCount: number;
  estimatedMinutes: number;
  access_tier: AccessTier;
  recommendedOrder: number;
  attempts: number;
  answeredQuestions: number;
  correctAnswers: number;
  correctRate: number | null;
  lastAnsweredAt: string | null;
  status: LearningStatus;
};

export type DashboardDomainDirectoryItem = {
  key: FrenchDomainKey;
  label: string;
  description: string;
  href: string;
  subdomainLabels: string[];
  totalSeries: number;
  notStartedSeries: number;
  inProgressSeries: number;
  toReviewSeries: number;
  masteredSeries: number;
  correctRate: number | null;
  lastAnsweredAt: string | null;
};

export type DailyActivityEntry = {
  date: string;
  count: number;
  correctCount: number;
};

export type ScoreEvolutionEntry = {
  date: string;
  correctRate: number;
  cumulativeAttempts: number;
};

export type EarnedBadge = {
  id: string;
  label: string;
  description: string;
  icon: string;
  category: BadgeCategory;
};

// ─── Gamification Types ──────────────────────────────────

export type ExerciseMode = "standard" | "timed" | "sprint" | "swipe";

export type UserGamification = {
  user_id: string;
  xp: number;
  level: number;
  current_streak: number;
  longest_streak: number;
  last_activity_date: string | null;
  sound_enabled: boolean;
  reduced_animations: boolean;
  daily_goal: number;
  personal_best_sprint_time: number | null;
  onboarding_completed: boolean;
};

export type DashboardData = {
  subjectLabel: string;
  totalSeries: number;
  completedSeries: number;
  inProgressSeries: number;
  masteredSessions: number;
  notStartedSessions: number;
  totalAttempts: number;
  overallCorrectRate: number | null;
  remainingToday: number;
  domainProgress: DashboardDomainProgress[];
  domainDirectory: DashboardDomainDirectoryItem[];
  subdomainsToReview: DashboardSubdomainProgress[];
  priorityItems: DashboardSubdomainProgress[];
  fragileItems: DashboardSubdomainProgress[];
  mostWorkedDomains: Array<{
    label: string;
    attempts: number;
    correctRate: number | null;
  }>;
  sessionProgress: DashboardSessionProgress[];
  resumeSessions: DashboardSessionProgress[];
  frequentMistakes: DashboardFrequentMistake[];
  recentActivity: DashboardActivity[];
  dailyActivity: DailyActivityEntry[];
  scoreEvolution: ScoreEvolutionEntry[];
  earnedBadges: EarnedBadge[];
  lastActivityDate: string | null;
};
