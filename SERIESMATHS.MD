# SERIESMATHS — Audit didactique et direction de conception des exercices de mathématiques CRPE

---

## 1. Résumé exécutif

### État global

Le projet dispose de **62 fiches de révision** (sprint/référence/opératoire) couvrant 5 sous-domaines mathématiques, et de **30 exercices interactifs** répartis en 3 séries seedées en base de données. Les fiches sont de qualité rédactionnelle élevée, structurées avec soin, et globalement solides sur le plan terminologique (terminologie Éduscol respectée). Les 3 séries d'exercices interactifs sont bien conçues mais insuffisantes en volume et en variété pour constituer un entraînement réel.

### Verdict général

**Les fiches sont un bon socle de révision. Les exercices interactifs sont un embryon prometteur mais largement insuffisant.** Le projet est déséquilibré : beaucoup de contenu passif (fiches à lire), très peu de contenu actif (exercices à résoudre). Or c'est le contenu actif qui fait progresser un candidat CRPE. La priorité absolue est de produire massivement des séries d'exercices interactifs de qualité, en suivant un cadre de conception rigoureux.

### Niveau de qualité didactique et pédagogique

- **Fiches** : 7/10 — solides, parfois trop descriptives, quiz internes limités au vrai/faux.
- **Exercices interactifs** : 6,5/10 — bons individuellement, mais trop peu nombreux, sans progression interne suffisante, et concentrés sur trop peu de notions.

### Enjeu principal pour la suite

Passer d'une plateforme de **lecture** à une plateforme d'**entraînement**. Cela nécessite un volume conséquent d'exercices interactifs variés, progressifs, et calibrés sur les attentes réelles du CRPE.

---

## 2. Diagnostic global de l'existant

### Points forts

1. **Couverture thématique complète des fiches.** Les 5 sous-domaines (Nombres et calcul, Géométrie, Grandeurs et mesures, Organisation de données, Didactique) sont couverts de manière équilibrée. Aucun pan majeur du programme CRPE n'est absent.

2. **Qualité des explications.** Les `detailed_explanation` des exercices sont remarquables : détaillées, progressives, avec plusieurs méthodes de résolution, des vérifications, et des liens vers les erreurs courantes. C'est le meilleur atout du projet.

3. **Terminologie rigoureuse.** L'usage systématique du vocabulaire Éduscol (« numération positionnelle », « structures additives/multiplicatives de Vergnaud », « obstacle épistémologique ») est conforme aux attentes du CRPE.

4. **Le triptyque sprint/référence/opératoire est pertinent.** Il couvre trois besoins différents (révision flash, compréhension en profondeur, procédure de résolution) et structure l'apprentissage de manière cohérente.

5. **Format « chasse aux erreurs ».** La série `math_chasse_erreurs_calcul` est le format le plus abouti : le candidat analyse l'erreur d'un élève fictif (Liam), ce qui est exactement le type de tâche demandé à l'épreuve de maths du CRPE (partie didactique).

6. **Pièges bien identifiés.** Les champs `mainTrap`, `common_mistake` et `exampleWrong` dans chaque fiche/exercice montrent une vraie réflexion sur les erreurs fréquentes. C'est précieux et différenciant.

### Faiblesses majeures

1. **Déséquilibre flagrant contenu passif / contenu actif.** 62 fiches à lire, mais seulement 30 exercices interactifs. Un candidat CRPE a besoin de s'entraîner activement, pas seulement de lire des résumés.

2. **3 séries seulement, c'est dramatiquement insuffisant.** Il faudrait au minimum 15 à 20 séries couvrant les notions clés, avec des niveaux de difficulté variés.

3. **Aucun exercice interactif en Organisation de données ni en Didactique.** Deux sous-domaines entiers n'ont aucun exercice interactif, alors que la didactique est fondamentale à l'épreuve CRPE.

4. **Quiz des fiches limités au vrai/faux.** Les 5 quiz items par fiche sont tous au format vrai/faux. C'est un format pauvre qui favorise la reconnaissance plutôt que la production, et qui offre 50 % de chances de tomber juste par hasard.

