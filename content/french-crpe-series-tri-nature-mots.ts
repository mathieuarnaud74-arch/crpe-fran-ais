/**
 * Série "Tri par catégories : nature des mots"
 * topic_key : tri_nature_mots
 * Session DB  : session-tri_nature_mots-Intermediaire-1
 *
 * 6 exercices de tri interactif — le mot est classé dans une colonne
 * par clic, sans drag-and-drop.
 * Les données de référence sont dans la migration SQL :
 *   supabase/migrations/20260319_seed_tri_nature_mots.sql
 */

import { ExerciseRecord, RevisionSession } from "@/types/domain";

const createdAt = "2026-03-19T10:00:00.000Z";

function triExercise(
  id: string,
  instruction: string,
  items: Array<{ id: string; label: string }>,
  categories: Array<{ id: string; label: string }>,
  mapping: Record<string, string>,
  explanation: string,
  commonMistake: string,
): ExerciseRecord {
  return {
    id,
    subject: "Francais",
    subdomain: "grammaire",
    topic_key: "tri_nature_mots",
    topic_label: "Tri par catégories : nature des mots",
    level: "Intermediaire",
    exercise_type: "tri_categories",
    instruction,
    support_text: null,
    choices: items,
    expected_answer: { mode: "categorization", categories, mapping },
    detailed_explanation: explanation,
    common_mistake: commonMistake,
    validation_status: "valide",
    source: "Série CRPE Français — Tri par catégories",
    access_tier: "free",
    is_published: true,
    created_at: createdAt,
    updated_at: createdAt,
  };
}

const CAT_NVA = [
  { id: "nom", label: "Nom" },
  { id: "verbe", label: "Verbe" },
  { id: "adjectif", label: "Adjectif" },
];

const CAT_DPA = [
  { id: "determinant", label: "Déterminant" },
  { id: "pronom", label: "Pronom" },
  { id: "adverbe", label: "Adverbe" },
];

const CAT_LIAISON = [
  { id: "prep", label: "Préposition" },
  { id: "coord", label: "Conjonction de coordination" },
  { id: "subord", label: "Conjonction de subordination" },
];

const CAT_VARIANV = [
  { id: "variable", label: "Variable" },
  { id: "invariable", label: "Invariable" },
];

const CAT_FORMES = [
  { id: "infinitif", label: "Infinitif" },
  { id: "pp", label: "Participe passé" },
  { id: "conjugue", label: "Verbe conjugué" },
];

