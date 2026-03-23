# Audit du contenu pedagogique -- Erreurs et corrections

Audit realise le 2026-03-23 sur un echantillon de ~25 fiches TypeScript et ~6 fichiers SQL de migrations.

---

## ERREURS CRITIQUES (contenu pedagogiquement faux ou trompeur)

### 1. Fiche `orthographe-tout-meme-sprint.ts` -- H aspire / H muet de "heureux"

- **Fichier** : `content/fiches/orthographe-tout-meme-sprint.ts`, lignes 35-38
- **Texte problematique** :
  > "Heureuse" est feminin et commence par "h aspire" (on dit "les heureuses", pas "l'heureuses")
- **Nature** : Erreur factuelle grave (terminologie phonologique)
- **Explication** : Le "h" de "heureux/heureuse" est un **h muet**, pas un h aspire. On dit bien "l'heureuse rencontre" (avec elision), "les heureux" (avec liaison /z/). Par consequent, "tout" devant "heureuse" devrait rester **invariable** (regle : voyelle ou h muet = invariable). La phrase "Elles sont tout heureuses" est donc **CORRECTE**, pas fausse.
- **Correction** : Remplacer ce quiz par un vrai exemple d'h aspire (ex. "honteuse", "hardie") ou corriger `isCorrect` en `true` avec l'explication adaptee.

---

### 2. Fiche `grammaire-phrase-complexe-sprint.ts` -- Analyse fausse de "Il chante et danse"

- **Fichier** : `content/fiches/grammaire-phrase-complexe-sprint.ts`, ligne 32
- **Texte problematique** :
  > "Il chante et danse." -- phrase SIMPLE ! "Et" coordonne ici deux verbes dont un seul est conjugue ("danse" partage le sujet de "chante") -- il n'y a qu'une proposition.
- **Nature** : Formulation incorrecte / analyse grammaticale fausse
- **Explication** : "chante" ET "danse" sont **tous deux conjugues** (present de l'indicatif, 3e personne du singulier). La conclusion (phrase simple) est debattue mais defensible ; en revanche, l'argument "dont un seul est conjugue" est factuellement faux. L'analyse correcte est : les deux verbes conjugues partagent le meme sujet et forment un predicat compose au sein d'une seule proposition. Certains grammairiens considerent qu'il s'agit d'une phrase complexe par coordination de deux propositions a sujet commun.
- **Correction** : Reformuler en : `"Et" coordonne ici deux verbes conjugues qui partagent le meme sujet, formant une seule proposition avec un predicat compose -- il n'y a qu'une proposition`.

---

### 3. Fiche `orthographe-accord-verbe-sujet-sprint.ts` -- Contradiction avec le SQL sur le sujet collectif

- **Fichier** : `content/fiches/orthographe-accord-verbe-sujet-sprint.ts`, lignes 22-30
- **Texte problematique** :
  > exampleCorrect: "Une foule de touristes envahissait la place."
  > exampleWrong: "Une foule de touristes envahissaient la place." -- "FAUX"
- **Nature** : Regle trop categorique / contradiction interne
- **Explication** : La fiche presente le pluriel comme FAUX, mais le SQL migration `20260337_seed_orthographe_conjugaison.sql` (Q2, lignes 52-57) presente correctement la reponse "envahit ou envahissent" comme la meilleure reponse, les deux accords etant admis par l'usage. Les deux accords sont acceptes par le Bon Usage (Grevisse) et la grammaire descriptive. Au CRPE, il faut savoir justifier les deux possibilites.
- **Correction** : Modifier l'exampleWrong pour un vrai cas d'erreur, ou ajouter une nuance indiquant que le pluriel est tolere selon certaines grammaires mais que le singulier est la norme classique.

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

### 5. Fiche `analyse-langue-voix-active-passive-sprint.ts` -- Forme conjuguee inexistante

- **Fichier** : `content/fiches/analyse-langue-voix-active-passive-sprint.ts`, ligne 37
- **Texte problematique** :
  > *"La chaleur fatiguit il" est impossible
- **Nature** : Forme verbale inexistante
- **Explication** : "fatiguit" n'existe pas en francais. La 3e personne du singulier du present indicatif de "fatiguer" est "fatigue". La forme correcte du test serait : `*"La chaleur fatigue il"` (agrammatical car mauvais pronom sujet) ou `*"La chaleur le fatigue"` (qui est en fait grammatical, montrant que la construction passive est possible... ce qui contredirait l'argument). Le test est mal concu.
- **Correction** : Reformuler le test de transformation active. Par exemple : `Test : on peut reconstruire "La chaleur LE fatigue" (actif valide), ce qui suggere que la passive est possible. Mais dans le contexte, "fatigue" fonctionne plutot comme adjectif attribut decrivant un etat, pas comme resultat d'une action.`

