-- ==========================================================================
-- Migration corrective (partie 2) : conformité terminologie Éduscol 2021
-- Corrections modérées :
--   1. "adjectif qualificatif" → "adjectif" dans les labels de choix QCM
--   2. "épithète détachée" → "apposition" (terme officiel)
--   3. "verbe d'état" → "verbe attributif" (terme officiel)
--   4. "ce mode" (conditionnel) → "ce temps" (c'est un temps de l'indicatif)
-- ==========================================================================


-- ══════════════════════════════════════════════════════════════════════════
-- PARTIE 1 — "ADJECTIF QUALIFICATIF" → "ADJECTIF" dans les choix QCM
-- (Quand on demande la CLASSE grammaticale, la réponse est "adjectif")
-- ══════════════════════════════════════════════════════════════════════════

-- seed.sql Q1 (classes grammaticales)
UPDATE public.exercises
SET choices = '[{"id":"a","label":"Un adjectif"},{"id":"b","label":"Un adverbe"},{"id":"c","label":"Un nom commun"}]'::jsonb
WHERE id = '11111111-1111-1111-1111-111111111111';

-- seed.sql Q6
UPDATE public.exercises
SET choices = '[{"id":"a","label":"Un adverbe"},{"id":"b","label":"Un adjectif"},{"id":"c","label":"Un nom commun"}]'::jsonb,
    detailed_explanation = '"Petit" qualifie le nom "chat" en indiquant une de ses caractéristiques — c''est un adjectif épithète. Retiens : épithète = l''adjectif est directement placé à côté du nom (avant ou après), sans verbe entre les deux.'
WHERE id = '11111111-1111-1111-1111-111111111116';

-- Série 01 Q1 (seed_content_grammaire.sql)
UPDATE public.exercises
SET choices = '[{"id":"a","label":"Un adjectif"},{"id":"b","label":"Un adverbe"},{"id":"c","label":"Un nom commun"},{"id":"d","label":"Un verbe"}]'::jsonb
WHERE id = '01000000-0000-0000-0000-000000000001';

-- Série 01 Q2 — choix + explication
UPDATE public.exercises
SET choices = '[{"id":"a","label":"Un adverbe"},{"id":"b","label":"Un nom commun"},{"id":"c","label":"Un pronom"},{"id":"d","label":"Un adjectif"}]'::jsonb,
    detailed_explanation = '"Grand" qualifie le nom "arbre" en lui attribuant une propriété — c''est un adjectif épithète, placé AVANT le nom. Les adjectifs courts et courants comme "grand", "petit", "beau", "vieux" se placent généralement avant le nom en français — c''est une particularité à mémoriser.'
WHERE id = '01000000-0000-0000-0000-000000000002';

-- Série 02 Q1 — distracteur "adjectif qualificatif"
UPDATE public.exercises
SET choices = '[{"id":"a","label":"Un adjectif"},{"id":"b","label":"Un déterminant"},{"id":"c","label":"Une préposition"},{"id":"d","label":"Un adverbe"}]'::jsonb
WHERE id = '02000000-0000-0000-0000-000000000001';

-- Série 02 Q5 — distracteur
UPDATE public.exercises
SET choices = '[{"id":"a","label":"Un adjectif"},{"id":"b","label":"Un déterminant indéfini"},{"id":"c","label":"Un pronom indéfini"},{"id":"d","label":"Un adverbe de négation"}]'::jsonb
WHERE id = '02000000-0000-0000-0000-000000000005';

-- Série 02 Q7 — distracteur
UPDATE public.exercises
SET choices = '[{"id":"a","label":"Un pronom indéfini"},{"id":"b","label":"Un adverbe"},{"id":"c","label":"Un adjectif"},{"id":"d","label":"Un déterminant indéfini"}]'::jsonb
WHERE id = '02000000-0000-0000-0000-000000000007';

-- Série 07 Q8 — distracteur
UPDATE public.exercises
SET choices = replace(choices::text, 'Un adjectif qualificatif', 'Un adjectif')::jsonb
WHERE id = '07000000-0000-0000-0000-000000000008';

-- Série 66 Q2 — "adjectif qualificatif épithète" → "adjectif épithète" dans les choix
UPDATE public.exercises
SET choices = '[{"id":"a","label":"Uniquement l''adjectif épithète"},{"id":"b","label":"L''adjectif épithète et la proposition subordonnée relative uniquement"},{"id":"c","label":"L''adjectif épithète, la proposition subordonnée relative, le complément du nom (groupe prépositionnel) et l''adjectif apposé"},{"id":"d","label":"Uniquement les propositions relatives et les compléments du nom prépositionnels"}]'::jsonb
WHERE id = '66000000-0000-0000-0000-000000000002';


