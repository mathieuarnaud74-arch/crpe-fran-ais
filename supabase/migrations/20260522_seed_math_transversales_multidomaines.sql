-- Migration: seed exercices Mathématiques — Problèmes transversaux — Multi-domaines
-- 7 exercices, niveau Avancé, accès premium
-- Sous-domaine principal : nombres_calcul (problèmes croisant plusieurs domaines)

-- Q1 (QCM) — Proportionnalité + Géométrie — Amorce
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0130000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_transversales_multidomaines',
  'Problèmes transversaux — Multi-domaines', 'Avance', 'qcm',
  'Une carte à l''échelle 1/25 000 montre un lac rectangulaire mesurant 4 cm × 3 cm. Quelle est l''aire réelle du lac en hectares ?', NULL,
  '[{"id":"a","label":"12 ha"},{"id":"b","label":"75 ha"},{"id":"c","label":"7 500 ha"},{"id":"d","label":"30 ha"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'L''échelle 1/25 000 signifie que 1 cm sur la carte représente 25 000 cm en réalité, soit 250 m. La longueur réelle du lac est donc 4 × 250 = 1 000 m = 1 km. La largeur réelle est 3 × 250 = 750 m = 0,75 km. L''aire réelle vaut 1 000 × 750 = 750 000 m². Or 1 hectare = 10 000 m², donc 750 000 ÷ 10 000 = 75 ha. Attention : avec une échelle, les distances sont multipliées par le facteur d''échelle, mais les aires sont multipliées par le carré de ce facteur (25 000² = 625 000 000). Aire sur la carte : 12 cm² × 625 000 000 = 7 500 000 000 cm² = 750 000 m² = 75 ha.',
  'Erreur fréquente : multiplier l''aire sur la carte par le facteur d''échelle au lieu de son carré (12 × 25 000 = 300 000 cm² = 30 m², résultat incohérent), ou oublier la conversion en hectares.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 (Vrai/Faux) — Calcul + Mesures — Amorce
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0130000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_transversales_multidomaines',
  'Problèmes transversaux — Multi-domaines', 'Avance', 'vrai_faux',
  'Pour peindre un mur circulaire (tour cylindrique) de 3 m de rayon sur 2,5 m de haut, il faut la même quantité de peinture que pour un mur rectangulaire de 18,85 m × 2,5 m.', NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'La surface latérale d''un cylindre de rayon r et de hauteur h est donnée par la formule S = 2πr × h. Ici, le périmètre du cercle (la base de la tour) est 2π × 3 = 6π ≈ 18,85 m. La surface du mur circulaire est donc 18,85 × 2,5 = 47,125 m². La surface du mur rectangulaire est également 18,85 × 2,5 = 47,125 m². Les deux surfaces étant égales, il faut la même quantité de peinture. Ce problème illustre le lien entre le développement d''une surface cylindrique et un rectangle.',
  'Erreur fréquente : confondre la surface latérale du cylindre (2πrh) avec l''aire du disque (πr²), ou oublier que le mur circulaire correspond au périmètre du cercle et non à son diamètre.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 (Réponse courte) — Fractions + Géométrie — Consolidation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0130000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_transversales_multidomaines',
  'Problèmes transversaux — Multi-domaines', 'Avance', 'reponse_courte',
  'Un terrain triangulaire a une base de 3/4 km et une hauteur de 2/5 km. Quelle est son aire en m² ? Donner la réponse sous forme d''un nombre entier.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["150000","150 000","150000 m²","150 000 m²"]}'::jsonb,
  'L''aire d''un triangle est donnée par la formule A = (base × hauteur) / 2. Convertissons d''abord les mesures en mètres : base = 3/4 km = 0,75 km = 750 m ; hauteur = 2/5 km = 0,4 km = 400 m. Aire = (750 × 400) / 2 = 300 000 / 2 = 150 000 m². On peut aussi calculer en km² : A = (3/4 × 2/5) / 2 = (6/20) / 2 = 6/40 = 3/20 km². Puis convertir : 3/20 × 1 000 000 = 150 000 m². Les deux méthodes donnent bien le même résultat.',
  'Erreur fréquente : oublier de diviser par 2 dans la formule de l''aire du triangle (obtenir 300 000 m²), ou se tromper dans la conversion km → m (1 km = 1 000 m, donc 1 km² = 1 000 000 m²).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 (QCM) — Statistiques + Proportionnalité — Consolidation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0130000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_transversales_multidomaines',
  'Problèmes transversaux — Multi-domaines', 'Avance', 'qcm',
  'Dans une école de 300 élèves, 45 % pratiquent un sport. Parmi les sportifs, 2/3 font un sport collectif. Combien d''élèves font un sport individuel ?', NULL,
  '[{"id":"a","label":"45"},{"id":"b","label":"90"},{"id":"c","label":"135"},{"id":"d","label":"60"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Étape 1 : Calculer le nombre de sportifs. 45 % de 300 = 300 × 45/100 = 135 élèves pratiquent un sport. Étape 2 : Calculer le nombre de sportifs en sport collectif. 2/3 de 135 = 135 × 2/3 = 90 élèves font un sport collectif. Étape 3 : En déduire le nombre de sportifs en sport individuel. 135 − 90 = 45 élèves font un sport individuel. Ce problème combine le calcul de pourcentages (proportionnalité) et la lecture de données statistiques (répartition d''un effectif en sous-groupes).',
  'Erreur fréquente : calculer 2/3 de 300 au lieu de 2/3 des sportifs (obtenir 200 au lieu de 90), ou confondre la part des sportifs collectifs avec celle des sportifs individuels.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 (Réponse courte) — Grandeurs + Calcul — Consolidation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0130000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_transversales_multidomaines',
  'Problèmes transversaux — Multi-domaines', 'Avance', 'reponse_courte',
  'Un aquarium cylindrique a un diamètre de 40 cm et une hauteur de 50 cm. On le remplit aux 3/4. Combien de litres d''eau contient-il ? Arrondir à l''unité.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["47","47 L","47 l","47 litres"]}'::jsonb,
  'Le volume d''un cylindre est V = π × r² × h. Le rayon est la moitié du diamètre : r = 40/2 = 20 cm. Volume total : V = π × 20² × 50 = π × 400 × 50 = 20 000π ≈ 62 831,85 cm³. On remplit aux 3/4 : 62 831,85 × 3/4 = 47 123,89 cm³. Conversion en litres : 1 L = 1 000 cm³ (= 1 dm³), donc 47 123,89 ÷ 1 000 ≈ 47,12 L. Arrondi à l''unité : 47 L. Ce problème mobilise la géométrie des solides (volume du cylindre), le calcul avec π, les fractions et la conversion d''unités de contenance.',
  'Erreur fréquente : utiliser le diamètre au lieu du rayon dans la formule (obtenir un volume 4 fois trop grand), ou se tromper dans la conversion cm³ → litres (1 L = 1 000 cm³ et non 100 cm³).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 (QCM) — Géométrie + Mesures + Proportionnalité — Approfondissement
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0130000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_transversales_multidomaines',
  'Problèmes transversaux — Multi-domaines', 'Avance', 'qcm',
  'Un jardinier veut entourer une parcelle en forme de trapèze (grande base 12 m, petite base 8 m, côtés obliques de 5 m chacun) d''une clôture coûtant 15 €/m. Il veut aussi semer du gazon à 3 €/m² sur toute la parcelle (hauteur du trapèze : 4 m). Quel est le coût total ?', NULL,
  '[{"id":"a","label":"450 €"},{"id":"b","label":"570 €"},{"id":"c","label":"690 €"},{"id":"d","label":"480 €"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Étape 1 : Calculer le périmètre du trapèze pour la clôture. P = 12 + 8 + 5 + 5 = 30 m. Coût de la clôture : 30 × 15 = 450 €. Étape 2 : Calculer l''aire du trapèze pour le gazon. A = (grande base + petite base) × hauteur / 2 = (12 + 8) × 4 / 2 = 20 × 4 / 2 = 40 m². Coût du gazon : 40 × 3 = 120 €. Étape 3 : Coût total = 450 + 120 = 570 €. Ce problème combine le calcul du périmètre (pour la clôture) et de l''aire (pour le gazon) d''un trapèze, ainsi que la proportionnalité (prix unitaire × quantité).',
  'Erreur fréquente : oublier de diviser par 2 dans la formule de l''aire du trapèze (obtenir 80 m² au lieu de 40 m², soit un coût total de 690 €), ou ne calculer que le coût de la clôture sans le gazon (450 €).',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 (Réponse courte) — Probabilités + Calcul + Analyse — Approfondissement
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0130000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_transversales_multidomaines',
  'Problèmes transversaux — Multi-domaines', 'Avance', 'reponse_courte',
  'Une classe de 28 élèves passe un contrôle noté sur 20. La répartition est la suivante : 8 élèves ont entre 0 et 9, 12 élèves entre 10 et 14, 8 élèves entre 15 et 20. La moyenne de la classe est 12,5. Si on retire les 8 élèves ayant moins de 10 (dont la moyenne de groupe est 6), quelle est la nouvelle moyenne de la classe ? Donner la réponse avec une décimale.', NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["15,1","15.1"]}'::jsonb,
  'Étape 1 : Calculer le total des points de toute la classe. Total = effectif × moyenne = 28 × 12,5 = 350 points. Étape 2 : Calculer le total des points du groupe retiré. Total retiré = 8 × 6 = 48 points. Étape 3 : Calculer le total des points restants. Total restant = 350 − 48 = 302 points. Étape 4 : Calculer le nouvel effectif. Effectif restant = 28 − 8 = 20 élèves. Étape 5 : Calculer la nouvelle moyenne. Nouvelle moyenne = 302 / 20 = 15,1. Ce problème mobilise les statistiques (moyenne pondérée, manipulation d''effectifs et de totaux) et le calcul (opérations sur les décimaux). Il illustre l''effet du retrait d''un sous-groupe sur la moyenne d''un ensemble.',
  'Erreur fréquente : soustraire directement la moyenne du sous-groupe de la moyenne générale (12,5 − 6 = 6,5, ce qui est faux), au lieu de raisonner sur les totaux de points. La moyenne n''est pas une grandeur additive.',
  'valide', 'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
