import { ExerciseSubdomain, ExerciseType, FrenchDomainKey, LearningStatus } from "@/types/domain";

export const SUBJECT_LABEL = "Français";

export const SUBDOMAIN_LABELS: Record<ExerciseSubdomain, string> = {
  grammaire: "Grammaire",
  orthographe: "Orthographe",
  conjugaison: "Conjugaison",
  lexique: "Lexique",
  comprehension_texte: "Compréhension de texte",
  analyse_langue: "Analyse de la langue",
  didactique_francais: "Didactique du français",
};

export const DASHBOARD_SUBDOMAINS: ExerciseSubdomain[] = [
  "grammaire",
  "orthographe",
  "conjugaison",
  "lexique",
  "comprehension_texte",
  "analyse_langue",
  "didactique_francais",
];

export const SUBDOMAIN_OPTIONS: Array<{
  value: ExerciseSubdomain;
  label: string;
}> = [
  { value: "grammaire", label: SUBDOMAIN_LABELS.grammaire },
  { value: "orthographe", label: SUBDOMAIN_LABELS.orthographe },
  { value: "conjugaison", label: SUBDOMAIN_LABELS.conjugaison },
  { value: "lexique", label: SUBDOMAIN_LABELS.lexique },
  { value: "comprehension_texte", label: SUBDOMAIN_LABELS.comprehension_texte },
  { value: "analyse_langue", label: SUBDOMAIN_LABELS.analyse_langue },
  { value: "didactique_francais", label: SUBDOMAIN_LABELS.didactique_francais },
];

export const EXERCISE_TYPE_LABELS: Record<ExerciseType, string> = {
  qcm: "QCM",
  vrai_faux: "Vrai / faux",
  reponse_courte: "Réponse courte",
  identification_grammaticale: "Identification grammaticale",
  correction_orthographique: "Correction orthographique",
  analyse_texte: "Analyse de texte",
};

export const EXERCISE_TYPE_OPTIONS: Array<{
  value: ExerciseType;
  label: string;
}> = [
  { value: "qcm", label: EXERCISE_TYPE_LABELS.qcm },
  { value: "vrai_faux", label: EXERCISE_TYPE_LABELS.vrai_faux },
  { value: "reponse_courte", label: EXERCISE_TYPE_LABELS.reponse_courte },
  { value: "identification_grammaticale", label: EXERCISE_TYPE_LABELS.identification_grammaticale },
  { value: "correction_orthographique", label: EXERCISE_TYPE_LABELS.correction_orthographique },
  { value: "analyse_texte", label: EXERCISE_TYPE_LABELS.analyse_texte },
];

export const LEVEL_LABELS: Record<string, string> = {
  Facile: "Facile",
  Intermediaire: "Intermédiaire",
  Avance: "Avancé",
  Difficile: "Difficile",
};

export const LEVEL_OPTIONS = Object.entries(LEVEL_LABELS).map(([value, label]) => ({
  value,
  label,
}));

export const LEARNING_STATUS_LABELS: Record<LearningStatus, string> = {
  non_commencee: "Non commencée",
  en_cours: "En cours",
  a_revoir: "À revoir",
  maitrisee: "Maîtrisée",
};

export const FRENCH_DOMAIN_ORDER: FrenchDomainKey[] = [
  "grammaire",
  "orthographe",
  "analyse-de-la-langue",
];

export const FRENCH_DOMAIN_CONFIG: Record<
  FrenchDomainKey,
  {
    label: string;
    description: string;
    href: string;
    subdomains: ExerciseSubdomain[];
  }
> = {
  grammaire: {
    label: "Grammaire",
    description:
      "Fonctions syntaxiques, classes grammaticales, conjugaison des temps et modes, lexique et sens des mots.",
    href: "/francais/grammaire",
    subdomains: ["grammaire", "conjugaison", "lexique"],
  },
  orthographe: {
    label: "Orthographe",
    description:
      "Accords (sujet-verbe, groupe nominal, participe passé), homophones grammaticaux et graphies correctes.",
    href: "/francais/orthographe",
    subdomains: ["orthographe"],
  },
  "analyse-de-la-langue": {
    label: "Analyse & Didactique",
    description:
      "Analyse syntaxique avancée, compréhension de texte et didactique du français : enseigner la lecture, l'écriture, la grammaire et le vocabulaire.",
    href: "/francais/analyse-de-la-langue",
    subdomains: ["analyse_langue", "comprehension_texte", "didactique_francais"],
  },
};

export function formatLevelLabel(value: string) {
  return LEVEL_LABELS[value] ?? value;
}

export function getFrenchDomainKey(subdomain: ExerciseSubdomain): FrenchDomainKey {
  if (FRENCH_DOMAIN_CONFIG.grammaire.subdomains.includes(subdomain)) {
    return "grammaire";
  }

  if (FRENCH_DOMAIN_CONFIG.orthographe.subdomains.includes(subdomain)) {
    return "orthographe";
  }

  return "analyse-de-la-langue";
}

export function getFrenchDomainLabel(subdomain: ExerciseSubdomain) {
  return FRENCH_DOMAIN_CONFIG[getFrenchDomainKey(subdomain)].label;
}
