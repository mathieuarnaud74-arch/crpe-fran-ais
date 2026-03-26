-- Migration: 10 exercices — Calcul de volumes en contexte pratique
-- Série : math_volumes_problemes_pratiques (Mathématiques, grandeurs_mesures)
-- Pavé droit, cylindre, pyramide, cône, sphère — problèmes en contexte réel
-- UUID prefix: c0310000

-- Q1 — QCM — Volume d'un aquarium (pavé droit)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c0310000-0000-0000-0000-000000000001',
  'Mathematiques',
  'grandeurs_mesures',
  'math_volumes_problemes_pratiques',
  'Calcul de volumes en contexte pratique',
  'Standard',
  'qcm',
  'Un aquarium en forme de pavé droit mesure 60 cm de long, 30 cm de large et 40 cm de haut. Quel est son volume en litres ?',
  NULL,
  '[{"id":"a","label":"72 L"},{"id":"b","label":"720 L"},{"id":"c","label":"7,2 L"},{"id":"d","label":"7 200 L"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Formule du pavé droit : V = L × l × h. Calcul : V = 60 × 30 × 40 = 72 000 cm³. Conversion en litres : 1 L = 1 dm³ = 1 000 cm³, donc 72 000 cm³ ÷ 1 000 = 72 L. L''aquarium peut contenir 72 litres d''eau au maximum.',
  'Oublier la conversion cm³ → litres et répondre 72 000 L, ou diviser par 100 au lieu de 1 000 et obtenir 720 L.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Volume d'un cube de côté 5 cm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c0310000-0000-0000-0000-000000000002',
  'Mathematiques',
  'grandeurs_mesures',
  'math_volumes_problemes_pratiques',
  'Calcul de volumes en contexte pratique',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : le volume d''un cube de côté 5 cm est 125 cm³.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Le cube est un cas particulier du pavé droit où toutes les arêtes sont égales. Sa formule de volume est V = c³, où c est la longueur du côté. Ici : V = 5³ = 5 × 5 × 5 = 125 cm³. On peut aussi écrire : V = c × c × c = 25 × 5 = 125 cm³.',
  'Confondre c³ avec 3c et calculer 3 × 5 = 15 cm³, ou calculer c² = 25 cm³ en oubliant de multiplier une troisième fois.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Volume d'une boîte de conserve (cylindre)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c0310000-0000-0000-0000-000000000003',
  'Mathematiques',
  'grandeurs_mesures',
  'math_volumes_problemes_pratiques',
  'Calcul de volumes en contexte pratique',
  'Standard',
  'qcm',
  'Une boîte de conserve cylindrique a un rayon de 4 cm et une hauteur de 11 cm. Quel est son volume exact ?',
  NULL,
  '[{"id":"a","label":"44π cm³"},{"id":"b","label":"176π cm³"},{"id":"c","label":"88π cm³"},{"id":"d","label":"352π cm³"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Formule du volume d''un cylindre : V = π × r² × h. Calcul : r² = 4² = 16, donc V = π × 16 × 11 = 176π cm³. En valeur approchée : 176 × 3,14159 ≈ 552,9 cm³. L''option a (44π) correspond à πrh (oubli du carré), l''option c (88π) à la moitié du résultat correct, et l''option d (352π) au double.',
  'Oublier d''élever le rayon au carré et calculer π × 4 × 11 = 44π cm³ au lieu de π × 16 × 11 = 176π cm³.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Réponse courte — Volume d'une piscine rectangulaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c0310000-0000-0000-0000-000000000004',
  'Mathematiques',
  'grandeurs_mesures',
  'math_volumes_problemes_pratiques',
  'Calcul de volumes en contexte pratique',
  'Standard',
  'reponse_courte',
  'Une piscine rectangulaire mesure 25 m de long, 10 m de large et 1,5 m de profondeur. Combien de mètres cubes d''eau sont nécessaires pour la remplir entièrement ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["375","375 m³","375m³"]}'::jsonb,
  'Formule du pavé droit (piscine rectangulaire) : V = L × l × h. Calcul : V = 25 × 10 × 1,5 = 250 × 1,5 = 375 m³. On peut aussi procéder par étapes : aire de la base = 25 × 10 = 250 m², puis V = aire × profondeur = 250 × 1,5 = 375 m³. Ce volume correspond à 375 000 litres.',
  'Multiplier uniquement deux dimensions sur trois, ou oublier de convertir les unités si elles n''étaient pas homogènes.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Vrai/Faux — Doubler le côté d'un cube double-t-il le volume ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c0310000-0000-0000-0000-000000000005',
  'Mathematiques',
  'grandeurs_mesures',
  'math_volumes_problemes_pratiques',
  'Calcul de volumes en contexte pratique',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : pour doubler le volume d''un cube, il suffit de doubler la longueur de son côté.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux. Si le côté d''un cube est multiplié par 2, son volume est multiplié par 2³ = 8, et non par 2. Démonstration : cube initial de côté a → V = a³. Cube avec côté doublé → V = (2a)³ = 8a³. Le volume est donc multiplié par 8. Pour doubler le volume, il faudrait multiplier le côté par ∛2 ≈ 1,26. Ce résultat illustre la règle générale : lorsqu''on multiplie toutes les dimensions d''un solide par un facteur k, son volume est multiplié par k³.',
  'Penser que doubler une dimension double le volume, en confondant relation linéaire et relation cubique. Le volume est proportionnel au cube des dimensions linéaires.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Volume d'une pyramide à base carrée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c0310000-0000-0000-0000-000000000006',
  'Mathematiques',
  'grandeurs_mesures',
  'math_volumes_problemes_pratiques',
  'Calcul de volumes en contexte pratique',
  'Standard',
  'qcm',
  'Une pyramide à base carrée a une base de 6 cm de côté et une hauteur de 9 cm. Quel est son volume ?',
  NULL,
  '[{"id":"a","label":"324 cm³"},{"id":"b","label":"162 cm³"},{"id":"c","label":"108 cm³"},{"id":"d","label":"54 cm³"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Formule du volume d''une pyramide : V = (1/3) × Aire de la base × hauteur. Aire de la base carrée : B = 6 × 6 = 36 cm². Calcul : V = (1/3) × 36 × 9 = (1/3) × 324 = 108 cm³. L''option a (324 cm³) correspond à B × h sans diviser par 3 — erreur classique d''oubli du coefficient 1/3. L''option b (162 cm³) correspond à (1/2) × B × h.',
  'Oublier de multiplier par 1/3 dans la formule de la pyramide et calculer V = B × h = 36 × 9 = 324 cm³ au lieu de 108 cm³.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Réponse courte — Côté d'un prisme à base carrée de même volume qu'un cylindre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c0310000-0000-0000-0000-000000000007',
  'Mathematiques',
  'grandeurs_mesures',
  'math_volumes_problemes_pratiques',
  'Calcul de volumes en contexte pratique',
  'Standard',
  'reponse_courte',
  'Un cylindre et un prisme droit à base carrée ont tous les deux une hauteur de 10 cm. Le cylindre a un rayon de 3 cm (on prendra π ≈ 3,14). Quelle doit être la longueur du côté du carré pour que les deux solides aient le même volume ? Donner la réponse arrondie au centième.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5,31","5,31 cm","5.31","5.31 cm"]}'::jsonb,
  'Volume du cylindre : V = π × r² × h = π × 9 × 10 = 90π cm³. Pour le prisme à base carrée de côté c et de hauteur 10 cm : V = c² × 10. On pose l''égalité : c² × 10 = 90π, donc c² = 9π. Avec π ≈ 3,14 : c² = 9 × 3,14 = 28,26, donc c = √28,26 ≈ 5,3159 ≈ 5,31 cm. Un côté d''environ 5,31 cm donne au prisme le même volume qu''au cylindre.',
  'Oublier d''extraire la racine carrée et répondre 28,26 cm (qui est c² et non c), ou utiliser π = 3 et obtenir c = √27 ≈ 5,20 cm.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Volume exact d'un cône (cornet de glace)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c0310000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_volumes_problemes_pratiques',
  'Calcul de volumes en contexte pratique',
  'Standard',
  'qcm',
  'Un cornet de glace a la forme d''un cône de rayon 5 cm et de hauteur 12 cm. Quel est son volume exact ?',
  NULL,
  '[{"id":"a","label":"300π cm³"},{"id":"b","label":"100π cm³"},{"id":"c","label":"200π cm³"},{"id":"d","label":"50π cm³"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Formule du volume d''un cône : V = (1/3) × π × r² × h. Calcul : r² = 5² = 25, donc V = (1/3) × π × 25 × 12 = (1/3) × 300π = 100π cm³. En valeur approchée : 100 × 3,14159 ≈ 314,2 cm³. L''option a (300π) correspond à l''oubli du facteur 1/3. L''option c (200π) résulte d''une erreur de calcul intermédiaire.',
  'Oublier le facteur 1/3 propre à la formule du cône (et de la pyramide) et calculer V = π × 25 × 12 = 300π cm³ au lieu de 100π cm³.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Vrai/Faux — Volume d'une sphère de rayon 3 cm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c0310000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_volumes_problemes_pratiques',
  'Calcul de volumes en contexte pratique',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : le volume d''une sphère de rayon 3 cm est égal à 36π cm³.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Vrai. Formule du volume d''une sphère : V = (4/3) × π × r³. Avec r = 3 cm : r³ = 3³ = 27, donc V = (4/3) × π × 27 = (4 × 27) / 3 × π = 108/3 × π = 36π cm³. En valeur approchée : 36 × 3,14159 ≈ 113,1 cm³.',
  'Confondre r³ avec r² (formule de l''aire du disque) et calculer (4/3) × π × 9 = 12π cm³, ou oublier le coefficient 4/3 et calculer π × 27 = 27π cm³.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Réponse courte — Combien de balles sphériques rentrent dans un cylindre (par les volumes)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'c0310000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_volumes_problemes_pratiques',
  'Calcul de volumes en contexte pratique',
  'Standard',
  'reponse_courte',
  'On remplit une boîte cylindrique (rayon 5 cm, hauteur 20 cm) avec des balles sphériques de rayon 5 cm. En utilisant uniquement les formules de volume (sans tenir compte des espaces vides entre les balles), combien de balles entières peut-on y faire rentrer ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3","3 balles"]}'::jsonb,
  'Volume de la boîte cylindrique : V_cylindre = π × r² × h = π × 5² × 20 = π × 25 × 20 = 500π cm³. Volume d''une balle sphérique : V_sphère = (4/3) × π × r³ = (4/3) × π × 5³ = (4/3) × π × 125 = 500π/3 cm³. Nombre de balles = V_cylindre ÷ V_sphère = 500π ÷ (500π/3) = 500π × 3/(500π) = 3. On peut faire rentrer 3 balles selon le calcul par les volumes.',
  'Confondre rayon et diamètre et prendre r = 10 cm pour la sphère, ou diviser les hauteurs (20 cm ÷ 10 cm = 2 balles) sans tenir compte du volume de la sphère.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
