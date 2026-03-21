-- Migration: replace 100 fake "tri par catégories" (QCM/VF/RC) with 60 real tri_categories exercises
-- Each exercise now uses exercise_type = 'tri_categories' with mode "categorization" (drag-and-drop)
-- Replaces: 20260325_seed_tri_categories_grammaire.sql

-- Step 1: Remove the old exercises
DELETE FROM public.exercises WHERE topic_key IN (
  'tri_nom_verbe_adjectif',
  'tri_determinant_pronom_adverbe',
  'tri_mots_liaison',
  'tri_variables_invariables',
  'tri_familles_determinants',
  'tri_familles_pronoms',
  'tri_formes_verbales',
  'tri_mot_tout',
  'tri_mot_que',
  'tri_mots_double_nature'
);

-- Step 2: Insert 60 real tri_categories exercises (6 per série)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
)
VALUES

-- ============================================================
-- SÉRIE 1 : tri_nom_verbe_adjectif (Facile) — 6 questions
-- Catégories : Nom / Verbe / Adjectif
-- ============================================================

(
  'f5010000-0000-0000-0000-000000000001',
  'Francais', 'grammaire',
  'tri_nom_verbe_adjectif',
  'Tri par catégories : nom, verbe, adjectif',
  'Facile',
  'tri_categories',
  'Classez ces six mots selon leur nature grammaticale : nom, verbe ou adjectif.',
  null,
  '[{"id":"s01q1w1","label":"château"},{"id":"s01q1w2","label":"nager"},{"id":"s01q1w3","label":"fragile"},{"id":"s01q1w4","label":"liberté"},{"id":"s01q1w5","label":"dormir"},{"id":"s01q1w6","label":"lumineux"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom","label":"Nom"},{"id":"verbe","label":"Verbe"},{"id":"adjectif","label":"Adjectif"}],"mapping":{"s01q1w1":"nom","s01q1w2":"verbe","s01q1w3":"adjectif","s01q1w4":"nom","s01q1w5":"verbe","s01q1w6":"adjectif"}}'::jsonb,
  'Château et liberté désignent des réalités (concrète et abstraite) : ce sont des noms. Nager et dormir expriment une action ou un état à l''infinitif : ce sont des verbes. Fragile et lumineux expriment une qualité : ce sont des adjectifs qualificatifs.',
  'Confondre la nature (ce qu''est le mot) avec la fonction (son rôle dans la phrase). Un nom reste un nom même quand il est complément.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5010000-0000-0000-0000-000000000002',
  'Francais', 'grammaire',
  'tri_nom_verbe_adjectif',
  'Tri par catégories : nom, verbe, adjectif',
  'Facile',
  'tri_categories',
  'Classez ces six mots selon leur nature grammaticale : nom, verbe ou adjectif.',
  null,
  '[{"id":"s01q2w1","label":"courage"},{"id":"s01q2w2","label":"chanter"},{"id":"s01q2w3","label":"rapide"},{"id":"s01q2w4","label":"rivière"},{"id":"s01q2w5","label":"partir"},{"id":"s01q2w6","label":"doux"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom","label":"Nom"},{"id":"verbe","label":"Verbe"},{"id":"adjectif","label":"Adjectif"}],"mapping":{"s01q2w1":"nom","s01q2w2":"verbe","s01q2w3":"adjectif","s01q2w4":"nom","s01q2w5":"verbe","s01q2w6":"adjectif"}}'::jsonb,
  'Courage (abstrait) et rivière (concret) sont des noms. Chanter et partir sont des verbes à l''infinitif. Rapide et doux expriment une qualité : ce sont des adjectifs qualificatifs.',
  'Penser que « courage » est un adjectif parce qu''il exprime une qualité morale. Le test : peut-on mettre un déterminant devant ? « le courage » → oui, c''est un nom.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5010000-0000-0000-0000-000000000003',
  'Francais', 'grammaire',
  'tri_nom_verbe_adjectif',
  'Tri par catégories : nom, verbe, adjectif',
  'Facile',
  'tri_categories',
  'Classez ces six mots selon leur nature grammaticale : nom, verbe ou adjectif.',
  null,
  '[{"id":"s01q3w1","label":"fleur"},{"id":"s01q3w2","label":"savoir"},{"id":"s01q3w3","label":"joyeux"},{"id":"s01q3w4","label":"montagne"},{"id":"s01q3w5","label":"tomber"},{"id":"s01q3w6","label":"difficile"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom","label":"Nom"},{"id":"verbe","label":"Verbe"},{"id":"adjectif","label":"Adjectif"}],"mapping":{"s01q3w1":"nom","s01q3w2":"verbe","s01q3w3":"adjectif","s01q3w4":"nom","s01q3w5":"verbe","s01q3w6":"adjectif"}}'::jsonb,
  'Fleur et montagne sont des noms concrets. Savoir et tomber sont des verbes à l''infinitif. Joyeux et difficile expriment une qualité : ce sont des adjectifs qualificatifs.',
  'Confondre « savoir » nom (le savoir) et « savoir » verbe (savoir lire). Ici, présenté seul à l''infinitif, c''est un verbe.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5010000-0000-0000-0000-000000000004',
  'Francais', 'grammaire',
  'tri_nom_verbe_adjectif',
  'Tri par catégories : nom, verbe, adjectif',
  'Facile',
  'tri_categories',
  'Classez ces six mots selon leur nature grammaticale : nom, verbe ou adjectif.',
  null,
  '[{"id":"s01q4w1","label":"bonheur"},{"id":"s01q4w2","label":"écrire"},{"id":"s01q4w3","label":"bleu"},{"id":"s01q4w4","label":"forêt"},{"id":"s01q4w5","label":"venir"},{"id":"s01q4w6","label":"léger"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom","label":"Nom"},{"id":"verbe","label":"Verbe"},{"id":"adjectif","label":"Adjectif"}],"mapping":{"s01q4w1":"nom","s01q4w2":"verbe","s01q4w3":"adjectif","s01q4w4":"nom","s01q4w5":"verbe","s01q4w6":"adjectif"}}'::jsonb,
  'Bonheur et forêt sont des noms (abstrait et concret). Écrire et venir sont des verbes à l''infinitif. Bleu et léger expriment une qualité : ce sont des adjectifs qualificatifs.',
  'Hésiter sur « bleu » : un adjectif de couleur reste un adjectif même employé seul.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5010000-0000-0000-0000-000000000005',
  'Francais', 'grammaire',
  'tri_nom_verbe_adjectif',
  'Tri par catégories : nom, verbe, adjectif',
  'Facile',
  'tri_categories',
  'Classez ces six mots selon leur nature grammaticale : nom, verbe ou adjectif.',
  null,
  '[{"id":"s01q5w1","label":"amitié"},{"id":"s01q5w2","label":"lire"},{"id":"s01q5w3","label":"violent"},{"id":"s01q5w4","label":"chemin"},{"id":"s01q5w5","label":"rêver"},{"id":"s01q5w6","label":"grand"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom","label":"Nom"},{"id":"verbe","label":"Verbe"},{"id":"adjectif","label":"Adjectif"}],"mapping":{"s01q5w1":"nom","s01q5w2":"verbe","s01q5w3":"adjectif","s01q5w4":"nom","s01q5w5":"verbe","s01q5w6":"adjectif"}}'::jsonb,
  'Amitié (abstrait) et chemin (concret) sont des noms. Lire et rêver sont des verbes à l''infinitif. Violent et grand expriment une qualité : ce sont des adjectifs qualificatifs.',
  'Confondre « grand » adjectif et « grand » nom (un grand). Présenté seul, il s''agit de l''adjectif qualificatif.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5010000-0000-0000-0000-000000000006',
  'Francais', 'grammaire',
  'tri_nom_verbe_adjectif',
  'Tri par catégories : nom, verbe, adjectif',
  'Facile',
  'tri_categories',
  'Classez ces six mots selon leur nature grammaticale : nom, verbe ou adjectif.',
  null,
  '[{"id":"s01q6w1","label":"histoire"},{"id":"s01q6w2","label":"courir"},{"id":"s01q6w3","label":"rouge"},{"id":"s01q6w4","label":"jardin"},{"id":"s01q6w5","label":"réfléchir"},{"id":"s01q6w6","label":"timide"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom","label":"Nom"},{"id":"verbe","label":"Verbe"},{"id":"adjectif","label":"Adjectif"}],"mapping":{"s01q6w1":"nom","s01q6w2":"verbe","s01q6w3":"adjectif","s01q6w4":"nom","s01q6w5":"verbe","s01q6w6":"adjectif"}}'::jsonb,
  'Histoire et jardin sont des noms concrets. Courir et réfléchir sont des verbes à l''infinitif. Rouge et timide expriment une qualité : ce sont des adjectifs qualificatifs.',
  'Hésiter sur « rouge » qui peut aussi être un nom (le rouge). Présenté seul comme qualité, c''est un adjectif.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- ============================================================
-- SÉRIE 2 : tri_determinant_pronom_adverbe (Facile) — 6 questions
-- Catégories : Déterminant / Pronom / Adverbe
-- ============================================================

(
  'f5020000-0000-0000-0000-000000000001',
  'Francais', 'grammaire',
  'tri_determinant_pronom_adverbe',
  'Tri par catégories : déterminant, pronom, adverbe',
  'Facile',
  'tri_categories',
  'Classez ces six mots selon leur nature grammaticale. Le contexte entre crochets est donné quand il est nécessaire.',
  null,
  '[{"id":"s02q1w1","label":"ce [cahier]"},{"id":"s02q1w2","label":"elle"},{"id":"s02q1w3","label":"rapidement"},{"id":"s02q1w4","label":"mon [stylo]"},{"id":"s02q1w5","label":"eux"},{"id":"s02q1w6","label":"souvent"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"}],"mapping":{"s02q1w1":"det","s02q1w2":"pro","s02q1w3":"adv","s02q1w4":"det","s02q1w5":"pro","s02q1w6":"adv"}}'::jsonb,
  'Ce [cahier] et mon [stylo] introduisent chacun un nom : ce sont des déterminants (démonstratif et possessif). Elle et eux remplacent un groupe nominal : ce sont des pronoms personnels. Rapidement et souvent modifient un verbe sans varier : ce sont des adverbes.',
  'Confondre déterminant et pronom : le déterminant est toujours suivi d''un nom, le pronom le remplace.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5020000-0000-0000-0000-000000000002',
  'Francais', 'grammaire',
  'tri_determinant_pronom_adverbe',
  'Tri par catégories : déterminant, pronom, adverbe',
  'Facile',
  'tri_categories',
  'Classez ces six mots selon leur nature grammaticale. Le contexte entre crochets est donné quand il est nécessaire.',
  null,
  '[{"id":"s02q2w1","label":"les [enfants]"},{"id":"s02q2w2","label":"celui-ci"},{"id":"s02q2w3","label":"bien"},{"id":"s02q2w4","label":"notre [classe]"},{"id":"s02q2w5","label":"on"},{"id":"s02q2w6","label":"très"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"}],"mapping":{"s02q2w1":"det","s02q2w2":"pro","s02q2w3":"adv","s02q2w4":"det","s02q2w5":"pro","s02q2w6":"adv"}}'::jsonb,
  'Les [enfants] et notre [classe] précèdent un nom : ce sont des déterminants (article défini et possessif). Celui-ci et on fonctionnent seuls à la place d''un groupe nominal : ce sont des pronoms. Bien et très modifient un verbe ou un adjectif : ce sont des adverbes.',
  'Classer « on » comme déterminant alors qu''il fonctionne toujours seul en position de sujet : c''est un pronom indéfini.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5020000-0000-0000-0000-000000000003',
  'Francais', 'grammaire',
  'tri_determinant_pronom_adverbe',
  'Tri par catégories : déterminant, pronom, adverbe',
  'Facile',
  'tri_categories',
  'Classez ces six mots selon leur nature grammaticale. Le contexte entre crochets est donné quand il est nécessaire.',
  null,
  '[{"id":"s02q3w1","label":"cette [réponse]"},{"id":"s02q3w2","label":"chacun"},{"id":"s02q3w3","label":"jamais"},{"id":"s02q3w4","label":"ses [affaires]"},{"id":"s02q3w5","label":"quelqu''un"},{"id":"s02q3w6","label":"lentement"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"}],"mapping":{"s02q3w1":"det","s02q3w2":"pro","s02q3w3":"adv","s02q3w4":"det","s02q3w5":"pro","s02q3w6":"adv"}}'::jsonb,
  'Cette [réponse] et ses [affaires] introduisent un nom : ce sont des déterminants (démonstratif et possessif). Chacun et quelqu''un fonctionnent seuls : ce sont des pronoms indéfinis. Jamais et lentement ne varient pas et modifient un verbe : ce sont des adverbes.',
  'Confondre « chacun » (pronom) avec « chaque » (déterminant). Chacun fonctionne seul, chaque accompagne toujours un nom.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5020000-0000-0000-0000-000000000004',
  'Francais', 'grammaire',
  'tri_determinant_pronom_adverbe',
  'Tri par catégories : déterminant, pronom, adverbe',
  'Facile',
  'tri_categories',
  'Classez ces six mots selon leur nature grammaticale. Le contexte entre crochets est donné quand il est nécessaire.',
  null,
  '[{"id":"s02q4w1","label":"votre [devoir]"},{"id":"s02q4w2","label":"nous"},{"id":"s02q4w3","label":"aussitôt"},{"id":"s02q4w4","label":"un [exemple]"},{"id":"s02q4w5","label":"rien"},{"id":"s02q4w6","label":"hier"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"}],"mapping":{"s02q4w1":"det","s02q4w2":"pro","s02q4w3":"adv","s02q4w4":"det","s02q4w5":"pro","s02q4w6":"adv"}}'::jsonb,
  'Votre [devoir] et un [exemple] précèdent un nom : ce sont des déterminants (possessif et article indéfini). Nous et rien fonctionnent seuls : ce sont des pronoms (personnel et indéfini). Aussitôt et hier situent l''action dans le temps : ce sont des adverbes.',
  'Oublier que « rien » est un pronom indéfini et non un adverbe. Test : « rien » peut être sujet (Rien ne bouge) → pronom.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5020000-0000-0000-0000-000000000005',
  'Francais', 'grammaire',
  'tri_determinant_pronom_adverbe',
  'Tri par catégories : déterminant, pronom, adverbe',
  'Facile',
  'tri_categories',
  'Classez ces six mots selon leur nature grammaticale. Le contexte entre crochets est donné quand il est nécessaire.',
  null,
  '[{"id":"s02q5w1","label":"des [résultats]"},{"id":"s02q5w2","label":"il"},{"id":"s02q5w3","label":"peu"},{"id":"s02q5w4","label":"plusieurs [fois]"},{"id":"s02q5w5","label":"ceux-là"},{"id":"s02q5w6","label":"ailleurs"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"}],"mapping":{"s02q5w1":"det","s02q5w2":"pro","s02q5w3":"adv","s02q5w4":"det","s02q5w5":"pro","s02q5w6":"adv"}}'::jsonb,
  'Des [résultats] et plusieurs [fois] introduisent un nom : ce sont des déterminants (article indéfini et déterminant indéfini). Il et ceux-là fonctionnent seuls : ce sont des pronoms (personnel et démonstratif). Peu et ailleurs modifient un verbe ou un adjectif : ce sont des adverbes.',
  'Hésiter sur « plusieurs » : suivi d''un nom → déterminant ; seul (« plusieurs sont venus ») → pronom. Ici le contexte [fois] indique un déterminant.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5020000-0000-0000-0000-000000000006',
  'Francais', 'grammaire',
  'tri_determinant_pronom_adverbe',
  'Tri par catégories : déterminant, pronom, adverbe',
  'Facile',
  'tri_categories',
  'Classez ces six mots selon leur nature grammaticale. Le contexte entre crochets est donné quand il est nécessaire.',
  null,
  '[{"id":"s02q6w1","label":"quel [livre]"},{"id":"s02q6w2","label":"le mien"},{"id":"s02q6w3","label":"toujours"},{"id":"s02q6w4","label":"chaque [élève]"},{"id":"s02q6w5","label":"personne"},{"id":"s02q6w6","label":"ensuite"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"}],"mapping":{"s02q6w1":"det","s02q6w2":"pro","s02q6w3":"adv","s02q6w4":"det","s02q6w5":"pro","s02q6w6":"adv"}}'::jsonb,
  'Quel [livre] et chaque [élève] précèdent un nom : ce sont des déterminants (interrogatif et indéfini). Le mien et personne fonctionnent seuls : ce sont des pronoms (possessif et indéfini). Toujours et ensuite modifient un verbe : ce sont des adverbes.',
  'Confondre « personne » pronom indéfini (Personne ne vient) et « personne » nom (une personne). Ici, employé seul, c''est un pronom.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- ============================================================
-- SÉRIE 3 : tri_mots_liaison (Intermédiaire) — 6 questions
-- Catégories : Préposition / Conjonction de coordination / Conjonction de subordination
-- ============================================================

(
  'f5030000-0000-0000-0000-000000000001',
  'Francais', 'grammaire',
  'tri_mots_liaison',
  'Tri par catégories : mots de liaison',
  'Intermediaire',
  'tri_categories',
  'Classez ces six mots de liaison selon leur nature : préposition, conjonction de coordination ou conjonction de subordination.',
  null,
  '[{"id":"s03q1w1","label":"dans"},{"id":"s03q1w2","label":"mais"},{"id":"s03q1w3","label":"parce que"},{"id":"s03q1w4","label":"avec"},{"id":"s03q1w5","label":"or"},{"id":"s03q1w6","label":"bien que"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prep","label":"Préposition"},{"id":"coord","label":"Conj. de coordination"},{"id":"subord","label":"Conj. de subordination"}],"mapping":{"s03q1w1":"prep","s03q1w2":"coord","s03q1w3":"subord","s03q1w4":"prep","s03q1w5":"coord","s03q1w6":"subord"}}'::jsonb,
  'Dans et avec introduisent un groupe nominal : ce sont des prépositions. Mais et or relient deux propositions de même niveau : ce sont des conjonctions de coordination. Parce que et bien que introduisent une proposition subordonnée : ce sont des conjonctions de subordination.',
  'Confondre coordination et subordination. Test : la conjonction de subordination introduit une proposition qui dépend d''une principale ; la coordination relie des éléments de même rang.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5030000-0000-0000-0000-000000000002',
  'Francais', 'grammaire',
  'tri_mots_liaison',
  'Tri par catégories : mots de liaison',
  'Intermediaire',
  'tri_categories',
  'Classez ces six mots de liaison selon leur nature : préposition, conjonction de coordination ou conjonction de subordination.',
  null,
  '[{"id":"s03q2w1","label":"pour"},{"id":"s03q2w2","label":"et"},{"id":"s03q2w3","label":"lorsque"},{"id":"s03q2w4","label":"chez"},{"id":"s03q2w5","label":"ni"},{"id":"s03q2w6","label":"afin que"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prep","label":"Préposition"},{"id":"coord","label":"Conj. de coordination"},{"id":"subord","label":"Conj. de subordination"}],"mapping":{"s03q2w1":"prep","s03q2w2":"coord","s03q2w3":"subord","s03q2w4":"prep","s03q2w5":"coord","s03q2w6":"subord"}}'::jsonb,
  'Pour et chez introduisent un complément : ce sont des prépositions. Et et ni relient des éléments de même rang : ce sont des conjonctions de coordination. Lorsque et afin que introduisent une subordonnée : ce sont des conjonctions de subordination.',
  'Oublier que « ni » est une conjonction de coordination. Les six conjonctions de coordination (Éduscol 2021) : mais, ou, et, or, ni, car. Attention : « donc » est un adverbe, pas une conjonction.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5030000-0000-0000-0000-000000000003',
  'Francais', 'grammaire',
  'tri_mots_liaison',
  'Tri par catégories : mots de liaison',
  'Intermediaire',
  'tri_categories',
  'Classez ces six mots de liaison selon leur nature : préposition, conjonction de coordination ou conjonction de subordination.',
  null,
  '[{"id":"s03q3w1","label":"sans"},{"id":"s03q3w2","label":"or"},{"id":"s03q3w3","label":"quoique"},{"id":"s03q3w4","label":"depuis"},{"id":"s03q3w5","label":"car"},{"id":"s03q3w6","label":"tandis que"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prep","label":"Préposition"},{"id":"coord","label":"Conj. de coordination"},{"id":"subord","label":"Conj. de subordination"}],"mapping":{"s03q3w1":"prep","s03q3w2":"coord","s03q3w3":"subord","s03q3w4":"prep","s03q3w5":"coord","s03q3w6":"subord"}}'::jsonb,
  'Sans et depuis introduisent un complément : ce sont des prépositions. Or et car relient deux propositions de même niveau : ce sont des conjonctions de coordination. Quoique et tandis que introduisent une subordonnée : ce sont des conjonctions de subordination.',
  'Confondre « quoique » (conjonction de subordination = bien que) et « quoi que » (pronom relatif indéfini = quelle que soit la chose que).',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5030000-0000-0000-0000-000000000004',
  'Francais', 'grammaire',
  'tri_mots_liaison',
  'Tri par catégories : mots de liaison',
  'Intermediaire',
  'tri_categories',
  'Classez ces six mots de liaison selon leur nature : préposition, conjonction de coordination ou conjonction de subordination.',
  null,
  '[{"id":"s03q4w1","label":"vers"},{"id":"s03q4w2","label":"ou"},{"id":"s03q4w3","label":"avant que"},{"id":"s03q4w4","label":"malgré"},{"id":"s03q4w5","label":"mais"},{"id":"s03q4w6","label":"puisque"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prep","label":"Préposition"},{"id":"coord","label":"Conj. de coordination"},{"id":"subord","label":"Conj. de subordination"}],"mapping":{"s03q4w1":"prep","s03q4w2":"coord","s03q4w3":"subord","s03q4w4":"prep","s03q4w5":"coord","s03q4w6":"subord"}}'::jsonb,
  'Vers et malgré introduisent un complément : ce sont des prépositions. Ou et mais relient des éléments de même rang : ce sont des conjonctions de coordination. Avant que et puisque introduisent une subordonnée : ce sont des conjonctions de subordination.',
  'Confondre « ou » (conjonction de coordination) et « où » (pronom relatif ou adverbe). Sans accent, c''est la coordination.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5030000-0000-0000-0000-000000000005',
  'Francais', 'grammaire',
  'tri_mots_liaison',
  'Tri par catégories : mots de liaison',
  'Intermediaire',
  'tri_categories',
  'Classez ces six mots de liaison selon leur nature : préposition, conjonction de coordination ou conjonction de subordination.',
  null,
  '[{"id":"s03q5w1","label":"par"},{"id":"s03q5w2","label":"et"},{"id":"s03q5w3","label":"dès que"},{"id":"s03q5w4","label":"pendant"},{"id":"s03q5w5","label":"car"},{"id":"s03q5w6","label":"pour que"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prep","label":"Préposition"},{"id":"coord","label":"Conj. de coordination"},{"id":"subord","label":"Conj. de subordination"}],"mapping":{"s03q5w1":"prep","s03q5w2":"coord","s03q5w3":"subord","s03q5w4":"prep","s03q5w5":"coord","s03q5w6":"subord"}}'::jsonb,
  'Par et pendant introduisent un complément : ce sont des prépositions. Et et car relient des éléments de même rang : ce sont des conjonctions de coordination. Dès que et pour que introduisent une subordonnée : ce sont des conjonctions de subordination.',
  'Croire que « pendant » est une conjonction parce qu''il exprime le temps. « Pendant » seul est une préposition ; c''est « pendant que » qui est conjonction de subordination.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5030000-0000-0000-0000-000000000006',
  'Francais', 'grammaire',
  'tri_mots_liaison',
  'Tri par catégories : mots de liaison',
  'Intermediaire',
  'tri_categories',
  'Classez ces six mots de liaison selon leur nature : préposition, conjonction de coordination ou conjonction de subordination.',
  null,
  '[{"id":"s03q6w1","label":"contre"},{"id":"s03q6w2","label":"ni"},{"id":"s03q6w3","label":"si"},{"id":"s03q6w4","label":"entre"},{"id":"s03q6w5","label":"ou"},{"id":"s03q6w6","label":"quand"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prep","label":"Préposition"},{"id":"coord","label":"Conj. de coordination"},{"id":"subord","label":"Conj. de subordination"}],"mapping":{"s03q6w1":"prep","s03q6w2":"coord","s03q6w3":"subord","s03q6w4":"prep","s03q6w5":"coord","s03q6w6":"subord"}}'::jsonb,
  'Contre et entre introduisent un complément : ce sont des prépositions. Ni et ou relient des éléments de même rang : ce sont des conjonctions de coordination. Si et quand introduisent une subordonnée : ce sont des conjonctions de subordination.',
  'Hésiter sur « si » : quand il introduit une proposition (si tu viens), c''est une conjonction de subordination. Attention : « si » adverbe d''intensité (si grand) est un autre emploi.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- ============================================================
-- SÉRIE 4 : tri_variables_invariables (Facile) — 6 questions
-- Catégories : Variable / Invariable
-- ============================================================

(
  'f5040000-0000-0000-0000-000000000001',
  'Francais', 'grammaire',
  'tri_variables_invariables',
  'Tri par catégories : variables ou invariables',
  'Facile',
  'tri_categories',
  'Classez ces six mots : sont-ils variables (changent de forme) ou invariables (ne changent jamais de forme) ?',
  null,
  '[{"id":"s04q1w1","label":"beau"},{"id":"s04q1w2","label":"rapidement"},{"id":"s04q1w3","label":"grande"},{"id":"s04q1w4","label":"jamais"},{"id":"s04q1w5","label":"heureux"},{"id":"s04q1w6","label":"très"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"variable","label":"Variable"},{"id":"invariable","label":"Invariable"}],"mapping":{"s04q1w1":"variable","s04q1w2":"invariable","s04q1w3":"variable","s04q1w4":"invariable","s04q1w5":"variable","s04q1w6":"invariable"}}'::jsonb,
  'Beau (beau/belle/beaux/belles), grande et heureux varient en genre et en nombre : ce sont des mots variables (adjectifs). Rapidement, jamais et très ne changent jamais de forme : ce sont des mots invariables (adverbes).',
  'Croire qu''un mot est invariable parce qu''on ne l''a vu que sous une seule forme. Test : essayer de le mettre au féminin ou au pluriel.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5040000-0000-0000-0000-000000000002',
  'Francais', 'grammaire',
  'tri_variables_invariables',
  'Tri par catégories : variables ou invariables',
  'Facile',
  'tri_categories',
  'Classez ces six mots : sont-ils variables ou invariables ?',
  null,
  '[{"id":"s04q2w1","label":"petit"},{"id":"s04q2w2","label":"souvent"},{"id":"s04q2w3","label":"rouge"},{"id":"s04q2w4","label":"toujours"},{"id":"s04q2w5","label":"chien"},{"id":"s04q2w6","label":"bien"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"variable","label":"Variable"},{"id":"invariable","label":"Invariable"}],"mapping":{"s04q2w1":"variable","s04q2w2":"invariable","s04q2w3":"variable","s04q2w4":"invariable","s04q2w5":"variable","s04q2w6":"invariable"}}'::jsonb,
  'Petit (petit/petite/petits), rouge (rouge/rouges) et chien (chien/chienne/chiens) varient : ce sont des mots variables. Souvent, toujours et bien ne changent jamais de forme : ce sont des mots invariables (adverbes).',
  'Penser que « rouge » est invariable parce qu''il ne change pas au féminin. Il varie en nombre : rouge/rouges.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5040000-0000-0000-0000-000000000003',
  'Francais', 'grammaire',
  'tri_variables_invariables',
  'Tri par catégories : variables ou invariables',
  'Facile',
  'tri_categories',
  'Classez ces six mots : sont-ils variables ou invariables ?',
  null,
  '[{"id":"s04q3w1","label":"gentille"},{"id":"s04q3w2","label":"dessous"},{"id":"s04q3w3","label":"nouveau"},{"id":"s04q3w4","label":"depuis"},{"id":"s04q3w5","label":"courts"},{"id":"s04q3w6","label":"parce que"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"variable","label":"Variable"},{"id":"invariable","label":"Invariable"}],"mapping":{"s04q3w1":"variable","s04q3w2":"invariable","s04q3w3":"variable","s04q3w4":"invariable","s04q3w5":"variable","s04q3w6":"invariable"}}'::jsonb,
  'Gentille (gentil/gentille/gentils), nouveau et courts sont des adjectifs qui varient en genre et en nombre. Dessous (adverbe), depuis (préposition) et parce que (conjonction) ne changent jamais de forme : ils sont invariables.',
  'Se fier à la terminaison : « gentille » semble figé au féminin, mais c''est la forme fléchie d''un mot variable (gentil/gentille).',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5040000-0000-0000-0000-000000000004',
  'Francais', 'grammaire',
  'tri_variables_invariables',
  'Tri par catégories : variables ou invariables',
  'Facile',
  'tri_categories',
  'Classez ces six mots : sont-ils variables ou invariables ?',
  null,
  '[{"id":"s04q4w1","label":"léger"},{"id":"s04q4w2","label":"lentement"},{"id":"s04q4w3","label":"courageuse"},{"id":"s04q4w4","label":"hier"},{"id":"s04q4w5","label":"intelligent"},{"id":"s04q4w6","label":"peu"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"variable","label":"Variable"},{"id":"invariable","label":"Invariable"}],"mapping":{"s04q4w1":"variable","s04q4w2":"invariable","s04q4w3":"variable","s04q4w4":"invariable","s04q4w5":"variable","s04q4w6":"invariable"}}'::jsonb,
  'Léger (léger/légère), courageuse et intelligent varient en genre et en nombre : ce sont des mots variables. Lentement, hier et peu ne changent jamais de forme : ce sont des mots invariables (adverbes).',
  'Confondre la forme observée avec la propriété du mot : « courageuse » est au féminin, donc c''est un mot variable.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5040000-0000-0000-0000-000000000005',
  'Francais', 'grammaire',
  'tri_variables_invariables',
  'Tri par catégories : variables ou invariables',
  'Facile',
  'tri_categories',
  'Classez ces six mots : sont-ils variables ou invariables ?',
  null,
  '[{"id":"s04q5w1","label":"vieille"},{"id":"s04q5w2","label":"déjà"},{"id":"s04q5w3","label":"blancs"},{"id":"s04q5w4","label":"partout"},{"id":"s04q5w5","label":"douce"},{"id":"s04q5w6","label":"cependant"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"variable","label":"Variable"},{"id":"invariable","label":"Invariable"}],"mapping":{"s04q5w1":"variable","s04q5w2":"invariable","s04q5w3":"variable","s04q5w4":"invariable","s04q5w5":"variable","s04q5w6":"invariable"}}'::jsonb,
  'Vieille (vieux/vieille), blancs (blanc/blanche/blancs) et douce (doux/douce) varient : ce sont des mots variables. Déjà, partout et cependant ne changent jamais de forme : ce sont des mots invariables.',
  'Croire que « cependant » varie parce qu''il est long. La longueur d''un mot ne dit rien sur sa variabilité : tous les adverbes sont invariables.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5040000-0000-0000-0000-000000000006',
  'Francais', 'grammaire',
  'tri_variables_invariables',
  'Tri par catégories : variables ou invariables',
  'Facile',
  'tri_categories',
  'Classez ces six mots : sont-ils variables ou invariables ?',
  null,
  '[{"id":"s04q6w1","label":"ancien"},{"id":"s04q6w2","label":"malgré"},{"id":"s04q6w3","label":"heureuses"},{"id":"s04q6w4","label":"enfin"},{"id":"s04q6w5","label":"long"},{"id":"s04q6w6","label":"aussitôt"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"variable","label":"Variable"},{"id":"invariable","label":"Invariable"}],"mapping":{"s04q6w1":"variable","s04q6w2":"invariable","s04q6w3":"variable","s04q6w4":"invariable","s04q6w5":"variable","s04q6w6":"invariable"}}'::jsonb,
  'Ancien (ancien/ancienne), heureuses et long (long/longue) varient : ce sont des mots variables. Malgré (préposition), enfin et aussitôt (adverbes) ne changent jamais de forme : ils sont invariables.',
  'Confondre « malgré » avec un adjectif à cause de sa terminaison en -é. C''est une préposition invariable.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- ============================================================
-- SÉRIE 5 : tri_familles_determinants (Intermédiaire) — 6 questions
-- Catégories : Article / Déterminant possessif / Déterminant démonstratif
-- ============================================================

(
  'f5050000-0000-0000-0000-000000000001',
  'Francais', 'grammaire',
  'tri_familles_determinants',
  'Tri par catégories : familles de déterminants',
  'Intermediaire',
  'tri_categories',
  'Classez ces six déterminants selon leur famille : article, possessif ou démonstratif.',
  null,
  '[{"id":"s05q1w1","label":"le [livre]"},{"id":"s05q1w2","label":"mon [cahier]"},{"id":"s05q1w3","label":"ce [garçon]"},{"id":"s05q1w4","label":"une [fille]"},{"id":"s05q1w5","label":"ton [stylo]"},{"id":"s05q1w6","label":"cette [table]"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"article","label":"Article"},{"id":"possessif","label":"Possessif"},{"id":"demonstratif","label":"Démonstratif"}],"mapping":{"s05q1w1":"article","s05q1w2":"possessif","s05q1w3":"demonstratif","s05q1w4":"article","s05q1w5":"possessif","s05q1w6":"demonstratif"}}'::jsonb,
  'Le et une sont des articles (défini et indéfini). Mon et ton indiquent la possession : ce sont des déterminants possessifs. Ce et cette désignent un élément précis : ce sont des déterminants démonstratifs.',
  'Confondre « ce » démonstratif avec « ce » pronom (c''est, ce qui…). Devant un nom, « ce » est toujours déterminant.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5050000-0000-0000-0000-000000000002',
  'Francais', 'grammaire',
  'tri_familles_determinants',
  'Tri par catégories : familles de déterminants',
  'Intermediaire',
  'tri_categories',
  'Classez ces six déterminants selon leur famille : article, possessif ou démonstratif.',
  null,
  '[{"id":"s05q2w1","label":"les [enfants]"},{"id":"s05q2w2","label":"son [frère]"},{"id":"s05q2w3","label":"cet [arbre]"},{"id":"s05q2w4","label":"des [livres]"},{"id":"s05q2w5","label":"notre [école]"},{"id":"s05q2w6","label":"ces [fleurs]"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"article","label":"Article"},{"id":"possessif","label":"Possessif"},{"id":"demonstratif","label":"Démonstratif"}],"mapping":{"s05q2w1":"article","s05q2w2":"possessif","s05q2w3":"demonstratif","s05q2w4":"article","s05q2w5":"possessif","s05q2w6":"demonstratif"}}'::jsonb,
  'Les et des sont des articles (défini pluriel et indéfini pluriel). Son et notre indiquent la possession : ce sont des déterminants possessifs. Cet et ces désignent un élément précis : ce sont des déterminants démonstratifs.',
  'Oublier que « cet » est la forme masculine du démonstratif devant une voyelle ou un h muet.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5050000-0000-0000-0000-000000000003',
  'Francais', 'grammaire',
  'tri_familles_determinants',
  'Tri par catégories : familles de déterminants',
  'Intermediaire',
  'tri_categories',
  'Classez ces six déterminants selon leur famille : article, possessif ou démonstratif.',
  null,
  '[{"id":"s05q3w1","label":"la [maison]"},{"id":"s05q3w2","label":"votre [travail]"},{"id":"s05q3w3","label":"ce [matin]"},{"id":"s05q3w4","label":"un [problème]"},{"id":"s05q3w5","label":"leur [classe]"},{"id":"s05q3w6","label":"cette [idée]"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"article","label":"Article"},{"id":"possessif","label":"Possessif"},{"id":"demonstratif","label":"Démonstratif"}],"mapping":{"s05q3w1":"article","s05q3w2":"possessif","s05q3w3":"demonstratif","s05q3w4":"article","s05q3w5":"possessif","s05q3w6":"demonstratif"}}'::jsonb,
  'La et un sont des articles (défini et indéfini). Votre et leur indiquent la possession : ce sont des déterminants possessifs. Ce et cette désignent un élément précis : ce sont des déterminants démonstratifs.',
  'Confondre « leur » déterminant (leur classe) et « leur » pronom (je leur parle). Devant un nom, c''est un déterminant possessif.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5050000-0000-0000-0000-000000000004',
  'Francais', 'grammaire',
  'tri_familles_determinants',
  'Tri par catégories : familles de déterminants',
  'Intermediaire',
  'tri_categories',
  'Classez ces six déterminants selon leur famille : article, possessif ou démonstratif.',
  null,
  '[{"id":"s05q4w1","label":"l'' [enfant]"},{"id":"s05q4w2","label":"ma [sœur]"},{"id":"s05q4w3","label":"cet [hiver]"},{"id":"s05q4w4","label":"la [fête]"},{"id":"s05q4w5","label":"sa [chambre]"},{"id":"s05q4w6","label":"ces [mots]"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"article","label":"Article"},{"id":"possessif","label":"Possessif"},{"id":"demonstratif","label":"Démonstratif"}],"mapping":{"s05q4w1":"article","s05q4w2":"possessif","s05q4w3":"demonstratif","s05q4w4":"article","s05q4w5":"possessif","s05q4w6":"demonstratif"}}'::jsonb,
  'L'' et la sont des articles définis (l'' est la forme élidée devant voyelle). Ma et sa indiquent la possession : ce sont des déterminants possessifs. Cet et ces désignent un élément précis : ce sont des déterminants démonstratifs.',
  'Ne pas reconnaître « l'' » comme article défini élidé. Test : l'' = le ou la devant une voyelle ou un h muet.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5050000-0000-0000-0000-000000000005',
  'Francais', 'grammaire',
  'tri_familles_determinants',
  'Tri par catégories : familles de déterminants',
  'Intermediaire',
  'tri_categories',
  'Classez ces six déterminants selon leur famille : article, possessif ou démonstratif.',
  null,
  '[{"id":"s05q5w1","label":"les [résultats]"},{"id":"s05q5w2","label":"nos [amis]"},{"id":"s05q5w3","label":"ce [texte]"},{"id":"s05q5w4","label":"une [erreur]"},{"id":"s05q5w5","label":"mes [livres]"},{"id":"s05q5w6","label":"cette [phrase]"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"article","label":"Article"},{"id":"possessif","label":"Possessif"},{"id":"demonstratif","label":"Démonstratif"}],"mapping":{"s05q5w1":"article","s05q5w2":"possessif","s05q5w3":"demonstratif","s05q5w4":"article","s05q5w5":"possessif","s05q5w6":"demonstratif"}}'::jsonb,
  'Les et une sont des articles (défini pluriel et indéfini). Nos et mes indiquent la possession : ce sont des déterminants possessifs. Ce et cette désignent un élément précis : ce sont des déterminants démonstratifs.',
  'Confondre « mes » (déterminant possessif) et « mais » (conjonction) à l''oral. Ce sont deux mots de nature différente.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5050000-0000-0000-0000-000000000006',
  'Francais', 'grammaire',
  'tri_familles_determinants',
  'Tri par catégories : familles de déterminants',
  'Intermediaire',
  'tri_categories',
  'Classez ces six déterminants selon leur famille : article, possessif ou démonstratif.',
  null,
  '[{"id":"s05q6w1","label":"les [phrases]"},{"id":"s05q6w2","label":"tes [réponses]"},{"id":"s05q6w3","label":"cet [exemple]"},{"id":"s05q6w4","label":"des [exercices]"},{"id":"s05q6w5","label":"vos [copies]"},{"id":"s05q6w6","label":"ces [questions]"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"article","label":"Article"},{"id":"possessif","label":"Possessif"},{"id":"demonstratif","label":"Démonstratif"}],"mapping":{"s05q6w1":"article","s05q6w2":"possessif","s05q6w3":"demonstratif","s05q6w4":"article","s05q6w5":"possessif","s05q6w6":"demonstratif"}}'::jsonb,
  'Les et des sont des articles (défini et indéfini). Tes et vos indiquent la possession : ce sont des déterminants possessifs. Cet et ces désignent un élément précis : ce sont des déterminants démonstratifs.',
  'Ne pas reconnaître « des » comme article indéfini pluriel. Test : il introduit un nom sans le déterminer précisément → article indéfini.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- ============================================================
-- SÉRIE 6 : tri_familles_pronoms (Intermédiaire) — 6 questions
-- Catégories : Pronom personnel / Pronom démonstratif / Pronom relatif
-- ============================================================

(
  'f5060000-0000-0000-0000-000000000001',
  'Francais', 'grammaire',
  'tri_familles_pronoms',
  'Tri par catégories : familles de pronoms',
  'Intermediaire',
  'tri_categories',
  'Classez ces six pronoms selon leur famille : personnel, démonstratif ou relatif.',
  null,
  '[{"id":"s06q1w1","label":"il"},{"id":"s06q1w2","label":"celui-ci"},{"id":"s06q1w3","label":"qui"},{"id":"s06q1w4","label":"nous"},{"id":"s06q1w5","label":"cela"},{"id":"s06q1w6","label":"dont"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"personnel","label":"Pronom personnel"},{"id":"demonstratif","label":"Pronom démonstratif"},{"id":"relatif","label":"Pronom relatif"}],"mapping":{"s06q1w1":"personnel","s06q1w2":"demonstratif","s06q1w3":"relatif","s06q1w4":"personnel","s06q1w5":"demonstratif","s06q1w6":"relatif"}}'::jsonb,
  'Il et nous désignent des personnes du discours : ce sont des pronoms personnels. Celui-ci et cela montrent ou reprennent un élément : ce sont des pronoms démonstratifs. Qui et dont introduisent une proposition relative : ce sont des pronoms relatifs.',
  'Confondre « qui » pronom relatif (l''élève qui travaille) et « qui » pronom interrogatif (Qui vient ?). Le contexte de la relative permet de trancher.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5060000-0000-0000-0000-000000000002',
  'Francais', 'grammaire',
  'tri_familles_pronoms',
  'Tri par catégories : familles de pronoms',
  'Intermediaire',
  'tri_categories',
  'Classez ces six pronoms selon leur famille : personnel, démonstratif ou relatif.',
  null,
  '[{"id":"s06q2w1","label":"elle"},{"id":"s06q2w2","label":"ceux"},{"id":"s06q2w3","label":"que"},{"id":"s06q2w4","label":"eux"},{"id":"s06q2w5","label":"celle-là"},{"id":"s06q2w6","label":"où"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"personnel","label":"Pronom personnel"},{"id":"demonstratif","label":"Pronom démonstratif"},{"id":"relatif","label":"Pronom relatif"}],"mapping":{"s06q2w1":"personnel","s06q2w2":"demonstratif","s06q2w3":"relatif","s06q2w4":"personnel","s06q2w5":"demonstratif","s06q2w6":"relatif"}}'::jsonb,
  'Elle et eux désignent des personnes du discours : ce sont des pronoms personnels. Ceux et celle-là reprennent un élément : ce sont des pronoms démonstratifs. Que et où introduisent une proposition relative : ce sont des pronoms relatifs.',
  'Confondre « que » pronom relatif et « que » conjonction de subordination. Le pronom relatif a un antécédent ; la conjonction introduit une complétive.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5060000-0000-0000-0000-000000000003',
  'Francais', 'grammaire',
  'tri_familles_pronoms',
  'Tri par catégories : familles de pronoms',
  'Intermediaire',
  'tri_categories',
  'Classez ces six pronoms selon leur famille : personnel, démonstratif ou relatif.',
  null,
  '[{"id":"s06q3w1","label":"je"},{"id":"s06q3w2","label":"celui"},{"id":"s06q3w3","label":"lequel"},{"id":"s06q3w4","label":"tu"},{"id":"s06q3w5","label":"ce [+ est]"},{"id":"s06q3w6","label":"dont"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"personnel","label":"Pronom personnel"},{"id":"demonstratif","label":"Pronom démonstratif"},{"id":"relatif","label":"Pronom relatif"}],"mapping":{"s06q3w1":"personnel","s06q3w2":"demonstratif","s06q3w3":"relatif","s06q3w4":"personnel","s06q3w5":"demonstratif","s06q3w6":"relatif"}}'::jsonb,
  'Je et tu désignent les personnes du discours : ce sont des pronoms personnels. Celui et ce (dans « c''est ») reprennent un élément : ce sont des pronoms démonstratifs. Lequel et dont introduisent une relative : ce sont des pronoms relatifs.',
  'Ne pas reconnaître « ce » comme pronom dans « c''est ». Devant le verbe être, « ce » est un pronom démonstratif (≠ « ce livre » où il est déterminant).',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5060000-0000-0000-0000-000000000004',
  'Francais', 'grammaire',
  'tri_familles_pronoms',
  'Tri par catégories : familles de pronoms',
  'Intermediaire',
  'tri_categories',
  'Classez ces six pronoms selon leur famille : personnel, démonstratif ou relatif.',
  null,
  '[{"id":"s06q4w1","label":"ils"},{"id":"s06q4w2","label":"ceux-ci"},{"id":"s06q4w3","label":"où"},{"id":"s06q4w4","label":"lui"},{"id":"s06q4w5","label":"ça"},{"id":"s06q4w6","label":"qui"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"personnel","label":"Pronom personnel"},{"id":"demonstratif","label":"Pronom démonstratif"},{"id":"relatif","label":"Pronom relatif"}],"mapping":{"s06q4w1":"personnel","s06q4w2":"demonstratif","s06q4w3":"relatif","s06q4w4":"personnel","s06q4w5":"demonstratif","s06q4w6":"relatif"}}'::jsonb,
  'Ils et lui désignent des personnes : ce sont des pronoms personnels. Ceux-ci et ça reprennent un élément : ce sont des pronoms démonstratifs. Où et qui introduisent une relative : ce sont des pronoms relatifs.',
  'Classer « ça » comme un mot familier sans nature grammaticale. C''est la forme réduite de « cela » : pronom démonstratif.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5060000-0000-0000-0000-000000000005',
  'Francais', 'grammaire',
  'tri_familles_pronoms',
  'Tri par catégories : familles de pronoms',
  'Intermediaire',
  'tri_categories',
  'Classez ces six pronoms selon leur famille : personnel, démonstratif ou relatif.',
  null,
  '[{"id":"s06q5w1","label":"me"},{"id":"s06q5w2","label":"celle-ci"},{"id":"s06q5w3","label":"que"},{"id":"s06q5w4","label":"te"},{"id":"s06q5w5","label":"ceci"},{"id":"s06q5w6","label":"lequel"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"personnel","label":"Pronom personnel"},{"id":"demonstratif","label":"Pronom démonstratif"},{"id":"relatif","label":"Pronom relatif"}],"mapping":{"s06q5w1":"personnel","s06q5w2":"demonstratif","s06q5w3":"relatif","s06q5w4":"personnel","s06q5w5":"demonstratif","s06q5w6":"relatif"}}'::jsonb,
  'Me et te sont des pronoms personnels compléments (1re et 2e personne). Celle-ci et ceci reprennent ou désignent un élément : ce sont des pronoms démonstratifs. Que et lequel introduisent une relative : ce sont des pronoms relatifs.',
  'Oublier que « me » et « te » sont des pronoms personnels compléments, et non de simples syllabes sans nature.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5060000-0000-0000-0000-000000000006',
  'Francais', 'grammaire',
  'tri_familles_pronoms',
  'Tri par catégories : familles de pronoms',
  'Intermediaire',
  'tri_categories',
  'Classez ces six pronoms selon leur famille : personnel, démonstratif ou relatif.',
  null,
  '[{"id":"s06q6w1","label":"on"},{"id":"s06q6w2","label":"celles"},{"id":"s06q6w3","label":"dont"},{"id":"s06q6w4","label":"vous"},{"id":"s06q6w5","label":"celui-là"},{"id":"s06q6w6","label":"où"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"personnel","label":"Pronom personnel"},{"id":"demonstratif","label":"Pronom démonstratif"},{"id":"relatif","label":"Pronom relatif"}],"mapping":{"s06q6w1":"personnel","s06q6w2":"demonstratif","s06q6w3":"relatif","s06q6w4":"personnel","s06q6w5":"demonstratif","s06q6w6":"relatif"}}'::jsonb,
  'On et vous désignent des personnes du discours : ce sont des pronoms personnels. Celles et celui-là reprennent un élément : ce sont des pronoms démonstratifs. Dont et où introduisent une relative : ce sont des pronoms relatifs.',
  'Hésiter sur « on » : c''est bien un pronom personnel indéfini, toujours sujet, conjugué à la 3e personne du singulier.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- ============================================================
-- SÉRIE 7 : tri_formes_verbales (Intermédiaire) — 6 questions
-- Catégories : Infinitif / Participe passé / Verbe conjugué
-- ============================================================

(
  'f5070000-0000-0000-0000-000000000001',
  'Francais', 'grammaire',
  'tri_formes_verbales',
  'Tri par catégories : formes verbales',
  'Intermediaire',
  'tri_categories',
  'Classez ces six formes verbales : infinitif, participe passé ou verbe conjugué.',
  null,
  '[{"id":"s07q1w1","label":"manger"},{"id":"s07q1w2","label":"mangé"},{"id":"s07q1w3","label":"mangeons"},{"id":"s07q1w4","label":"finir"},{"id":"s07q1w5","label":"fini"},{"id":"s07q1w6","label":"finissent"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"infinitif","label":"Infinitif"},{"id":"pp","label":"Participe passé"},{"id":"conjugue","label":"Verbe conjugué"}],"mapping":{"s07q1w1":"infinitif","s07q1w2":"pp","s07q1w3":"conjugue","s07q1w4":"infinitif","s07q1w5":"pp","s07q1w6":"conjugue"}}'::jsonb,
  'Manger et finir sont les formes de base non personnelles : ce sont des infinitifs. Mangé et fini peuvent s''accorder : ce sont des participes passés. Mangeons et finissent portent des marques de personne et de temps : ce sont des verbes conjugués.',
  'Confondre l''infinitif -er et le participe passé -é pour les verbes du 1er groupe. Test : remplacer par un verbe du 3e groupe — si « vendre » convient, c''est un infinitif ; si « vendu », c''est un participe passé.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5070000-0000-0000-0000-000000000002',
  'Francais', 'grammaire',
  'tri_formes_verbales',
  'Tri par catégories : formes verbales',
  'Intermediaire',
  'tri_categories',
  'Classez ces six formes verbales : infinitif, participe passé ou verbe conjugué.',
  null,
  '[{"id":"s07q2w1","label":"partir"},{"id":"s07q2w2","label":"parti"},{"id":"s07q2w3","label":"partons"},{"id":"s07q2w4","label":"dormir"},{"id":"s07q2w5","label":"dormi"},{"id":"s07q2w6","label":"dorment"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"infinitif","label":"Infinitif"},{"id":"pp","label":"Participe passé"},{"id":"conjugue","label":"Verbe conjugué"}],"mapping":{"s07q2w1":"infinitif","s07q2w2":"pp","s07q2w3":"conjugue","s07q2w4":"infinitif","s07q2w5":"pp","s07q2w6":"conjugue"}}'::jsonb,
  'Partir et dormir sont des infinitifs (formes de base). Parti et dormi sont des participes passés. Partons et dorment sont des verbes conjugués (marques de personne).',
  'Hésiter sur « parti » qui peut aussi être adjectif (il est parti). Mais sa forme première reste celle du participe passé du verbe partir.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5070000-0000-0000-0000-000000000003',
  'Francais', 'grammaire',
  'tri_formes_verbales',
  'Tri par catégories : formes verbales',
  'Intermediaire',
  'tri_categories',
  'Classez ces six formes verbales : infinitif, participe passé ou verbe conjugué.',
  null,
  '[{"id":"s07q3w1","label":"venir"},{"id":"s07q3w2","label":"venu"},{"id":"s07q3w3","label":"viennent"},{"id":"s07q3w4","label":"lire"},{"id":"s07q3w5","label":"lu"},{"id":"s07q3w6","label":"lisent"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"infinitif","label":"Infinitif"},{"id":"pp","label":"Participe passé"},{"id":"conjugue","label":"Verbe conjugué"}],"mapping":{"s07q3w1":"infinitif","s07q3w2":"pp","s07q3w3":"conjugue","s07q3w4":"infinitif","s07q3w5":"pp","s07q3w6":"conjugue"}}'::jsonb,
  'Venir et lire sont des infinitifs. Venu et lu sont des participes passés. Viennent et lisent portent des marques de personne : ce sont des verbes conjugués.',
  'Confondre « lu » (participe passé court) avec un mot invariable. C''est bien un participe passé qui peut s''accorder : « la lettre lue ».',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5070000-0000-0000-0000-000000000004',
  'Francais', 'grammaire',
  'tri_formes_verbales',
  'Tri par catégories : formes verbales',
  'Intermediaire',
  'tri_categories',
  'Classez ces six formes verbales : infinitif, participe passé ou verbe conjugué.',
  null,
  '[{"id":"s07q4w1","label":"écrire"},{"id":"s07q4w2","label":"écrit"},{"id":"s07q4w3","label":"écrivons"},{"id":"s07q4w4","label":"prendre"},{"id":"s07q4w5","label":"pris"},{"id":"s07q4w6","label":"prennent"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"infinitif","label":"Infinitif"},{"id":"pp","label":"Participe passé"},{"id":"conjugue","label":"Verbe conjugué"}],"mapping":{"s07q4w1":"infinitif","s07q4w2":"pp","s07q4w3":"conjugue","s07q4w4":"infinitif","s07q4w5":"pp","s07q4w6":"conjugue"}}'::jsonb,
  'Écrire et prendre sont des infinitifs. Écrit et pris sont des participes passés (la lettre écrite, la décision prise). Écrivons et prennent sont des verbes conjugués au présent.',
  'Confondre « écrit » participe passé et « écrit » verbe conjugué (il écrit). Dans cet exercice, la forme est présentée isolément comme participe passé.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5070000-0000-0000-0000-000000000005',
  'Francais', 'grammaire',
  'tri_formes_verbales',
  'Tri par catégories : formes verbales',
  'Intermediaire',
  'tri_categories',
  'Classez ces six formes verbales : infinitif, participe passé ou verbe conjugué.',
  null,
  '[{"id":"s07q5w1","label":"voir"},{"id":"s07q5w2","label":"vu"},{"id":"s07q5w3","label":"voyons"},{"id":"s07q5w4","label":"savoir"},{"id":"s07q5w5","label":"su"},{"id":"s07q5w6","label":"savent"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"infinitif","label":"Infinitif"},{"id":"pp","label":"Participe passé"},{"id":"conjugue","label":"Verbe conjugué"}],"mapping":{"s07q5w1":"infinitif","s07q5w2":"pp","s07q5w3":"conjugue","s07q5w4":"infinitif","s07q5w5":"pp","s07q5w6":"conjugue"}}'::jsonb,
  'Voir et savoir sont des infinitifs. Vu et su sont des participes passés (le film vu, la leçon sue). Voyons et savent portent des marques de personne : ce sont des verbes conjugués.',
  'Hésiter sur « su » : c''est bien le participe passé de savoir, même s''il est court. Test : « j''ai su » → participe passé dans un temps composé.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5070000-0000-0000-0000-000000000006',
  'Francais', 'grammaire',
  'tri_formes_verbales',
  'Tri par catégories : formes verbales',
  'Intermediaire',
  'tri_categories',
  'Classez ces six formes verbales : infinitif, participe passé ou verbe conjugué.',
  null,
  '[{"id":"s07q6w1","label":"courir"},{"id":"s07q6w2","label":"couru"},{"id":"s07q6w3","label":"courent"},{"id":"s07q6w4","label":"mettre"},{"id":"s07q6w5","label":"mis"},{"id":"s07q6w6","label":"mettent"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"infinitif","label":"Infinitif"},{"id":"pp","label":"Participe passé"},{"id":"conjugue","label":"Verbe conjugué"}],"mapping":{"s07q6w1":"infinitif","s07q6w2":"pp","s07q6w3":"conjugue","s07q6w4":"infinitif","s07q6w5":"pp","s07q6w6":"conjugue"}}'::jsonb,
  'Courir et mettre sont des infinitifs. Couru et mis sont des participes passés (il a couru, la table mise). Courent et mettent portent des marques de personne : ce sont des verbes conjugués.',
  'Confondre « mis » participe passé et un adjectif. C''est la forme du participe passé de mettre, qui s''accorde : « la robe mise ».',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- ============================================================
-- SÉRIE 8 : tri_mot_tout (Difficile) — 6 questions
-- Catégories : Déterminant / Pronom / Adverbe
-- ============================================================

(
  'f5080000-0000-0000-0000-000000000001',
  'Francais', 'grammaire',
  'tri_mot_tout',
  'Tri par catégories : le mot « tout »',
  'Difficile',
  'tri_categories',
  'Le mot « tout » change de nature selon le contexte. Classez ces six emplois : déterminant, pronom ou adverbe.',
  null,
  '[{"id":"s08q1w1","label":"tout le livre"},{"id":"s08q1w2","label":"tous ont compris"},{"id":"s08q1w3","label":"tout doucement"},{"id":"s08q1w4","label":"toute la classe"},{"id":"s08q1w5","label":"tout est prêt"},{"id":"s08q1w6","label":"tout ému"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"}],"mapping":{"s08q1w1":"det","s08q1w2":"pro","s08q1w3":"adv","s08q1w4":"det","s08q1w5":"pro","s08q1w6":"adv"}}'::jsonb,
  '« Tout le livre » et « toute la classe » : tout précède un déterminant + nom → déterminant. « Tous ont compris » et « tout est prêt » : tout fonctionne seul comme sujet → pronom. « Tout doucement » et « tout ému » : tout modifie un adverbe ou un adjectif → adverbe.',
  'Confondre pronom et déterminant. Test : si « tout » est suivi d''un autre déterminant + nom, c''est un déterminant. S''il fonctionne seul, c''est un pronom.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5080000-0000-0000-0000-000000000002',
  'Francais', 'grammaire',
  'tri_mot_tout',
  'Tri par catégories : le mot « tout »',
  'Difficile',
  'tri_categories',
  'Le mot « tout » change de nature selon le contexte. Classez ces six emplois : déterminant, pronom ou adverbe.',
  null,
  '[{"id":"s08q2w1","label":"tous les jours"},{"id":"s08q2w2","label":"toutes réussissent"},{"id":"s08q2w3","label":"tout simplement"},{"id":"s08q2w4","label":"toute la ville"},{"id":"s08q2w5","label":"tout a changé"},{"id":"s08q2w6","label":"tout étonné"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"}],"mapping":{"s08q2w1":"det","s08q2w2":"pro","s08q2w3":"adv","s08q2w4":"det","s08q2w5":"pro","s08q2w6":"adv"}}'::jsonb,
  '« Tous les jours » et « toute la ville » : tout précède un déterminant + nom → déterminant. « Toutes réussissent » et « tout a changé » : tout fonctionne seul → pronom. « Tout simplement » et « tout étonné » : tout modifie un adverbe ou un adjectif → adverbe.',
  'Croire que « toutes réussissent » contient un déterminant parce que « toutes » est au féminin pluriel. Ici, il n''y a pas de nom après : c''est un pronom.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5080000-0000-0000-0000-000000000003',
  'Francais', 'grammaire',
  'tri_mot_tout',
  'Tri par catégories : le mot « tout »',
  'Difficile',
  'tri_categories',
  'Le mot « tout » change de nature selon le contexte. Classez ces six emplois : déterminant, pronom ou adverbe.',
  null,
  '[{"id":"s08q3w1","label":"toute l''histoire"},{"id":"s08q3w2","label":"tous l''ont vu"},{"id":"s08q3w3","label":"tout petit"},{"id":"s08q3w4","label":"tout le temps"},{"id":"s08q3w5","label":"tout s''explique"},{"id":"s08q3w6","label":"tout heureux"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"}],"mapping":{"s08q3w1":"det","s08q3w2":"pro","s08q3w3":"adv","s08q3w4":"det","s08q3w5":"pro","s08q3w6":"adv"}}'::jsonb,
  '« Toute l''histoire » et « tout le temps » : tout précède un déterminant + nom → déterminant. « Tous l''ont vu » et « tout s''explique » : tout fonctionne seul comme sujet → pronom. « Tout petit » et « tout heureux » : tout modifie un adjectif → adverbe.',
  'Hésiter sur « tous l''ont vu » : « tous » est sujet, « l'' » est un pronom COD. Il n''y a pas de nom après « tous » → c''est un pronom.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5080000-0000-0000-0000-000000000004',
  'Francais', 'grammaire',
  'tri_mot_tout',
  'Tri par catégories : le mot « tout »',
  'Difficile',
  'tri_categories',
  'Le mot « tout » change de nature selon le contexte. Classez ces six emplois : déterminant, pronom ou adverbe.',
  null,
  '[{"id":"s08q4w1","label":"toutes les réponses"},{"id":"s08q4w2","label":"tous le savent"},{"id":"s08q4w3","label":"tout naturellement"},{"id":"s08q4w4","label":"tout être humain"},{"id":"s08q4w5","label":"tout se passera bien"},{"id":"s08q4w6","label":"tout content"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"}],"mapping":{"s08q4w1":"det","s08q4w2":"pro","s08q4w3":"adv","s08q4w4":"det","s08q4w5":"pro","s08q4w6":"adv"}}'::jsonb,
  '« Toutes les réponses » et « tout être humain » : tout précède un nom (directement ou via un déterminant) → déterminant. « Tous le savent » et « tout se passera bien » : tout est sujet → pronom. « Tout naturellement » et « tout content » : tout modifie un adverbe ou un adjectif → adverbe.',
  'Hésiter sur « tout être humain » : « tout » est directement suivi du nom « être » → c''est un déterminant indéfini signifiant « chaque ».',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5080000-0000-0000-0000-000000000005',
  'Francais', 'grammaire',
  'tri_mot_tout',
  'Tri par catégories : le mot « tout »',
  'Difficile',
  'tri_categories',
  'Le mot « tout » change de nature selon le contexte. Classez ces six emplois : déterminant, pronom ou adverbe.',
  null,
  '[{"id":"s08q5w1","label":"toute une journée"},{"id":"s08q5w2","label":"tous en sont convaincus"},{"id":"s08q5w3","label":"tout près"},{"id":"s08q5w4","label":"tout le monde"},{"id":"s08q5w5","label":"tout reste possible"},{"id":"s08q5w6","label":"tout entière"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"}],"mapping":{"s08q5w1":"det","s08q5w2":"pro","s08q5w3":"adv","s08q5w4":"det","s08q5w5":"pro","s08q5w6":"adv"}}'::jsonb,
  '« Toute une journée » et « tout le monde » : tout précède un déterminant + nom → déterminant. « Tous en sont convaincus » et « tout reste possible » : tout fonctionne seul → pronom. « Tout près » et « tout entière » : tout modifie un adverbe ou un adjectif → adverbe.',
  'Croire que « tout entière » est un déterminant + adjectif. Ici « tout » modifie l''adjectif « entière » au sens de « complètement » → c''est un adverbe. Cas particulier : l''adverbe « tout » s''accorde devant un adjectif féminin commençant par une consonne ou un h aspiré.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5080000-0000-0000-0000-000000000006',
  'Francais', 'grammaire',
  'tri_mot_tout',
  'Tri par catégories : le mot « tout »',
  'Difficile',
  'tri_categories',
  'Le mot « tout » change de nature selon le contexte. Classez ces six emplois : déterminant, pronom ou adverbe.',
  null,
  '[{"id":"s08q6w1","label":"tous ces exercices"},{"id":"s08q6w2","label":"tout peut arriver"},{"id":"s08q6w3","label":"tout récemment"},{"id":"s08q6w4","label":"toute la semaine"},{"id":"s08q6w5","label":"toutes le pensent"},{"id":"s08q6w6","label":"tout joyeux"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"adv","label":"Adverbe"}],"mapping":{"s08q6w1":"det","s08q6w2":"pro","s08q6w3":"adv","s08q6w4":"det","s08q6w5":"pro","s08q6w6":"adv"}}'::jsonb,
  '« Tous ces exercices » et « toute la semaine » : tout précède un déterminant + nom → déterminant. « Tout peut arriver » et « toutes le pensent » : tout fonctionne seul → pronom. « Tout récemment » et « tout joyeux » : tout modifie un adverbe ou un adjectif → adverbe.',
  'Hésiter sur « tous ces exercices » : « tous » renforce le déterminant « ces » devant le nom « exercices ». C''est un prédéterminant, classé comme déterminant.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- ============================================================
-- SÉRIE 9 : tri_mot_que (Difficile) — 6 questions
-- Catégories : Pronom relatif / Conj. de subordination / Pronom interrogatif
-- ============================================================

(
  'f5090000-0000-0000-0000-000000000001',
  'Francais', 'grammaire',
  'tri_mot_que',
  'Tri par catégories : le mot « que »',
  'Difficile',
  'tri_categories',
  'Le mot « que » change de nature selon le contexte. Classez ces six emplois : pronom relatif, conjonction de subordination ou pronom interrogatif.',
  null,
  '[{"id":"s09q1w1","label":"le livre que tu lis"},{"id":"s09q1w2","label":"je pense qu''il viendra"},{"id":"s09q1w3","label":"que veux-tu ?"},{"id":"s09q1w4","label":"l''ami que j''ai rencontré"},{"id":"s09q1w5","label":"il faut qu''on parte"},{"id":"s09q1w6","label":"que se passe-t-il ?"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"relatif","label":"Pronom relatif"},{"id":"conj","label":"Conj. de subordination"},{"id":"interrogatif","label":"Pronom interrogatif"}],"mapping":{"s09q1w1":"relatif","s09q1w2":"conj","s09q1w3":"interrogatif","s09q1w4":"relatif","s09q1w5":"conj","s09q1w6":"interrogatif"}}'::jsonb,
  '« Le livre que tu lis » et « l''ami que j''ai rencontré » : que reprend un antécédent → pronom relatif. « Je pense qu''il viendra » et « il faut qu''on parte » : que introduit une complétive sans antécédent → conjonction de subordination. « Que veux-tu ? » et « Que se passe-t-il ? » : que pose une question sur un objet → pronom interrogatif.',
  'Confondre pronom relatif et conjonction de subordination. Test : le pronom relatif a un antécédent (un nom qui précède) ; la conjonction n''en a pas.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5090000-0000-0000-0000-000000000002',
  'Francais', 'grammaire',
  'tri_mot_que',
  'Tri par catégories : le mot « que »',
  'Difficile',
  'tri_categories',
  'Le mot « que » change de nature selon le contexte. Classez ces six emplois : pronom relatif, conjonction de subordination ou pronom interrogatif.',
  null,
  '[{"id":"s09q2w1","label":"la chanson que j''écoute"},{"id":"s09q2w2","label":"je sais qu''elle a raison"},{"id":"s09q2w3","label":"que préfères-tu ?"},{"id":"s09q2w4","label":"les exercices que nous faisons"},{"id":"s09q2w5","label":"on dit qu''il neigera"},{"id":"s09q2w6","label":"que font-ils ?"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"relatif","label":"Pronom relatif"},{"id":"conj","label":"Conj. de subordination"},{"id":"interrogatif","label":"Pronom interrogatif"}],"mapping":{"s09q2w1":"relatif","s09q2w2":"conj","s09q2w3":"interrogatif","s09q2w4":"relatif","s09q2w5":"conj","s09q2w6":"interrogatif"}}'::jsonb,
  '« La chanson que j''écoute » et « les exercices que nous faisons » : que a un antécédent → pronom relatif. « Je sais qu''elle a raison » et « on dit qu''il neigera » : que introduit une complétive → conjonction de subordination. « Que préfères-tu ? » et « Que font-ils ? » : que pose une question → pronom interrogatif.',
  'Répondre pronom relatif à chaque fois que « que » introduit une proposition. La conjonction n''a pas d''antécédent, contrairement au pronom relatif.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5090000-0000-0000-0000-000000000003',
  'Francais', 'grammaire',
  'tri_mot_que',
  'Tri par catégories : le mot « que »',
  'Difficile',
  'tri_categories',
  'Le mot « que » change de nature selon le contexte. Classez ces six emplois : pronom relatif, conjonction de subordination ou pronom interrogatif.',
  null,
  '[{"id":"s09q3w1","label":"le film que nous avons vu"},{"id":"s09q3w2","label":"elle veut qu''on l''aide"},{"id":"s09q3w3","label":"que manges-tu ?"},{"id":"s09q3w4","label":"la lettre qu''il a écrite"},{"id":"s09q3w5","label":"il semble qu''il pleuve"},{"id":"s09q3w6","label":"qu''as-tu décidé ?"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"relatif","label":"Pronom relatif"},{"id":"conj","label":"Conj. de subordination"},{"id":"interrogatif","label":"Pronom interrogatif"}],"mapping":{"s09q3w1":"relatif","s09q3w2":"conj","s09q3w3":"interrogatif","s09q3w4":"relatif","s09q3w5":"conj","s09q3w6":"interrogatif"}}'::jsonb,
  '« Le film que nous avons vu » et « la lettre qu''il a écrite » : que reprend un antécédent → pronom relatif. « Elle veut qu''on l''aide » et « il semble qu''il pleuve » : que introduit une complétive → conjonction de subordination. « Que manges-tu ? » et « Qu''as-tu décidé ? » : que pose une question → pronom interrogatif.',
  'Confondre « qu'' » conjonction et « qu'' » pronom relatif. Dans les deux cas, « que » est élidé devant voyelle. Seul le test de l''antécédent permet de trancher.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5090000-0000-0000-0000-000000000004',
  'Francais', 'grammaire',
  'tri_mot_que',
  'Tri par catégories : le mot « que »',
  'Difficile',
  'tri_categories',
  'Le mot « que » change de nature selon le contexte. Classez ces six emplois : pronom relatif, conjonction de subordination ou pronom interrogatif.',
  null,
  '[{"id":"s09q4w1","label":"la personne que j''admire"},{"id":"s09q4w2","label":"je doute qu''il réussisse"},{"id":"s09q4w3","label":"que cherches-tu ?"},{"id":"s09q4w4","label":"l''histoire que tu racontes"},{"id":"s09q4w5","label":"il est possible qu''elle vienne"},{"id":"s09q4w6","label":"que dit-on ?"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"relatif","label":"Pronom relatif"},{"id":"conj","label":"Conj. de subordination"},{"id":"interrogatif","label":"Pronom interrogatif"}],"mapping":{"s09q4w1":"relatif","s09q4w2":"conj","s09q4w3":"interrogatif","s09q4w4":"relatif","s09q4w5":"conj","s09q4w6":"interrogatif"}}'::jsonb,
  '« La personne que j''admire » et « l''histoire que tu racontes » : que a un antécédent → pronom relatif. « Je doute qu''il réussisse » et « il est possible qu''elle vienne » : que introduit une complétive → conjonction de subordination. « Que cherches-tu ? » et « Que dit-on ? » : que interroge sur l''objet → pronom interrogatif.',
  'Croire que « que » est toujours relatif dès qu''il introduit une proposition. Les complétives après des verbes d''opinion, de volonté ou des constructions impersonnelles utilisent « que » conjonction.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5090000-0000-0000-0000-000000000005',
  'Francais', 'grammaire',
  'tri_mot_que',
  'Tri par catégories : le mot « que »',
  'Difficile',
  'tri_categories',
  'Le mot « que » change de nature selon le contexte. Classez ces six emplois : pronom relatif, conjonction de subordination ou pronom interrogatif.',
  null,
  '[{"id":"s09q5w1","label":"le cadeau que j''ai reçu"},{"id":"s09q5w2","label":"il arrive qu''on se trompe"},{"id":"s09q5w3","label":"que lisez-vous ?"},{"id":"s09q5w4","label":"les mots que tu choisis"},{"id":"s09q5w5","label":"je veux qu''il comprenne"},{"id":"s09q5w6","label":"que faire ?"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"relatif","label":"Pronom relatif"},{"id":"conj","label":"Conj. de subordination"},{"id":"interrogatif","label":"Pronom interrogatif"}],"mapping":{"s09q5w1":"relatif","s09q5w2":"conj","s09q5w3":"interrogatif","s09q5w4":"relatif","s09q5w5":"conj","s09q5w6":"interrogatif"}}'::jsonb,
  '« Le cadeau que j''ai reçu » et « les mots que tu choisis » : que reprend un antécédent → pronom relatif. « Il arrive qu''on se trompe » et « je veux qu''il comprenne » : que introduit une complétive → conjonction de subordination. « Que lisez-vous ? » et « Que faire ? » : que interroge → pronom interrogatif.',
  'Hésiter sur « Que faire ? » : c''est une interrogation directe partielle où « que » est pronom interrogatif (= Quelle chose faire ?).',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),
(
  'f5090000-0000-0000-0000-000000000006',
  'Francais', 'grammaire',
  'tri_mot_que',
  'Tri par catégories : le mot « que »',
  'Difficile',
  'tri_categories',
  'Le mot « que » change de nature selon le contexte. Classez ces six emplois : pronom relatif, conjonction de subordination ou pronom interrogatif.',
  null,
  '[{"id":"s09q6w1","label":"le chemin que nous suivons"},{"id":"s09q6w2","label":"je crains qu''il ne pleuve"},{"id":"s09q6w3","label":"que regardes-tu ?"},{"id":"s09q6w4","label":"le texte qu''elle a lu"},{"id":"s09q6w5","label":"il est certain qu''il viendra"},{"id":"s09q6w6","label":"qu''en pensez-vous ?"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"relatif","label":"Pronom relatif"},{"id":"conj","label":"Conj. de subordination"},{"id":"interrogatif","label":"Pronom interrogatif"}],"mapping":{"s09q6w1":"relatif","s09q6w2":"conj","s09q6w3":"interrogatif","s09q6w4":"relatif","s09q6w5":"conj","s09q6w6":"interrogatif"}}'::jsonb,
  '« Le chemin que nous suivons » et « le texte qu''elle a lu » : que reprend un antécédent → pronom relatif. « Je crains qu''il ne pleuve » et « il est certain qu''il viendra » : que introduit une complétive → conjonction de subordination. « Que regardes-tu ? » et « Qu''en pensez-vous ? » : que interroge → pronom interrogatif.',
  'Hésiter sur « qu''en pensez-vous ? » : « que » porte sur l''avis demandé (= Quelle chose en pensez-vous ?). C''est bien un pronom interrogatif, élidé devant « en ».',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- ============================================================
-- SÉRIE 10 : tri_mots_double_nature (Difficile) — 6 questions
-- Chaque exercice porte sur un mot qui change de nature selon le contexte
-- ============================================================

-- Q1 : le mot « leur » — Déterminant possessif / Pronom personnel
(
  'f50a0000-0000-0000-0000-000000000001',
  'Francais', 'grammaire',
  'tri_mots_double_nature',
  'Tri par catégories : mots à double nature',
  'Difficile',
  'tri_categories',
  'Le mot « leur » change de nature selon le contexte. Classez ces six emplois : déterminant possessif ou pronom personnel.',
  null,
  '[{"id":"s10q1w1","label":"leur cahier"},{"id":"s10q1w2","label":"je leur parle"},{"id":"s10q1w3","label":"leurs amis"},{"id":"s10q1w4","label":"elle leur écrit"},{"id":"s10q1w5","label":"leur école"},{"id":"s10q1w6","label":"il leur donne"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant possessif"},{"id":"pro","label":"Pronom personnel"}],"mapping":{"s10q1w1":"det","s10q1w2":"pro","s10q1w3":"det","s10q1w4":"pro","s10q1w5":"det","s10q1w6":"pro"}}'::jsonb,
  '« Leur cahier », « leurs amis » et « leur école » : leur précède un nom → déterminant possessif. « Je leur parle », « elle leur écrit » et « il leur donne » : leur est placé devant un verbe et remplace un complément → pronom personnel.',
  'Confondre les deux natures. Test : si « leur » est devant un nom, c''est un déterminant. S''il est devant un verbe (ou entre deux verbes), c''est un pronom.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- Q2 : les mots « le / la / les » — Article / Pronom personnel
(
  'f50a0000-0000-0000-0000-000000000002',
  'Francais', 'grammaire',
  'tri_mots_double_nature',
  'Tri par catégories : mots à double nature',
  'Difficile',
  'tri_categories',
  'Les mots « le », « la », « les » changent de nature selon le contexte. Classez ces six emplois : article ou pronom personnel.',
  null,
  '[{"id":"s10q2w1","label":"le livre"},{"id":"s10q2w2","label":"je le vois"},{"id":"s10q2w3","label":"la maison"},{"id":"s10q2w4","label":"elle la prend"},{"id":"s10q2w5","label":"les enfants"},{"id":"s10q2w6","label":"il les regarde"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"article","label":"Article"},{"id":"pro","label":"Pronom personnel"}],"mapping":{"s10q2w1":"article","s10q2w2":"pro","s10q2w3":"article","s10q2w4":"pro","s10q2w5":"article","s10q2w6":"pro"}}'::jsonb,
  '« Le livre », « la maison » et « les enfants » : le/la/les précèdent un nom → articles définis. « Je le vois », « elle la prend » et « il les regarde » : le/la/les sont placés devant un verbe et remplacent un COD → pronoms personnels.',
  'Confondre article et pronom. Test : devant un nom → article ; devant un verbe → pronom.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- Q3 : le mot « en » — Préposition / Pronom
(
  'f50a0000-0000-0000-0000-000000000003',
  'Francais', 'grammaire',
  'tri_mots_double_nature',
  'Tri par catégories : mots à double nature',
  'Difficile',
  'tri_categories',
  'Le mot « en » change de nature selon le contexte. Classez ces six emplois : préposition ou pronom.',
  null,
  '[{"id":"s10q3w1","label":"en France"},{"id":"s10q3w2","label":"j''en veux"},{"id":"s10q3w3","label":"en hiver"},{"id":"s10q3w4","label":"il en parle"},{"id":"s10q3w5","label":"en classe"},{"id":"s10q3w6","label":"nous en avons"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prep","label":"Préposition"},{"id":"pro","label":"Pronom"}],"mapping":{"s10q3w1":"prep","s10q3w2":"pro","s10q3w3":"prep","s10q3w4":"pro","s10q3w5":"prep","s10q3w6":"pro"}}'::jsonb,
  '« En France », « en hiver » et « en classe » : en introduit un complément (lieu, temps) → préposition. « J''en veux », « il en parle » et « nous en avons » : en est placé devant un verbe et remplace un complément → pronom (adverbial).',
  'Confondre les deux « en ». Test : suivi d''un nom ou d''un groupe nominal → préposition ; placé devant un verbe → pronom.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- Q4 : le mot « que » — Pronom relatif / Conjonction de subordination
(
  'f50a0000-0000-0000-0000-000000000004',
  'Francais', 'grammaire',
  'tri_mots_double_nature',
  'Tri par catégories : mots à double nature',
  'Difficile',
  'tri_categories',
  'Le mot « que » change de nature selon le contexte. Classez ces six emplois : pronom relatif ou conjonction de subordination.',
  null,
  '[{"id":"s10q4w1","label":"le film que j''aime"},{"id":"s10q4w2","label":"je veux qu''il vienne"},{"id":"s10q4w3","label":"l''ami que tu connais"},{"id":"s10q4w4","label":"il faut qu''on parte"},{"id":"s10q4w5","label":"la robe qu''elle porte"},{"id":"s10q4w6","label":"je sais qu''il a tort"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"relatif","label":"Pronom relatif"},{"id":"conj","label":"Conj. de subordination"}],"mapping":{"s10q4w1":"relatif","s10q4w2":"conj","s10q4w3":"relatif","s10q4w4":"conj","s10q4w5":"relatif","s10q4w6":"conj"}}'::jsonb,
  '« Le film que j''aime », « l''ami que tu connais » et « la robe qu''elle porte » : que reprend un antécédent (film, ami, robe) → pronom relatif. « Je veux qu''il vienne », « il faut qu''on parte » et « je sais qu''il a tort » : que introduit une complétive sans antécédent → conjonction de subordination.',
  'Confondre les deux emplois. Le test décisif : y a-t-il un nom antécédent juste avant ? Oui → pronom relatif. Non → conjonction.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- Q5 : le mot « même » — Adjectif / Adverbe
(
  'f50a0000-0000-0000-0000-000000000005',
  'Francais', 'grammaire',
  'tri_mots_double_nature',
  'Tri par catégories : mots à double nature',
  'Difficile',
  'tri_categories',
  'Le mot « même » change de nature selon le contexte. Classez ces six emplois : adjectif ou adverbe.',
  null,
  '[{"id":"s10q5w1","label":"les mêmes erreurs"},{"id":"s10q5w2","label":"même les experts hésitent"},{"id":"s10q5w3","label":"la même réponse"},{"id":"s10q5w4","label":"il n''a même pas essayé"},{"id":"s10q5w5","label":"ces mêmes arguments"},{"id":"s10q5w6","label":"même toi, tu peux réussir"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"adj","label":"Adjectif"},{"id":"adv","label":"Adverbe"}],"mapping":{"s10q5w1":"adj","s10q5w2":"adv","s10q5w3":"adj","s10q5w4":"adv","s10q5w5":"adj","s10q5w6":"adv"}}'::jsonb,
  '« Les mêmes erreurs », « la même réponse » et « ces mêmes arguments » : même accompagne un nom et s''accorde → adjectif (indéfini). « Même les experts hésitent », « il n''a même pas essayé » et « même toi » : même est invariable et signifie « aussi, y compris » → adverbe.',
  'Confondre les deux emplois. Test : si « même » est à l''intérieur du groupe nominal (entre déterminant et nom), c''est un adjectif. S''il est en début de groupe ou devant un verbe, c''est un adverbe.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
),

-- Q6 : le mot « si » — Conjonction de subordination / Adverbe d'intensité
(
  'f50a0000-0000-0000-0000-000000000006',
  'Francais', 'grammaire',
  'tri_mots_double_nature',
  'Tri par catégories : mots à double nature',
  'Difficile',
  'tri_categories',
  'Le mot « si » change de nature selon le contexte. Classez ces six emplois : conjonction de subordination ou adverbe d''intensité.',
  null,
  '[{"id":"s10q6w1","label":"si tu veux"},{"id":"s10q6w2","label":"elle est si grande"},{"id":"s10q6w3","label":"si j''avais su"},{"id":"s10q6w4","label":"un film si beau"},{"id":"s10q6w5","label":"si nous partons"},{"id":"s10q6w6","label":"il court si vite"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"conj","label":"Conj. de subordination"},{"id":"adv","label":"Adverbe d''intensité"}],"mapping":{"s10q6w1":"conj","s10q6w2":"adv","s10q6w3":"conj","s10q6w4":"adv","s10q6w5":"conj","s10q6w6":"adv"}}'::jsonb,
  '« Si tu veux », « si j''avais su » et « si nous partons » : si introduit une subordonnée de condition → conjonction de subordination. « Elle est si grande », « un film si beau » et « il court si vite » : si exprime l''intensité devant un adjectif ou un adverbe → adverbe d''intensité.',
  'Répondre toujours « conjonction » parce que « si » est associé à la condition. Test : si « si » est suivi d''un sujet + verbe → conjonction. S''il est devant un adjectif ou un adverbe → adverbe d''intensité.',
  'valide', 'Série CRPE Français — Tri par catégories', 'free', true
);