5. **Absence de progression interne dans les séries.** Les 10 questions de chaque série sont toutes au même niveau de difficulté. Il n'y a pas de montée en complexité (de la question d'échauffement à la question de synthèse).

6. **Pas d'exercices de rédaction/justification.** Le CRPE exige des réponses rédigées et justifiées. Aucun exercice ne demande au candidat de produire un raisonnement, une démonstration, ou une analyse didactique rédigée.

7. **Pas d'exercices à plusieurs étapes.** Les problèmes CRPE sont souvent des problèmes à étapes enchaînées. Toutes les questions actuelles sont atomiques (une seule opération, un seul raisonnement).

### Manques structurels

- **Aucune série sur les problèmes à étapes** (type « problème de recherche »).
- **Aucune série de type « analyse de production d'élève »** au-delà de la chasse aux erreurs calcul.
- **Aucun exercice de construction géométrique** (description de tracé, programme de construction).
- **Aucun exercice sur les statistiques et la lecture de graphiques** (histogrammes, diagrammes circulaires).
- **Aucun exercice de conversion d'unités** (pourtant source d'erreurs massives au CRPE).
- **Aucun exercice liant plusieurs domaines** (ex : proportionnalité + géométrie pour les échelles).
- **Pas de sujets blancs de type CRPE** intégrant la partie mathématique complète.

### Problèmes récurrents

1. **Uniformité des formats.** QCM + vrai/faux + réponse courte uniquement. Pas de texte à trous, pas de mise en correspondance, pas d'ordonnancement, pas de schéma à compléter.

2. **Le personnage « Liam » dans toute la série calcul.** Bon principe, mais 10 questions consécutives avec le même personnage et le même format deviennent monotones. La narration ne renouvelle pas suffisamment le contrat didactique.

3. **Accès gratuit pour tout.** Les 30 exercices sont tous en `access_tier: free`. Il n'y a aucune série premium, ce qui affaiblit le modèle économique et ne permet pas de différencier un parcours approfondi.

### Cohérence d'ensemble

La cohérence est partielle. Les fiches sont bien articulées entre elles (champs `notionsLiees`), mais les exercices interactifs vivent en silo : pas de renvoi vers les fiches correspondantes (`exercicesAssocies` est vide partout), pas de parcours d'apprentissage structuré « fiche → exercice → évaluation ».

---

## 3. Audit détaillé des séries actuelles

### Série 1 : Chasse aux erreurs — Calcul et fractions

**Identifiant** : `math_chasse_erreurs_calcul` (10 questions, intermédiaire, free)

**Objectif apparent** : Identifier et corriger des erreurs de calcul classiques (fractions, décimaux, priorités opératoires, PGCD, proportionnalité).

**Intérêt réel** : Élevé. Ce format correspond directement à une compétence évaluée au CRPE : analyser une production d'élève, identifier l'erreur, et proposer une correction. C'est le format le plus pertinent du projet.

**Points forts** :
- Le scénario « Liam a écrit… Quelle erreur ? » est excellent : il mobilise l'analyse plutôt que le calcul brut.
- Les explications détaillées sont exemplaires : elles montrent le calcul correct, expliquent la logique de l'erreur, et fournissent des moyens de vérification.
- La Q5 (simplification abusive 26/65 = 2/5) est un bijou didactique : le résultat est vrai mais la méthode est fausse. Ce type de question pousse à distinguer résultat et raisonnement.
- La Q10 (produit en croix inversé) inclut un contrôle de cohérence (« 3,33 € pour 8 kg est absurde »), ce qui enseigne une compétence métacognitive essentielle.

**Limites didactiques** :
- Toutes les questions portent sur le calcul numérique. Aucune erreur de géométrie, de mesure, ou de raisonnement logique n'est traitée.
- Pas de progression : la Q1 (addition de fractions) n'est pas plus facile que la Q9 (PGCD). Un élève faible est confronté d'emblée à un niveau intermédiaire uniforme.
- Les distracteurs QCM sont parfois trop transparents : l'erreur « il a confondu × et + » ou « il a arrondi » sont peu plausibles quand le calcul de Liam est montré.

