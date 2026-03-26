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
import { nombresPourcentagesSprint } from "./nombres-pourcentages-sprint";
import { nombresPourcentagesOperatoire } from "./nombres-pourcentages-operatoire";
import { nombresEquationsPremierDegreSprint } from "./nombres-equations-premier-degre-sprint";
import { nombresRelatifsOperationsSprint } from "./nombres-relatifs-operations-sprint";
import { nombresDivisibiliteOperatoire } from "./nombres-divisibilite-operatoire";
import { nombresFonctionsLineairesAffinesSprint } from "./nombres-fonctions-lineaires-affines-sprint";
import { nombresNumerationBasesSprint } from "./nombres-numeration-bases-sprint";
import { nombresInequationsSprint } from "./nombres-inequations-sprint";

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
import { geometrieThalesSprint } from "./geometrie-thales-sprint";
import { geometrieThalesOperatoire } from "./geometrie-thales-operatoire";
import { geometrieProgrammesConstructionSprint } from "./geometrie-programmes-construction-sprint";
import { geometrieTrigonometrieSprint } from "./geometrie-trigonometrie-sprint";
import { geometrieAgrandissementReductionSprint } from "./geometrie-agrandissement-reduction-sprint";
import { geometrieAnglesParallelesSprint } from "./geometrie-angles-paralleles-sprint";
import { geometrieReperageOperatoire } from "./geometrie-reperage-operatoire";
import { geometrieRotationTranslationSprint } from "./geometrie-rotation-translation-sprint";

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
import { grandeursUnitesComposeesSprint } from "./grandeurs-unites-composees-sprint";
import { grandeursVitesseTempsDistanceOperatoire } from "./grandeurs-vitesse-temps-distance-operatoire";
import { grandeursEchellesOperatoire } from "./grandeurs-echelles-operatoire";
import { grandeursDureesHorairesSprint } from "./grandeurs-durees-horaires-sprint";
import { grandeursPerimetreAireConfusionSprint } from "./grandeurs-perimetre-aire-confusion-sprint";
import { grandeursVolumesContenancesOperatoire } from "./grandeurs-volumes-contenances-operatoire";
import { grandeursMesurerConstruireAngleOperatoire } from "./grandeurs-mesurer-construire-angle-operatoire";