---

### 6. Fiche `grammaire-phrase-complexe-sprint.ts` -- Nom de variable avec majuscule intempestive

- **Fichier** : `content/fiches/grammaire-phrase-complexe-sprint.ts`, ligne 3
- **Texte problematique** :
  ```ts
  export const grammairePhraseCOmplexeSprint: Fiche = {
  ```
- **Nature** : Coquille dans le nom de la variable
- **Explication** : "COmplexe" contient un O majuscule intempestif. Devrait etre `grammairePhrasecomplexeSprint` ou `grammairePhrasecomplexeSprint`.
- **Correction** : Renommer en `grammairePhrasecomplexeSprint` ou `grammairePhaseComplexeSprint` (camelCase).

---

### 7. Fiche `didactique-conscience-phonologique-sprint.ts` -- "canape" sans accent

- **Fichier** : `content/fiches/didactique-conscience-phonologique-sprint.ts`, ligne 63
- **Texte problematique** :
  > La fusion syllabique ("ca + na + pe = canape") est plus accessible
- **Nature** : Coquille -- accent manquant
- **Explication** : "canape" devrait s'ecrire **"canape"** avec un accent aigu sur le dernier e. C'est d'autant plus genante que le contexte est la conscience phonologique (les accents modifient la prononciation).
- **Correction** : Ecrire `canape` (avec accent).

NOTE : En relisant, je constate que le fichier utilise bien "canapé" (avec accent) à la ligne 25 dans l'exampleCorrect. L'absence d'accent à la ligne 63 est une simple coquille de copie.

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

## INCOHERENCES ENTRE FICHES ET EXERCICES SQL

### 14. Contradiction fiche/SQL sur "une foule de touristes"

- **Fiche** `orthographe-accord-verbe-sujet-sprint.ts` : presente le pluriel comme FAUX
- **SQL** `20260337_seed_orthographe_conjugaison.sql` (Q2) : presente "envahit ou envahissent" comme la meilleure reponse
- **Impact** : Un etudiant qui etudie la fiche puis fait l'exercice aura une information contradictoire.
- **Correction** : Harmoniser les deux sources. La position du SQL (les deux sont admis) est plus conforme au consensus grammatical.

---

## PROBLEMES TECHNIQUES

### 15. Variable exportee avec coquille dans le nom

- **Fichier** : `content/fiches/grammaire-phrase-complexe-sprint.ts`, ligne 3
- `grammairePhraseCOmplexeSprint` (le "O" majuscule est une coquille)
- Pas de consequence fonctionnelle si le fichier est correctement importe ailleurs, mais nuit a la lisibilite.

---

## RESUME

| Severite | Nombre | Fichiers principaux |
|---|---|---|
| Critique (contenu faux) | 3 | `orthographe-tout-meme-sprint.ts`, `grammaire-phrase-complexe-sprint.ts`, `orthographe-accord-verbe-sujet-sprint.ts` |
| Important (accents/coquilles) | 4 | `analyse-langue-voix-active-passive-sprint.ts` (accents manquants sur tout le fichier), `grammaire-voix-passive-sprint.ts`, `didactique-conscience-phonologique-sprint.ts` |
| Imprecision/debattable | 4 | `analyse-langue-derivation-sprint.ts`, `orthographe-accord-verbe-sujet-sprint.ts`, `didactique-graphophonologie-cgp-sprint.ts` |
| Technique | 1 | `grammaire-phrase-complexe-sprint.ts` |
| Incoherence fiche/SQL | 1 | `orthographe-accord-verbe-sujet-sprint.ts` vs `20260337` |

### Fichiers audites (echantillon de ~25 fichiers sur ~100+)