**Limites pédagogiques** :
- Le format alterne QCM / vrai-faux / réponse courte sans logique apparente. Les réponses courtes (Q8, Q9, Q10) sont les plus formatrices mais arrivent en fin de série.
- 10 questions « chasse aux erreurs » d'affilée est trop long dans le même format. Mieux : 6 questions par série, mais davantage de séries.

**Adéquation CRPE** : Très bonne pour la partie didactique de l'épreuve. Insuffisante seule : il faudrait des séries similaires en géométrie et en mesure.

**Valeur formative** : Forte. La plus haute des 3 séries.

**Verdict** : **Série réussie, à reproduire dans d'autres domaines.** Corriger la progression et réduire à 6-8 questions par série.

---

### Série 2 : Géométrie — Vrai ou faux ? Propriétés des figures

**Identifiant** : `math_geometrie_vrai_faux_figures` (10 questions, intermédiaire, free)

**Objectif apparent** : Vérifier la maîtrise des propriétés des figures géométriques (quadrilatères, triangles, cercle).

**Intérêt réel** : Moyen. Le format vrai/faux teste la reconnaissance de propriétés, ce qui est utile mais insuffisant. Le candidat CRPE doit aussi démontrer, justifier, et construire, pas seulement valider/invalider des affirmations.

**Points forts** :
- Les 10 propriétés choisies sont pertinentes et couvrent les classiques du CRPE (hiérarchie des quadrilatères, somme des angles, symétrie, isométrie des triangles).
- Les explications sont rigoureuses et font systématiquement le lien avec les programmes scolaires.
- La Q4 (symétrie axiale vs centrale du parallélogramme) est excellente car elle cible une confusion fréquente.

**Limites didactiques** :
- **Le format vrai/faux à 10 questions consécutives est pauvre.** 50 % de chances de réponse correcte par hasard. Un candidat peut « réussir » la série sans rien comprendre.
- Les propriétés testées sont déclaratives. Aucune question ne demande d'appliquer une propriété (ex : « Le quadrilatère ABCD a ses 4 côtés égaux et un angle de 60°. Quelle est sa nature ? »).
- **Aucune figure, aucun schéma.** La géométrie sans support visuel est un non-sens. Même en format texte, on peut fournir des coordonnées, des descriptions de figures, ou des programmes de construction.
- Les questions Q5 et Q6 sont redondantes : Q5 teste « un triangle peut-il avoir deux angles droits ? » et Q6 teste « la somme des angles est 180° ». C'est la même propriété sous deux angles.

**Limites pédagogiques** :
- Pas de progression. La Q1 (carré = rectangle) est aussi simple que la Q10 (4 côtés égaux ≠ carré). La série ne construit rien.
- Le format invite au bachotage : mémoriser « vrai » ou « faux » pour chaque propriété plutôt que comprendre pourquoi.

**Adéquation CRPE** : Partielle. Les propriétés testées sont pertinentes, mais le format ne prépare pas aux questions de raisonnement et de démonstration du CRPE.

**Valeur formative** : Faible à moyenne. Le candidat qui maîtrise déjà ses propriétés n'apprend rien. Celui qui ne les maîtrise pas ne progresse pas en jouant au vrai/faux.

**Verdict** : **Série faible malgré un bon contenu.** Le format doit évoluer vers des questions d'application et de justification. À transformer ou compléter.

---

### Série 3 : Maths du quotidien — Grandeurs et proportionnalité

**Identifiant** : `math_grandeurs_quotidien` (10 questions, facile, free)

**Objectif apparent** : Appliquer les maths dans des situations de la vie courante (cuisine, courses, voyage, bricolage).

**Intérêt réel** : Moyen. Les situations sont concrètes et motivantes, mais le niveau est trop bas pour un candidat CRPE. Ce sont des exercices de fin de cycle 3, pas de niveau bac+3.

**Points forts** :
- L'ancrage dans le quotidien est bien fait : recette, soldes, TGV, terrain de foot, peinture. Les contextes sont variés et engageants.
- La mixité des formats (QCM, réponse courte, vrai/faux) est meilleure que dans la série 2.
- La Q3 (conversion 2h15 = 2,25h) et la Q9 (échelle 1/200) ciblent de vrais obstacles.