export const seriesTriNatureMots: RevisionSession[] = [
  {
    id: "session-tri_nature_mots-Intermediaire-1",
    title: "Tri par catégories : nature des mots",
    summary:
      "Classer des mots selon leur nature grammaticale en les déplaçant dans la bonne colonne.",
    objective:
      "Identifier avec sûreté la nature de tout mot rencontré dans une phrase ou hors contexte.",
    introduction:
      "Le tri par catégories oblige à aller au-delà du sens : il faut analyser le fonctionnement du mot dans la langue. Ces six exercices couvrent les natures fondamentales attendues au CRPE.",
    subdomain: "grammaire",
    topicKey: "tri_nature_mots",
    topicLabel: "Tri par catégories : nature des mots",
    level: "Intermediaire",
    exerciseTypeLabel: "Tri par catégories",
    questionCount: 6,
    estimatedMinutes: 12,
    access_tier: "free",
    recommendedOrder: 71,
    completionSummary: {
      skill: "Identifier la nature grammaticale de tout mot en contexte",
      keyPoints: [
        "Le déterminant introduit un nom ; le pronom le remplace et fonctionne seul.",
        "L'adverbe modifie un verbe, un adjectif ou un autre adverbe et est invariable.",
        "Un même mot peut changer de nature selon le contexte : tout, même, leur, plusieurs…",
      ],
      retryAdvice:
        "Pour chaque mot, posez-vous : est-il suivi d'un nom ? Remplace-t-il un groupe ? Modifie-t-il un autre mot ? Ces trois questions suffisent à lever la plupart des doutes.",
    },
    questions: [
      triExercise(
        "ac110000-0000-0000-0000-000000000001",
        "Classez ces six mots selon leur nature grammaticale.",
        [
          { id: "tc01q1w1", label: "soleil" },
          { id: "tc01q1w2", label: "écrire" },
          { id: "tc01q1w3", label: "belle" },
          { id: "tc01q1w4", label: "maison" },
          { id: "tc01q1w5", label: "courir" },
          { id: "tc01q1w6", label: "sombre" },
        ],
        CAT_NVA,
        { tc01q1w1: "nom", tc01q1w2: "verbe", tc01q1w3: "adjectif", tc01q1w4: "nom", tc01q1w5: "verbe", tc01q1w6: "adjectif" },
        "Soleil et maison désignent des réalités concrètes : ce sont des noms. Écrire et courir sont des formes verbales à l'infinitif : ce sont des verbes. Belle et sombre expriment une qualité et s'accordent avec le nom qu'ils accompagnent : ce sont des adjectifs qualificatifs.",
        "Confondre la nature grammaticale (ce qu'est le mot) avec sa fonction syntaxique (son rôle dans la phrase). Un infinitif reste un verbe même s'il occupe la place d'un nom.",
      ),
      triExercise(
        "ac110000-0000-0000-0000-000000000002",
        "Classez ces six mots selon leur nature grammaticale. Le nom entre crochets indique le contexte quand il est nécessaire.",
        [
          { id: "tc01q2w1", label: "leurs [cahiers]" },
          { id: "tc01q2w2", label: "elle" },
          { id: "tc01q2w3", label: "vite" },
          { id: "tc01q2w4", label: "aucun [élève]" },
          { id: "tc01q2w5", label: "eux" },
          { id: "tc01q2w6", label: "jamais" },
        ],
        CAT_DPA,
        { tc01q2w1: "determinant", tc01q2w2: "pronom", tc01q2w3: "adverbe", tc01q2w4: "determinant", tc01q2w5: "pronom", tc01q2w6: "adverbe" },
        "Leurs [cahiers] et aucun [élève] introduisent chacun un nom : ce sont des déterminants (possessif et indéfini). Elle et eux fonctionnent seuls à la place d'un groupe nominal : ce sont des pronoms personnels. Vite et jamais modifient un verbe sans s'accorder : ce sont des adverbes.",
        "Confondre le pronom et le déterminant : le déterminant est toujours suivi d'un nom, le pronom le remplace et fonctionne seul. Leurs cahiers → déterminant ; eux → pronom.",
      ),
      triExercise(
        "ac110000-0000-0000-0000-000000000003",
        "Classez ces six mots de liaison selon leur nature grammaticale.",
        [
          { id: "tc01q3w1", label: "dans" },
          { id: "tc01q3w2", label: "mais" },
          { id: "tc01q3w3", label: "avec" },
          { id: "tc01q3w4", label: "car" },
          { id: "tc01q3w5", label: "parce que" },
          { id: "tc01q3w6", label: "afin que" },
        ],
        CAT_LIAISON,
        { tc01q3w1: "prep", tc01q3w2: "coord", tc01q3w3: "prep", tc01q3w4: "coord", tc01q3w5: "subord", tc01q3w6: "subord" },
        "Dans et avec introduisent un groupe nominal ou pronominal : ce sont des prépositions. Mais et car relient deux propositions de même niveau syntaxique : ce sont des conjonctions de coordination. Parce que et afin que introduisent une proposition subordonnée : ce sont des conjonctions de subordination.",
        "Confondre coordination et subordination. Test : la conjonction de subordination introduit une proposition qui dépend d'une principale ; la coordination relie des éléments de même rang.",
      ),
      triExercise(
        "ac110000-0000-0000-0000-000000000004",
        "Classez ces six mots : sont-ils variables (changent de forme selon le genre, le nombre ou la personne) ou invariables ?",
        [
          { id: "tc01q4w1", label: "belle" },
          { id: "tc01q4w2", label: "rapidement" },
          { id: "tc01q4w3", label: "leurs" },
          { id: "tc01q4w4", label: "jamais" },
          { id: "tc01q4w5", label: "parce que" },
          { id: "tc01q4w6", label: "courageux" },
        ],
        CAT_VARIANV,
        { tc01q4w1: "variable", tc01q4w2: "invariable", tc01q4w3: "variable", tc01q4w4: "invariable", tc01q4w5: "invariable", tc01q4w6: "variable" },
        "Belle (beau/belle/beaux/belles) et courageux varient en genre et en nombre : ils sont variables. Leurs varie en nombre (leur/leurs) : il est variable. Rapidement, jamais et parce que ne changent jamais de forme : ils sont invariables.",
        "Oublier que leurs est variable (leur/leurs), ou croire que la terminaison -ment garantit l'invariabilité — elle s'applique aux adverbes, lesquels sont effectivement invariables, mais ce n'est pas la terminaison qui le prouve.",
      ),
      triExercise(
        "ac110000-0000-0000-0000-000000000005",
        "Classez ces six formes verbales selon leur statut morphologique.",
        [
          { id: "tc01q5w1", label: "manger" },
          { id: "tc01q5w2", label: "mangé" },
          { id: "tc01q5w3", label: "mangeons" },
          { id: "tc01q5w4", label: "finir" },
          { id: "tc01q5w5", label: "fini" },
          { id: "tc01q5w6", label: "finissent" },
        ],
        CAT_FORMES,
        { tc01q5w1: "infinitif", tc01q5w2: "pp", tc01q5w3: "conjugue", tc01q5w4: "infinitif", tc01q5w5: "pp", tc01q5w6: "conjugue" },
        "Manger et finir sont les formes de base non personnelles : ce sont des infinitifs. Mangé et fini sont des formes susceptibles de s'accorder : ce sont des participes passés. Mangeons et finissent portent une marque de personne, de nombre et de temps : ce sont des verbes conjugués.",
        "Confondre l'infinitif -er et le participe passé -é pour les verbes du 1er groupe. Test : remplacer par un verbe du 3e groupe — si « vendre » convient, c'est un infinitif ; si « vendu » convient, c'est un participe passé.",
      ),
      triExercise(
        "ac110000-0000-0000-0000-000000000006",
        "Le mot « tout » change de nature selon le contexte. Classez ces six occurrences. Le nom entre crochets indique ce qui suit immédiatement.",
        [
          { id: "tc01q6w1", label: "tout [le livre]" },
          { id: "tc01q6w2", label: "Tous [ont réussi]" },
          { id: "tc01q6w3", label: "tout [heureuse]" },
          { id: "tc01q6w4", label: "toute [la classe]" },
          { id: "tc01q6w5", label: "tout [compris]" },
          { id: "tc01q6w6", label: "tout [petit]" },
        ],
        CAT_DPA,
        { tc01q6w1: "determinant", tc01q6w2: "pronom", tc01q6w3: "adverbe", tc01q6w4: "determinant", tc01q6w5: "pronom", tc01q6w6: "adverbe" },
        "Tout [le livre] et toute [la classe] précèdent un nom : ce sont des déterminants. Tous [ont réussi] est sujet ; tout [compris] est COD — les deux fonctionnent seuls et remplacent un groupe nominal : ce sont des pronoms. Tout [heureuse] et tout [petit] modifient un adjectif : ce sont des adverbes (tout peut prendre la marque du féminin devant consonne : toute petite).",
        "Croire que tout est toujours déterminant. Trois tests : un nom suit immédiatement → déterminant ; le mot fonctionne seul comme sujet ou complément → pronom ; le mot modifie un adjectif → adverbe.",
      ),
    ],
  },
];