**Fiches francais (17 fichiers)** :
- `orthographe-participe-passe-sprint.ts` -- OK
- `grammaire-nature-mots-sprint.ts` -- OK
- `conjugaison-subjonctif-sprint.ts` -- OK
- `lexique-figures-de-style-sprint.ts` -- OK
- `didactique-conscience-phonologique-sprint.ts` -- Coquille mineure
- `comprehension-texte-implicite-inference-sprint.ts` -- OK
- `analyse-langue-derivation-sprint.ts` -- Exemple contestable
- `orthographe-homophones-sprint.ts` -- OK
- `grammaire-phrase-complexe-sprint.ts` -- 2 erreurs
- `didactique-grammaire-inductive-sprint.ts` -- OK
- `lexique-registres-langue-sprint.ts` -- OK
- `orthographe-accord-verbe-sujet-sprint.ts` -- 1 erreur + 1 imprecision
- `grammaire-types-formes-phrases-sprint.ts` -- OK
- `didactique-production-ecrite-sprint.ts` -- OK
- `analyse-langue-voix-active-passive-sprint.ts` -- Accents manquants
- `orthographe-pluriel-noms-composes-sprint.ts` -- OK
- `conjugaison-concordance-temps-sprint.ts` -- OK
- `didactique-graphophonologie-cgp-sprint.ts` -- OK (detail mineur)
- `didactique-langage-oral-maternelle-sprint.ts` -- OK
- `grammaire-classes-mots-sprint.ts` -- OK
- `conjugaison-valeurs-present-sprint.ts` -- OK
- `orthographe-tout-meme-sprint.ts` -- 1 erreur critique
- `grammaire-voix-passive-sprint.ts` -- 1 coquille
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

### ERREURS CRITIQUES (contenu pedagogiquement faux ou trompeur)

#### P2-1. Fiche `lexique-champs-lexicaux-sprint.ts` — Confusion peche/peche dans l'exampleWrong

- **Fichier** : `content/fiches/lexique-champs-lexicaux-sprint.ts`, lignes 30-32
- **Texte problematique** :
  > "Pecheur, peche (nom), pecher (verbe), **peche** → famille de mots, donc champ lexical de la peche."
  > Explication : "peche (/pɛʃe/) n'appartient pas a la famille de pecher (/pɛʃe/) : homophonie trompeuse, mais radicaux distincts (pech- ≠ pech-)."
- **Nature** : Erreur factuelle — mauvais mot utilise dans l'exemple
- **Explication** : Le mot ecrit est `peche` (avec accent circonflexe sur le e + accent aigu sur le e final), qui EST le participe passe de `pecher` (to fish). Il appartient BIEN a la famille de pecher/pecheur/peche. Le mot que la fiche VOULAIT opposer est `peche` (avec accent aigu sur le premier e = le peche, au sens religieux), dont le radical est `pech-` (latin peccatum). De plus, les deux transcriptions phonetiques sont identiques (/pɛʃe/ et /pɛʃe/) alors qu'elles devraient etre differentes : `peche` (sin) = /peʃe/ (e ferme initial) vs `peche` (fished) = /pɛʃe/ ou /peʃe/ (e ouvert ou ferme avec accent circonflexe).
- **Correction** : Remplacer `peche` par `peche` (accent aigu, sans circonflexe) dans l'exemple ET corriger les transcriptions phonetiques : peche /peʃe/ vs pecher /pɛʃe/ ou /peʃe/. L'explication devrait dire : "peche (/peʃe/, du latin peccatum) n'appartient pas a la famille de pecher (/peʃe/, la peche a la ligne)."

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
- `lexique-champs-lexicaux-sprint.ts` — 1 erreur critique (P2-1)
- `didactique-enseignement-orthographe-sprint.ts` — OK

---

### RESUME PASSE 2

| Severite | Nombre | Fichiers principaux |
|---|---|---|
| Critique (contenu faux) | 1 | `lexique-champs-lexicaux-sprint.ts` (confusion peche/peche) |
| Important (technique/precision) | 2 | `20260612_...perimetre_aire_volume.sql` (format vrai_faux), `20260414_...dictees_eleves.sql` (classement erreur double) |
| Mineur (formulation) | 2 | `grandeurs-perimetre-sprint.ts` (formule alternative), `conjugaison-conditionnel-sprint.ts` (terminologie) |

