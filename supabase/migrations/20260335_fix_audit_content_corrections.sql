-- ============================================================
-- Migration : Corrections audit qualite contenu exercices
-- 1. Types de phrases : 4 types → 3 types (Eduscol 2021)
-- 2. Parataxe retiree des reponses acceptables
-- 3. Discours indirect : verbe introducteur passe au passe
-- 4. Correction explication phrase interrogative-negative
-- ============================================================

-- ─── FIX 1 : Question "Combien de types de phrases" → 3 types (Eduscol 2021) ───
UPDATE public.exercises
SET
  instruction = 'Selon la terminologie officielle (Eduscol 2021), combien existe-t-il de types de phrases en français ?',
  choices = '[{"id":"a","label":"Deux (positive et négative)"},{"id":"b","label":"Trois (déclaratif, interrogatif, impératif)"},{"id":"c","label":"Quatre (déclaratif, interrogatif, exclamatif, impératif)"},{"id":"d","label":"Cinq (en ajoutant le conditionnel)"}]'::jsonb,
  expected_answer = '{"mode":"single_choice","value":"b"}'::jsonb,
  detailed_explanation = 'Depuis la terminologie officielle de 2021 (Eduscol), on distingue trois types de phrases : le déclaratif (affirmation ou négation d''un fait), l''interrogatif (question) et l''impératif (ordre, conseil, interdiction). L''exclamation, autrefois considérée comme un quatrième type, est désormais classée comme une forme de phrase. Les formes incluent l''affirmative, la négative et l''exclamative.',
  common_mistake = 'La confusion entre ''type'' et ''forme'' est fréquente. Attention : les anciens manuels mentionnent quatre types (incluant l''exclamatif). La terminologie officielle 2021 retient trois types. L''exclamation peut se combiner avec n''importe quel type : « Comme il chante bien ! » (déclaratif + exclamatif).',
  updated_at = NOW()
WHERE id = 'a3050000-0000-0000-0000-000000000001';

-- ─── FIX 2 : "Quelle belle journée" → déclaratif + forme exclamative ───
UPDATE public.exercises
SET
  instruction = 'Selon la terminologie Eduscol 2021, quel est le type de la phrase : « Quelle belle journée nous avons aujourd''hui ! » ?',
  choices = '[{"id":"a","label":"Interrogatif"},{"id":"b","label":"Déclaratif (avec forme exclamative)"},{"id":"c","label":"Exclamatif (un type à part entière)"},{"id":"d","label":"Impératif"}]'::jsonb,
  expected_answer = '{"mode":"single_choice","value":"b"}'::jsonb,
  detailed_explanation = 'Selon la terminologie officielle 2021, cette phrase est de type déclaratif (elle affirme un fait) et de forme exclamative (elle exprime une émotion intense, marquée par le point d''exclamation et le déterminant « quelle »). L''exclamation n''est plus considérée comme un type de phrase mais comme une forme qui peut se combiner avec les trois types : déclaratif, interrogatif ou impératif.',
  common_mistake = 'Les anciens manuels classent cette phrase comme ''exclamative'' (un 4e type). Depuis 2021, la terminologie officielle retient trois types seulement. L''exclamation est une forme : « Quelle belle journée ! » = type déclaratif + forme exclamative. Attention aux sujets CRPE qui testent spécifiquement cette mise à jour terminologique.',
  updated_at = NOW()
WHERE id = 'a3050000-0000-0000-0000-000000000002';

-- ─── FIX 3 : Correction explication phrase interrogative-negative ───
UPDATE public.exercises
SET
  detailed_explanation = 'C''est vrai. Cette phrase cumule le type interrogatif (marqué par l''inversion du sujet et le point d''interrogation) et la forme négative (marquée par la négation ''ne…pas''). Type et forme sont deux catégories indépendantes qui peuvent se combiner : une phrase peut être interrogative-négative, impérative-négative, déclarative-exclamative-négative, etc.',
  common_mistake = 'L''erreur consiste à opposer type et forme comme s''ils s''excluaient. Une phrase a TOUJOURS un type ET au moins une forme. La forme négative ou exclamative peut s''appliquer à tous les types.',
  updated_at = NOW()
WHERE id = 'a3050000-0000-0000-0000-000000000006';

-- ─── FIX 4 : Retirer "parataxe" des reponses acceptables ───
UPDATE public.exercises
SET
  expected_answer = '{"mode":"text","acceptableAnswers":["hypotaxe","coordination","hypotaxe ou coordination"]}'::jsonb,
  updated_at = NOW()
WHERE id = 'a3010000-0000-0000-0000-000000000007';

-- ─── FIX 5 : Discours indirect — verbe introducteur au passe ───
UPDATE public.exercises
SET
  instruction = 'Transformez au discours indirect : Marie a dit : « Je viendrai demain. » → Marie a dit que...',
  detailed_explanation = 'Quand le verbe introducteur est au passé (''a dit''), la concordance des temps s''applique dans la subordonnée : futur → conditionnel (''viendra'' → ''viendrait''). De plus, les personnes changent (''je'' → ''elle'') et les déictiques temporels sont transposés (''demain'' → ''le lendemain''). La réponse correcte est donc ''elle viendrait le lendemain''.',
  updated_at = NOW()
WHERE id = 'a3040000-0000-0000-0000-000000000002';
