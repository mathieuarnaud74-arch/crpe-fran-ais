import { ExerciseSubdomain, ExerciseType, FrenchDomainKey, LearningStatus, MathDomainKey, MathSubdomain, ProgressStatus, Subject } from "@/types/domain";

export const SUBJECT_LABELS: Record<Subject, string> = {
  Francais: "Français",
  Mathematiques: "Mathématiques",
};

export const SUBJECT_LABEL = "Français";

export const SUBDOMAIN_LABELS: Record<ExerciseSubdomain, string> = {
  grammaire: "Grammaire",
  orthographe: "Orthographe",
  conjugaison: "Conjugaison",
  lexique: "Lexique",
  comprehension_texte: "Compréhension de texte",
  analyse_langue: "Analyse de la langue",
  didactique_francais: "Didactique du français",
  nombres_calcul: "Nombres et calcul",
  geometrie: "Géométrie",
  grandeurs_mesures: "Grandeurs et mesures",
  organisation_donnees: "Organisation et gestion de données",
  didactique_maths: "Didactique des mathématiques",
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

export const MATH_DASHBOARD_SUBDOMAINS: MathSubdomain[] = [
  "nombres_calcul",
  "geometrie",
  "grandeurs_mesures",
  "organisation_donnees",
  "didactique_maths",
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

export const FRENCH_SUBDOMAIN_OPTIONS: Array<{
  value: ExerciseSubdomain;
  label: string;
}> = SUBDOMAIN_OPTIONS;

export const MATH_SUBDOMAIN_OPTIONS: Array<{
  value: ExerciseSubdomain;
  label: string;
}> = [
  { value: "nombres_calcul", label: SUBDOMAIN_LABELS.nombres_calcul },
  { value: "geometrie", label: SUBDOMAIN_LABELS.geometrie },
  { value: "grandeurs_mesures", label: SUBDOMAIN_LABELS.grandeurs_mesures },
  { value: "organisation_donnees", label: SUBDOMAIN_LABELS.organisation_donnees },
  { value: "didactique_maths", label: SUBDOMAIN_LABELS.didactique_maths },
];

export const EXERCISE_TYPE_LABELS: Record<ExerciseType, string> = {
  qcm: "QCM",
  vrai_faux: "Vrai / faux",
  reponse_courte: "Réponse courte",
  identification_grammaticale: "Identification grammaticale",
  correction_orthographique: "Correction orthographique",
  analyse_texte: "Analyse de texte",
  tri_categories: "Tri par catégories",
  surlignage_propositions: "Délimitation de propositions",
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
  { value: "tri_categories", label: EXERCISE_TYPE_LABELS.tri_categories },
  { value: "surlignage_propositions", label: EXERCISE_TYPE_LABELS.surlignage_propositions },
];

export const LEARNING_STATUS_LABELS: Record<LearningStatus, string> = {
  non_commencee: "Non commencée",
  en_cours: "En cours",
  a_revoir: "À revoir",
  maitrisee: "Maîtrisée",
};

export const FRENCH_DOMAIN_ORDER: FrenchDomainKey[] = [
  "grammaire",
  "lexique",
  "orthographe",
  "analyse-de-la-langue",
  "didactique-du-francais",
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
      "Fonctions syntaxiques, classes grammaticales et conjugaison des temps et modes.",
    href: "/francais/grammaire",
    subdomains: ["grammaire", "conjugaison"],
  },
  lexique: {
    label: "Lexique",
    description:
      "Sens des mots, vocabulaire, relations lexicales et formation des mots.",
    href: "/francais/lexique",
    subdomains: ["lexique"],
  },
  orthographe: {
    label: "Orthographe",
    description:
      "Accords (sujet-verbe, groupe nominal, participe passé), homophones grammaticaux et graphies correctes.",
    href: "/francais/orthographe",
    subdomains: ["orthographe"],
  },
  "analyse-de-la-langue": {
    label: "Analyse de la langue",
    description:
      "Analyse syntaxique avancée et compréhension de texte littéraire ou documentaire.",
    href: "/francais/analyse-de-la-langue",
    subdomains: ["analyse_langue", "comprehension_texte"],
  },
  "didactique-du-francais": {
    label: "Didactique du français",
    description:
      "Enseigner la lecture, l'écriture, la grammaire et le vocabulaire à l'école primaire.",
    href: "/francais/didactique-du-francais",
    subdomains: ["didactique_francais"],
  },
};

export function getFrenchDomainKey(subdomain: ExerciseSubdomain): FrenchDomainKey {
  for (const key of FRENCH_DOMAIN_ORDER) {
    if (FRENCH_DOMAIN_CONFIG[key].subdomains.includes(subdomain)) {
      return key;
    }
  }
  return "grammaire";
}

export function getFrenchDomainLabel(subdomain: ExerciseSubdomain) {
  return FRENCH_DOMAIN_CONFIG[getFrenchDomainKey(subdomain)].label;
}

// ─── Mathématiques — Domaines ──────────────────────────────────

export const MATH_DOMAIN_ORDER: MathDomainKey[] = [
  "nombres-et-calcul",
  "geometrie",
  "grandeurs-et-mesures",
  "organisation-de-donnees",
  "didactique-des-maths",
];

export const MATH_DOMAIN_CONFIG: Record<
  MathDomainKey,
  {
    label: string;
    description: string;
    href: string;
    subdomains: ExerciseSubdomain[];
  }
> = {
  "nombres-et-calcul": {
    label: "Nombres et calcul",
    description:
      "Entiers, décimaux, fractions, divisibilité, PGCD/PPCM, proportionnalité.",
    href: "/maths/nombres-et-calcul",
    subdomains: ["nombres_calcul"],
  },
  "geometrie": {
    label: "Géométrie",
    description:
      "Figures planes, solides, transformations, symétries, théorèmes.",
    href: "/maths/geometrie",
    subdomains: ["geometrie"],
  },
  "grandeurs-et-mesures": {
    label: "Grandeurs et mesures",
    description:
      "Périmètres, aires, volumes, conversions d'unités, échelles.",
    href: "/maths/grandeurs-et-mesures",
    subdomains: ["grandeurs_mesures"],
  },
  "organisation-de-donnees": {
    label: "Organisation de données",
    description:
      "Tableaux, graphiques, probabilités, statistiques descriptives.",
    href: "/maths/organisation-de-donnees",
    subdomains: ["organisation_donnees"],
  },
  "didactique-des-maths": {
    label: "Didactique des maths",
    description:
      "Analyse d'erreurs d'élèves, progressions, programmes officiels.",
    href: "/maths/didactique-des-maths",
    subdomains: ["didactique_maths"],
  },
};

export function getMathDomainKey(subdomain: ExerciseSubdomain): MathDomainKey {
  for (const key of MATH_DOMAIN_ORDER) {
    if (MATH_DOMAIN_CONFIG[key].subdomains.includes(subdomain)) {
      return key;
    }
  }
  return "nombres-et-calcul";
}

export function getMathDomainLabel(subdomain: ExerciseSubdomain) {
  return MATH_DOMAIN_CONFIG[getMathDomainKey(subdomain)].label;
}

const MATH_SUBDOMAINS: Set<ExerciseSubdomain> = new Set([
  "nombres_calcul",
  "geometrie",
  "grandeurs_mesures",
  "organisation_donnees",
  "didactique_maths",
]);

export function isMathSubdomain(subdomain: ExerciseSubdomain): boolean {
  return MATH_SUBDOMAINS.has(subdomain);
}

export function getSubjectFromSubdomain(subdomain: ExerciseSubdomain): Subject {
  return isMathSubdomain(subdomain) ? "Mathematiques" : "Francais";
}

export function getDomainKey(subdomain: ExerciseSubdomain, subject: Subject) {
  return subject === "Mathematiques"
    ? getMathDomainKey(subdomain)
    : getFrenchDomainKey(subdomain);
}

export function getDomainLabel(subdomain: ExerciseSubdomain, subject: Subject) {
  return subject === "Mathematiques"
    ? getMathDomainLabel(subdomain)
    : getFrenchDomainLabel(subdomain);
}

// ─── Exercise Types List ──────────────────────────────────

/** Liste ordonnée de tous les types d'exercices */
export const EXERCISE_TYPES: ExerciseType[] = [
  "qcm",
  "vrai_faux",
  "reponse_courte",
  "identification_grammaticale",
  "correction_orthographique",
  "analyse_texte",
  "tri_categories",
  "surlignage_propositions",
];

// ─── Progress Status Labels ──────────────────────────────────

export const PROGRESS_STATUS_LABELS: Record<ProgressStatus, string> = {
  non_commencee: "Non commencé",
  prioritaire: "Prioritaire",
  fragile: "Fragile",
  en_cours: "En cours",
  acquis: "Acquis",
};

// ─── Exercise Mode Compatibility ──────────────────────────

/** Types d'exercices compatibles avec les modes rapides (chrono/sprint) */
export const FAST_MODE_EXERCISE_TYPES = new Set<ExerciseType>([
  "qcm",
  "vrai_faux",
  "reponse_courte",
  "identification_grammaticale",
  "correction_orthographique",
  "analyse_texte",
]);