### Note globale passe 2

La qualite du contenu est **tres bonne** sur l'ensemble de l'echantillon de la passe 2. Les migrations SQL recentes (homophones en contexte litteraire, temps du recit, copies d'eleves) sont d'une qualite pedagogique remarquable, avec des explications detaillees, des pièges bien identifies et une terminologie CRPE/Eduscol rigoureuse. Les fiches maths sont solides mathematiquement et didactiquement (Brousseau, Vergnaud, programmes cycles). La seule erreur critique (P2-1) est une confusion d'accent entre `peche` (participe passe de pecher/to fish) et `peche` (sin) dans la fiche des champs lexicaux — elle est d'autant plus genante que la fiche porte justement sur la distinction entre homophonie et famille de mots.

Le probleme technique le plus notable est la coexistence de deux formats de `expected_answer` pour les exercices vrai/faux entre les migrations francais (`"mode":"boolean"`) et les migrations maths (`"mode":"single","value":"vrai/faux"`). Ce n'est pas une erreur de contenu mais un risque de regression si le front-end n'est pas teste avec les deux formats.

---

## Passe 3 — Audit du 2026-03-23

Echantillon de ~20 fichiers supplementaires couvrant : fiches francais non auditees (vocabulaire, conjugaison, grammaire, comprehension, didactique), fiches maths non auditees (geometrie, grandeurs, nombres), et fichiers d'index (metadonnees).

---

### ERREURS CRITIQUES (contenu pedagogiquement faux ou trompeur)

#### P3-1. Fiche `orthographe-accents-trema-sprint.ts` — Quiz 4 : la graphie « aiguë » est presentee comme la forme rectifiee avec trema sur le u, mais le trema est en realite sur le e

- **Fichier** : `content/fiches/orthographe-accents-trema-sprint.ts`, lignes 77-81
- **Texte problematique** :
  > Quiz : « Le tréma dans « aiguë » (graphie rectifiée) se place sur le u pour indiquer qu'il se prononce. » → isCorrect: true
  > Explication : « on écrit désormais « aiguë » (et non « aiguë ») car c'est le u qui se prononce »
- **Nature** : Erreur factuelle grave — le mot affiche est identique dans les deux cas
- **Explication** : Dans le code source, les trois occurrences du mot utilisent toutes `\u00eb` (e trema = ë), produisant « aiguë » — qui est la graphie **traditionnelle** (trema sur le e). La graphie **rectifiee 1990** place le trema sur le u : « aigüe » (`\u00fc` = ü). L'enonce dit que le trema est sur le u, mais le texte affiche le trema sur le e. L'explication pretend montrer deux graphies differentes (« aiguë » vs « aiguë ») alors qu'elles sont identiques a l'ecran. C'est d'autant plus grave que la fiche porte precisement sur les accents et le trema.
- **Correction** : Remplacer `aigu\u00eb` par `aig\u00fce` dans l'enonce du quiz (la graphie rectifiee) et par `aigu\u00eb` dans la partie « et non » de l'explication (la graphie traditionnelle). L'enonce devrait lire : « Le tréma dans « aigüe » (graphie rectifiée) se place sur le u pour indiquer qu'il se prononce. » Et l'explication : « on écrit désormais « aigüe » (et non « aiguë ») car c'est le u qui se prononce. »

---

#### P3-2. Fiche `conjugaison-groupes-verbes-sprint.ts` — Disclaimer : « L'infinitif et le participe sont des formes conjuguees »

- **Fichier** : `content/fiches/conjugaison-groupes-verbes-sprint.ts`, ligne 25
- **Texte problematique** :
  > "Fiche de rappel sur la classification des verbes en trois groupes. L'infinitif et le participe sont des formes conjuguées (modes non personnels de la conjugaison)."
- **Nature** : Erreur terminologique — formulation contradictoire
- **Explication** : Dire que l'infinitif et le participe sont des « formes conjuguees » est trompeur et potentiellement faux au CRPE. En grammaire scolaire et universitaire, « conjuguer » signifie faire varier un verbe en personne, nombre, temps et mode. L'infinitif et le participe sont des **modes non personnels** precisement parce qu'ils ne se conjuguent PAS en personne et en nombre. La terminologie Eduscol 2021 les classe comme des « formes verbales » et non comme des « formes conjuguees ». La parenthese « modes non personnels de la conjugaison » est correcte, mais l'affirmation initiale « sont des formes conjuguees » contredit la definition meme de la conjugaison. Un candidat CRPE qui ecrirait « l'infinitif est une forme conjuguee » risquerait une penalisation.
- **Correction** : Remplacer par : « L'infinitif et le participe sont des modes non personnels du verbe (ils font partie du système verbal mais ne se conjuguent pas en personne). »

---

### ERREURS IMPORTANTES (terminologie, coquilles dans les noms de variables/index)

#### P3-3. Index maths `content/fiches-maths/index.ts` — Coquille dans le nom de variable `geometriThalesSprint` (manque le "e" de "geometrie")

- **Fichier** : `content/fiches-maths/index.ts`, ligne 48 et `content/fiches-maths/geometrie-thales-sprint.ts`, ligne 3
- **Texte problematique** :
  ```ts
  export const geometriThalesSprint: Fiche = {
  ```
- **Nature** : Coquille dans le nom de la variable exportee
- **Explication** : Devrait etre `geometrieThalesSprint` (avec le "e" final de "geometrie" avant la majuscule "T"). La convention camelCase utilisee partout dans le codebase donne `geometrieTrianglesSprint`, `geometrieAnglesSprint`, `geometrieCercleSprint`, etc. Le "e" est absent dans `geometriThalesSprint`. Pas d'impact fonctionnel si l'import est coherent (et il l'est), mais nuit a la lisibilite.
- **Correction** : Renommer en `geometrieThalesSprint` dans le fichier source et dans l'index.

---

#### P3-4. Index maths `content/fiches-maths/index.ts` — Coquille dans le nom de variable `geometrieClasserQurilateresOperatoire` (manque le "ad" de "quadrilateres")

- **Fichier** : `content/fiches-maths/index.ts`, ligne 114 et `content/fiches-maths/geometrie-classer-quadrilateres-operatoire.ts`, ligne 3
- **Texte problematique** :
  ```ts
  export const geometrieClasserQurilateresOperatoire: Fiche = {
  ```
- **Nature** : Coquille dans le nom de la variable exportee
- **Explication** : `QurilateresOperatoire` devrait etre `QuadrilateresOperatoire`. Le "ad" est manquant. Meme remarque que P3-3 : pas d'impact fonctionnel mais nuit a la lisibilite et a la maintenabilite.
- **Correction** : Renommer en `geometrieClasserQuadrilateresOperatoire` dans le fichier source et dans l'index.

---

#### P3-5. Index francais `content/fiches/index.ts` — Coquille dans le nom de variable `accentsThremaSprint` (inversion "re" → "er")

- **Fichier** : `content/fiches/index.ts`, lignes 111 et 226, et `content/fiches/orthographe-accents-trema-sprint.ts`, ligne 3
- **Texte problematique** :
  ```ts
  export const accentsThremaSprint: Fiche = {
  ```
- **Nature** : Coquille dans le nom de la variable exportee
- **Explication** : `Threma` est une inversion de lettres — le mot correct est `Trema` (ou `Tréma`). La variable devrait s'appeler `accentsTremaSprint`. C'est d'autant plus ironique que la fiche porte sur les accents et le trema.
- **Correction** : Renommer en `accentsTremaSprint` dans le fichier source et dans l'index.

---

#### P3-6. Fiche `geometrie-angles-sprint.ts` — Astuce mnemonique en anglais dans un contenu francophone

- **Fichier** : `content/fiches-maths/geometrie-angles-sprint.ts`, ligne 46
- **Texte problematique** :
  > "Supplémentaires → comme une Straightline (angle plat, 180°)"
- **Nature** : Formulation inadaptee (mot anglais dans un contenu CRPE francophone)
- **Explication** : L'astuce mnemonique pour "supplementaires" utilise le mot anglais "Straightline" (ligne droite). Dans un contexte CRPE francophone, un moyen mnemotechnique en francais serait plus adapte : par exemple "S comme Straightline" n'evoque rien pour un candidat non anglophone. L'astuce pour "complementaires" ("Coin") fonctionne bien en francais. Pour "supplementaires", on pourrait utiliser "S comme Semi-tour" (demi-tour = 180°) ou "Supplementaires = angle plat, comme une ligne droite (180°)".
- **Correction** : Remplacer "Straightline" par un equivalent francais, par exemple : « Supplémentaires → S comme Semi-tour (demi-tour, 180°) » ou « Supplémentaires → S comme Straight (ligne droite, 180°) — ou plus simplement : l'angle plat mesure 180° ».

---

#### P3-7. Fiche `geometrie-cercle-sprint.ts` — Quiz 1 : attribution incorrecte du theoreme

- **Fichier** : `content/fiches-maths/geometrie-cercle-sprint.ts`, lignes 52-54
- **Texte problematique** :
  > "C'est le théorème de Thalès (version cercle) : tout angle inscrit dans un demi-cercle est un angle droit"
- **Nature** : Erreur d'attribution
- **Explication** : Le theoreme stipulant que tout angle inscrit dans un demi-cercle est un angle droit n'est PAS le theoreme de Thales. C'est un corollaire du theoreme de l'angle inscrit (parfois attribue a Thales de Milet dans certaines traditions, mais ce n'est pas le « theoreme de Thales » au sens du programme scolaire francais). Dans les programmes francais (et au CRPE), le « theoreme de Thales » designe exclusivement le theoreme sur les rapports de longueurs dans des triangles coupes par des droites paralleles. Appeler ce resultat « theoreme de Thales (version cercle) » cree une confusion avec le vrai theoreme de Thales du programme. L'appellation correcte est « theoreme de l'angle dans le demi-cercle » ou « propriete de l'angle inscrit dans un demi-cercle ».
- **Correction** : Remplacer « le théorème de Thalès (version cercle) » par « la propriété de l'angle inscrit dans un demi-cercle » ou « un corollaire du théorème de l'angle inscrit ».

---

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

### PROBLEMES TECHNIQUES (noms de variables, index)

#### P3-12. Recapitulatif des coquilles dans les noms de variables exportees

Trois coquilles de nommage identifiees en passe 3 (en plus de `grammairePhraseCOmplexeSprint` identifie en passe 1) :

| Variable actuelle | Variable correcte | Fichier |
|---|---|---|
| `accentsThremaSprint` | `accentsTremaSprint` | `content/fiches/orthographe-accents-trema-sprint.ts` |
| `geometriThalesSprint` | `geometrieThalesSprint` | `content/fiches-maths/geometrie-thales-sprint.ts` |
| `geometrieClasserQurilateresOperatoire` | `geometrieClasserQuadrilateresOperatoire` | `content/fiches-maths/geometrie-classer-quadrilateres-operatoire.ts` |

Aucun impact fonctionnel (les imports sont coherents), mais ces coquilles nuisent a la lisibilite et a la recherche dans le code.

---

### FICHIERS AUDITES EN PASSE 3

**Fiches francais (12 fichiers)** :
- `comprehension-texte-reperage-explicite-sprint.ts` — OK
- `conjugaison-imparfait-passe-simple-sprint.ts` — OK
- `lexique-synonymie-antonymie-sprint.ts` — OK
- `conjugaison-groupes-verbes-sprint.ts` — 1 erreur critique (P3-2, disclaimer)
- `grammaire-determinants-sprint.ts` — OK (contenu tres complet et rigoureux)
- `grammaire-expansions-nom-sprint.ts` — OK
- `lexique-hyperonymie-hyponymie-sprint.ts` — OK (excellente fiche)
- `conjugaison-passe-compose-imparfait-sprint.ts` — OK
- `grammaire-pronoms-sprint.ts` — OK (terminologie Eduscol 2021 bien respectee)
- `lexique-denotation-connotation-sprint.ts` — OK
- `orthographe-majuscules-ponctuation-sprint.ts` — 1 imprecision (P3-8)
- `analyse-langue-anaphores-sprint.ts` — OK (excellente fiche sur la cohesion referentielle)
- `orthographe-accents-trema-sprint.ts` — 1 erreur critique (P3-1, graphie aigue/aigue)
- `conjugaison-voix-pronominale-sprint.ts` — OK (accord du PP des pronominaux bien explique)
- `orthographe-participe-passe-avoir-sprint.ts` — OK
- `lexique-familles-mots-sprint.ts` — OK (distinction base/radical/racine bien traitee)
- `didactique-fluence-lecture-sprint.ts` — OK (references recherche solides)
- `comprehension-texte-coherence-textuelle-sprint.ts` — OK (progressions thematiques bien decrites)

**Fiches maths (7 fichiers)** :
- `geometrie-quadrilateres-sprint.ts` — OK (hierarchie d'inclusion correcte)
- `nombres-entiers-naturels-sprint.ts` — OK
- `geometrie-angles-sprint.ts` — 1 formulation inadaptee (P3-6, anglicisme)
- `nombres-entiers-relatifs-sprint.ts` — OK
- `grandeurs-unites-longueur-sprint.ts` — OK
- `nombres-divisibilite-sprint.ts` — OK
- `grandeurs-aires-sprint.ts` — OK (formules correctes, quiz pertinents)
- `geometrie-cercle-sprint.ts` — 1 erreur d'attribution (P3-7, "theoreme de Thales")
- `grandeurs-unites-masse-capacite-sprint.ts` — OK

**Index (2 fichiers)** :
- `content/fiches/index.ts` — 1 coquille variable (P3-5)
- `content/fiches-maths/index.ts` — 2 coquilles variables (P3-3, P3-4)

---

### RESUME PASSE 3

| Severite | Nombre | Fichiers principaux |
|---|---|---|
| Critique (contenu faux) | 2 | `orthographe-accents-trema-sprint.ts` (graphie aigue incorrecte dans le quiz), `conjugaison-groupes-verbes-sprint.ts` (infinitif = « forme conjuguee ») |
| Important (terminologie/attribution) | 1 | `geometrie-cercle-sprint.ts` (fausse attribution au theoreme de Thales) |
| Important (coquilles variables) | 3 | `accentsThremaSprint`, `geometriThalesSprint`, `geometrieClasserQurilateresOperatoire` |
| Mineur (formulation) | 2 | `geometrie-angles-sprint.ts` (anglicisme), `orthographe-majuscules-ponctuation-sprint.ts` (regle trop categorique) |

### Note globale passe 3

La qualite du contenu reste **tres bonne** sur l'ensemble de l'echantillon. Les fiches de vocabulaire (synonymie/antonymie, hyperonymie/hyponymie, denotation/connotation, familles de mots) sont d'une qualite pedagogique remarquable, avec une terminologie linguistique rigoureuse et des explications bien calibrees pour le CRPE. Les fiches de conjugaison (imparfait/passe simple, passe compose/imparfait, voix pronominale) sont solides sur le plan aspectuel et bien ancrees dans la terminologie Eduscol 2021.

L'erreur la plus grave (P3-1) est une confusion d'encodage Unicode dans la fiche sur les accents et le trema : le quiz pretend montrer la graphie rectifiee « aigüe » (trema sur le u) mais affiche trois fois la graphie traditionnelle « aiguë » (trema sur le e), ce qui rend l'explication fausse et contradictoire. C'est d'autant plus critique que la fiche porte precisement sur ce sujet.

La seconde erreur critique (P3-2) est le disclaimer de la fiche groupes de verbes qui qualifie l'infinitif et le participe de « formes conjuguees » — une formulation que le jury du CRPE sanctionnerait car elle contredit la definition de la conjugaison.

Sur le plan technique, quatre coquilles de nommage de variables ont ete identifiees au total (dont une en passe 1) : `grammairePhraseCOmplexeSprint`, `accentsThremaSprint`, `geometriThalesSprint`, `geometrieClasserQurilateresOperatoire`. Aucun impact fonctionnel mais un nettoyage serait bienvenu pour la maintenabilite.

### Couverture totale de l'audit (passes 1 + 2 + 3)

Apres trois passes, **~65 fichiers de fiches** et **~20 fichiers de migrations SQL** ont ete audites. Les erreurs critiques identifiees au total sont :

| Passe | Erreurs critiques | Erreurs importantes | Mineures |
|---|---|---|---|
| 1 | 3 | 4 | 4 |
| 2 | 1 | 2 | 2 |
| 3 | 2 | 4 | 2 |
| **Total** | **6** | **10** | **8** |

Les 6 erreurs critiques meritent une correction prioritaire car elles transmettent un savoir errone ou ambigu a des candidats CRPE.