// ─── Organisation de données ─────────────────────────────────────────────────
import { donneesTableauxGraphiquesSprint } from "./donnees-tableaux-graphiques-sprint";
import { donneesMoyenneMedianeSprint } from "./donnees-moyenne-mediane-sprint";
import { donneesProbabilitesSprint } from "./donnees-probabilites-sprint";
import { donneesStatistiquesReference } from "./donnees-statistiques-reference";
import { donneesProbabilitesReference } from "./donnees-probabilites-reference";
import { donneesDiagrammeOperatoire } from "./donnees-diagramme-operatoire";
import { donneesLectureGraphiquesSprint } from "./donnees-lecture-graphiques-sprint";
import { donneesProbabilitesComposeesSprint } from "./donnees-probabilites-composees-sprint";
import { donneesMoyennePondereeOperatoire } from "./donnees-moyenne-ponderee-operatoire";
import { donneesDenombrementCombinatoireSprint } from "./donnees-denombrement-combinatoire-sprint";
import { donneesProportionnaliteGraphiqueSprint } from "./donnees-proportionnalite-graphique-sprint";
import { donneesFrequencesCumuleesQuartilesSprint } from "./donnees-frequences-cumulees-quartiles-sprint";
import { donneesEtendueDispersionBoiteSprint } from "./donnees-etendue-dispersion-boite-sprint";

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
import { didactiqueObstaclesGeometrieSprint } from "./didactique-obstacles-geometrie-sprint";
import { didactiqueVergnaudStructuresSprint } from "./didactique-vergnaud-structures-sprint";
import { didactiqueBrousseauContratSituationsSprint } from "./didactique-brousseau-contrat-situations-sprint";
import { didactiqueEvaluationRemediationSprint } from "./didactique-evaluation-remediation-sprint";
import { didactiqueMaterielManipulationSprint } from "./didactique-materiel-manipulation-sprint";
import { didactiqueJeuCalculMentalSprint } from "./didactique-jeu-calcul-mental-sprint";
import { didactiqueAdditionSprint } from "./didactique-addition-sprint";
import { didactiqueSoustractionSprint } from "./didactique-soustraction-sprint";
import { didactiqueMultiplicationSprint } from "./didactique-multiplication-sprint";
import { didactiqueDivisionSprint } from "./didactique-division-sprint";
import { grandeursResolutionProblemesReference } from "./grandeurs-resolution-problemes-reference";
import { geometrieClasserQuadrilateresOperatoire } from "./geometrie-classer-quadrilateres-operatoire";
import { donneesArbreProbabilitesOperatoire } from "./donnees-arbre-probabilites-operatoire";
import { donneesStatistiquesEtudeOperatoire } from "./donnees-statistiques-etude-operatoire";
import { didactiqueInstitutionnalisationSprint } from "./didactique-institutionnalisation-sprint";
import { didactiqueSituationsRechercheSprint } from "./didactique-situations-recherche-sprint";
import { didactiquePreparerSeanceMathsOperatoire } from "./didactique-preparer-seance-maths-operatoire";
import { didactiqueHistoireMathsSprint } from "./didactique-histoire-maths-sprint";
import { didactiqueDifferenciationOperatoire } from "./didactique-differenciation-operatoire";

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
  nombresPourcentagesSprint,
  nombresPourcentagesOperatoire,
  nombresEquationsPremierDegreSprint,
  nombresRelatifsOperationsSprint,
  nombresDivisibiliteOperatoire,
  nombresFonctionsLineairesAffinesSprint,
  nombresNumerationBasesSprint,
  nombresInequationsSprint,
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
  geometrieThalesSprint,
  geometrieThalesOperatoire,
  geometrieProgrammesConstructionSprint,
  geometrieTrigonometrieSprint,
  geometrieAgrandissementReductionSprint,
  geometrieAnglesParallelesSprint,
  geometrieReperageOperatoire,
  geometrieRotationTranslationSprint,
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
  grandeursUnitesComposeesSprint,
  grandeursVitesseTempsDistanceOperatoire,
  grandeursEchellesOperatoire,
  grandeursDureesHorairesSprint,
  grandeursPerimetreAireConfusionSprint,
  grandeursVolumesContenancesOperatoire,
  grandeursMesurerConstruireAngleOperatoire,
  // Organisation de données
  donneesTableauxGraphiquesSprint,
  donneesMoyenneMedianeSprint,
  donneesProbabilitesSprint,
  donneesStatistiquesReference,
  donneesProbabilitesReference,
  donneesDiagrammeOperatoire,
  donneesLectureGraphiquesSprint,
  donneesProbabilitesComposeesSprint,
  donneesMoyennePondereeOperatoire,
  donneesDenombrementCombinatoireSprint,
  donneesProportionnaliteGraphiqueSprint,
  donneesFrequencesCumuleesQuartilesSprint,
  donneesEtendueDispersionBoiteSprint,
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
  didactiqueObstaclesGeometrieSprint,
  didactiqueVergnaudStructuresSprint,
  didactiqueBrousseauContratSituationsSprint,
  didactiqueEvaluationRemediationSprint,
  didactiqueMaterielManipulationSprint,
  didactiqueJeuCalculMentalSprint,
  didactiqueAdditionSprint,
  didactiqueSoustractionSprint,
  didactiqueMultiplicationSprint,
  didactiqueDivisionSprint,
  // Nouvelles fiches reference & opératoire
  grandeursResolutionProblemesReference,
  geometrieClasserQuadrilateresOperatoire,
  // Organisation de données — nouvelles fiches opératoire
  donneesArbreProbabilitesOperatoire,
  donneesStatistiquesEtudeOperatoire,
  // Didactique des maths — nouvelles fiches sprint & opératoire
  didactiqueInstitutionnalisationSprint,
  didactiqueSituationsRechercheSprint,
  didactiquePreparerSeanceMathsOperatoire,
  didactiqueHistoireMathsSprint,
  didactiqueDifferenciationOperatoire,
];
