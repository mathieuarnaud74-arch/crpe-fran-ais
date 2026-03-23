-- ============================================================
-- Série : Symétrie centrale — Propriétés et constructions (Géométrie, Intermédiaire, Premium)
-- 7 exercices : 2 amorce · 3 consolidation · 2 approfondissement
-- ============================================================

-- Q1 — AMORCE — QCM — Définition du centre de symétrie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9050000-0000-0000-0000-000000000001', 'Mathematiques', 'geometrie', 'math_symetrie_centrale',
  'Symétrie centrale — Propriétés et constructions', 'Intermediaire', 'qcm',
  'Que signifie « la figure F admet un centre de symétrie O » ?',
  NULL,
  '[{"id":"a","label":"F est invariante par la symétrie centrale de centre O"},{"id":"b","label":"F est invariante par la symétrie axiale d''axe passant par O"},{"id":"c","label":"O est le milieu de chaque côté de F"},{"id":"d","label":"F possède un axe de symétrie passant par O"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Une figure admet un centre de symétrie O si elle est globalement invariante par la symétrie centrale de centre O : l''image de chaque point de la figure par cette symétrie appartient encore à la figure. La symétrie centrale de centre O transforme tout point M en un point M'' tel que O est le milieu de [MM'']. Ce n''est pas une symétrie axiale (réponses B et D). La réponse C est incorrecte : O n''est pas forcément le milieu de chaque côté, mais le point tel que la figure coïncide avec son image.',
  'Confondre centre de symétrie et axe de symétrie : l''élève pense qu''un centre de symétrie est un point sur un axe de symétrie.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Image d''un point par symétrie centrale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9050000-0000-0000-0000-000000000002', 'Mathematiques', 'geometrie', 'math_symetrie_centrale',
  'Symétrie centrale — Propriétés et constructions', 'Intermediaire', 'vrai_faux',
  'Vrai ou faux : l''image du point A par la symétrie centrale de centre O est le point A'' tel que O est le milieu du segment [AA''].',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Par définition, la symétrie centrale de centre O associe à tout point A le point A'' tel que O est le milieu de [AA'']. Autrement dit, OA = OA'' et les points A, O, A'' sont alignés. Construire l''image d''un point par symétrie centrale revient donc à prolonger le segment [AO] de la même longueur au-delà de O.',
  'L''élève construit A'' tel que A est le milieu de [OA''] au lieu de O milieu de [AA''], doublant ainsi la distance.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — QCM — Conservation des distances
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9050000-0000-0000-0000-000000000003', 'Mathematiques', 'geometrie', 'math_symetrie_centrale',
  'Symétrie centrale — Propriétés et constructions', 'Intermediaire', 'qcm',
  'Parmi les propriétés suivantes, laquelle n''est PAS conservée par une symétrie centrale ?',
  NULL,
  '[{"id":"a","label":"Les distances"},{"id":"b","label":"Les mesures d''angles"},{"id":"c","label":"Le sens de parcours d''un polygone"},{"id":"d","label":"Les aires"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'La symétrie centrale est une isométrie : elle conserve les distances, les mesures d''angles et les aires. En revanche, elle inverse le sens de parcours d''un polygone : si les sommets d''un triangle sont parcourus dans le sens horaire, leurs images sont parcourues dans le sens anti-horaire. C''est une différence importante avec la translation, qui conserve le sens de parcours. La symétrie centrale est en fait une rotation de 180°.',
  'Penser que la symétrie centrale conserve le sens de parcours comme une translation, alors qu''elle l''inverse (comme toute symétrie).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Vrai/Faux — Parallélogramme et symétrie centrale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9050000-0000-0000-0000-000000000004', 'Mathematiques', 'geometrie', 'math_symetrie_centrale',
  'Symétrie centrale — Propriétés et constructions', 'Intermediaire', 'vrai_faux',
  'Vrai ou faux : le parallélogramme est le seul quadrilatère usuel qui admet un centre de symétrie sans admettre d''axe de symétrie.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Le parallélogramme (non rectangle, non losange) admet un centre de symétrie — le point d''intersection de ses diagonales — mais ne possède aucun axe de symétrie. Le rectangle, le losange et le carré admettent à la fois un centre de symétrie et des axes de symétrie. Le trapèze isocèle admet un axe de symétrie mais pas de centre de symétrie. Le parallélogramme est donc bien le seul quadrilatère usuel dans cette situation.',
  'Penser que tout quadrilatère avec un centre de symétrie possède aussi un axe de symétrie.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Réponse courte — Composition de deux symétries centrales
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9050000-0000-0000-0000-000000000005', 'Mathematiques', 'geometrie', 'math_symetrie_centrale',
  'Symétrie centrale — Propriétés et constructions', 'Intermediaire', 'reponse_courte',
  'Quelle transformation obtient-on en composant deux symétries centrales de centres distincts A et B ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["une translation","translation","la translation"]}'::jsonb,
  'La composition (l''enchaînement) de deux symétries centrales de centres distincts A et B est une translation de vecteur 2×vecteur(AB). En effet, chaque symétrie centrale est une rotation de 180°. La composition de deux rotations de 180° de centres distincts donne une rotation de 360° = 0°, c''est-à-dire une translation. Le vecteur de cette translation est 2×vecteur(AB), allant de A vers B et de norme double de AB.',
  'Penser que la composition de deux symétries centrales est encore une symétrie centrale, alors qu''il s''agit d''une translation.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — QCM — Trouver le centre de symétrie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9050000-0000-0000-0000-000000000006', 'Mathematiques', 'geometrie', 'math_symetrie_centrale',
  'Symétrie centrale — Propriétés et constructions', 'Intermediaire', 'qcm',
  'On sait que B est l''image de A par une symétrie centrale de centre O, avec A(2 ; 5) et B(−4 ; 1). Quelles sont les coordonnées de O ?',
  NULL,
  '[{"id":"a","label":"O(−1 ; 3)"},{"id":"b","label":"O(3 ; 3)"},{"id":"c","label":"O(−6 ; −4)"},{"id":"d","label":"O(−2 ; 6)"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'O est le milieu de [AB]. Les coordonnées du milieu sont : xO = (xA + xB)/2 = (2 + (−4))/2 = −2/2 = −1, et yO = (yA + yB)/2 = (5 + 1)/2 = 6/2 = 3. Donc O(−1 ; 3). La réponse B calcule xO = (4 − (−2))/2 en se trompant de signe. La réponse C soustrait les coordonnées au lieu de les additionner. La réponse D confond milieu et différence.',
  'Soustraire les coordonnées au lieu de les additionner pour calculer un milieu : l''élève calcule (2 − (−4))/2 = 3 au lieu de (2 + (−4))/2 = −1.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — Réponse courte — Application concrète
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f9050000-0000-0000-0000-000000000007', 'Mathematiques', 'geometrie', 'math_symetrie_centrale',
  'Symétrie centrale — Propriétés et constructions', 'Intermediaire', 'reponse_courte',
  'Un segment [AB] a pour image [A''B''] par la symétrie centrale de centre O. Si AB = 7,3 cm, quelle est la longueur de [A''B''] en cm ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["7,3","7.3","7,3 cm","7.3 cm"]}'::jsonb,
  'La symétrie centrale est une isométrie : elle conserve les distances. L''image d''un segment par une symétrie centrale est un segment de même longueur. Donc A''B'' = AB = 7,3 cm. Cette propriété de conservation des distances est fondamentale et partagée avec les autres isométries (symétrie axiale, rotation, translation).',
  'Penser que la symétrie centrale modifie les longueurs, par exemple en doublant la distance (confusion avec la construction OA = OA'').',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
