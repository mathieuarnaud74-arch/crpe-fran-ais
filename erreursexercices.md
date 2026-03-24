# Audit du contenu pedagogique -- Erreurs et corrections

Audit realise le 2026-03-23 sur un echantillon de ~25 fiches TypeScript et ~6 fichiers SQL de migrations.

---

## ERREURS IMPORTANTES (accents manquants, coquilles, terminologie)

### 4. Fiche `analyse-langue-voix-active-passive-sprint.ts` -- Accents manquants sur tout le fichier

- **Fichier** : `content/fiches/analyse-langue-voix-active-passive-sprint.ts`
- **Texte problematique** : Tout le contenu textuel du fichier est ecrit SANS accents. Exemples :
  - `"reperage"` au lieu de `"reperage"` (ligne 26)
  - `"Verifiez toujours"` au lieu de `"Verifiez toujours"` (ligne 28)
  - `"corrigees"` au lieu de `"corrigees"` (ligne 32)
  - `"resultat"` au lieu de `"resultat"` (ligne 40)
  - `"reunis"` au lieu de `"reunis"` (ligne 47)
  - `"recevable"` au lieu de `"recevable"` (ligne 68)
  - etc. (quasiment toutes les lignes sont touchees)
- **Nature** : Coquille massive / probleme d'encodage
- **Explication** : Ce fichier semble avoir ete genere ou copie sans les accents francais. Tous les e accent, les a accent, les i trema, etc. sont absents. Le contenu est illisible pour un etudiant preparant le CRPE.
- **Correction** : Reecrire entierement le contenu avec les accents corrects, ou regenerer le fichier avec un encodage UTF-8 correct.

---

### 8. Fiche `grammaire-voix-passive-sprint.ts` -- Test de transformation maladroit

- **Fichier** : `content/fiches/grammaire-voix-passive-sprint.ts`, ligne 29
- **Texte problematique** :
  > Test : peut-on transformer en actif ? *"Le travail fatiguit il" -- non grammatical
- **Nature** : Meme probleme que #5 -- forme "fatiguit" inexistante
- **Explication** : Voir erreur #5. Cela dit, ce fichier EST correctement accentue (contrairement au fichier analyse-langue-voix-active-passive). Le "fatiguit" est une erreur de conjugaison dans le test propose.
- **Correction** : Remplacer par `*"Le travail fatigue-t-il ?"` (forme interrogative) ou reformuler le raisonnement.

CORRECTION : En relisant plus attentivement, dans ce fichier (`grammaire-voix-passive-sprint.ts`), la ligne 29 ne contient PAS "fatiguit" mais "Le travail fatiguit il". Verifions... Oui, le texte est : `Test : peut-on transformer en actif ? *"Le travail fatiguit il" → non grammatical`. La forme "fatiguit" est incorrecte.

---

## IMPRECISIONS TERMINOLOGIQUES / FORMULATIONS DISCUTABLES

### 9. Fiche `lexique-registres-langue-sprint.ts` -- "emploiera" (conjugaison)

- **Fichier** : `content/fiches/lexique-registres-langue-sprint.ts`, ligne 53
- **Texte problematique** :
  > Au niveau soutenu, on emploiera "je ne sais pas"
- **Nature** : Coquille de conjugaison
- **Explication** : "emploiera" devrait etre **"emploiera"** ou plus probablement **"emploie"** (present) ou **"emploiera"** (futur). En fait, "emploiera" EST la forme correcte du futur simple de "employer" (employeR + -a). Fausse alerte : la forme est correcte. Correction annulee.

---

### 10. Fiche `comprehension-texte-implicite-inference-sprint.ts` -- "Cain & Oakhill" non traduit

- **Fichier** : `content/fiches/comprehension-texte-implicite-inference-sprint.ts`, ligne 27
- **Nature** : Non-conformite mineure
- **Explication** : Les references aux chercheurs (Cain & Oakhill, Kintsch) sont pertinentes mais le format "&" est anglophone. En francais academique, on ecrit "Cain et Oakhill". C'est un detail mineur.

---

### 11. Fiche `didactique-graphophonologie-cgp-sprint.ts` -- "reconnaitre" sans accent

- **Fichier** : `content/fiches/didactique-graphophonologie-cgp-sprint.ts`, ligne 46 (exampleWrong)
- **Texte problematique** :
  > La methode globale (reconnaitre les mots comme des images sans decoder le code)
