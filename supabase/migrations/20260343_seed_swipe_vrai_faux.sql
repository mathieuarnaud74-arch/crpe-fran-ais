-- ============================================================
-- Swipe Vrai/Faux series: 2 × 10 short statements for Swipe mode
-- Designed for quick swipe review (×1.2 XP)
-- ============================================================

-- ── Swipe : Grammaire — Vrai ou Faux ? ───────────────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('c1010000-0000-0000-0000-000000000001', 'Francais', 'grammaire', 'swipe_grammaire_vf', 'Swipe — Grammaire Vrai/Faux', 'Facile', 'vrai_faux',
 'Un adverbe peut modifier un adjectif.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Un adverbe peut modifier un adjectif (ex. : « très grand »), un verbe ou un autre adverbe.', 'valide', 'free', true),

('c1010000-0000-0000-0000-000000000002', 'Francais', 'grammaire', 'swipe_grammaire_vf', 'Swipe — Grammaire Vrai/Faux', 'Facile', 'vrai_faux',
 'Le sujet est toujours placé avant le verbe.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Le sujet peut être inversé (ex. : « Que manges-tu ? », « Dans le jardin fleurissent les roses »).', 'valide', 'free', true),

('c1010000-0000-0000-0000-000000000003', 'Francais', 'grammaire', 'swipe_grammaire_vf', 'Swipe — Grammaire Vrai/Faux', 'Facile', 'vrai_faux',
 'Un déterminant fait toujours partie du groupe nominal.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Le déterminant est un constituant obligatoire du groupe nominal (sauf exceptions poétiques).', 'valide', 'free', true),

('c1010000-0000-0000-0000-000000000004', 'Francais', 'grammaire', 'swipe_grammaire_vf', 'Swipe — Grammaire Vrai/Faux', 'Intermediaire', 'vrai_faux',
 '« Dont » est une conjonction de coordination.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. « Dont » est un pronom relatif. Les conjonctions de coordination sont : mais, ou, et, donc, or, ni, car.', 'valide', 'free', true),

('c1010000-0000-0000-0000-000000000005', 'Francais', 'grammaire', 'swipe_grammaire_vf', 'Swipe — Grammaire Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Le complément d''objet indirect est introduit par une préposition.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Le COI est relié au verbe par une préposition (à, de, etc.) : « Il parle à Marie ».', 'valide', 'free', true),

('c1010000-0000-0000-0000-000000000006', 'Francais', 'grammaire', 'swipe_grammaire_vf', 'Swipe — Grammaire Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Une phrase peut avoir plusieurs verbes conjugués.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Une phrase complexe contient plusieurs propositions, donc plusieurs verbes conjugués.', 'valide', 'free', true),

('c1010000-0000-0000-0000-000000000007', 'Francais', 'grammaire', 'swipe_grammaire_vf', 'Swipe — Grammaire Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Le participe présent est un mode personnel.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Le participe est un mode impersonnel (il ne se conjugue pas selon les personnes).', 'valide', 'free', true),

