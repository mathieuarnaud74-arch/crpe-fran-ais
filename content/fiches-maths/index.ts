import type { Fiche } from "@/features/fiches/types";

// ─── Nombres et calcul ───────────────────────────────────────────────────────
import { entiersNaturelsSprint } from "./nombres-entiers-naturels-sprint";
import { entiersRelatifsSprint } from "./nombres-entiers-relatifs-sprint";
import { decimauxSprint } from "./nombres-decimaux-sprint";
import { fractionsSprint } from "./nombres-fractions-sprint";
import { divisibiliteSprint } from "./nombres-divisibilite-sprint";
import { pgcdPpcmSprint } from "./nombres-pgcd-ppcm-sprint";
import { puissancesRacinesSprint } from "./nombres-puissances-racines-sprint";
import { proportionnaliteSprint } from "./nombres-proportionnalite-sprint";
import { numerationPositionnelleReference } from "./nombres-numeration-positionnelle-reference";
import { fractionsDecimauxReference } from "./nombres-fractions-decimaux-reference";
import { arithmetiqueReference } from "./nombres-arithmetique-reference";
import { proportionnaliteReference } from "./nombres-proportionnalite-reference";
import { calculMentalReference } from "./nombres-calcul-mental-reference";
import { fractionsOperationsOperatoire } from "./nombres-fractions-operations-operatoire";
import { pgcdOperatoire } from "./nombres-pgcd-operatoire";
import { problemeProportionnaliteOperatoire } from "./nombres-probleme-proportionnalite-operatoire";
import { nombresOrdreGrandeurSprint } from "./nombres-ordre-grandeur-sprint";
import { nombresEcritureScientifiqueSprint } from "./nombres-ecriture-scientifique-sprint";

// ─── Géométrie ───────────────────────────────────────────────────────────────
import { geometrieDroitesRemarquablesSprint } from "./geometrie-droites-remarquables-sprint";
import { geometrieAnglesSprint } from "./geometrie-angles-sprint";
import { geometrieTrianglesSprint } from "./geometrie-triangles-sprint";
import { geometrieQuadrilateresSprint } from "./geometrie-quadrilateres-sprint";
import { geometrieCercleSprint } from "./geometrie-cercle-sprint";
import { geometrieSymetrieAxialeSprint } from "./geometrie-symetrie-axiale-sprint";
import { geometrieSymetrieCentraleSprint } from "./geometrie-symetrie-centrale-sprint";
import { geometriePythagoreSprint } from "./geometrie-pythagore-sprint";
import { geometrieFiguresPlanesReference } from "./geometrie-figures-planes-reference";
import { geometrieSolidesReference } from "./geometrie-solides-reference";
import { geometrieTransformationsReference } from "./geometrie-transformations-reference";
import { geometrieTheoremesReference } from "./geometrie-theoremes-reference";
import { geometrieReperageReference } from "./geometrie-reperage-reference";
import { geometrieConstruireSymetriqueOperatoire } from "./geometrie-construire-symetrique-operatoire";
import { geometriePythagoreOperatoire } from "./geometrie-pythagore-operatoire";
import { geometriePatronSolideOperatoire } from "./geometrie-patron-solide-operatoire";

// ─── Grandeurs et mesures ────────────────────────────────────────────────────
import { grandeursUnitesLongueurSprint } from "./grandeurs-unites-longueur-sprint";
import { grandeursUnitesMasseCapaciteSprint } from "./grandeurs-unites-masse-capacite-sprint";
import { grandeursPerimetreSprint } from "./grandeurs-perimetre-sprint";
import { grandeursAiresSprint } from "./grandeurs-aires-sprint";
import { grandeursVolumesSprint } from "./grandeurs-volumes-sprint";
import { grandeursConversionsReference } from "./grandeurs-conversions-reference";
import { grandeursAiresVolumesReference } from "./grandeurs-aires-volumes-reference";
import { grandeursEchellesPlansReference } from "./grandeurs-echelles-plans-reference";
import { grandeursConversionOperatoire } from "./grandeurs-conversion-operatoire";
import { grandeursAireFigureComplexeOperatoire } from "./grandeurs-aire-figure-complexe-operatoire";

