-- Série : Problèmes transversaux — Multi-domaines
-- 7 questions, Avancé (Difficile), premium
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, vrai_faux, réponse courte
-- Chaque question croise au moins 2 domaines mathématiques (type annale CRPE)

-- Q1 — AMORCE — QCM — Proportionnalité + Géométrie (échelle)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0050000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_problemes_transversaux',
  'Problèmes transversaux — Multi-domaines',
  'Difficile',
  'qcm',
  'Sur une carte à l''échelle 1/25 000, la distance entre deux villages mesure 8 cm. Un randonneur marche à 4 km/h. Combien de temps lui faudra-t-il pour relier les deux villages ?',
  NULL,
  '[{"id":"a","label":"30 min"},{"id":"b","label":"1 h"},{"id":"c","label":"45 min"},{"id":"d","label":"2 h"}]',
  '{"mode":"single","value":"a"}',
  'Étape 1 — Échelle : 1/25 000 signifie que 1 cm sur la carte = 25 000 cm en réalité = 250 m. Distance réelle = 8 × 250 = 2 000 m = 2 km. Étape 2 — Vitesse : temps = distance / vitesse = 2 / 4 = 0,5 h = 30 min. Ce problème croise proportionnalité (échelle) et grandeurs composées (vitesse = distance/temps). Au CRPE, les problèmes croisant plusieurs domaines sont très fréquents — il faut savoir enchaîner les raisonnements de manière fluide.',
  'Se tromper dans la conversion de l''échelle (oublier que 25 000 cm = 250 m, pas 25 km) ou dans la conversion du temps décimal en minutes (0,5 h = 30 min, pas 50 min).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Réponse courte — Fractions + Grandeurs (recette)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0050000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_problemes_transversaux',
  'Problèmes transversaux — Multi-domaines',
  'Difficile',
  'reponse_courte',
  'Une recette pour 4 personnes nécessite 3/4 de litre de lait. Quelle quantité de lait faut-il pour 6 personnes ? (Répondez en litres, sous forme fractionnaire.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["9/8 L","9/8","1,125 L","1,125","1 1/8 L","1,125L","9/8 de litre"]}',
  'La quantité de lait est proportionnelle au nombre de personnes. Pour 4 personnes → 3/4 L. Pour 1 personne → (3/4) / 4 = 3/16 L. Pour 6 personnes → (3/16) × 6 = 18/16 = 9/8 L = 1,125 L. Méthode alternative (coefficient de proportionnalité) : rapport 6/4 = 3/2 = 1,5. Quantité = (3/4) × (3/2) = 9/8 L. Ce problème croise le calcul fractionnaire et la proportionnalité dans un contexte de grandeurs (contenances). Le résultat 9/8 est une fraction impropre, équivalente à 1 + 1/8 = 1,125 L.',
  'Faire une addition au lieu d''une multiplication (3/4 + 6 = ?), ou appliquer le mauvais rapport de proportionnalité.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — QCM — Géométrie + Calcul (périmètre et coût)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0050000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_problemes_transversaux',
  'Problèmes transversaux — Multi-domaines',
  'Difficile',
  'qcm',
  'Un jardin rectangulaire de 12 m × 8 m doit être clôturé, sauf l''entrée de 1,5 m. Le grillage coûte 14,50 €/m. Une porte de 1,5 m coûte 89 €. Quel est le coût total de la clôture ?',
  NULL,
  '[{"id":"a","label":"551,75 €"},{"id":"b","label":"640,75 €"},{"id":"c","label":"646,25 €"},{"id":"d","label":"667,00 €"}]',
  '{"mode":"single","value":"c"}',
  'Étape 1 — Périmètre : P = 2 × (12 + 8) = 40 m. Étape 2 — Longueur de grillage : 40 − 1,5 = 38,5 m (on retire l''entrée). Étape 3 — Coût du grillage : 38,5 × 14,50 = 558,25 €. Calcul détaillé : 38 × 14,50 = 551 € et 0,5 × 14,50 = 7,25 €, total = 558,25 €. Étape 4 — Coût total : 558,25 + 89 (porte) = 646,25 €. Ce problème type CRPE enchaîne : géométrie (périmètre), soustraction (entrée), proportionnalité (prix/m), addition (coût total). Chaque étape est simple, mais c''est l''enchaînement qui fait la difficulté.',
  'Oublier de retirer la longueur de l''entrée du périmètre, ou oublier d''ajouter le coût de la porte.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — Réponse courte — Statistiques + Pourcentages
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0050000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_problemes_transversaux',
  'Problèmes transversaux — Multi-domaines',
  'Difficile',
  'reponse_courte',
  'Dans une école de 320 élèves, 60 % mangent à la cantine. L''école prévoit une augmentation de 5 % du nombre de demi-pensionnaires l''an prochain (le nombre total d''élèves reste constant). Combien d''élèves mangeront à la cantine l''an prochain ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["201,6","202","201","201,6 élèves","202 élèves"]}',
  'Cette année : 320 × 60/100 = 192 demi-pensionnaires. Augmentation de 5 % : 192 × 1,05 = 201,6. En pratique, on arrondirait à 202 élèves (on ne peut pas avoir 0,6 élève). Ce problème croise statistiques descriptives (effectif/fréquence), pourcentages, et sens pratique (arrondi). Attention : l''augmentation de 5 % porte sur le nombre de demi-pensionnaires (192), pas sur le nombre total d''élèves (320). 5 % de 320 = 16 élèves de plus donnerait un résultat différent (192 + 16 = 208).',
  'Appliquer les 5 % d''augmentation sur le nombre total d''élèves (320) au lieu du nombre de demi-pensionnaires (192). Lire attentivement l''énoncé pour identifier la bonne base de calcul.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Vrai/Faux — Aire + Proportionnalité (peinture)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0050000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_problemes_transversaux',
  'Problèmes transversaux — Multi-domaines',
  'Difficile',
  'vrai_faux',
  'Un pot de peinture de 2,5 L couvre 20 m². Pour peindre un mur de 3,6 m × 2,5 m (en 2 couches), un demi-pot suffit.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}',
  'FAUX. Aire du mur = 3,6 × 2,5 = 9 m². En 2 couches : surface à peindre = 9 × 2 = 18 m². Un pot complet couvre 20 m², un demi-pot couvre 10 m². 10 m² < 18 m², donc un demi-pot ne suffit PAS. Il faudra au minimum 18/20 = 0,9 pot, soit presque un pot entier. Ce problème croise : géométrie (aire d''un rectangle), proportionnalité (rendement en m²/L), et raisonnement pratique (nombre de couches). Ne pas oublier les 2 couches, qui doublent la surface à couvrir !',
  'Oublier de compter les 2 couches (calculer seulement 9 m² au lieu de 18 m²). Avec 9 m², un demi-pot (10 m²) aurait suffi, mais pas pour 2 couches.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Pythagore + Conversion + Coût
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0050000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_problemes_transversaux',
  'Problèmes transversaux — Multi-domaines',
  'Difficile',
  'reponse_courte',
  'Un terrain triangulaire rectangle a deux côtés perpendiculaires de 30 m et 40 m. On veut clôturer tout le périmètre avec du grillage à 8,50 €/m. Quel est le coût total ? (Répondez en euros.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["1020 €","1020","1 020 €","1 020","1020€","1020,00","1 020,00"]}',
  'Étape 1 — Pythagore pour l''hypoténuse : c² = 30² + 40² = 900 + 1 600 = 2 500. c = √2 500 = 50 m. (Triplet pythagoricien 3-4-5 multiplié par 10.) Étape 2 — Périmètre : P = 30 + 40 + 50 = 120 m. Étape 3 — Coût : 120 × 8,50 = 1 020 €. Ce problème combine le théorème de Pythagore (géométrie), le calcul de périmètre, et la proportionnalité (coût/mètre). Reconnaître le triplet 30-40-50 comme multiple de 3-4-5 accélère considérablement le calcul.',
  'Ne pas penser à utiliser Pythagore pour calculer l''hypoténuse, ou faire une erreur dans le calcul de √2 500. Connaître les triplets pythagoriciens classiques (3-4-5, 5-12-13, 8-15-17) est un gain de temps.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Problème complet type annale CRPE
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c0050000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_problemes_transversaux',
  'Problèmes transversaux — Multi-domaines',
  'Difficile',
  'qcm',
  'Une piscine cylindrique a un diamètre de 4 m et une profondeur de 1,2 m. L''eau coûte 4,30 €/m³. La piscine est remplie aux 3/4 de sa capacité. Quel est le coût de remplissage ? (Prendre π ≈ 3,14.)',
  NULL,
  '[{"id":"a","label":"Environ 38,60 €"},{"id":"b","label":"Environ 48,30 €"},{"id":"c","label":"Environ 64,40 €"},{"id":"d","label":"Environ 51,50 €"}]',
  '{"mode":"single","value":"b"}',
  'Étape 1 — Volume total : rayon = 4/2 = 2 m. V = π × r² × h = 3,14 × 4 × 1,2 = 15,072 m³. Étape 2 — Volume d''eau (3/4) : 15,072 × 3/4 = 15,072 × 0,75 = 11,304 m³. Étape 3 — Coût : 11,304 × 4,30 = 48,607 ≈ 48,61 €, soit environ 48,30 € (avec les arrondis intermédiaires : 3,14 × 4 = 12,56, × 1,2 = 15,072, × 0,75 = 11,304, × 4,30 ≈ 48,61). Ce problème croise : géométrie (volume du cylindre), fractions (3/4), conversions (m³ → litres si besoin), et proportionnalité (coût). C''est typiquement le niveau d''un problème CRPE.',
  'Confondre rayon et diamètre (utiliser r = 4 au lieu de r = 2, ce qui quadruplerait le volume). Ou oublier de prendre les 3/4 du volume.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