-- ══════════════════════════════════════════════════════════════════════════
-- PARTIE 2 — "ÉPITHÈTE DÉTACHÉE" → "APPOSITION" (terme officiel Éduscol)
-- ══════════════════════════════════════════════════════════════════════════

-- Série 92 Q3 — explication mentionne "épithète détachée" et "verbe d'état"
UPDATE public.exercises
SET detailed_explanation = '« Injuste » est attribut du sujet « cette décision », relié par le verbe attributif « sembler ». Critère décisif : un attribut du sujet est lié au sujet par un verbe attributif (être, sembler, paraître, devenir, rester, avoir l''air, passer pour...) et le caractérise. À distinguer : l''épithète est directement accolée au nom (« une décision injuste ») ; l''apposition (adjectif détaché entre virgules) caractérise le nom à distance (« Cette décision, injuste, a surpris tout le monde »). Ces trois fonctions de l''adjectif — épithète, apposition, attribut — sont fondamentales à distinguer au CRPE.'
WHERE id = '92000000-0000-0000-0000-000000000003';

-- Série 92 Q9 — choix et explication "épithète détachée"
UPDATE public.exercises
SET choices = '[{"id":"a","label":"Attribut du sujet avec verbe attributif implicite"},{"id":"b","label":"Épithète liée de « elle »"},{"id":"c","label":"Apposition (adjectif détaché), prédicat second au sujet"},{"id":"d","label":"Complément de manière du verbe « s''endormit »"}]'::jsonb,
    detailed_explanation = '« Fatiguée » est en apposition (adjectif détaché du sujet) : séparée par une virgule, elle renvoie au sujet « elle » et exprime une circonstance concomitante à l''action principale. On peut la reformuler : « Elle s''endormit parce qu''elle était fatiguée ». Elle diffère de l''attribut du sujet (qui exige un verbe attributif : « elle paraissait fatiguée ») et de l''épithète (directement accolée au nom). La terminologie officielle (Éduscol 2021) utilise « apposition » pour les éléments détachés entre virgules — le terme « épithète détachée » n''est pas recommandé.'
WHERE id = '92000000-0000-0000-0000-000000000009';

-- Série 68 Q3 — explication mentionne "épithète détachée"
UPDATE public.exercises
SET detailed_explanation = 'Exactement ! « Lisant attentivement » modifie le nom « élèves » — il équivaut à « qui lisaient attentivement » (relative déterminative). C''est une expansion du nom en apposition. Comment le vérifier ? Il est supprimable : « Les élèves ont réussi » reste grammatical. Et il se rapporte à un nom, pas au verbe principal. Contrairement au gérondif, le participe présent peut avoir un sujet différent du sujet de la principale — c''est la construction absolue, une notion avancée !'
WHERE id = '68000000-0000-0000-0000-000000000003';

-- Série 59 Q6 — explication mentionne "épithète détachée" et "verbe d'état"
UPDATE public.exercises
SET detailed_explanation = 'Épithète — « petite » est directement accolé au nom « fille » sans verbe intermédiaire. C''est la définition même de l''épithète : inséparable du nom dans le GN. L''attribut du sujet, lui, est séparé par un verbe attributif (« La fille est petite »). L''apposition est un nom ou GN ajouté entre virgules pour préciser le nom. Le complément du nom est introduit par une préposition. La distinction épithète / apposition / attribut est fondamentale en analyse grammaticale — et elle revient souvent au CRPE. Retiens : épithète = dans le GN, pas de verbe entre les deux.'
WHERE id = '59000000-0000-0000-0000-000000000003';

-- Série 59 Q5 — explication mentionne "épithète détachée"
UPDATE public.exercises
SET detailed_explanation = 'Complément du nom — la préposition « de » t''indique que tu as bien un GP expansion du nom. Il précise le nom noyau « livre » en indiquant son contenu. Ce n''est pas une épithète (qui serait un adjectif accolé au nom) ni une apposition (qui supposerait une équivalence référentielle ou un adjectif détaché entre virgules). Astuce : le complément du nom peut souvent être paraphrasé par une proposition relative → « un livre qui contient des recettes ». Invariable, introduit par une préposition — voilà les deux caractéristiques à retenir.'
WHERE id = '59000000-0000-0000-0000-000000000004';

-- Série 59 Q8 vrai_faux — instruction et explication "épithète détachée"
UPDATE public.exercises
SET instruction = 'L''apposition (adjectif détaché entre virgules) peut être supprimée sans rendre la phrase agrammaticale.',
    detailed_explanation = 'Vrai — c''est là toute la différence avec l''épithète ! L''apposition (adjectif détaché) est à distance du nom, séparée par une virgule, et facultative. Exemple : « Épuisé, il s''endormit aussitôt. » On peut supprimer « épuisé » : « Il s''endormit aussitôt. » ✓ La phrase reste correcte. L''épithète, elle, est directement accolée au nom. La terminologie officielle (Éduscol 2021) utilise « apposition » pour tout élément détaché entre virgules, qu''il soit adjectif, nom ou GN.'