// ─── Organisation de données ─────────────────────────────────────────────────
import { donneesTableauxGraphiquesSprint } from "./donnees-tableaux-graphiques-sprint";
import { donneesMoyenneMedianeSprint } from "./donnees-moyenne-mediane-sprint";
import { donneesProbabilitesSprint } from "./donnees-probabilites-sprint";
import { donneesStatistiquesReference } from "./donnees-statistiques-reference";
import { donneesProbabilitesReference } from "./donnees-probabilites-reference";
import { donneesDiagrammeOperatoire } from "./donnees-diagramme-operatoire";

// ─── Didactique des maths ────────────────────────────────────────────────────
import { didactiqueNumerationCyclesSprint } from "./didactique-numeration-cycles-sprint";
import { didactiqueCalculPoseSprint } from "./didactique-calcul-pose-sprint";
import { didactiqueResolutionProblemesSprint } from "./didactique-resolution-problemes-sprint";
import { didactiqueGeometrieManipulationSprint } from "./didactique-geometrie-manipulation-sprint";
import { didactiqueFractionsDecimauxSprint } from "./didactique-fractions-decimaux-sprint";
import { didactiqueErreursElevesReference } from "./didactique-erreurs-eleves-reference";
import { didactiqueProgrammesCyclesReference } from "./didactique-programmes-cycles-reference";
import { didactiqueVariablesDidactiquesReference } from "./didactique-variables-didactiques-reference";
import { didactiqueRepresentationsReference } from "./didactique-representations-reference";
import { didactiqueDifferenciationReference } from "./didactique-differenciation-reference";
import { didactiqueAnalyserErreurOperatoire } from "./didactique-analyser-erreur-operatoire";
import { didactiqueConcevoirSequenceOperatoire } from "./didactique-concevoir-sequence-operatoire";

export const allFichesMaths: Fiche[] = [
  // Nombres et calcul
  entiersNaturelsSprint,
  entiersRelatifsSprint,
  decimauxSprint,
  fractionsSprint,
  divisibiliteSprint,
  pgcdPpcmSprint,
  puissancesRacinesSprint,
  proportionnaliteSprint,
  numerationPositionnelleReference,
  fractionsDecimauxReference,
  arithmetiqueReference,
  proportionnaliteReference,
  calculMentalReference,
  fractionsOperationsOperatoire,
  pgcdOperatoire,
  problemeProportionnaliteOperatoire,
  nombresOrdreGrandeurSprint,
  nombresEcritureScientifiqueSprint,
  // Géométrie
  geometrieDroitesRemarquablesSprint,
  geometrieAnglesSprint,
  geometrieTrianglesSprint,
  geometrieQuadrilateresSprint,
  geometrieCercleSprint,
  geometrieSymetrieAxialeSprint,
  geometrieSymetrieCentraleSprint,
  geometriePythagoreSprint,
  geometrieFiguresPlanesReference,
  geometrieSolidesReference,
  geometrieTransformationsReference,
  geometrieTheoremesReference,
  geometrieReperageReference,
  geometrieConstruireSymetriqueOperatoire,
  geometriePythagoreOperatoire,
  geometriePatronSolideOperatoire,
  // Grandeurs et mesures
  grandeursUnitesLongueurSprint,
  grandeursUnitesMasseCapaciteSprint,
  grandeursPerimetreSprint,
  grandeursAiresSprint,
  grandeursVolumesSprint,
  grandeursConversionsReference,
  grandeursAiresVolumesReference,
  grandeursEchellesPlansReference,
  grandeursConversionOperatoire,
  grandeursAireFigureComplexeOperatoire,
  // Organisation de données
  donneesTableauxGraphiquesSprint,
  donneesMoyenneMedianeSprint,
  donneesProbabilitesSprint,
  donneesStatistiquesReference,
  donneesProbabilitesReference,
  donneesDiagrammeOperatoire,
  // Didactique des maths
  didactiqueNumerationCyclesSprint,
  didactiqueCalculPoseSprint,
  didactiqueResolutionProblemesSprint,
  didactiqueGeometrieManipulationSprint,
  didactiqueFractionsDecimauxSprint,
  didactiqueErreursElevesReference,
  didactiqueProgrammesCyclesReference,
  didactiqueVariablesDidactiquesReference,
  didactiqueRepresentationsReference,
  didactiqueDifferenciationReference,
  didactiqueAnalyserErreurOperatoire,
  didactiqueConcevoirSequenceOperatoire,
];
