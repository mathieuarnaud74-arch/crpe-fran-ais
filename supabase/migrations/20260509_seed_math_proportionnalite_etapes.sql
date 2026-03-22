-- Série 6 : Problèmes à étapes — Proportionnalité
-- 7 questions, Intermédiaire, premium
-- Progression : amorce (Q1-Q2) → consolidation (Q3-Q5) → approfondissement (Q6-Q7)
-- Formats : QCM, réponse courte, vrai_faux
-- Contextes variés : achats, vitesse, pourcentages, échelle

-- Q1 — AMORCE — QCM — Reconnaître une situation proportionnelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0060000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnalite_etapes',
  'Problèmes à étapes — Proportionnalité',
  'Intermediaire',
  'qcm',
  'Parmi les situations suivantes, laquelle est une situation de proportionnalité ?',
  NULL,
  '[{"id":"a","label":"L''âge d''une personne en fonction de son année de naissance"},{"id":"b","label":"Le prix de pommes à 2,50 €/kg en fonction du poids acheté"},{"id":"c","label":"La taille d''un enfant en fonction de son âge"},{"id":"d","label":"La note à un examen en fonction du temps de révision"}]',
  '{"mode":"single_choice","value":"b"}',
  'Seule la situation B est proportionnelle : le prix est proportionnel au poids (prix = 2,50 × poids). Si on achète 2 fois plus de pommes, on paie 2 fois plus. Le coefficient de proportionnalité est 2,50 €/kg. Les autres situations ne sont PAS proportionnelles : (A) l''âge n''est pas proportionnel à l''année de naissance (un bébé né en 2020 a 6 ans, pas 2020 × k) ; (C) la taille ne double pas quand l''âge double ; (D) réviser 2 fois plus ne garantit pas une note 2 fois meilleure. Critère clé : dans une situation proportionnelle, si on multiplie la variable d''entrée par k, la variable de sortie est aussi multipliée par k.',
  'Confondre corrélation et proportionnalité. Deux grandeurs peuvent varier « ensemble » sans être proportionnelles. La proportionnalité exige un coefficient constant : y = k × x.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — AMORCE — Réponse courte — Calcul direct de proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0060000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnalite_etapes',
  'Problèmes à étapes — Proportionnalité',
  'Intermediaire',
  'reponse_courte',
  'Un robinet remplit un bassin de 600 litres en 4 heures à débit constant. Quel volume d''eau (en litres) coule en 1 h 30 min ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["225 litres","225","225 L","225L","225 l"]}',
  'Le débit est constant, donc le volume est proportionnel au temps. Débit = 600 L / 4 h = 150 L/h. En 1 h 30 min = 1,5 h, le volume est : 150 × 1,5 = 225 L. Méthode alternative (retour à l''unité) : en 4 h → 600 L, en 1 h → 600/4 = 150 L, en 1,5 h → 150 × 1,5 = 225 L. Vérification : 225/600 = 0,375 et 1,5/4 = 0,375 ✓ Les rapports sont égaux, ce qui confirme la proportionnalité.',
  'Mal convertir 1 h 30 min en heures décimales : écrire 1,30 h au lieu de 1,5 h, ce qui donnerait 150 × 1,30 = 195 L (faux).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — CONSOLIDATION — Réponse courte — Pourcentage de réduction + prix final
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0060000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnalite_etapes',
  'Problèmes à étapes — Proportionnalité',
  'Intermediaire',
  'reponse_courte',
  'Un manteau coûte 120 €. Il est soldé à −30 %, puis une remise supplémentaire de 10 % est appliquée sur le prix soldé. Quel est le prix final ? (Répondez en euros.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["75,60 €","75,60","75.60","75,6 €","75,6","75.6","75,60€","75.60€"]}',
  'Étape 1 : Réduction de 30 % sur 120 €. Montant de la réduction : 120 × 30/100 = 36 €. Prix soldé : 120 − 36 = 84 €. Étape 2 : Remise de 10 % sur 84 €. Montant de la remise : 84 × 10/100 = 8,40 €. Prix final : 84 − 8,40 = 75,60 €. ATTENTION : on ne peut PAS additionner les pourcentages (30 % + 10 % ≠ 40 %). Appliquer 40 % sur 120 € donnerait 72 € (faux). Les pourcentages successifs se composent : le coefficient multiplicateur est 0,7 × 0,9 = 0,63, soit une réduction totale de 37 %, pas 40 %. Vérification : 120 × 0,63 = 75,60 € ✓',
  'Additionner les pourcentages de réduction (30 % + 10 % = 40 %) et appliquer 40 % sur le prix initial. C''est faux car la deuxième réduction s''applique sur le prix déjà réduit, pas sur le prix initial.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — CONSOLIDATION — QCM — Vitesse moyenne sur un trajet aller-retour
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0060000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnalite_etapes',
  'Problèmes à étapes — Proportionnalité',
  'Intermediaire',
  'qcm',
  'Un cycliste parcourt 60 km à l''aller à 20 km/h, puis 60 km au retour à 30 km/h. Quelle est sa vitesse moyenne sur l''ensemble du trajet ?',
  NULL,
  '[{"id":"a","label":"25 km/h"},{"id":"b","label":"24 km/h"},{"id":"c","label":"22 km/h"},{"id":"d","label":"27,5 km/h"}]',
  '{"mode":"single_choice","value":"b"}',
  'On ne peut PAS faire la moyenne des vitesses : (20 + 30)/2 = 25 km/h est FAUX. La vitesse moyenne = distance totale / temps total. Distance totale = 60 + 60 = 120 km. Temps aller = 60/20 = 3 h. Temps retour = 60/30 = 2 h. Temps total = 3 + 2 = 5 h. Vitesse moyenne = 120/5 = 24 km/h. La vitesse moyenne est toujours inférieure à la moyenne arithmétique des vitesses (24 < 25) car le cycliste passe plus de temps à la vitesse la plus faible. C''est un piège classique du CRPE !',
  'Calculer la moyenne arithmétique des vitesses (20 + 30)/2 = 25 km/h. La vitesse moyenne n''est PAS la moyenne des vitesses — il faut passer par la distance totale et le temps total.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — CONSOLIDATION — Vrai/Faux — Échelle et proportionnalité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0060000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnalite_etapes',
  'Problèmes à étapes — Proportionnalité',
  'Intermediaire',
  'vrai_faux',
  'Sur un plan à l''échelle 1/500, une pièce est représentée par un rectangle de 2 cm sur 3 cm. Un élève affirme : « L''aire réelle de la pièce est de 3 000 cm², soit 3 m². » Est-ce correct ?',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}',
  'FAUX. L''échelle 1/500 signifie que 1 cm sur le plan = 500 cm en réalité = 5 m. Dimensions réelles : 2 × 500 = 1 000 cm = 10 m et 3 × 500 = 1 500 cm = 15 m. Aire réelle = 10 × 15 = 150 m². L''élève a probablement calculé l''aire sur le plan (2 × 3 = 6 cm²) puis multiplié par 500 (6 × 500 = 3 000 cm²). Mais pour les aires, il faut multiplier par 500² = 250 000 ! Aire réelle = 6 × 250 000 = 1 500 000 cm² = 150 m². Règle : si l''échelle des longueurs est k, l''échelle des aires est k².',
  'Appliquer le facteur d''échelle une seule fois (×500) au lieu de le mettre au carré (×500²) pour les aires. C''est la même erreur que pour les conversions d''unités d''aire.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — APPROFONDISSEMENT — Réponse courte — Problème à 3 étapes avec TVA
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0060000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnalite_etapes',
  'Problèmes à étapes — Proportionnalité',
  'Intermediaire',
  'reponse_courte',
  'Un artisan achète 25 m² de carrelage à 18 €/m² HT. La TVA est de 20 %. Il accorde une remise de 5 % sur le prix TTC total à son client. Quel montant TTC le client paie-t-il ? (Arrondir au centime.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["513 €","513","513,00 €","513,00","513.00","513€","513,0"]}',
  'Étape 1 : Prix HT = 25 × 18 = 450 €. Étape 2 : Prix TTC = 450 × 1,20 = 540 €. Étape 3 : Remise de 5 % = 540 × 0,05 = 27 €. Prix final = 540 − 27 = 513 €. Alternative avec coefficients : 450 × 1,20 × 0,95 = 513 €. Ce problème enchaîne trois étapes de proportionnalité : le prix proportionnel à la surface, la TVA proportionnelle au prix HT, et la remise proportionnelle au prix TTC. L''ordre des opérations est crucial : la remise s''applique sur le TTC, pas sur le HT.',
  'Appliquer la remise sur le prix HT avant la TVA, ce qui changerait le résultat. Ou additionner TVA et remise : 20 % − 5 % = 15 %, puis 450 × 1,15 = 517,50 € (faux).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — APPROFONDISSEMENT — QCM — Problème de partage proportionnel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'm0060000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'math_proportionnalite_etapes',
  'Problèmes à étapes — Proportionnalité',
  'Intermediaire',
  'qcm',
  'Trois amis se partagent les frais d''un voyage proportionnellement au nombre de jours passés. Le voyage coûte 1 800 €. Anna reste 6 jours, Bastien 4 jours et Clara 2 jours. Combien Anna doit-elle payer ?',
  NULL,
  '[{"id":"a","label":"600 €"},{"id":"b","label":"900 €"},{"id":"c","label":"750 €"},{"id":"d","label":"1 080 €"}]',
  '{"mode":"single_choice","value":"b"}',
  'Nombre total de « jours-personne » : 6 + 4 + 2 = 12 jours. Coût par jour-personne : 1 800 / 12 = 150 €/jour. Part d''Anna : 6 × 150 = 900 €. Vérification : Bastien paie 4 × 150 = 600 € et Clara 2 × 150 = 300 €. Total : 900 + 600 + 300 = 1 800 € ✓. La part d''Anna représente 6/12 = 1/2 du total, ce qui est cohérent : 1 800/2 = 900 €. Le partage proportionnel est un outil fondamental en résolution de problèmes CRPE.',
  'Diviser le total par 3 (partage égal : 1 800/3 = 600 €) au lieu de tenir compte du nombre de jours de chacun. Le partage proportionnel n''est pas un partage équitable.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