WHERE id = '59000000-0000-0000-0000-000000000008';


-- ══════════════════════════════════════════════════════════════════════════
-- PARTIE 3 — "VERBE D'ÉTAT" → "VERBE ATTRIBUTIF"
-- ══════════════════════════════════════════════════════════════════════════

-- seed.sql attribut Q
UPDATE public.exercises
SET detailed_explanation = '"Intelligent" est relié au sujet "il" par le verbe attributif "sembler" — c''est un attribut du sujet. Les verbes attributifs qui introduisent un attribut : être, paraître, sembler, devenir, rester, avoir l''air… L''attribut dit quelque chose du sujet à travers le verbe.'
WHERE id = '11111111-1111-1111-1111-111111111118';

-- Série 03 Q4 (seed_content_grammaire.sql) — "verbe d'état"
UPDATE public.exercises
SET detailed_explanation = '"Intelligent" est relié au sujet "cet élève" par le verbe attributif "paraître" — c''est un attribut du sujet ! Les verbes attributifs courants : être, paraître, sembler, devenir, rester, demeurer, avoir l''air. Avec ces verbes, l''adjectif qui suit qualifie le SUJET (pas le verbe) et s''accorde avec lui. Test : le verbe attributif peut être remplacé par "être" sans trop changer le sens → attribut du sujet.'
WHERE id = '03000000-0000-0000-0000-000000000004';

-- Série 92 Q3 (analyse_langue_v3.sql) — "verbe d'état « sembler »" déjà corrigé ci-dessus

-- Série 92 Q2 — explication mentionne "verbe d'état"
UPDATE public.exercises
SET detailed_explanation = '« Ma meilleure amie » est une apposition : elle reprend et caractérise « Marie » en la désignant de façon équivalente, séparée par des virgules. Critère formel : l''apposition peut être supprimée sans affecter la construction de la phrase ; elle est détachée. À distinguer : épithète (directement accolée au nom, sans virgules) ; complément du nom (introduit par une préposition : « l''amie de Marie ») ; attribut du sujet (relié par un verbe attributif). L''apposition peut être nominale, adjectivale, infinitive ou propositionnelle. Au CRPE, justifier la fonction de l''apposition par ses critères formels (suppression, détachement) est attendu.'
WHERE id = '92000000-0000-0000-0000-000000000002';

-- Série 59 Q7 — "verbe d'état"
UPDATE public.exercises
SET detailed_explanation = 'Faux ! « Noir » est ici ATTRIBUT DU SUJET, pas épithète. La différence fondamentale : l''attribut est séparé du nom par un verbe attributif (être, paraître, sembler, devenir…). Ici, « est » est ce verbe attributif — il relie le sujet « le chat » à l''attribut « noir ». L''épithète, elle, est directement accolée au nom : « Le chat noir dort. » Cette distinction est cruciale parce qu''elle change la fonction syntaxique : attribut = relié au sujet par un verbe attributif, épithète = interne au GN.'
WHERE id = '59000000-0000-0000-0000-000000000006';

-- seed_content_french_module_v1.sql — "verbe d'etat"
UPDATE public.exercises
SET detailed_explanation = 'Le verbe "semblent" est un verbe attributif. Le groupe attribue une propriété au sujet "Les élèves" : c''est un attribut du sujet.'
WHERE id = '22222222-2222-2222-2222-222222222227';


-- ══════════════════════════════════════════════════════════════════════════
-- PARTIE 4 — CONDITIONNEL = TEMPS DE L'INDICATIF (pas un mode)
-- ══════════════════════════════════════════════════════════════════════════

-- seed_content_conjugaison.sql — "ce mode" en parlant du conditionnel
UPDATE public.exercises
SET detailed_explanation = 'Le conditionnel exprime ici un souhait poli ou un regret : "Je voudrais bien t''aider" = je souhaiterais, mais je ne peux pas. "Je voudrai" (futur) exprimerait une volonté future certaine — ça ne va pas avec "mais je n''ai pas le temps". Le conditionnel de politesse adoucit la demande — c''est une des valeurs les plus importantes de ce temps ! Selon la terminologie officielle (Éduscol 2021), le conditionnel est un temps de l''indicatif, et non un mode à part entière.'
WHERE id = '24000000-0000-0000-0000-000000000007';


-- ══════════════════════════════════════════════════════════════════════════
-- PARTIE 5 — CORRECTIONS SUPPLÉMENTAIRES (fichiers non couverts ci-dessus)
-- ══════════════════════════════════════════════════════════════════════════

