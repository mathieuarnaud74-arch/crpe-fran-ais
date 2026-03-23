-- Seed: Grandeurs proportionnelles — Représentation graphique (7 exercices)
-- Subdomain: grandeurs_mesures | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa090000-0000-0000-0000-000000000001',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_proportionnelles_graphique',
  'Grandeurs proportionnelles — Représentation graphique', 'Intermediaire',
  'vrai_faux',
  'Le graphique d''une situation de proportionnalité est toujours une droite passant par l''origine. Vrai ou faux ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est une propriété fondamentale : si deux grandeurs sont proportionnelles, alors leur représentation graphique est une droite passant par l''origine du repère (le point O de coordonnées (0 ; 0)). Cela traduit le fait que si l''une des grandeurs est nulle, l''autre l''est aussi, et que le rapport entre les deux grandeurs est constant.',
  'Erreur fréquente : penser qu''une droite quelconque (même ne passant pas par l''origine) suffit pour caractériser une situation de proportionnalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa090000-0000-0000-0000-000000000002',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_proportionnelles_graphique',
  'Grandeurs proportionnelles — Représentation graphique', 'Intermediaire',
  'qcm',
  'Parmi les graphiques suivants, lequel représente une situation de proportionnalité ? (A) Une droite passant par l''origine. (B) Une droite ne passant pas par l''origine. (C) Une courbe passant par l''origine. (D) Un nuage de points alignés ne passant pas par l''origine.',
  NULL,
  '[{"id":"a","label":"(A) Une droite passant par l''origine"},{"id":"b","label":"(B) Une droite ne passant pas par l''origine"},{"id":"c","label":"(C) Une courbe passant par l''origine"},{"id":"d","label":"(D) Un nuage de points alignés ne passant pas par l''origine"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Seule une droite passant par l''origine caractérise une situation de proportionnalité. Une droite ne passant pas par l''origine traduit une fonction affine (de type y = ax + b avec b ≠ 0). Une courbe passant par l''origine peut correspondre à d''autres relations (y = x², par exemple).',
  'Erreur fréquente : choisir la réponse (B) en pensant que toute droite traduit la proportionnalité, sans vérifier le passage par l''origine.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa090000-0000-0000-0000-000000000003',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_proportionnelles_graphique',
  'Grandeurs proportionnelles — Représentation graphique', 'Intermediaire',
  'qcm',
  'Sur un graphique de proportionnalité, on lit que 4 kg de pommes coûtent 6 €. Combien coûtent 10 kg de pommes ?',
  NULL,
  '[{"id":"a","label":"12 €"},{"id":"b","label":"15 €"},{"id":"c","label":"16 €"},{"id":"d","label":"10 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le coefficient de proportionnalité est : 6 ÷ 4 = 1,5 €/kg. Pour 10 kg : 10 × 1,5 = 15 €. On peut aussi utiliser la propriété de linéarité : 10 kg = 2 × 4 kg + 2 kg, donc le prix est 2 × 6 + 3 = 15 €.',
  'Erreur fréquente : additionner 6 + 10 = 16, ou appliquer un mauvais coefficient de proportionnalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa090000-0000-0000-0000-000000000004',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_proportionnelles_graphique',
  'Grandeurs proportionnelles — Représentation graphique', 'Intermediaire',
  'reponse_courte',
  'Un graphique représente la relation entre la distance parcourue (en km) et le temps (en heures) d''un cycliste roulant à vitesse constante. La droite passe par l''origine et par le point (2 ; 30). Quel est le coefficient de proportionnalité (en km/h) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["15","15 km/h","15km/h"]}'::jsonb,
  'Le coefficient de proportionnalité correspond à la vitesse. Il se calcule en divisant la distance par le temps : 30 ÷ 2 = 15 km/h. Ce coefficient est constant pour tous les points de la droite.',
  'Erreur fréquente : inverser le calcul (2 ÷ 30) ou confondre le coefficient avec les coordonnées d''un point.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa090000-0000-0000-0000-000000000005',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_proportionnelles_graphique',
  'Grandeurs proportionnelles — Représentation graphique', 'Intermediaire',
  'qcm',
  'On observe deux graphiques. Le graphique (1) est une droite passant par l''origine et le point (3 ; 9). Le graphique (2) est une droite passant par les points (0 ; 2) et (3 ; 8). Lequel représente une situation de proportionnalité ?',
  NULL,
  '[{"id":"a","label":"Le graphique (1) uniquement"},{"id":"b","label":"Le graphique (2) uniquement"},{"id":"c","label":"Les deux graphiques"},{"id":"d","label":"Aucun des deux"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le graphique (1) est une droite passant par l''origine : il représente la proportionnalité y = 3x. Le graphique (2) ne passe pas par l''origine (il coupe l''axe des ordonnées en y = 2) : il représente une fonction affine y = 2x + 2, qui n''est pas une situation de proportionnalité.',
  'Erreur fréquente : penser que toute droite traduit une proportionnalité, en confondant fonction linéaire et fonction affine.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa090000-0000-0000-0000-000000000006',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_proportionnelles_graphique',
  'Grandeurs proportionnelles — Représentation graphique', 'Intermediaire',
  'vrai_faux',
  'La représentation graphique d''une situation de proportionnalité inverse (par exemple y = 12/x) est une hyperbole, pas une droite. Vrai ou faux ?',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai. Lorsque deux grandeurs sont inversement proportionnelles (leur produit est constant : x × y = k), la représentation graphique est une hyperbole. Par exemple, si y = 12/x, les points (1 ; 12), (2 ; 6), (3 ; 4), (4 ; 3) dessinent une courbe qui s''approche des axes sans jamais les toucher. Il ne faut pas confondre proportionnalité (droite par l''origine) et proportionnalité inverse (hyperbole).',
  'Erreur fréquente : penser que la proportionnalité inverse se représente aussi par une droite, ou confondre proportionnalité et proportionnalité inverse.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa090000-0000-0000-0000-000000000007',
  'Mathematiques', 'grandeurs_mesures', 'math_grandeurs_proportionnelles_graphique',
  'Grandeurs proportionnelles — Représentation graphique', 'Intermediaire',
  'qcm',
  'Le graphique de consommation d''essence d''une voiture est une droite passant par l''origine et par le point (100 ; 7). Quelle est la consommation pour un trajet de 350 km ?',
  NULL,
  '[{"id":"a","label":"21 L"},{"id":"b","label":"24,5 L"},{"id":"c","label":"28 L"},{"id":"d","label":"35 L"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le coefficient de proportionnalité est : 7 ÷ 100 = 0,07 L/km. Pour 350 km : 350 × 0,07 = 24,5 L. On peut aussi raisonner : 350 = 3 × 100 + 50, donc la consommation est 3 × 7 + 3,5 = 24,5 L.',
  'Erreur fréquente : multiplier 7 × 3 = 21 en oubliant les 50 km restants, ou mal calculer le coefficient de proportionnalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
