import type { Fiche } from "@/features/fiches/types";

import { reperageExpliciteSprint } from "./comprehension-texte-reperage-explicite-sprint";
import { impliciteInferenceSprint } from "./comprehension-texte-implicite-inference-sprint";
import { texteDocumentaireSprint } from "./comprehension-texte-documentaire-sprint";
import { participePasseSprint } from "./orthographe-participe-passe-sprint";
import { accordGnSprint } from "./orthographe-accord-gn-sprint";
import { homophonesSprint } from "./orthographe-homophones-sprint";
import { accordVerbeSujetSprint } from "./orthographe-accord-verbe-sujet-sprint";
import { infinitifParticipeSprint } from "./orthographe-infinitif-participe-sprint";
import { natureMotsSprint } from "./grammaire-nature-mots-sprint";
import { fonctionsGrammaticalesSprint } from "./grammaire-fonctions-sprint";
import { phraseSimpleSprint } from "./grammaire-phrase-simple-sprint";
import { subordonnéesRelativesSprint } from "./grammaire-subordonnees-relatives-sprint";
import { analyseLangueRelativesSprint } from "./analyse-langue-subordonnees-relatives-sprint";
import { formationMotsSprint } from "./lexique-formation-mots-sprint";
import { figuresDeStyleSprint } from "./lexique-figures-de-style-sprint";
import { valeursPresentSprint } from "./conjugaison-valeurs-present-sprint";
import { imparfaitPasseSimpleSprint } from "./conjugaison-imparfait-passe-simple-sprint";
import { enseignementOrthographeSprint } from "./didactique-enseignement-orthographe-sprint";
import { apprendreALireSprint } from "./didactique-apprendre-a-lire-sprint";
import { productionEcriteSprint } from "./didactique-production-ecrite-sprint";
import { evaluationFrancaisSprint } from "./didactique-evaluation-francais-sprint";
import { grammaireInductiveSprint } from "./didactique-grammaire-inductive-sprint";
import { programmesFrancaisCyclesReference } from "./didactique-programmes-cycles-reference";
import { grammairePhraseCOmplexeSprint } from "./grammaire-phrase-complexe-sprint";
import { grammaireVoixPassiveSprint } from "./grammaire-voix-passive-sprint";
import { grammaireDiscoursSprint } from "./grammaire-discours-direct-indirect-sprint";
import { grammaireSubCircSprint } from "./grammaire-subordonnees-circonstancielles-sprint";
import { ppAvoirSprint } from "./orthographe-participe-passe-avoir-sprint";
import { plurielNomsComposesSprint } from "./orthographe-pluriel-noms-composes-sprint";
import { toutMemeSprint } from "./orthographe-tout-meme-sprint";
import { subjonctifSprint } from "./conjugaison-subjonctif-sprint";
import { concordanceTempsSprint } from "./conjugaison-concordance-temps-sprint";
import { conditionnelSprint } from "./conjugaison-conditionnel-sprint";
import { registresLangueSprint } from "./lexique-registres-langue-sprint";
import { champsLexicauxSprint } from "./lexique-champs-lexicaux-sprint";
import { connecteursSprint } from "./lexique-connecteurs-sprint";
import { derivationSprint } from "./analyse-langue-derivation-sprint";
import { enonciationSprint } from "./analyse-langue-enonciation-sprint";
import { analyseLanguePhraseComplexeTypesSprint } from "./analyse-langue-phrase-complexe-types-sprint";
import { analyseLangueComplementsCirconstancielsSprint } from "./analyse-langue-complements-circonstanciels-sprint";
import { analyseLangueVoixActivePassiveSprint } from "./analyse-langue-voix-active-passive-sprint";
import { analyseLangueSubordonneesConjonctivesSprint } from "./analyse-langue-subordonnees-conjonctives-completives-circonstancielles-sprint";
import { schemaNarratifSprint } from "./comprehension-texte-schema-narratif-sprint";
import { texteArgumentatifSprint } from "./comprehension-texte-argumentatif-sprint";
import { consciencePhonologiqueSprint } from "./didactique-conscience-phonologique-sprint";
import { erreursElevesSprint } from "./didactique-erreurs-eleves-sprint";
import { differentiationSprint } from "./didactique-differentiation-sprint";

export const allFiches: Fiche[] = [
  reperageExpliciteSprint,
  impliciteInferenceSprint,
  texteDocumentaireSprint,
  participePasseSprint,
  accordGnSprint,
  homophonesSprint,
  accordVerbeSujetSprint,
  infinitifParticipeSprint,
  natureMotsSprint,
  fonctionsGrammaticalesSprint,
  phraseSimpleSprint,
  subordonnéesRelativesSprint,
  analyseLangueRelativesSprint,
  formationMotsSprint,
  figuresDeStyleSprint,
  valeursPresentSprint,
  imparfaitPasseSimpleSprint,
  enseignementOrthographeSprint,
  apprendreALireSprint,
  productionEcriteSprint,
  evaluationFrancaisSprint,
  grammaireInductiveSprint,
  programmesFrancaisCyclesReference,
  grammairePhraseCOmplexeSprint,
  grammaireVoixPassiveSprint,
  grammaireDiscoursSprint,
  grammaireSubCircSprint,
  ppAvoirSprint,
  plurielNomsComposesSprint,
  toutMemeSprint,
  subjonctifSprint,
  concordanceTempsSprint,
  conditionnelSprint,
  registresLangueSprint,
  champsLexicauxSprint,
  connecteursSprint,
  derivationSprint,
  enonciationSprint,
  analyseLanguePhraseComplexeTypesSprint,
  analyseLangueComplementsCirconstancielsSprint,
  analyseLangueVoixActivePassiveSprint,
  analyseLangueSubordonneesConjonctivesSprint,
  schemaNarratifSprint,
  texteArgumentatifSprint,
  consciencePhonologiqueSprint,
  erreursElevesSprint,
  differentiationSprint,
];