**Limites didactiques** :
- **Niveau trop facile pour le CRPE.** La plupart des questions sont de niveau cycle 3 / 6e. Un candidat au CRPE (bac+3 minimum) devrait être confronté à des situations plus complexes.
- Les calculs sont tous directs (une seule opération). Aucun problème à étapes.
- Les contextes « quotidien » sont sympathiques mais le CRPE pose des problèmes mathématiquement denses, pas des problèmes de boulangerie.
- La Q7 (1L d'eau = 1 kg) est présentée comme « vraie » sans nuance. C'est une approximation commode, pas une vérité exacte. La réponse attendue est `true` mais la question dit « exactement », ce qui est discutable.

**Limites pédagogiques** :
- Pas de montée en difficulté. La Q1 et la Q10 sont au même niveau.
- Le label « Facile » est honnête, mais que fait un candidat CRPE après avoir réussi 10 questions faciles ? Il lui faut des séries intermédiaires et avancées dans le même domaine.

**Adéquation CRPE** : Faible. Utile comme échauffement ou pour un candidat très faible en maths, mais ne prépare pas au niveau réel de l'épreuve.

**Valeur formative** : Faible pour un candidat de niveau moyen. Utile uniquement en entrée de parcours.

**Verdict** : **Série acceptable comme point d'entrée, mais insuffisante seule.** Doit être complétée par des séries intermédiaires et avancées sur les mêmes notions.

---

### Fiches de révision (62 fiches) — Audit groupé

**Objectif apparent** : Fournir un support de révision structuré couvrant l'intégralité du programme de maths CRPE.

**Points forts globaux** :
- La structuration en triptyque (sprint 5 min / référence 12 min / opératoire 8 min) est excellente et bien pensée.
- Les fiches opératoires avec arbre de décision (ex : PGCD) sont très bien conçues : elles offrent un protocole clair pour aborder un type de problème.
- Les fiches didactiques (Vergnaud, erreurs d'élèves, programmes par cycle) sont une vraie force différenciante. Aucune plateforme concurrente ne couvre aussi bien la didactique.
- Les fiches de référence sont denses et complètes.

**Limites des fiches** :
- **Les quiz internes sont tous au format vrai/faux (5 items).** C'est une limitation sérieuse. Cinq vrai/faux, c'est trop peu et trop simple pour valider une compréhension.
- Certaines fiches sprint sont très proches de fiches référence du même domaine (ex : `nombres-proportionnalite-sprint` et `nombres-proportionnalite-reference`). La valeur ajoutée du sprint est alors faible — il ressemble à un résumé de la référence plutôt qu'à un outil de révision autonome.
- Les champs `exercicesAssocies` sont systématiquement vides. La promesse de lier fiches et exercices n'est pas tenue.
- Certaines fiches couvrent des notions qui ne sont pas au programme CRPE (ex : formule d'Al-Kashi mentionnée dans `geometrie-pythagore-sprint` — hors programme).

---

## 4. Enseignements à tirer pour la création future

### Enseignement 1 : Le format fait l'exercice

Le vrai/faux et le QCM à 4 choix ne sont pas des formats d'entraînement. Ce sont des formats de vérification rapide. Un candidat qui enchaîne 50 vrai/faux ne progresse pas : il mémorise des réponses. Les formats qui font progresser sont :

- **L'analyse d'erreur** (comme la série « chasse aux erreurs ») : identifier, diagnostiquer, corriger.
- **Le problème à étapes** : enchaîner des raisonnements, gérer des données intermédiaires.
- **La justification** : expliquer pourquoi, pas seulement donner le résultat.
- **La mise en situation didactique** : « Un élève a écrit X. Analysez sa production. Proposez une remédiation. »

### Enseignement 2 : Le niveau doit correspondre à l'épreuve

Le CRPE est un concours de niveau L3. Les exercices de type « 75 cL ÷ 15 cL = 5 verres » sont trop élémentaires. Ils ont leur place comme premier palier, mais la majorité des exercices doit viser le niveau intermédiaire à avancé, avec des problèmes nécessitant :
- plusieurs étapes de raisonnement ;
- la mobilisation de plusieurs notions ;
- une justification rigoureuse.

### Enseignement 3 : La progression interne est non négociable

Chaque série doit construire une montée en compétence. La structure idéale :
1. Question d'amorce (vérifier un prérequis)
2. Questions de consolidation (appliquer directement)
3. Questions d'approfondissement (combiner, transférer)
4. Question de synthèse (problème ouvert ou analyse complexe)

### Enseignement 4 : La didactique est un domaine d'exercices, pas seulement de fiches

Le CRPE comporte une épreuve de « mise en situation professionnelle » en mathématiques. Les questions y portent sur l'analyse de productions d'élèves, la conception de séquences, l'identification de variables didactiques. Ce domaine nécessite des exercices interactifs dédiés, pas seulement des fiches de cours.

### Enseignement 5 : Les fiches et les exercices doivent être liés

Un candidat qui lit la fiche « Fractions » doit pouvoir enchaîner immédiatement sur une série d'exercices « Fractions ». L'absence de lien explicite entre les deux types de contenu affaiblit le parcours d'apprentissage.

### Enseignement 6 : La variété prime sur le volume brut

10 vrai/faux sur les quadrilatères sont moins formateurs que 5 questions variées (1 QCM, 1 réponse courte, 1 analyse d'erreur, 1 justification, 1 application dans un problème). Il faut moins de questions par série, mais des questions plus diverses et plus exigeantes.

---

## 5. Direction claire pour les prochains exercices

### Ce qu'il faut créer davantage

1. **Séries « analyse de production d'élève »** dans tous les domaines (pas seulement le calcul). Exemples :
   - Erreurs de construction géométrique
   - Erreurs de conversion de mesures
   - Erreurs de lecture de graphiques
   - Erreurs de résolution de problèmes (mauvais choix d'opération)

2. **Problèmes à étapes** type CRPE : 3 à 5 questions enchaînées autour d'une même situation (ex : un terrain à clôturer → périmètre, puis aire, puis coût de la clôture, puis comparaison avec un devis).

3. **Exercices de justification** : « Montrez que… », « Expliquez pourquoi… », « Démontrez que… ». Format réponse courte avec correction détaillée.

4. **Séries de didactique** : « Voici une séquence proposée par un enseignant. Identifiez la variable didactique modifiée. » / « Proposez un exercice de remédiation pour cet obstacle. »

5. **Séries intermédiaires et avancées** sur les notions déjà couvertes au niveau facile (grandeurs, proportionnalité).

### Ce qu'il faut créer différemment

1. **Les séries vrai/faux** doivent devenir des séries mixtes : garder 2-3 vrai/faux comme amorce, mais ajouter des questions d'application et de justification.

2. **Les séries QCM** doivent avoir des distracteurs plus plausibles et plus proches des erreurs réelles. Un distracteur doit correspondre à une procédure erronée identifiable, pas être un nombre aléatoire.

3. **Les séries « quotidien »** doivent monter en complexité : garder le contexte quotidien, mais complexifier le raisonnement (problèmes à étapes, données inutiles à trier, grandeurs à convertir).

### Ce qu'il faut arrêter de produire

1. **Séries de 10 vrai/faux consécutifs.** Ce format a une valeur formative quasi nulle.
2. **Séries de niveau uniforme.** Chaque série doit avoir une progression interne.
3. **Exercices atomiques sans contexte.** Un exercice « Calculez 3/4 + 2/5 » n'est pas un exercice CRPE. C'est un exercice de calcul mental qui a sa place dans un sprint, pas dans une série d'entraînement.
4. **Séries 100 % gratuites.** Le modèle économique nécessite des séries premium. Les séries avancées, les séries de didactique, et les séries type CRPE doivent être premium.

### Ce qu'il faut approfondir

1. **La proportionnalité** : c'est le thème transversal le plus important du CRPE. Il faut des séries dédiées sur les pourcentages, les échelles, les vitesses, les agrandissements/réductions, avec des problèmes non triviaux.
2. **La géométrie de raisonnement** : pas seulement reconnaître des propriétés, mais les utiliser dans des démonstrations (Pythagore, Thalès, propriétés des quadrilatères).
3. **L'organisation de données** : statistiques descriptives, lecture critique de graphiques, calcul de probabilités dans des situations composées.
4. **La didactique des mathématiques** : analyse de manuels, conception de séquences, identification d'obstacles, remédiation.

### Ce qu'il faut simplifier

1. Certaines fiches référence sont trop denses pour être utiles. Mieux vaut une fiche plus courte avec des exercices d'application qu'une fiche exhaustive que personne ne lit en entier.
2. Les explications des exercices sont parfois trop longues. Privilégier : (1) le raisonnement correct, (2) l'erreur visée, (3) une astuce. Pas de paragraphe entier.

### Ce qu'il faut rendre plus exigeant

1. Les quiz internes des fiches : passer de 5 vrai/faux à 5-7 questions de formats variés, avec au moins une question d'application.
2. Les séries de niveau « facile » doivent rester minoritaires (20 % du total). Le gros des exercices doit être intermédiaire (50 %) et avancé (30 %).
3. Les réponses courtes : accepter moins de variantes (forcer le format exact : « 19,2 € » et non « 19.2 » ou « 19,20 € »). Cela entraîne le candidat à la rigueur d'écriture.

---

## 6. Cadre de conception des prochaines séries

### Structure idéale d'une série d'exercices

| Élément | Standard |
|---------|----------|
| **Nombre de questions** | 6 à 8 (pas 10) |
| **Durée estimée** | 10-15 minutes |
| **Progression** | 2 questions d'amorce → 3-4 questions de consolidation → 1-2 questions de transfert/synthèse |
| **Formats** | Au moins 3 formats différents dans une série |
| **Niveau** | Graduel au sein de la série, cohérent avec le label (facile/intermédiaire/avancé) |
| **Accès** | Série facile : free. Séries intermédiaires : mix. Séries avancées et didactique : premium. |

### Progression idéale au sein d'une série

```
Q1-Q2 : AMORCE
  → Vérifier que le candidat maîtrise le vocabulaire et les prérequis.
  → Format : QCM ou vrai/faux.
  → Difficulté : directe, pas de piège.

Q3-Q5 : CONSOLIDATION
  → Appliquer la notion dans des situations variées.
  → Format : QCM avec distracteurs plausibles, réponse courte, analyse d'erreur.
  → Difficulté : intermédiaire, un ou deux pièges courants.

Q6-Q7 : APPROFONDISSEMENT
  → Combiner plusieurs notions, résoudre un problème à étapes.
  → Format : réponse courte, justification.
  → Difficulté : exigeante, proche du niveau CRPE.

Q8 (optionnelle) : TRANSFERT
  → Question ouverte ou analyse didactique.
  → Format : analyse de production d'élève, mise en situation.
  → Difficulté : élevée, mobilise compréhension et rédaction.
```

### Niveau d'exigence cible

Le calibrage doit correspondre aux annales CRPE :
- **Facile** : Exercice de type fin de cycle 3 / 6e. Calcul direct, une seule notion. Sert d'échauffement.
- **Intermédiaire** : Exercice de type 3e / seconde. Nécessite deux étapes de raisonnement ou la combinaison de deux notions. C'est le cœur de la préparation.
- **Avancé** : Exercice de type annale CRPE. Problème à étapes, raisonnement à justifier, analyse didactique. C'est la cible.

### Répartition entre les types de tâches

| Type de tâche | Part visée | Exemple |
|---------------|-----------|---------|
| **Calcul / technique** | 20 % | Calculer un PGCD, simplifier une fraction, convertir des unités |
| **Compréhension** | 25 % | Identifier si une situation est proportionnelle, reconnaître une propriété géométrique |
| **Raisonnement** | 30 % | Problème à étapes, démonstration, justification d'une propriété |
| **Analyse didactique** | 25 % | Production d'élève, choix de remédiation, variable didactique |

### Types de questions à privilégier

1. **Analyse d'erreur** — « L'élève a écrit X. Identifiez et expliquez l'erreur. »
2. **Problème contextualisé à étapes** — Situation réaliste nécessitant 3-5 calculs enchaînés.
3. **Justification** — « Démontrez que… » / « Expliquez pourquoi… » (format réponse courte avec mots-clés attendus).
4. **QCM à distracteurs diagnostiques** — Chaque mauvaise réponse correspond à une erreur identifiable.
5. **Mise en situation didactique** — « Proposez un exercice pour travailler tel obstacle. »
6. **Vrai/faux avec justification obligatoire** — « Vrai ou faux ? Justifiez. » (le vrai/faux seul est déconseillé).

### Types de questions à éviter

1. **QCM avec distracteurs fantaisistes** — Un distracteur qui ne correspond à aucune erreur plausible est du bruit.
2. **Vrai/faux pur en série** — 50 % de chances de réussite par hasard. Pédagogiquement indigent.
3. **Calcul brut sans contexte** — « Calculez 156 × 23 » n'est pas un exercice CRPE.
4. **Questions de cours déguisées** — « Quelle est la formule de l'aire du trapèze ? » teste la mémoire, pas la compétence.
5. **Questions ambiguës scientifiquement** — Comme « 1L d'eau pèse exactement 1 kg » (c'est une approximation).

### Critères de qualité avant publication

Avant de publier une série, vérifier :

- [ ] La série a une progression interne claire (amorce → consolidation → approfondissement)
- [ ] Au moins 3 formats de questions différents sont utilisés
- [ ] Chaque distracteur QCM correspond à une erreur identifiable
- [ ] Les explications détaillent le raisonnement correct ET l'erreur visée
- [ ] Le champ `common_mistake` décrit une vraie erreur de candidat, pas un piège artificiel
- [ ] Le niveau est cohérent avec le label (facile/intermédiaire/avancé)
- [ ] La série est liée aux fiches correspondantes via `exercicesAssocies`
- [ ] Les `acceptableAnswers` couvrent les variantes raisonnables (virgule, point, unité)
- [ ] La terminologie est conforme au référentiel Éduscol
- [ ] Un candidat CRPE tire un bénéfice réel de cette série (pas du remplissage)

---

## 7. Plan de production priorisé

### Priorité 1 — Créations immédiates (impact maximal)

Ces séries doivent être créées en premier car elles comblent les manques les plus critiques :

| # | Série à créer | Domaine | Niveau | Format principal | Accès |
|---|--------------|---------|--------|-----------------|-------|
| 1 | Chasse aux erreurs — Géométrie | geometrie | Intermédiaire | Analyse d'erreur | free |
| 2 | Chasse aux erreurs — Mesures et conversions | grandeurs_mesures | Intermédiaire | Analyse d'erreur | free |
| 3 | Problèmes à étapes — Proportionnalité | nombres_calcul | Intermédiaire | Problème contextualisé | premium |
| 4 | Problèmes à étapes — Grandeurs composées | grandeurs_mesures | Avancé | Problème contextualisé | premium |
| 5 | Analyse de productions d'élèves — Numération | didactique_maths | Intermédiaire | Analyse didactique | premium |
| 6 | Statistiques et graphiques — Lecture critique | organisation_donnees | Intermédiaire | QCM + réponse courte | free |
| 7 | Fractions et décimaux — Passages et pièges | nombres_calcul | Avancé | Mixte | premium |
| 8 | Quadrilatères — Propriétés et démonstrations | geometrie | Intermédiaire | Justification | premium |

### Priorité 2 — Renforcements (consolider l'existant)

| # | Série à créer | Domaine | Niveau | Justification |
|---|--------------|---------|--------|---------------|
| 9 | Grandeurs — Conversions systématiques | grandeurs_mesures | Facile | Combler un manque flagrant |
| 10 | Probabilités — Situations composées | organisation_donnees | Avancé | Aucun exercice dans ce domaine |
| 11 | Proportionnalité avancée — Pourcentages successifs | nombres_calcul | Avancé | Thème central CRPE |
| 12 | Pythagore et Thalès — Applications | geometrie | Avancé | Théorèmes fondamentaux |
| 13 | Didactique — Variables didactiques | didactique_maths | Avancé | Compétence clé CRPE |
| 14 | Calcul mental — Stratégies | nombres_calcul | Facile | Entraînement automatismes |

### Priorité 3 — Refontes et approfondissements (plus tard)

| # | Action | Détail |
|---|--------|--------|
| 15 | Refonte série géométrie vrai/faux | Transformer en série mixte avec questions d'application |
| 16 | Refonte série grandeurs quotidien | Ajouter des questions intermédiaires et avancées |
| 17 | Création de sujets blancs CRPE maths | 4-5 exercices enchaînés type épreuve complète |
| 18 | Enrichissement des quiz de fiches | Passer de 5 vrai/faux à 5-7 questions variées |
| 19 | Séries de géométrie avec coordonnées | Exercices de repérage et calcul de distances |
| 20 | Séries transversales (multi-domaines) | Problèmes croisant calcul, géométrie et mesures |

### Notions à mieux couvrir (par ordre d'urgence)

1. **Proportionnalité avancée** (pourcentages composés, vitesses moyennes, échelles non triviales)
2. **Conversions d'unités** (aires, volumes, unités composées km/h → m/s)
3. **Statistiques** (moyenne pondérée, médiane, étendue, lecture de graphiques)
4. **Analyse d'erreurs d'élèves** (tous domaines, pas seulement le calcul)
5. **Résolution de problèmes multi-étapes** (3 à 5 étapes enchaînées)
6. **Solides et patrons** (reconnaître, calculer, construire)
7. **Programmes de construction** (rédiger ou interpréter un programme de tracé)

### Formats à développer

- **Analyse de production d'élève** (format le plus pertinent pour le CRPE)
- **Problème à étapes contextualisé** (le cœur de l'épreuve)
- **QCM à distracteurs diagnostiques** (chaque mauvaise réponse = une erreur identifiable)
- **Réponse courte avec justification** (forcer l'argumentation)

### Formats à abandonner progressivement

- **Série 100 % vrai/faux** (remplacer par des formats mixtes)
- **Série sans progression** (toujours ordonner de l'amorce au transfert)
- **Exercice de calcul pur sans contexte** (réserver au calcul mental)

---

## 8. Conclusion stratégique

### Ligne éditoriale pour les futures séries de maths

**Le candidat CRPE ne doit pas seulement savoir faire des maths. Il doit savoir les enseigner.** Cela implique deux niveaux d'exigence dans les exercices :

1. **Niveau mathématique** : résoudre des problèmes de niveau 3e/seconde avec rigueur, en mobilisant plusieurs notions, en justifiant ses choix, en vérifiant ses résultats.

2. **Niveau didactique** : analyser des productions d'élèves, identifier des erreurs et leurs causes, concevoir des remédiations, manipuler les concepts de Vergnaud, Brousseau, et les programmes officiels.

**La plateforme doit devenir un terrain d'entraînement actif, pas une bibliothèque de fiches.** Cela signifie :

- **Tripler le nombre de séries d'exercices interactifs** (passer de 3 à au moins 15 séries d'ici la prochaine phase de production).
- **Diversifier les formats** : sortir du triptyque QCM/vrai-faux/réponse courte pour intégrer l'analyse d'erreur, le problème à étapes, la justification, et la mise en situation didactique.
- **Calibrer le niveau sur les annales CRPE** : la majorité des exercices doit être de niveau intermédiaire à avancé, avec une vraie progression interne.
- **Lier fiches et exercices** : chaque fiche doit renvoyer vers les séries correspondantes, et chaque série vers les fiches de référence. Le parcours « apprendre → s'entraîner → s'évaluer » doit être explicite.

**Ce qui différencie un bon exercice CRPE d'un exercice scolaire :**

Un exercice scolaire demande de calculer. Un exercice CRPE demande de comprendre pourquoi on calcule, de justifier le calcul, d'anticiper les erreurs possibles, et parfois de concevoir un exercice meilleur que celui qu'on est en train de résoudre. C'est cette dimension réflexive et didactique qui doit imprégner toutes les futures créations.

**Mot d'ordre : chaque exercice doit faire progresser le candidat, pas seulement l'occuper.**
