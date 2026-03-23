-- Série : Symétries et transformations géométriques
-- 7 questions, Intermédiaire, premium
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte

-- Q1 — AMORCE — QCM — Reconnaître un axe de symétrie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0070000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_symetries_transformations',
  'Symétries et transformations géométriques',
  'Intermediaire',
  'qcm',
  'Combien d''axes de symétrie possède un triangle équilatéral ?',
  NULL,
  '[{"id":"a","label":"1"},{"id":"b","label":"2"},{"id":"c","label":"3"},{"id":"d","label":"6"}]',
  '{"mode":"single","value":"c"}',
  'Un triangle équilatéral possède 3 axes de symétrie. Chaque axe passe par un sommet et le milieu du côté opposé (ce sont les médiatrices des côtés, qui sont aussi les médianes et les hauteurs dans le cas équilatéral). Comparaison avec d''autres figures : triangle isocèle → 1 axe, triangle scalène → 0 axe, carré → 4 axes, rectangle → 2 axes, losange → 2 axes, cercle → infinité d''axes. Règle pour les polygones réguliers à n côtés : n axes de symétrie.',
  'Confondre le nombre de côtés avec le nombre d''axes. Un triangle équilatéral a bien 3 axes (pas 1 comme un triangle isocèle, ni 6 comme un hexagone régulier).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Vrai/Faux — Symétrie axiale et distances
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0070000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_symetries_transformations',
  'Symétries et transformations géométriques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : la symétrie axiale conserve les distances et les angles.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}',
  'VRAI. La symétrie axiale est une isométrie : elle conserve les distances (longueurs des segments) et les mesures des angles. Si un triangle ABC est transformé en A''B''C'' par une symétrie axiale, alors AB = A''B'', BC = B''C'', AC = A''C'', et les angles sont conservés. En revanche, la symétrie axiale inverse l''orientation : un triangle « direct » (sens trigonométrique) devient « indirect » (sens horaire) et inversement. C''est pourquoi l''image miroir d''un texte est illisible — les lettres sont retournées. Au CRPE, il est important de distinguer les transformations qui conservent les distances (isométries : symétrie axiale, symétrie centrale, translation, rotation) de celles qui ne les conservent pas (homothétie, sauf de rapport ±1).',
  'Croire que la symétrie « déforme » la figure. Non : la symétrie axiale conserve toutes les longueurs et tous les angles. C''est le prototype de l''isométrie.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — QCM — Symétrie centrale vs symétrie axiale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0070000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_symetries_transformations',
  'Symétries et transformations géométriques',
  'Intermediaire',
  'qcm',
  'Le point A a pour coordonnées (3 ; 5). Quelles sont les coordonnées de son image A'' par la symétrie centrale de centre O(0 ; 0) ?',
  NULL,
  '[{"id":"a","label":"(−3 ; −5)"},{"id":"b","label":"(−3 ; 5)"},{"id":"c","label":"(3 ; −5)"},{"id":"d","label":"(5 ; 3)"}]',
  '{"mode":"single","value":"a"}',
  'Par la symétrie centrale de centre O(0 ; 0), le point A(x ; y) a pour image A''(−x ; −y). Donc A(3 ; 5) → A''(−3 ; −5). Le centre O est le milieu du segment [AA''] : ((3+(−3))/2 ; (5+(−5))/2) = (0 ; 0) ✓. La symétrie centrale de centre O équivaut à une rotation de 180° autour de O. Les réponses B et C correspondent à des symétries AXIALES : B = (−3 ; 5) est le symétrique par rapport à l''axe des ordonnées, C = (3 ; −5) est le symétrique par rapport à l''axe des abscisses.',
  'Confondre symétrie centrale (les DEUX coordonnées changent de signe) et symétrie axiale (UNE seule coordonnée change de signe, selon l''axe choisi).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Réponse courte — Image par translation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0070000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_symetries_transformations',
  'Symétries et transformations géométriques',
  'Intermediaire',
  'reponse_courte',
  'Le point M(2 ; −1) est transformé par la translation de vecteur u(4 ; 3). Quelles sont les coordonnées de son image M'' ? (Répondez sous la forme (x ; y).)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["(6 ; 2)","(6;2)","(6 ;2)","(6; 2)","6 ; 2","6;2"]}'  ,
  'Par une translation de vecteur u(a ; b), le point M(x ; y) a pour image M''(x+a ; y+b). Donc M(2 ; −1) → M''(2+4 ; −1+3) = M''(6 ; 2). La translation « glisse » chaque point de la même manière : 4 unités vers la droite et 3 unités vers le haut. C''est la transformation la plus simple : elle ne change ni les distances, ni les angles, ni l''orientation. Un segment [AB] et son image [A''B''] sont parallèles et de même longueur.',
  'Soustraire les coordonnées du vecteur au lieu de les additionner. L''image par une translation de vecteur u se calcule en AJOUTANT les composantes du vecteur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — QCM — Identifier la transformation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0070000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_symetries_transformations',
  'Symétries et transformations géométriques',
  'Intermediaire',
  'qcm',
  'Une figure est transformée en une figure de même forme et de même taille, mais retournée (comme dans un miroir). L''image et l''original partagent un point fixe. De quelle transformation s''agit-il ?',
  NULL,
  '[{"id":"a","label":"Translation"},{"id":"b","label":"Rotation"},{"id":"c","label":"Symétrie axiale"},{"id":"d","label":"Homothétie"}]',
  '{"mode":"single","value":"c"}',
  'C''est une symétrie axiale. Les indices : (1) même forme et même taille → c''est une isométrie, (2) la figure est « retournée » → l''orientation est inversée, (3) il y a des points fixes (les points de l''axe). La translation n''a aucun point fixe (sauf la translation nulle). La rotation a un seul point fixe (le centre). La symétrie axiale a une infinité de points fixes (tout l''axe de symétrie). L''homothétie change les tailles (sauf rapport 1 ou −1). Récapitulatif des isométries du plan : translation (pas de point fixe, conserve l''orientation), rotation (1 point fixe, conserve l''orientation), symétrie axiale (axe de points fixes, inverse l''orientation), symétrie centrale (1 point fixe, inverse l''orientation).',
  'Confondre symétrie axiale et rotation. La rotation conserve l''orientation (pas de retournement), la symétrie axiale l''inverse.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Composition de symétries
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0070000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_symetries_transformations',
  'Symétries et transformations géométriques',
  'Intermediaire',
  'reponse_courte',
  'On effectue deux symétries axiales successives par rapport à deux droites parallèles distantes de 5 cm. Quelle transformation unique est équivalente à cette composition, et de quelle amplitude ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["une translation de 10 cm","translation de 10 cm","translation 10 cm","une translation de vecteur perpendiculaire aux axes, de norme 10 cm"]}'  ,
  'La composée de deux symétries axiales par rapport à deux droites PARALLÈLES est une translation. La direction de la translation est perpendiculaire aux deux axes, et sa norme est le DOUBLE de la distance entre les axes. Ici : 2 × 5 = 10 cm. Résultat : une translation de 10 cm perpendiculaire aux deux droites. Rappel des résultats fondamentaux de composition : deux symétries axiales d''axes parallèles → translation ; deux symétries axiales d''axes sécants → rotation (d''angle double de l''angle entre les axes). Ces résultats sont au programme du CRPE et permettent de décomposer toute isométrie en symétries axiales.',
  'Prendre la distance entre les axes (5 cm) au lieu du double (10 cm). La norme de la translation est toujours le DOUBLE de la distance entre les axes parallèles.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Agrandissement/réduction (homothétie)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0070000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_symetries_transformations',
  'Symétries et transformations géométriques',
  'Intermediaire',
  'qcm',
  'Un triangle ABC d''aire 18 cm² est agrandi par une homothétie de rapport 3. Quelle est l''aire du triangle image A''B''C'' ?',
  NULL,
  '[{"id":"a","label":"54 cm²"},{"id":"b","label":"162 cm²"},{"id":"c","label":"36 cm²"},{"id":"d","label":"486 cm²"}]',
  '{"mode":"single","value":"b"}',
  'L''homothétie de rapport k multiplie les longueurs par |k|, les aires par k², et les volumes par |k|³. Ici k = 3, donc l''aire est multipliée par 3² = 9. Aire image = 18 × 9 = 162 cm². Le distracteur A (54 = 18 × 3) correspond à l''erreur de multiplier l''aire par k au lieu de k². Le distracteur D (486 = 18 × 27 = 18 × 3³) correspond à la formule des volumes. Tableau récapitulatif de l''homothétie de rapport k : longueurs → ×|k|, périmètres → ×|k|, aires → ×k², volumes → ×|k|³.',
  'Multiplier l''aire par le rapport k (au lieu de k²). C''est l''erreur la plus fréquente sur les agrandissements — la même que pour les conversions d''unités d''aire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
