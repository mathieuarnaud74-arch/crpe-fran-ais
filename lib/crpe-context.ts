import { ExerciseSubdomain } from "@/types/domain";

/** Contexte CRPE réutilisable pour les pages et les prompts */
export const CRPE_CONTEXT = {
  /** Nom court de l'examen */
  EXAM_NAME: "CRPE",
  /** Nom complet de l'examen */
  EXAM_FULL_NAME: "Certificat de Recrutement des Professeurs des Écoles",
  /** Matière couverte par la plateforme */
  SUBJECT: "Français",
  /** Public cible */
  TARGET_AUDIENCE: "futurs professeurs des écoles",
  /** Nom de la plateforme */
  PLATFORM_NAME: "CRPE Prep",
  /** Description courte du tableau de bord */
  DASHBOARD_DESCRIPTION: "Votre espace de révision personnalisé pour le CRPE Français.",
} as const;

/**
 * Contexte CRPE par sous-domaine — affiché dans les pages d'exercices
 * pour expliquer le lien entre le sous-domaine et l'épreuve du CRPE.
 */
export const CRPE_SUBDOMAIN_CONTEXT: Partial<Record<ExerciseSubdomain, string>> = {
  didactique_francais:
    "La didactique du français (enseigner la lecture, l'écriture, la grammaire, le vocabulaire) est un domaine explicitement évalué dans l'épreuve de Français du CRPE, au même titre que la maîtrise de la langue.",
  comprehension_texte:
    "La compréhension de texte est centrale dans l'épreuve du CRPE : analyser un texte littéraire ou documentaire, identifier ses niveaux de sens et répondre à des questions de compréhension fine.",
  analyse_langue:
    "L'analyse syntaxique et morphologique est évaluée dans la partie « étude de la langue » du CRPE. Maîtriser les manipulations syntaxiques est indispensable pour répondre aux questions d'analyse grammaticale.",
} as const;