-- seed_content_grammaire_enrich.sql — série 88 Q1 : labels "Adjectif qualificatif" + "Verbe d'état"
UPDATE public.exercises
SET choices = '[{"id":"a","label":"Adjectif"},{"id":"b","label":"Nom commun"},{"id":"c","label":"Verbe attributif"},{"id":"d","label":"Adverbe de manière"}]'::jsonb
WHERE id = '88000000-0000-0000-0000-000000000001';

-- seed_content_orthographe.sql — "L'adjectif qualificatif s'accorde"
UPDATE public.exercises
SET detailed_explanation = 'L''adjectif s''accorde toujours en genre et en nombre avec le nom. "Noms" est masculin pluriel → "propres" avec -s. L''adjectif "propre" prend un -s au pluriel qu''il soit masculin ou féminin — règle simple et sans exception ici !'
WHERE id = '15000000-0000-0000-0000-000000000009';

-- seed_content_orthographe_v2.sql — "un vrai adjectif qualificatif"
UPDATE public.exercises
SET detailed_explanation = replace(detailed_explanation, 'adjectif qualificatif', 'adjectif')
WHERE id = '27000000-0000-0000-0000-000000000007';

-- seed_content_comprehension_lexique.sql — "remplacer par un adjectif qualificatif"
UPDATE public.exercises
SET choices = replace(choices::text, 'adjectif qualificatif', 'adjectif')::jsonb
WHERE id = '28000000-0000-0000-0000-000000000005';

-- Série 01 Q9 — distracteur "adjectif qualificatif"
UPDATE public.exercises
SET choices = replace(choices::text, 'Un adjectif qualificatif', 'Un adjectif')::jsonb
WHERE id = '01000000-0000-0000-0000-000000000009';

-- Série 02 Q15 — distracteur "adjectif qualificatif"
UPDATE public.exercises
SET choices = replace(choices::text, 'Un adjectif qualificatif', 'Un adjectif')::jsonb
WHERE id = '01000000-0000-0000-0000-000000000015';

-- Série 02 Q17 — distracteur "adjectif qualificatif"
UPDATE public.exercises
SET choices = replace(choices::text, 'Un adjectif qualificatif', 'Un adjectif')::jsonb
WHERE id = '01000000-0000-0000-0000-000000000017';

-- Série 67 Q3 — "Conditionnel présent" comme choix de MODE → remplacer par "Infinitif"
UPDATE public.exercises
SET choices = '[{"id":"a","label":"Indicatif présent"},{"id":"b","label":"Subjonctif présent"},{"id":"c","label":"Impératif présent"},{"id":"d","label":"Infinitif"}]'::jsonb
WHERE id = '67000000-0000-0000-0000-000000000003';

-- Série 87 Q5 — "Conditionnel" listé comme MODE → préciser "Indicatif conditionnel"
UPDATE public.exercises
SET choices = '[{"id":"a","label":"Indicatif — car « croire » en phrase affirmative introduit un fait présenté comme réel par le locuteur"},{"id":"b","label":"Subjonctif — car « croire » exprime un doute"},{"id":"c","label":"Indicatif conditionnel — car la croyance est hypothétique"},{"id":"d","label":"Impératif — car la phrase exprime une conviction ferme"}]'::jsonb
WHERE id = '87000000-0000-0000-0000-000000000005';

-- Rattrapage global : toutes les occurrences restantes dans les choix
UPDATE public.exercises
SET choices = replace(choices::text, 'adjectif qualificatif', 'adjectif')::jsonb
WHERE choices::text LIKE '%adjectif qualificatif%';

-- Rattrapage global : "verbe d''état" dans les explications
UPDATE public.exercises
SET detailed_explanation = replace(detailed_explanation, 'verbe d''état', 'verbe attributif')
WHERE detailed_explanation LIKE '%verbe d''état%';

-- Rattrapage global : "épithète détachée" dans les explications
UPDATE public.exercises
SET detailed_explanation = replace(detailed_explanation, 'épithète détachée', 'apposition (adjectif détaché)')
WHERE detailed_explanation LIKE '%épithète détachée%';

-- Rattrapage global : "épithète détachée" dans les choix
UPDATE public.exercises
SET choices = replace(choices::text, 'Épithète détachée', 'Apposition (adjectif détaché)')::jsonb
WHERE choices::text LIKE '%Épithète détachée%';

-- Rattrapage global : "épithète liée" → "épithète" dans les choix (terme officiel simplifié)
UPDATE public.exercises
SET choices = replace(choices::text, 'Épithète liée', 'Épithète')::jsonb
WHERE choices::text LIKE '%Épithète liée%';
