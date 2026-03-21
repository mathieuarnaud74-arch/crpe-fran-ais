/** Constantes tarifaires — source unique de vérité */
export const PRICING = {
  /** Prix d'accès 24h (pass journalier) — affiché */
  DAY_PASS_PRICE: "0,99 €",
  /** Prix d'accès 24h (valeur numérique en centimes) */
  DAY_PASS_CENTS: 99,

  /** Prix d'accès 7 jours (pass semainier) — affiché */
  WEEK_PASS_PRICE: "2,99 €",
  /** Prix d'accès 7 jours (valeur numérique en centimes) */
  WEEK_PASS_CENTS: 299,

  /** Prix abonnement mensuel — affiché */
  MONTHLY_PRICE: "6,99 €/mois",
  /** Prix abonnement mensuel — affiché (court) */
  MONTHLY_PRICE_SHORT: "6,99 €",
  /** Prix abonnement mensuel (valeur numérique en centimes) */
  MONTHLY_CENTS: 699,

  /** Limite gratuite quotidienne (nombre de questions) */
  FREE_DAILY_LIMIT: 20,
  /** Label de la limite gratuite */
  FREE_DAILY_LIMIT_LABEL: "20 questions corrigées par jour",

  /** Objectif quotidien par défaut (gamification) */
  DEFAULT_DAILY_GOAL: 20,

  /** Durées affichées */
  DAY_PASS_DURATION: "1 jour",
  WEEK_PASS_DURATION: "7 jours",
  MONTHLY_DURATION: "Par mois",

  /** Labels des plans */
  DAY_PASS_LABEL: "Journalier",
  WEEK_PASS_LABEL: "Semainier",
  MONTHLY_LABEL: "Mensuel",
} as const;