('c1010000-0000-0000-0000-000000000008', 'Francais', 'grammaire', 'swipe_grammaire_vf', 'Swipe — Grammaire Vrai/Faux', 'Avance', 'vrai_faux',
 'La voix passive se forme avec l''auxiliaire « avoir ».',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. La voix passive se forme avec l''auxiliaire « être » + participe passé (ex. : « Le gâteau est mangé par les enfants »).', 'valide', 'free', true),

('c1010000-0000-0000-0000-000000000009', 'Francais', 'grammaire', 'swipe_grammaire_vf', 'Swipe — Grammaire Vrai/Faux', 'Avance', 'vrai_faux',
 'Un verbe intransitif ne peut jamais avoir de complément.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Un verbe intransitif n''a pas de COD ni COI, mais peut avoir des compléments circonstanciels (ex. : « Il dort longtemps »).', 'valide', 'free', true),

('c1010000-0000-0000-0000-000000000010', 'Francais', 'grammaire', 'swipe_grammaire_vf', 'Swipe — Grammaire Vrai/Faux', 'Avance', 'vrai_faux',
 'Le gérondif se forme avec « en » + participe présent.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Le gérondif = « en » + participe présent (ex. : « en chantant »). Il exprime la simultanéité ou la manière.', 'valide', 'free', true);

-- ── Swipe : Orthographe — Vrai ou Faux ? ─────────────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('c1020000-0000-0000-0000-000000000001', 'Francais', 'orthographe', 'swipe_orthographe_vf', 'Swipe — Orthographe Vrai/Faux', 'Facile', 'vrai_faux',
 'Le pluriel de « cheval » est « chevals ».',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. « Cheval » fait « chevaux » au pluriel (terminaison -al → -aux pour la plupart des noms).', 'valide', 'free', true),

('c1020000-0000-0000-0000-000000000002', 'Francais', 'orthographe', 'swipe_orthographe_vf', 'Swipe — Orthographe Vrai/Faux', 'Facile', 'vrai_faux',
 '« Leur » prend un « s » quand il est pronom personnel.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. « Leur » pronom personnel (COI) est invariable : « Je leur parle ». C''est « leur/leurs » déterminant possessif qui varie.', 'valide', 'free', true),

('c1020000-0000-0000-0000-000000000003', 'Francais', 'orthographe', 'swipe_orthographe_vf', 'Swipe — Orthographe Vrai/Faux', 'Facile', 'vrai_faux',
 'On écrit « les pommes que j''ai mangées » avec un accord.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Avec « avoir », le participe passé s''accorde avec le COD placé avant le verbe. « Que » reprend « les pommes » (fém. plur.).', 'valide', 'free', true),

('c1020000-0000-0000-0000-000000000004', 'Francais', 'orthographe', 'swipe_orthographe_vf', 'Swipe — Orthographe Vrai/Faux', 'Intermediaire', 'vrai_faux',
 '« Cent » prend un « s » dans « trois cents ».',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. « Cent » prend un « s » quand il est multiplié et non suivi d''un autre nombre : « trois cents » mais « trois cent vingt ».', 'valide', 'free', true),

('c1020000-0000-0000-0000-000000000005', 'Francais', 'orthographe', 'swipe_orthographe_vf', 'Swipe — Orthographe Vrai/Faux', 'Intermediaire', 'vrai_faux',
 '« Quoique » et « quoi que » ont le même sens.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. « Quoique » (en un mot) = bien que. « Quoi que » (en deux mots) = quelle que soit la chose que.', 'valide', 'free', true),

('c1020000-0000-0000-0000-000000000006', 'Francais', 'orthographe', 'swipe_orthographe_vf', 'Swipe — Orthographe Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Les adverbes en -ment ne prennent jamais d''accent.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Certains adverbes portent un accent : « précisément », « énormément », « profondément ».', 'valide', 'free', true),

('c1020000-0000-0000-0000-000000000007', 'Francais', 'orthographe', 'swipe_orthographe_vf', 'Swipe — Orthographe Vrai/Faux', 'Intermediaire', 'vrai_faux',
 '« Tout » est invariable devant un adjectif féminin commençant par une voyelle.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. « Tout » adverbe est invariable devant un adjectif féminin commençant par une voyelle ou un h muet : « tout émue ».', 'valide', 'free', true),

('c1020000-0000-0000-0000-000000000008', 'Francais', 'orthographe', 'swipe_orthographe_vf', 'Swipe — Orthographe Vrai/Faux', 'Avance', 'vrai_faux',
 '« Les efforts qu''il a fallu » — « fallu » ne s''accorde jamais.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Le participe passé du verbe impersonnel « falloir » est toujours invariable.', 'valide', 'free', true),

('c1020000-0000-0000-0000-000000000009', 'Francais', 'orthographe', 'swipe_orthographe_vf', 'Swipe — Orthographe Vrai/Faux', 'Avance', 'vrai_faux',
 '« Après qu''il est parti » est grammaticalement correct.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. « Après que » est suivi de l''indicatif (fait avéré), contrairement à « avant que » + subjonctif. L''usage courant du subjonctif est fautif.', 'valide', 'free', true),

('c1020000-0000-0000-0000-000000000010', 'Francais', 'orthographe', 'swipe_orthographe_vf', 'Swipe — Orthographe Vrai/Faux', 'Avance', 'vrai_faux',
 '« Malgré que » est accepté en français standard.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. « Malgré que » est considéré comme incorrect en français soutenu. On dit « bien que » + subjonctif ou « malgré » + nom.', 'valide', 'free', true);