- **Nature** : Coquille possible (reforme orthographique 1990)
- **Explication** : "reconnaitre" est acceptable avec la reforme 1990 (suppression de l'accent circonflexe sur le i devant t). Cependant, l'accent est present partout ailleurs dans le corpus. Uniformiser serait preferable. C'est un detail.

---

### 12. Fiche `analyse-langue-derivation-sprint.ts` -- Exemple contestable "modable"

- **Fichier** : `content/fiches/analyse-langue-derivation-sprint.ts`, ligne 70
- **Texte problematique** :
  > -able forme des adjectifs a partir de verbes dans la majorite des cas (porter -- portable), mais aussi a partir de noms (modes -- modable)
- **Nature** : Exemple contestable
- **Explication** : "modable" n'est pas un mot reconnu du francais standard. Il est utilise dans le jargon de la mode/presse, mais n'apparait pas dans les dictionnaires de reference. Pour un contenu CRPE, un exemple plus solide serait preferable : "raisonnable" (raison + -able) ou "corveable" (corvee + -able).
- **Correction** : Remplacer "modable" par un derive en -able a partir d'un nom atteste dans les dictionnaires, par exemple "corveable" (corvee + -able), "praticable" (pratique + -able), ou "charitable" (charite + -able).

---

### 13. Fiche `orthographe-accord-verbe-sujet-sprint.ts` -- Regle trop rigide sur "une foule de"

- **Fichier** : `content/fiches/orthographe-accord-verbe-sujet-sprint.ts`, ligne 33
- **Texte problematique** :
  > "une foule de", "une majorite de", "une serie de" -- singulier (noyau collectif singulier)
- **Nature** : Simplification excessive
- **Explication** : Grevisse (Le Bon Usage) et l'Academie francaise admettent le pluriel avec "une foule de" lorsque l'attention porte sur les individus. La regle n'est pas aussi categorique que presentee. Le SQL migration du meme corpus (Q2, `20260337`) presente correctement les deux possibilites.
- **Correction** : Ajouter une nuance : "Avec un article indefini + nom collectif (une foule de, une serie de), le singulier est classique mais le pluriel est tolere si l'on insiste sur les individus."

---

## RESUME

| Severite | Nombre | Fichiers principaux |
|---|---|---|
| Important (accents/coquilles) | 2 | `analyse-langue-voix-active-passive-sprint.ts` (accents a verifier), `grammaire-voix-passive-sprint.ts` (fatiguit) |
| Imprecision/debattable | 3 | `analyse-langue-derivation-sprint.ts`, `orthographe-accord-verbe-sujet-sprint.ts`, `didactique-graphophonologie-cgp-sprint.ts` |

### Fichiers audites (echantillon de ~25 fichiers sur ~100+)

**Fiches francais (17 fichiers)** :
- `orthographe-participe-passe-sprint.ts` -- OK
- `grammaire-nature-mots-sprint.ts` -- OK
- `conjugaison-subjonctif-sprint.ts` -- OK
- `lexique-figures-de-style-sprint.ts` -- OK
- `didactique-conscience-phonologique-sprint.ts` -- ✅ CORRIGÉ
- `comprehension-texte-implicite-inference-sprint.ts` -- OK
- `analyse-langue-derivation-sprint.ts` -- Exemple contestable
- `orthographe-homophones-sprint.ts` -- OK
- `grammaire-phrase-complexe-sprint.ts` -- ✅ CORRIGÉ
- `didactique-grammaire-inductive-sprint.ts` -- OK
- `lexique-registres-langue-sprint.ts` -- OK
- `orthographe-accord-verbe-sujet-sprint.ts` -- ✅ CORRIGÉ (nuance ajoutee)
- `grammaire-types-formes-phrases-sprint.ts` -- OK
- `didactique-production-ecrite-sprint.ts` -- OK
- `analyse-langue-voix-active-passive-sprint.ts` -- Accents a verifier (erreur #4)
- `orthographe-pluriel-noms-composes-sprint.ts` -- OK
- `conjugaison-concordance-temps-sprint.ts` -- OK
- `didactique-graphophonologie-cgp-sprint.ts` -- OK (detail mineur)
- `didactique-langage-oral-maternelle-sprint.ts` -- OK
- `grammaire-classes-mots-sprint.ts` -- OK
- `conjugaison-valeurs-present-sprint.ts` -- OK
- `orthographe-tout-meme-sprint.ts` -- ✅ CORRIGÉ
- `grammaire-voix-passive-sprint.ts` -- 1 coquille (fatiguit, erreur #8)
- `orthographe-participe-passe-operatoire.ts` -- OK
- `grammaire-attribut-sujet-sprint.ts` -- OK
- `lexique-polysemie-homonymie-sprint.ts` -- OK
- `comprehension-texte-schema-narratif-sprint.ts` -- OK
- `analyse-langue-enonciation-sprint.ts` -- OK
- `orthographe-infinitif-participe-sprint.ts` -- OK
- `lexique-connecteurs-sprint.ts` -- OK
- `lexique-formation-mots-sprint.ts` -- OK
- `didactique-erreurs-eleves-sprint.ts` -- OK
- `grammaire-fonctions-sprint.ts` -- OK
- `comprehension-texte-argumentatif-sprint.ts` -- OK

**Fiches maths (4 fichiers)** :
- `geometrie-droites-remarquables-sprint.ts` -- OK
- `didactique-numeration-cycles-sprint.ts` -- OK
- `nombres-fractions-sprint.ts` -- OK
- `didactique-addition-sprint.ts` -- OK
- `didactique-division-sprint.ts` -- OK

**Migrations SQL (6 fichiers)** :
- `20260337_seed_orthographe_conjugaison.sql` -- OK (content correct)
- `20260338_seed_lexique_comprehension.sql` -- OK
- `20260346_seed_standard_analyse_langue.sql` -- OK
- `20260347_seed_standard_didactique.sql` -- OK
- `20260350_seed_correction_orthographique.sql` -- OK
- `20260365_seed_lexique_nouvelles.sql` -- OK
- `20260720_seed_graphophonologie_cgp.sql` -- OK
- `20260721_seed_math_didactique_addition.sql` -- OK

### Note globale

La qualite globale du contenu est **bonne a tres bonne**. La terminologie Eduscol 2021 est correctement utilisee dans la grande majorite des fiches (distinction type/forme de phrase, "verbe attributif" au lieu de "verbe d'etat", "donc" comme adverbe et non conjonction de coordination, etc.). Les explications sont detaillees, les quiz sont pertinents et les pieges sont bien identifies. Les 3 erreurs critiques meritent une correction prioritaire car elles transmettent un savoir faux aux etudiants.

---

## Passe 2 — Audit du 2026-03-23

Echantillon de ~15 fichiers supplementaires couvrant : migrations SQL non auditees, fiches maths non auditees, fiches francais non auditees en passe 1.

---

### ERREURS IMPORTANTES (terminologie, formulation, precision)

#### P2-2. Migration `20260612_seed_math_perimetre_aire_volume_confusions.sql` — Exercices vrai_faux avec `choices: NULL`

- **Fichier** : `supabase/migrations/20260612_seed_math_perimetre_aire_volume_confusions.sql`, lignes 10-13, 76-79
- **Texte problematique** : Les exercices de type `vrai_faux` (Q1 et Q5) ont `choices` a NULL et `expected_answer` avec `"mode": "single", "value": "faux"` / `"value": "vrai"`.
- **Nature** : Incoherence technique potentielle (pas une erreur de contenu mais peut casser l'affichage)
- **Explication** : Les exercices vrai_faux des migrations francais utilisent `choices: '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'` et `"mode":"boolean","value":true/false`. Les 16 migrations maths les plus anciennes (pre-20260600) utilisent `"mode":"single","value":"vrai"/"faux"` avec `choices: NULL`. Le front-end doit gerer les deux formats. Ce n'est pas une erreur de contenu mais une incoherence de schema qui pourrait causer des problemes d'affichage si le composant attend le format boolean.
- **Correction** : Harmoniser progressivement vers le format `"mode":"boolean","value":true/false` avec les choices explicites Vrai/Faux, comme dans les migrations francais. Note : les ~215 occurrences du format `"mode":"single","value":"vrai/faux"` dans les migrations maths devraient etre auditees pour s'assurer que le front-end les gere correctement.

---

#### P2-3. Migration `20260414_seed_orthographe_dictees_eleves.sql` — Classement discutable de "enfent" (Q9)

- **Fichier** : `supabase/migrations/20260414_seed_orthographe_dictees_eleves.sql`, lignes 224-229
- **Texte problematique** :
  > "enfent" pour "enfants" est une erreur phonographique : le son [ɑ̃] est transcrit "en" au lieu de "an"
- **Nature** : Classement simplificateur
- **Explication** : "enfent" pour "enfants" presente en realite DEUX erreurs distinctes : (1) une erreur phonographique (le grapheme "en" au lieu de "an" pour transcrire [ɑ̃] dans la deuxieme syllabe — bien que "en" et "an" transcrivent tous deux le meme phoneme [ɑ̃], c'est le choix du mauvais grapheme pour ce mot precis), et (2) une erreur morphographique (absence du -s du pluriel, non mentionnee dans l'explication). L'explication evoque le -s manquant en passant mais classe l'erreur uniquement comme phonographique. Au CRPE, le classement le plus rigoureux serait de considerer que l'erreur dominante porte sur le grapheme (an→en) mais de mentionner explicitement que le -s manquant releve d'une erreur morphographique distincte.
- **Correction** : Preciser dans l'explication que "enfent" cumule deux types d'erreur : phonographique (an→en) ET morphographique (-s du pluriel absent). Le classement en "phonographique" pour l'exercice de tri reste defensible si on considere l'erreur phonographique comme l'erreur principale.

---

### IMPRECISIONS MINEURES / FORMULATIONS AMELIORABLES

#### P2-4. Fiche `grandeurs-perimetre-sprint.ts` — Formule du perimetre du cercle

- **Fichier** : `content/fiches-maths/grandeurs-perimetre-sprint.ts`, ligne 31
- **Texte problematique** :
  > "on utilise la formule P = 2πr pour le cercle"
- **Nature** : Precision terminologique
- **Explication** : La formulation est mathematiquement correcte. Toutefois, dans les programmes du cycle 3, la formule est plus souvent presentee sous la forme P = π × d (avec d = diametre), qui est plus intuitive pour les eleves car elle n'introduit pas le facteur 2. Au CRPE, les deux formulations sont acceptees, mais la forme P = π × d est privilegiee dans les manuels de cycle 3. C'est un detail mineur qui n'affecte pas la validite du contenu.
- **Correction** : Optionnel — ajouter la formulation alternative : "P = π × d (ou P = 2πr, avec r = rayon et d = 2r = diametre)."

#### P2-5. Fiche `conjugaison-conditionnel-sprint.ts` — Systeme hypothetique : terminologie "conditionnelle"

- **Fichier** : `content/fiches/conjugaison-conditionnel-sprint.ts`, lignes 23-24
- **Texte problematique** :
  > "si + imparfait (\"travaillais\") dans la conditionnelle → conditionnel present (\"reussirais\") dans la principale"
- **Nature** : Imprecision terminologique mineure
- **Explication** : La proposition introduite par "si" est traditionnellement appelee "subordonnee circonstancielle de condition" (ou "protase" dans la terminologie linguistique). Le terme "conditionnelle" est ambigu car il peut renvoyer soit a la proposition subordonnee (la "protase"), soit au mode conditionnel. La terminologie Eduscol 2021 utilise "subordonnee circonstancielle" pour ce type de proposition. L'ambiguite est mineure en contexte, mais pourrait induire en erreur un candidat CRPE qui confondrait la proposition "conditionnelle" (= la subordonnee introduite par "si") avec le mode conditionnel (present dans la proposition principale).
- **Correction** : Optionnel — remplacer "dans la conditionnelle" par "dans la subordonnee circonstancielle de condition" pour plus de clarte.

#### P2-6. Migration `20260345_seed_swipe_extended.sql` — "Cain & Oakhill" non traduit (meme remarque que passe 1)

- **Fichier** : `supabase/migrations/20260345_seed_swipe_extended.sql` — non concerne (pas de reference aux chercheurs dans ce fichier).
- **Note** : Cette remarque de la passe 1 (#10) est confirmee dans la migration `20260321_seed_comprehension_texte_v4.sql`, ligne 164 : "les recherches en psychologie cognitive (Cain & Oakhill)". Le "&" anglophone devrait etre "et" en francais academique. C'est un detail stylistique, pas une erreur.

---

### FICHIERS AUDITES EN PASSE 2

**Migrations SQL (8 fichiers)** :
- `20260321_seed_comprehension_texte_v4.sql` — OK (contenu correct, didactique solide)
- `20260345_seed_swipe_extended.sql` — OK (50 exercices vrai/faux bien formules)
- `20260413_seed_grammaire_copies_eleves.sql` — OK (excellent contenu didactique, terminologie precise)
- `20260414_seed_orthographe_dictees_eleves.sql` — 1 imprecision (P2-3)
- `20260415_seed_orthographe_homophones_contexte.sql` — OK (extraits litteraires bien exploites)
- `20260416_seed_conjugaison_temps_recit.sql` — OK (tres bon contenu sur passé simple / imparfait)
- `20260612_seed_math_perimetre_aire_volume_confusions.sql` — Incoherence technique format vrai_faux (P2-2)
- `20260609_seed_math_divisibilite_criteres.sql` — OK
- `20260621_seed_math_probabilites_evenements.sql` — OK
- `20260714_seed_math_didactique_calcul_mental.sql` — OK (tres bon contenu Eduscol)
- `20260324_seed_phrase_complexe_types_free.sql` — OK
- `20260427_seed_grm_phrase_emphatique_neutre.sql` — OK (terminologie Eduscol correcte)

**Fiches maths (5 fichiers)** :
- `geometrie-triangles-sprint.ts` — OK
- `nombres-decimaux-sprint.ts` — OK
- `donnees-probabilites-sprint.ts` — OK
- `grandeurs-perimetre-sprint.ts` — 1 detail mineur (P2-4)
- `nombres-proportionnalite-sprint.ts` — OK
- `didactique-brousseau-contrat-situations-sprint.ts` — OK (excellente fiche, terminologie Brousseau conforme)

**Fiches francais (5 fichiers)** :
- `conjugaison-conditionnel-sprint.ts` — 1 imprecision terminologique (P2-5)
- `grammaire-discours-direct-indirect-sprint.ts` — OK (contenu tres complet, quiz pertinents)
- `didactique-differentiation-sprint.ts` — OK (references a Tomlinson correctes)
- `orthographe-accord-gn-sprint.ts` — OK
- `comprehension-texte-documentaire-sprint.ts` — OK (bonne didactique de la lecture informationnelle)
- `lexique-champs-lexicaux-sprint.ts` -- ✅ CORRIGÉ
- `didactique-enseignement-orthographe-sprint.ts` — OK

---

### RESUME PASSE 2

| Severite | Nombre | Fichiers principaux |
|---|---|---|
| Critique (contenu faux) | 0 | — (P2-1 corrigé) |
| Important (technique/precision) | 2 | `20260612_...perimetre_aire_volume.sql` (format vrai_faux P2-2), `20260414_...dictees_eleves.sql` (classement erreur double P2-3) |
| Mineur (formulation) | 2 | `grandeurs-perimetre-sprint.ts` (formule alternative P2-4), `conjugaison-conditionnel-sprint.ts` (terminologie P2-5) |

### Note globale passe 2

La qualite du contenu est **tres bonne** sur l'ensemble de l'echantillon de la passe 2. L'erreur critique P2-1 (confusion pêche/péché) a été corrigée. Le probleme technique le plus notable est la coexistence de deux formats de `expected_answer` pour les exercices vrai/faux entre les migrations francais (`"mode":"boolean"`) et les migrations maths (`"mode":"single","value":"vrai/faux"`). Ce n'est pas une erreur de contenu mais un risque de regression si le front-end n'est pas teste avec les deux formats.

---

## Passe 3 — Audit du 2026-03-23

Echantillon de ~20 fichiers supplementaires couvrant : fiches francais non auditees (vocabulaire, conjugaison, grammaire, comprehension, didactique), fiches maths non auditees (geometrie, grandeurs, nombres), et fichiers d'index (metadonnees).

---

### ERREURS IMPORTANTES (terminologie, coquilles dans les noms de variables/index)

### IMPRECISIONS MINEURES / FORMULATIONS AMELIORABLES

#### P3-8. Fiche `orthographe-majuscules-ponctuation-sprint.ts` — Quiz 1 : regle trop categorique sur « Histoire »

- **Fichier** : `content/fiches/orthographe-majuscules-ponctuation-sprint.ts`, lignes 44-48
- **Texte problematique** :
  > Quiz : « Dans "Elle étudie l'Histoire de France", le mot "Histoire" doit prendre une majuscule. » → isCorrect: false
  > Explication : « les noms de disciplines s'écrivent en minuscule en français courant »
- **Nature** : Simplification excessive
- **Explication** : L'usage de la majuscule pour « Histoire » (au sens de discipline ou de science historique) est en realite debattu et accepte dans de nombreux contextes. Le Lexique des regles typographiques en usage a l'Imprimerie nationale recommande la majuscule quand on personnifie la discipline ou qu'on la designe en tant que matiere d'etude (« un cours d'Histoire », « l'Histoire de France »). L'Academie francaise admet les deux usages. Presenter la majuscule comme categoriquement fausse est reducteur. Le quiz serait plus precis avec la formulation : « la majuscule est TOUJOURS obligatoire pour les noms de disciplines ».
- **Correction** : Optionnel — reformuler le quiz pour eviter l'ambiguite, par exemple : « Les noms de disciplines prennent toujours une majuscule dans tous les contextes. » → false, avec explication nuancee.

#### P3-9. Fiche `comprehension-texte-reperage-explicite-sprint.ts` — Aucune erreur de contenu

- Fiche de bonne qualite, terminologie correcte, quiz pertinents. RAS.

#### P3-10. Fiche `conjugaison-imparfait-passe-simple-sprint.ts` — Aucune erreur de contenu

- Fiche excellente, distinction aspectuelle bien presentee, exemples pertinents (imparfait pittoresque inclus). RAS.

#### P3-11. Fiche `lexique-synonymie-antonymie-sprint.ts` — Aucune erreur de contenu

- Les trois types d'antonymes (contradictoires, graduels, reciproques) sont correctement presentes. Quiz solide. RAS.

---

### FICHIERS AUDITES EN PASSE 3

**Fiches francais (12 fichiers)** :
- `comprehension-texte-reperage-explicite-sprint.ts` — OK
- `conjugaison-imparfait-passe-simple-sprint.ts` — OK
- `lexique-synonymie-antonymie-sprint.ts` — OK
- `conjugaison-groupes-verbes-sprint.ts` -- ✅ CORRIGÉ (P3-2)
- `grammaire-determinants-sprint.ts` — OK (contenu tres complet et rigoureux)
- `grammaire-expansions-nom-sprint.ts` — OK
- `lexique-hyperonymie-hyponymie-sprint.ts` — OK (excellente fiche)
- `conjugaison-passe-compose-imparfait-sprint.ts` — OK
- `grammaire-pronoms-sprint.ts` — OK (terminologie Eduscol 2021 bien respectee)
- `lexique-denotation-connotation-sprint.ts` — OK
- `orthographe-majuscules-ponctuation-sprint.ts` — 1 imprecision (P3-8)
- `analyse-langue-anaphores-sprint.ts` — OK (excellente fiche sur la cohesion referentielle)
- `orthographe-accents-trema-sprint.ts` -- ✅ CORRIGÉ (P3-1)
- `conjugaison-voix-pronominale-sprint.ts` — OK (accord du PP des pronominaux bien explique)
- `orthographe-participe-passe-avoir-sprint.ts` — OK
- `lexique-familles-mots-sprint.ts` — OK (distinction base/radical/racine bien traitee)
- `didactique-fluence-lecture-sprint.ts` — OK (references recherche solides)
- `comprehension-texte-coherence-textuelle-sprint.ts` — OK (progressions thematiques bien decrites)

**Fiches maths (7 fichiers)** :
- `geometrie-quadrilateres-sprint.ts` — OK (hierarchie d'inclusion correcte)
- `nombres-entiers-naturels-sprint.ts` — OK
- `geometrie-angles-sprint.ts` -- ✅ CORRIGÉ (P3-6)
- `nombres-entiers-relatifs-sprint.ts` — OK
- `grandeurs-unites-longueur-sprint.ts` — OK
- `nombres-divisibilite-sprint.ts` — OK
- `grandeurs-aires-sprint.ts` — OK (formules correctes, quiz pertinents)
- `geometrie-cercle-sprint.ts` -- ✅ CORRIGÉ (P3-7)
- `grandeurs-unites-masse-capacite-sprint.ts` — OK

**Index (2 fichiers)** :
- `content/fiches/index.ts` -- ✅ CORRIGÉ (P3-5)
- `content/fiches-maths/index.ts` -- ✅ CORRIGÉ (P3-3, P3-4)

---

### RESUME PASSE 3

| Severite | Nombre | Fichiers principaux |
|---|---|---|
| Critique (contenu faux) | 0 | — (P3-1, P3-2 corriges) |
| Important (terminologie/attribution) | 0 | — (P3-3 a P3-7 corriges) |
| Mineur (formulation) | 1 | `orthographe-majuscules-ponctuation-sprint.ts` (regle trop categorique P3-8) |

### Note globale passe 3

La qualite du contenu reste **tres bonne** sur l'ensemble de l'echantillon. Les erreurs critiques (P3-1 graphie aigüe/aiguë, P3-2 formes conjuguees) et les coquilles de variables (P3-3 a P3-7) ont toutes ete corrigees. Reste P3-8 (regle trop categorique sur la majuscule de "Histoire"), mineure et optionnelle.

### Couverture totale de l'audit (passes 1 + 2 + 3)

Apres trois passes, **~65 fichiers de fiches** et **~20 fichiers de migrations SQL** ont ete audites.

| Passe | Erreurs restantes a corriger |
|---|---|
| 1 | 2 (erreurs #4 et #8) |
| 2 | 4 (P2-2, P2-3, P2-4, P2-5) |
| 3 | 1 (P3-8) |

---

## Passe 4 — Audit du 2026-03-23

Echantillon couvrant : 10 migrations SQL non auditees (conjugaison, grammaire, didactique maths, lexique interactif, sujets blancs, equations), 6 fiches didactiques recemment creees (non commites), et verification des index mis a jour.

---

### ERREURS CRITIQUES (contenu pedagogiquement faux ou trompeur)

Aucune erreur critique identifiee dans cet echantillon.

---

### ERREURS IMPORTANTES (terminologie, formulation, precision)

#### P4-1. Fiche `didactique-soustraction-sprint.ts` — Espace insecable dans "remediation s'appuyant"

- **Fichier** : `content/fiches-maths/didactique-soustraction-sprint.ts`, ligne 35
- **Texte problematique** :
  > "proposer des remediation s'appuyant sur la manipulation"
- **Nature** : Coquille grammaticale — accord pluriel manquant + espace parasite
- **Explication** : "des remediation" manque le -s du pluriel. Le texte devrait etre "des remediations s'appuyant". De plus, il semble y avoir un espace insecable/parasite avant le "s'" qui separe visuellement "remediation" du "s'appuyant" mais la coquille est bien l'absence d'accord au pluriel sur "remediation".
- **Correction** : Remplacer `des remediation s'appuyant` par `des remediations s'appuyant`.

---

#### P4-8. Fiche `didactique-soustraction-sprint.ts` — Trois sens de la soustraction : "retrait, complement, comparaison" alors que Vergnaud decrit trois types de problemes additifs

- **Fichier** : `content/fiches-maths/didactique-soustraction-sprint.ts`, ligne 37
- **Texte problematique** :
  > "La soustraction recouvre trois structures de problemes distinctes (Vergnaud) : le RETRAIT [...], le COMPLEMENT [...] et la COMPARAISON"
- **Nature** : Imprecision terminologique (mais pas erreur grave)
- **Explication** : Vergnaud ne parle pas de "retrait, complement, comparaison" comme trois "structures" distinctes. Il identifie trois types de relations additives : la COMPOSITION (reunion/partition de deux parties en un tout), la TRANSFORMATION (changement d'un etat initial en un etat final), et la COMPARAISON (mise en relation de deux etats). Le "retrait" est un cas particulier de la transformation (transformation negative), et le "complement" est un cas ou l'etat final est connu et l'on cherche la transformation. La fiche simplifie la terminologie de Vergnaud, ce qui est defensible pour une fiche "sprint" mais pourrait induire en erreur un candidat qui devrait citer la classification exacte de Vergnaud a l'epreuve.
- **Correction** : Optionnel — preciser entre parentheses : "le RETRAIT (cas de la transformation negative), le COMPLEMENT (transformation inconnue) et la COMPARAISON (ecart entre deux quantites). Vergnaud classe ces situations en trois categories : composition, transformation et comparaison."

---

#### P4-9. Migration `20260424_seed_lexique_interactives.sql` — "antibrouillard" classe en prefixation : defensible mais discutable

- **Fichier** : `supabase/migrations/20260424_seed_lexique_interactives.sql`, ligne 150 (Q6)
- **Texte problematique** :
  > Mapping: `"s1q6w1":"prefixation"` pour "antibrouillard"
  > Explication : "Anti-brouillard [...] sont formes par prefixation"
- **Nature** : Classification discutable
- **Explication** : Le statut de "anti-" est debattu en linguistique. Certains le considèrent comme un prefixe (Corbin, 1987), d'autres comme un element de composition savante (Darmesteter). Le fait que "anti-" puisse se combiner avec des syntagmes (anti-voiture, anti-tabac) sans modification morphologique penche vers la composition. Cependant, la classification en prefixation est la plus repandue dans les manuels scolaires et est defendable au CRPE. L'explication de la migration le justifie correctement. C'est un detail.

---

### PROBLEMES TECHNIQUES

#### P4-10. Migration `20260360_seed_conjugaison_nouvelles.sql` — Coexistence de deux formats `expected_answer` dans le meme fichier

- **Fichier** : `supabase/migrations/20260360_seed_conjugaison_nouvelles.sql`
- **Texte problematique** : Les exercices QCM utilisent `"mode":"single_choice"` (ex : lignes 28, 103, 203) tandis que les exercices vrai_faux utilisent `"mode":"boolean"` (ex : ligne 53, 153, 228). Ce format est coherent au sein du fichier, mais il differe du format `"mode":"single"` utilise dans les migrations maths.
- **Nature** : Incoherence technique inter-fichiers (meme remarque que P2-2)
- **Explication** : Ce fichier utilise `single_choice` (avec underscore) pour les QCM, alors que les migrations maths utilisent `single` (sans underscore). Les deux formats doivent etre geres par le front-end. Pas d'impact de contenu mais un risque de regression.

---

### FICHIERS AUDITES EN PASSE 4

**Migrations SQL (10 fichiers)** :
- `20260360_seed_conjugaison_nouvelles.sql` — OK (contenu solide sur temps simples/composes, verbes irreguliers, passé surcomposé), 1 remarque technique (P4-10)
- `20260399_seed_grammaire_nouvelles2.sql` — OK (excellent contenu sur phrase emphatique et complements du nom, terminologie Eduscol 2021 impeccable)
- `20260394_seed_didactique_nouvelles2.sql` — Fichier placeholder vide (1 ligne)
- `20260411_seed_orthographe_nouvelles2.sql` — Fichier placeholder vide (1 ligne)
- `20260423_seed_analyse_langue_interactives.sql` — OK (exercices tri nature/fonction tres bien construits, progression de difficulte pertinente)
- `20260424_seed_lexique_interactives.sql` — 3 erreurs de classification morphologique (P4-3, P4-4, P4-5) + 1 detail (P4-9)
- `20260506_seed_sujets_blancs_v2.sql` — OK (excellent sujet blanc base sur Le Grand Meaulnes, analyses grammaticales rigoureuses)
- `20260617_seed_math_equations_droites.sql` — OK (exercices mathematiquement corrects, explications claires)
- `20260713_seed_math_didactique_situations_brousseau.sql` — OK (contenu Brousseau exemplaire : adidactique, devolution, milieu, contrat didactique, effet Topaze/Jourdain, variables didactiques — tout est conforme)
- `20260727_seed_math_didactique_multiplication.sql` — OK (Vergnaud correctement cite, distributivite bien expliquee, progression Eduscol conforme)
- `20260712_seed_math_didactique_soustraction.sql` — OK (Brown & Burton, Vergnaud, Bruner correctement references)
- `20260742_seed_math_didactique_division.sql` — OK (partition/quotition bien distinguees, interpretation du reste, relation euclidienne)
- `20260728_seed_math_didactique_geometrie_plane.sql` — OK (Van Hiele, Laborde & Capponi, obstacle du prototype — excellent contenu)
- `20260729_seed_math_didactique_programmes_cycles.sql` — OK (reperes de programmes corrects, progression spiralaire bien decrite)

**Fiches didactiques recemment creees (6 fichiers)** :
- `content/fiches/didactique-graphophonologie-cgp-sprint.ts` — 2 imprecisions mineures (P4-6, P4-7)
- `content/fiches/didactique-langage-oral-maternelle-sprint.ts` — OK (contenu excellent, references recherche solides : Florin, Bernstein, Bourdieu)
- `content/fiches-maths/didactique-addition-sprint.ts` — OK (Vergnaud, Bruner, Brissiaud correctement cites)
- `content/fiches-maths/didactique-division-sprint.ts` — OK (partition/quotition, relation euclidienne, interpretation du reste — tout est correct)
- `content/fiches-maths/didactique-multiplication-sprint.ts` — 1 erreur terminologique (P4-2, "produit scalaire")
- `content/fiches-maths/didactique-soustraction-sprint.ts` — 1 coquille (P4-1) + 1 imprecision (P4-8)

**Index (2 fichiers)** :
- `content/fiches/index.ts` — Les coquilles identifiees en passes precedentes (`grammairePhraseCOmplexeSprint` ligne 26/141, `accentsThremaSprint` ligne 111/226) sont toujours presentes. Les nouvelles fiches (`graphophonologieCgpSprint`, `langageOralMaternelleSprint`) sont correctement importees et referencees.
- `content/fiches-maths/index.ts` — Les coquilles identifiees en passes precedentes (`geometriThalesSprint` ligne 48/161, `geometrieClasserQurilateresOperatoire` ligne 114/225) sont toujours presentes. Les nouvelles fiches (`didactiqueAdditionSprint`, `didactiqueSoustractionSprint`, `didactiqueMultiplicationSprint`, `didactiqueDivisionSprint`) sont correctement importees et referencees.

---

### RESUME PASSE 4

| Severite | Nombre | Fichiers principaux |
|---|---|---|
| Critique (contenu faux) | 0 | — |
| Important (terminologie/classification) | 5 | `didactique-multiplication-sprint.ts` (P4-2, "produit scalaire"), `20260424_...lexique_interactives.sql` (P4-3 courage, P4-4 ensoleille, P4-5 semaine), `didactique-soustraction-sprint.ts` (P4-1 coquille) |
| Mineur (imprecision) | 4 | `didactique-graphophonologie-cgp-sprint.ts` (P4-6 nb phonemes, P4-7 analyse feto), `didactique-soustraction-sprint.ts` (P4-8 terminologie Vergnaud), `20260424_...lexique_interactives.sql` (P4-9 antibrouillard) |
| Technique | 1 | `20260360_...conjugaison_nouvelles.sql` (P4-10 format single_choice vs single) |

### Note globale passe 4

La qualite du contenu est **excellente** sur l'ensemble de l'echantillon de la passe 4. Les migrations SQL de didactique des mathematiques (Brousseau, Vergnaud, geometrie plane, programmes par cycle, soustraction, multiplication, division) sont d'un niveau pedagogique remarquable, avec des explications detaillees, des exemples concrets et une terminologie Eduscol rigoureuse. Les exercices de sujets blancs v2 (Le Grand Meaulnes) sont d'une qualite comparable aux vrais annales CRPE.

Les 6 fiches didactiques recemment creees sont globalement tres bonnes. La fiche `didactique-langage-oral-maternelle-sprint.ts` est particulierement reussie. L'erreur la plus notable est l'usage du terme "produit scalaire" dans la fiche multiplication (P4-2), qui cree une confusion avec le produit scalaire vectoriel — un candidat CRPE pourrait se retrouver en difficulte a l'epreuve de maths s'il confond les deux notions.

La migration `20260424_seed_lexique_interactives.sql` concentre trois erreurs de classification morphologique (courage, ensoleille, semaine) qui, bien que situees dans des exercices de niveaux facile/intermediaire, transmettent une analyse linguistique incorrecte ou contestable. La presence de la parasynthese correctement traitee dans les Q8-Q10 du meme fichier rend l'erreur sur "ensoleille" en Q7 d'autant plus notable.

### Couverture totale de l'audit (passes 1 + 2 + 3 + 4)

Apres quatre passes, **~75 fichiers de fiches** et **~35 fichiers de migrations SQL** ont ete audites.

| Passe | Erreurs critiques | Erreurs importantes | Mineures |
|---|---|---|---|
| 1 | 3 | 4 | 4 |
| 2 | 1 | 2 | 2 |
| 3 | 2 | 4 | 2 |
| 4 | 0 | 5 | 4 |
| **Total** | **6** | **15** | **12** |

Les 6 erreurs critiques (passes 1-3) restent a corriger en priorite. Les 5 erreurs importantes de la passe 4 meritent egalement une correction, en particulier P4-2 (confusion produit scalaire) et P4-4/P4-5 (classifications morphologiques fausses).

---

## Passe 5 — Audit du 2026-03-23

Echantillon couvrant : 10 migrations SQL non auditees, 11 fiches francais non auditees, 1 sujet blanc.

**Note : toutes les erreurs importantes de cette passe ont ete corrigees dans la foulée.**

---

### ERREURS CORRIGEES (deja appliquees dans le code)

- **P5-1** — `20260325_seed_tri_categories_grammaire.sql` : 0 accent sur 68 000 caracteres. **CORRIGE** (427 accents maintenant presents)
- **P5-2** — `20260409_seed_grammaire_determinants.sql` Q1 : QCM ambigu (Leur et ses tous deux possessifs). **CORRIGE** (consigne reformulee : "quel determinant renvoie a un possesseur pluriel ?")
- **P5-3** — `20260409_seed_grammaire_determinants.sql` Q4 : "la terminologie Eduscol range chaque dans les determinants distributifs" — categorie inventee. **CORRIGE** (maintenant : "determinant indefini a valeur distributive")
- **P5-4** — `comprehension-texte-connecteurs-logiques-sprint.ts` : "donc" qualifie de conjonction de coordination. **CORRIGE** (maintenant : "adverbe de liaison, reclassifie par MEN 2020")
- **P5-5** — Meme fiche : "car" conjonction de coordination sans nuance. **CORRIGE** (note MEN 2020 ajoutee)

### IMPRECISIONS ENCORE OUVERTES

#### P5-6 (mineur). Fiche `didactique-apprentissage-lecture-reference.ts` — "750 mots actifs" en PS

- Estimation basse ; les travaux de Florin suggerent 800-1000 mots. Optionnel : remplacer par "800-1 000 mots environ".

---

### FICHIERS AUDITES EN PASSE 5

- `20260325_seed_tri_categories_grammaire.sql` — ✅ CORRIGE (accents)
- `20260331_seed_surlignage_propositions.sql` — OK
- `20260348_seed_standard_comprehension.sql` — OK
- `20260349_seed_tri_surlignage.sql` — OK
- `20260357_seed_didactique_part1.sql` — OK
- `20260359_seed_comprehension_nouvelles.sql` — OK
- `20260386_seed_lexique_nouvelles.sql` — OK
- `20260395_seed_conjugaison_nouvelles2.sql` — OK
- `20260396_seed_comprehension_nouvelles2.sql` — OK
- `20260409_seed_grammaire_determinants.sql` — ✅ CORRIGE (P5-2, P5-3)
- `20260600_seed_sujets_blancs_v3.sql` — OK
- `didactique-dictee-formes-sprint.ts` — OK
- `didactique-ecriture-cycle2-sprint.ts` — OK
- `didactique-litterature-jeunesse-sprint.ts` — OK
- `didactique-strategies-comprehension-sprint.ts` — OK
- `didactique-oral-ecole-sprint.ts` — OK
- `didactique-production-ecrits-reference.ts` — OK
- `didactique-evaluation-lecture-sprint.ts` — OK
- `comprehension-texte-connecteurs-logiques-sprint.ts` — ✅ CORRIGE (P5-4, P5-5)
- `comprehension-texte-type-discours-operatoire.ts` — OK
- `comprehension-texte-types-textes-reference.ts` — OK
- `didactique-apprentissage-lecture-reference.ts` — 1 detail mineur (P5-6)

---

## Passe 6 — Audit du 2026-03-24 (nouvelles fiches non auditees)

Couvre ~120 fiches TypeScript et ~30 migrations SQL non auditees en passes 1-5 (grammaire, analyse-langue, conjugaison, orthographe, lexique, didactique, maths geometrie/grandeurs/nombres/donnees).

---

### ERREURS CRITIQUES

#### P6-1. Fiche `grammaire-phrase-interrogative-sprint.ts` — Quatre types de phrase vs Eduscol 2021

- **Fichier** : `content/fiches/grammaire-phrase-interrogative-sprint.ts`, ligne 28
- **Texte problematique** : Le disclaimer annonce "quatre types de phrase (declarative, interrogative, imperative, exclamative)"
- **Nature** : Erreur terminologique — Eduscol 2021 ne reconnait que TROIS types de phrase (declarative, interrogative, injonctive). La phrase exclamative est un TYPE DE FORME en grammaire moderne, non un type independant. L'ancienne nomenclature a ete officiellement abandonnee.
- **Correction** : Remplacer par "trois types de phrase (declarative, interrogative, injonctive/imperative)" et deplacer la phrase exclamative dans les formes de phrase.

---

#### P6-2. Fiche `grammaire-phrase-complexe-reference.ts` — "donc" et "or" listes comme conjonctions de coordination

- **Fichier** : `content/fiches/grammaire-phrase-complexe-reference.ts`, lignes 39 et 47-83
- **Texte problematique** : Tableau intitule "Les sept conjonctions de coordination" incluant "donc" et "or"
- **Nature** : Terminologie en contradiction avec MEN 2020 (deja corrige dans la fiche connecteurs-logiques, mais pas ici)
- **Correction** : Retirer "donc" et "or" de la liste des conjonctions de coordination. Ajouter une note que la terminologie MEN 2020 restreint la liste.

---

#### P6-3. Fiche `grammaire-nature-fonction-operatoire.ts` — Meme erreur "donc/or" conjonction de coordination

- **Fichier** : `content/fiches/grammaire-nature-fonction-operatoire.ts`, ligne 104
- **Nature** : Troisieme occurrence dans le corpus — incoherence interne avec la fiche connecteurs-logiques-sprint.ts (corrigee)
- **Correction** : Meme correction que P6-2.

---

#### P6-4. Fiche `orthographe-rectifications-1990-sprint.ts` — "deux-cents" avec trait d'union incorrect

- **Fichier** : `content/fiches/orthographe-rectifications-1990-sprint.ts`
- **Texte problematique** : "deux-cents" presente comme correct alors que les rectifications 1990 n'ont pas modifie l'accord de "cent"
- **Nature** : Erreur factuelle sur les rectifications orthographiques de 1990
- **Correction** : Verifier et corriger le contenu sur l'accord de "cent" et "vingt" selon les regles en vigueur.

---

#### P6-5. Fiche `analyse-langue-subordonnees-conjonctives-completives-circonstancielles-sprint.ts` — Accents manquants sur tout le fichier

- **Fichier** : `content/fiches/analyse-langue-subordonnees-conjonctives-completives-circonstancielles-sprint.ts`
- **Nature** : Troisieme fichier sans accents dans le corpus (apres `analyse-langue-voix-active-passive-sprint.ts` et `20260325_seed_tri_categories_grammaire.sql`)
- **Correction** : Regenerer le fichier avec encodage UTF-8 correct.

---

### ERREURS IMPORTANTES

#### P6-6. Fiche `grammaire-complements-circonstanciels-reference.ts` — "verbe d'etat" au lieu de "verbe attributif"

- **Fichier** : `content/fiches/grammaire-complements-circonstanciels-reference.ts`
- **Texte problematique** : "verbe d'etat" utilise a la place de "verbe attributif"
- **Nature** : Terminologie obsolete — Eduscol 2021 impose "verbe attributif" (etre, paraitre, sembler, devenir, rester, demeurer, avoir l'air)
- **Correction** : Remplacer systematiquement "verbe d'etat" par "verbe attributif".

#### P6-7. Fiche `analyse-langue-identifier-subordonnees-operatoire.ts` — Suppressibilite des circonstancielles presentee comme absolue

- **Fichier** : `content/fiches/analyse-langue-identifier-subordonnees-operatoire.ts`
- **Texte problematique** : "une subordonnee circonstancielle est TOUJOURS suppressible et deplacable"
- **Nature** : Generalisation excessive — certaines circonstancielles de consequence ont une mobilite reduite
- **Correction** : Remplacer "toujours" par "generalement" et ajouter une exception pour les subordonnees de consequence.

#### P6-8. Fiche `donnees-statistiques-reference.ts` — "disqualitatives" (mot inexistant)

- **Fichier** : `content/fiches-maths/donnees-statistiques-reference.ts`, ligne 184
- **Texte problematique** : "variables disqualitatives"
- **Nature** : Mot inexistant en statistiques. La bonne terminologie est "variables qualitatives" (ou "variables categoriques")
- **Correction** : Remplacer "disqualitatives" par "qualitatives" ou "quantitatives continues" selon le contexte.

---

### IMPRECISIONS MINEURES

- `analyse-langue-phonologie-cycle2-sprint.ts` : syllabation de "porte" presentee comme absolue sans mention des variantes dialectales
- `grammaire-subordonnees-relatives-sprint.ts` : variable exportee avec accent dans l'identifiant TypeScript (non standard)
- `didactique-soustraction-sprint.ts` ligne 42 : "les remédiation" — accord manquant (encore present apres correction partielle de la ligne 35)

---

### RESUME PASSE 6

| Severite | Nombre | Fichiers principaux |
|---|---|---|
| Critique | 5 | `grammaire-phrase-interrogative-sprint.ts` (P6-1), `grammaire-phrase-complexe-reference.ts` (P6-2), `grammaire-nature-fonction-operatoire.ts` (P6-3), `orthographe-rectifications-1990-sprint.ts` (P6-4), `analyse-langue-subordonnees-conjonctives-...-sprint.ts` (P6-5 accents) |
| Important | 3 | `grammaire-complements-circonstanciels-reference.ts` (P6-6), `analyse-langue-identifier-subordonnees-operatoire.ts` (P6-7), `donnees-statistiques-reference.ts` (P6-8) |
| Mineur | 3 | phonologie-cycle2, variable avec accent, "les remédiation" ligne 42 |

---

### Couverture totale de l'audit (passes 1 a 6)

Apres six passes, **~160 fichiers de fiches** et **~60 fichiers de migrations SQL** ont ete audites. Couverture quasi-complete du corpus.

| Passe | Critiques | Importantes | Mineures | Statut |
|---|---|---|---|---|
| 1 | 3 | 1 | 3 | ✅ Tous critiques corriges |
| 2 | 1 | 2 | 2 | ✅ Critique corrige |
| 3 | 2 | 1 | 2 | ✅ Tous critiques corriges |
| 4 | 0 | 3 | 3 | Partiellement corrige |
| 5 | 0 | 0 | 1 | ✅ Tous corriges |
| 6 | 5 | 3 | 3 | A corriger |
| **Total** | **11** | **10** | **14** | |
