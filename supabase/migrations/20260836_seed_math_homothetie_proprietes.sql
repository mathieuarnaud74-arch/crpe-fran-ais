-- Migration: 10 exercices — Homothétie : propriétés et applications
-- Série : math_homothetie_proprietes (Mathématiques, geometrie)
-- Centre, rapport, images, effet sur longueurs/aires/volumes
-- UUID prefix: e9360000

-- Q1 — QCM — Définition de l'homothétie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9360000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_homothetie_proprietes',
  'Homothétie — centre, rapport, images et propriétés',
  'Standard',
  'qcm',
  'Une homothétie de centre O et de rapport k = 2 transforme un point M en un point M''. Quelle affirmation est correcte ?',
  NULL,
  '[{"id":"a","label":"OM'' = 2 × OM, et M'' est du même côté que M par rapport à O"},{"id":"b","label":"OM'' = OM / 2, et M'' est du même côté que M par rapport à O"},{"id":"c","label":"OM'' = 2 × OM, et M'' est du côté opposé à M par rapport à O"},{"id":"d","label":"OM'' = OM + 2"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''homothétie de centre O et de rapport k = 2 transforme M en M'' tel que OM'' = 2 × OM, avec O, M, M'' alignés et M'' du MÊME côté que M par rapport à O (car k > 0). Règle : si k > 0, M'' est du même côté que M ; si k < 0, M'' est du côté opposé (on « traverse » le centre). Le rapport k donne le facteur d''agrandissement (|k| > 1) ou de réduction (|k| < 1) des distances au centre. L''homothétie est une transformation qui conserve les angles et les alignements.',
  'Confondre rapport positif et négatif. k > 0 : image du même côté. k < 0 : image du côté opposé (le centre est entre M et M'').',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Rapport négatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9360000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_homothetie_proprietes',
  'Homothétie — centre, rapport, images et propriétés',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : une homothétie de rapport k = −1 est équivalente à une symétrie centrale.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! L''homothétie de centre O et de rapport k = −1 transforme chaque point M en le point M'' tel que O est le milieu de [MM'']. C''est exactement la définition de la symétrie centrale de centre O. La symétrie centrale est donc un cas particulier d''homothétie (rapport −1). De même, l''homothétie de rapport k = 1 est l''identité (chaque point est son propre image). Cette correspondance montre que l''homothétie est une généralisation des transformations élémentaires.',
  'Confondre symétrie centrale (homothétie de rapport −1) et symétrie axiale (réflexion par rapport à une droite). La symétrie axiale n''est pas une homothétie.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Réponse courte — Calcul d'image
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9360000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_homothetie_proprietes',
  'Homothétie — centre, rapport, images et propriétés',
  'Standard',
  'reponse_courte',
  'Une homothétie de centre O et de rapport k = 3 transforme un segment de longueur 4 cm. Quelle est la longueur du segment image ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12 cm","12"]}'::jsonb,
  'Le segment image mesure 12 cm. Dans une homothétie de rapport k, toutes les longueurs sont multipliées par |k|. Ici, |k| = 3, donc la longueur image = 4 × 3 = 12 cm. Propriétés de l''homothétie sur les longueurs : si k > 0, les longueurs sont multipliées par k ; si k < 0, les longueurs sont multipliées par |k| (la valeur absolue). L''homothétie conserve les angles, les parallélismes et les rapports de longueurs, mais pas les longueurs elles-mêmes (sauf si |k| = 1).',
  'Diviser par 3 au lieu de multiplier. |k| > 1 → agrandissement. |k| < 1 → réduction.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Effet sur les aires
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9360000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_homothetie_proprietes',
  'Homothétie — centre, rapport, images et propriétés',
  'Standard',
  'qcm',
  'Un triangle d''aire 8 cm² subit une homothétie de rapport k = 3. Quelle est l''aire du triangle image ?',
  NULL,
  '[{"id":"a","label":"24 cm²"},{"id":"b","label":"72 cm²"},{"id":"c","label":"64 cm²"},{"id":"d","label":"216 cm²"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''aire du triangle image est 72 cm². Dans une homothétie de rapport k, les aires sont multipliées par k². Ici : 8 × 3² = 8 × 9 = 72 cm². C''est une propriété fondamentale : les longueurs sont multipliées par |k|, les aires par k², les volumes par |k|³. Cette règle s''applique à toute figure, pas seulement aux triangles. Moyen mnémotechnique : longueur = dimension 1 → ×k¹ ; aire = dimension 2 → ×k² ; volume = dimension 3 → ×k³.',
  'Multiplier l''aire par 3 (au lieu de 3²). Les aires suivent le carré du rapport, pas le rapport lui-même. C''est le piège le plus fréquent sur l''homothétie au CRPE.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Vrai/Faux — Conservation des angles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9360000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_homothetie_proprietes',
  'Homothétie — centre, rapport, images et propriétés',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : l''homothétie conserve les mesures des angles.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! L''homothétie conserve les angles. Si un triangle a des angles de 30°, 60° et 90°, son image par n''importe quelle homothétie aura les mêmes angles : 30°, 60° et 90°. L''homothétie modifie les dimensions (longueurs, aires, volumes) mais conserve la forme : les figures image et antécédent sont semblables. Les propriétés conservées par l''homothétie sont : les mesures d''angles, les alignements, le parallélisme, les rapports de longueurs et la perpendicularité.',
  'Croire que l''homothétie modifie les angles parce qu''elle change les longueurs. Non : l''homothétie change la taille, pas la forme.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Trouver le rapport
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9360000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_homothetie_proprietes',
  'Homothétie — centre, rapport, images et propriétés',
  'Standard',
  'qcm',
  'Un cercle de rayon 5 cm est transformé par une homothétie en un cercle de rayon 2 cm. Quel est le rapport de l''homothétie (en valeur absolue) ?',
  NULL,
  '[{"id":"a","label":"2/5"},{"id":"b","label":"5/2"},{"id":"c","label":"3"},{"id":"d","label":"2,5"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le rapport est |k| = 2/5. Le rayon est une longueur, donc il est multiplié par |k|. On a : rayon image = |k| × rayon original → 2 = |k| × 5 → |k| = 2/5. Comme |k| = 2/5 < 1, c''est une réduction (la figure image est plus petite que l''original). Le cercle image a un périmètre = (2/5) × périmètre original et une aire = (2/5)² = 4/25 de l''aire originale.',
  'Inverser le rapport (5/2 au lieu de 2/5). Le rapport k se calcule comme : dimension image / dimension originale.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Réponse courte — Effet sur les volumes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9360000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_homothetie_proprietes',
  'Homothétie — centre, rapport, images et propriétés',
  'Standard',
  'reponse_courte',
  'Un cube de volume 27 cm³ subit une homothétie de rapport k = 2. Quel est le volume du cube image (en cm³) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["216","216 cm³"]}'::jsonb,
  'Le volume image est 216 cm³. Les volumes sont multipliés par k³ = 2³ = 8. Donc : 27 × 8 = 216 cm³. Vérification : le cube original a un côté de ∛27 = 3 cm. Le cube image a un côté de 3 × 2 = 6 cm, et son volume est 6³ = 216 cm³ ✓. Récapitulatif des facteurs d''agrandissement : longueur → ×|k| ; aire → ×k² ; volume → ×|k|³. Ces règles sont identiques pour l''agrandissement-réduction et l''homothétie.',
  'Multiplier par k² (= 4) au lieu de k³ (= 8). Le volume est de dimension 3, donc le facteur est k³.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Image d'une droite
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9360000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_homothetie_proprietes',
  'Homothétie — centre, rapport, images et propriétés',
  'Standard',
  'qcm',
  'Quelle est l''image d''une droite (d) par une homothétie de centre O (O ∉ d) ?',
  NULL,
  '[{"id":"a","label":"Une droite parallèle à (d)"},{"id":"b","label":"Une droite perpendiculaire à (d)"},{"id":"c","label":"La même droite (d)"},{"id":"d","label":"Un cercle"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''image d''une droite (d) par une homothétie est une droite parallèle à (d) (quand le centre O n''est pas sur (d)). L''homothétie conserve le parallélisme et les directions. Cas particulier : si O ∈ (d), alors l''image de (d) est (d) elle-même (la droite est globalement invariante, même si chaque point se déplace). De même, l''image d''un segment est un segment parallèle, l''image d''un cercle est un cercle, l''image d''un triangle est un triangle semblable.',
  'Croire que l''image pourrait être perpendiculaire ou confondue. Si O ∉ (d), l''image est toujours PARALLÈLE (et distincte).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Point invariant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9360000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_homothetie_proprietes',
  'Homothétie — centre, rapport, images et propriétés',
  'Standard',
  'qcm',
  'Quel est le seul point invariant d''une homothétie de rapport k ≠ 1 ?',
  NULL,
  '[{"id":"a","label":"Le centre de l''homothétie"},{"id":"b","label":"Tout point de la figure"},{"id":"c","label":"Le milieu de la figure"},{"id":"d","label":"Il n''y a aucun point invariant"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le centre O est le seul point invariant (point fixe) d''une homothétie de rapport k ≠ 1. En effet, si M = O, alors OM'' = k × OM = k × 0 = 0, donc M'' = O = M. Pour tout autre point M ≠ O, OM'' = k × OM ≠ OM (car k ≠ 1), donc M'' ≠ M. Le centre est le « pivot » de la transformation : tous les points s''éloignent ou se rapprochent de lui selon le rapport k, sauf lui-même qui reste fixe.',
  'Croire que plusieurs points sont invariants. Seul le centre est invariant (sauf pour k = 1, où tous les points le sont).',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Homothétie et figures semblables
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9360000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_homothetie_proprietes',
  'Homothétie — centre, rapport, images et propriétés',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : deux figures liées par une homothétie sont toujours semblables (même forme, dimensions proportionnelles).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai ! L''homothétie produit toujours des figures semblables. La figure image a la même forme que l''original (mêmes angles, mêmes proportions), mais des dimensions différentes (multipliées par |k|). Deux figures sont semblables si l''une est l''image de l''autre par une similitude (composition d''une isométrie et d''une homothétie). L''homothétie seule suffit quand les figures ont la même orientation. Le lien avec le théorème de Thalès est direct : la configuration de Thalès est exactement une situation d''homothétie.',
  'Confondre figures semblables et figures isométriques (superposables). Semblable = même forme, pas nécessairement même taille. Isométrique = même forme ET même taille.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
