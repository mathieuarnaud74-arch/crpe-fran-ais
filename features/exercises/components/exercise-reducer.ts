export type SessionResult = {
  answer: string;
  isCorrect: boolean;
  reason: "correct" | "incorrect" | "accent_only";
  expectedAnswerLabel: string;
  validationRule: string | null;
};

export type ExerciseState = {
  currentIndex: number;
  draftAnswer: string;
  results: Record<string, SessionResult>;
  showFullExplanation: boolean;
  showSessionDetails: boolean;
  expandedReviewCard: string | null;
  triResetKey: number;
  consecutiveCorrect: number;
  showConfetti: boolean;
  streakCelebration: number | null;
  sessionXp: number;
  lastXpEarned: number;
  xpTrigger: number;
  runningXp: number;
  questionStartTime: number;
};

export type ExerciseAction =
  | { type: "SUBMIT_ANSWER"; questionId: string; result: SessionResult; xp: number }
  | { type: "GO_TO_NEXT"; nextIndex: number; draftAnswer: string }
  | { type: "GO_TO_PREVIOUS"; prevIndex: number; draftAnswer: string }
  | { type: "RETRY_QUESTION"; questionId: string }
  | { type: "RESET_SESSION" }
  | { type: "SET_DRAFT"; value: string }
  | { type: "TOGGLE_EXPLANATION" }
  | { type: "TOGGLE_SESSION_DETAILS" }
  | { type: "TOGGLE_REVIEW_CARD"; questionId: string }
  | { type: "SET_STREAK_CELEBRATION"; streak: number | null }
  | { type: "SET_CONFETTI"; show: boolean }
  | { type: "SET_CONSECUTIVE_CORRECT"; value: number }
  | { type: "ROLLBACK_XP"; xp: number }
  | { type: "TICK_QUESTION_START" }
  | { type: "TIMER_TIMEOUT"; questionId: string; expectedAnswerLabel: string }
  | { type: "TIMER_ADVANCE"; fromIndex: number; maxIndex: number };

export function createInitialState(initialXp: number): ExerciseState {
  return {
    currentIndex: 0,
    draftAnswer: "",
    results: {},
    showFullExplanation: false,
    showSessionDetails: false,
    expandedReviewCard: null,
    triResetKey: 0,
    consecutiveCorrect: 0,
    showConfetti: false,
    streakCelebration: null,
    sessionXp: 0,
    lastXpEarned: 0,
    xpTrigger: 0,
    runningXp: initialXp,
    questionStartTime: Date.now(),
  };
}

export function exerciseReducer(state: ExerciseState, action: ExerciseAction): ExerciseState {
  switch (action.type) {
    case "SUBMIT_ANSWER":
      return {
        ...state,
        results: { ...state.results, [action.questionId]: action.result },
        sessionXp: state.sessionXp + action.xp,
        lastXpEarned: action.xp,
        xpTrigger: state.xpTrigger + 1,
        runningXp: state.runningXp + action.xp,
      };
    case "GO_TO_NEXT":
      return { ...state, currentIndex: action.nextIndex, draftAnswer: action.draftAnswer };
    case "GO_TO_PREVIOUS":
      return { ...state, currentIndex: action.prevIndex, draftAnswer: action.draftAnswer };
    case "RETRY_QUESTION": {
      const nextResults = { ...state.results };
      delete nextResults[action.questionId];
      return { ...state, results: nextResults, draftAnswer: "", triResetKey: state.triResetKey + 1 };
    }
    case "RESET_SESSION":
      return {
        ...state,
        results: {},
        currentIndex: 0,
        draftAnswer: "",
        consecutiveCorrect: 0,
        showConfetti: false,
        streakCelebration: null,
        sessionXp: 0,
        lastXpEarned: 0,
        xpTrigger: 0,
        runningXp: state.runningXp,
      };
    case "SET_DRAFT":
      return { ...state, draftAnswer: action.value };
    case "TOGGLE_EXPLANATION":
      return { ...state, showFullExplanation: !state.showFullExplanation };
    case "TOGGLE_SESSION_DETAILS":
      return { ...state, showSessionDetails: !state.showSessionDetails };
    case "TOGGLE_REVIEW_CARD":
      return {
        ...state,
        expandedReviewCard: state.expandedReviewCard === action.questionId ? null : action.questionId,
      };
    case "SET_STREAK_CELEBRATION":
      return { ...state, streakCelebration: action.streak };
    case "SET_CONFETTI":
      return { ...state, showConfetti: action.show };
    case "SET_CONSECUTIVE_CORRECT":
      return { ...state, consecutiveCorrect: action.value };
    case "ROLLBACK_XP":
      return {
        ...state,
        sessionXp: Math.max(0, state.sessionXp - action.xp),
        runningXp: Math.max(0, state.runningXp - action.xp),
      };
    case "TICK_QUESTION_START":
      return { ...state, showFullExplanation: false, questionStartTime: Date.now() };
    case "TIMER_TIMEOUT":
      return {
        ...state,
        results: {
          ...state.results,
          [action.questionId]: {
            answer: "",
            isCorrect: false,
            reason: "incorrect",
            expectedAnswerLabel: action.expectedAnswerLabel,
            validationRule: null,
          },
        },
        consecutiveCorrect: 0,
      };
    case "TIMER_ADVANCE":
      if (state.currentIndex !== action.fromIndex) return state;
      return {
        ...state,
        currentIndex: Math.min(action.fromIndex + 1, action.maxIndex),
        draftAnswer: "",
      };
    default:
      return state;
  }
}
