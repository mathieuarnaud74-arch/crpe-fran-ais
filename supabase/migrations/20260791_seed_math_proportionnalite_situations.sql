-- Migration: 10 exercices QCM — Proportionnalité dans des situations concrètes
-- Série : proportionnalite_situations_concretes (Maths, nombres_calcul)
-- Exercice type : qcm

-- Q1 — Recette de cuisine (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9020000-0000-0000-0000-000000000001',
  'Mathematiques',
  'nombres_calcul',
  'proportionnalite_situations_concretes',
  'Proportionnalité — Situations concrètes',
  'Facile',
  'qcm',
  'Une recette pour 4 personnes nécessite 300 g de farine. Quelle quantité de farine faut-il pour 6 personnes ?',
  'On suppose que les quantités sont proportionnelles au nombre de personnes.',
  '[{"id":"a","label":"400 g"},{"id":"b","label":"450 g"},{"id":"c","label":"500 g"},{"id":"d","label":"600 g"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est une situation de proportionnalité. Coefficient : 300 / 4 = 75 g par personne. Pour 6 personnes : 75 × 6 = 450 g. Autre méthode : 6/4 = 1,5 → 300 × 1,5 = 450 g.',
  'Calculer 300 + 200 = 500 g en ajoutant « 2 personnes de plus = 200 g de plus ». Ce raisonnement additif est faux : il faut raisonner proportionnellement.',
  'valide',
  'CRPE Maths — Proportionnalité situations concrètes',
  'free',
  true
);

-- Q2 — Vitesse et durée (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9020000-0000-0000-0000-000000000002',
  'Mathematiques',
  'nombres_calcul',
  'proportionnalite_situations_concretes',
  'Proportionnalité — Situations concrètes',
  'Facile',
  'qcm',
  'Un cycliste roule à vitesse constante de 20 km/h. Quelle distance parcourt-il en 2 h 30 min ?',
  NULL,
  '[{"id":"a","label":"40 km"},{"id":"b","label":"45 km"},{"id":"c","label":"50 km"},{"id":"d","label":"55 km"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'À vitesse constante, la distance est proportionnelle au temps. 2 h 30 min = 2,5 h. Distance = vitesse × temps = 20 × 2,5 = 50 km.',
  'Convertir 2 h 30 min en 2,3 h (erreur de conversion). 30 min = 0,5 h (et non 0,3 h). En base 60, 30 minutes = la moitié d''une heure.',
  'valide',
  'CRPE Maths — Proportionnalité situations concrètes',
  'free',
  true
);

-- Q3 — Échelle d'un plan (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9020000-0000-0000-0000-000000000003',
  'Mathematiques',
  'nombres_calcul',
  'proportionnalite_situations_concretes',
  'Proportionnalité — Situations concrètes',
  'Intermediaire',
  'qcm',
  'Sur un plan à l''échelle 1/200, une pièce mesure 4 cm de long. Quelle est sa longueur réelle ?',
  NULL,
  '[{"id":"a","label":"8 m"},{"id":"b","label":"80 m"},{"id":"c","label":"0,8 m"},{"id":"d","label":"800 cm"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Échelle 1/200 signifie que 1 cm sur le plan = 200 cm en réalité. Donc 4 cm sur le plan = 4 × 200 = 800 cm = 8 m. Les réponses a et d sont équivalentes en valeur (800 cm = 8 m), mais la réponse conventionnelle est 8 m.',
  'Diviser au lieu de multiplier : 4 / 200 = 0,02 cm. L''échelle 1/200 signifie qu''on a RÉDUIT la réalité, donc pour retrouver la taille réelle, on MULTIPLIE.',
  'valide',
  'CRPE Maths — Proportionnalité situations concrètes',
  'free',
  true
);

-- Q4 — Pourcentage de réduction (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9020000-0000-0000-0000-000000000004',
  'Mathematiques',
  'nombres_calcul',
  'proportionnalite_situations_concretes',
  'Proportionnalité — Situations concrètes',
  'Intermediaire',
  'qcm',
  'Un article coûte 80 € et bénéficie d''une réduction de 15 %. Quel est le prix après réduction ?',
  NULL,
  '[{"id":"a","label":"65 €"},{"id":"b","label":"68 €"},{"id":"c","label":"12 €"},{"id":"d","label":"72 €"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Réduction de 15 % : on paie 85 % du prix initial. 80 × 0,85 = 68 €. Autre méthode : réduction = 80 × 0,15 = 12 €, prix final = 80 − 12 = 68 €.',
  'Soustraire directement 15 du prix : 80 − 15 = 65 €. Le pourcentage s''applique au prix, pas en soustraction directe.',
  'valide',
  'CRPE Maths — Proportionnalité situations concrètes',
  'free',
  true
);

-- Q5 — Densité de population (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9020000-0000-0000-0000-000000000005',
  'Mathematiques',
  'nombres_calcul',
  'proportionnalite_situations_concretes',
  'Proportionnalité — Situations concrètes',
  'Intermediaire',
  'qcm',
  'Une ville de 45 000 habitants s''étend sur 15 km². Quelle est sa densité de population ?',
  NULL,
  '[{"id":"a","label":"300 hab/km²"},{"id":"b","label":"3 000 hab/km²"},{"id":"c","label":"30 hab/km²"},{"id":"d","label":"675 000 hab/km²"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La densité de population = nombre d''habitants / superficie. D = 45 000 / 15 = 3 000 hab/km². C''est une grandeur quotient (rapport entre deux grandeurs de natures différentes), qui est un cas typique de proportionnalité.',
  'Multiplier au lieu de diviser : 45 000 × 15 = 675 000. La densité est un quotient (habitants PAR km²), pas un produit.',
  'valide',
  'CRPE Maths — Proportionnalité situations concrètes',
  'free',
  true
);

-- Q6 — Agrandissement/réduction (Intermédiaire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9020000-0000-0000-0000-000000000006',
  'Mathematiques',
  'nombres_calcul',
  'proportionnalite_situations_concretes',
  'Proportionnalité — Situations concrètes',
  'Intermediaire',
  'qcm',
  'On agrandit un rectangle de 3 cm × 5 cm avec un coefficient d''agrandissement de 2. Quelle est l''aire du rectangle agrandi ?',
  NULL,
  '[{"id":"a","label":"30 cm²"},{"id":"b","label":"60 cm²"},{"id":"c","label":"15 cm²"},{"id":"d","label":"16 cm²"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Avec un coefficient d''agrandissement k = 2, les longueurs sont multipliées par 2 : nouveau rectangle = 6 cm × 10 cm. Aire = 6 × 10 = 60 cm². Attention : les aires sont multipliées par k² = 4. Vérification : aire initiale = 15 cm², aire agrandie = 15 × 4 = 60 cm² ✓.',
  'Multiplier l''aire par 2 au lieu de 4 : 15 × 2 = 30 cm². Quand les longueurs sont multipliées par k, les aires sont multipliées par k² (et les volumes par k³).',
  'valide',
  'CRPE Maths — Proportionnalité situations concrètes',
  'free',
  true
);

-- Q7 — Mélange et pourcentages (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9020000-0000-0000-0000-000000000007',
  'Mathematiques',
  'nombres_calcul',
  'proportionnalite_situations_concretes',
  'Proportionnalité — Situations concrètes',
  'Avance',
  'qcm',
  'Un commerçant mélange 3 kg de café A à 12 €/kg avec 2 kg de café B à 18 €/kg. Quel est le prix du mélange au kilogramme ?',
  NULL,
  '[{"id":"a","label":"14,40 €/kg"},{"id":"b","label":"15 €/kg"},{"id":"c","label":"15,60 €/kg"},{"id":"d","label":"16 €/kg"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Coût total = (3 × 12) + (2 × 18) = 36 + 36 = 72 €. Masse totale = 3 + 2 = 5 kg. Prix au kg = 72 / 5 = 14,40 €/kg. C''est une moyenne pondérée (et non la moyenne simple des deux prix).',
  'Faire la moyenne des deux prix : (12 + 18) / 2 = 15 €/kg. C''est faux car les quantités ne sont pas égales. Il faut pondérer par les masses.',
  'valide',
  'CRPE Maths — Proportionnalité situations concrètes',
  'premium',
  true
);

-- Q8 — Reconnaître une situation non proportionnelle (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9020000-0000-0000-0000-000000000008',
  'Mathematiques',
  'nombres_calcul',
  'proportionnalite_situations_concretes',
  'Proportionnalité — Situations concrètes',
  'Avance',
  'qcm',
  'Laquelle de ces situations N''EST PAS une situation de proportionnalité ?',
  NULL,
  '[{"id":"a","label":"Le prix total de pommes est proportionnel au nombre de kg achetés (prix fixe au kg)."},{"id":"b","label":"L''âge d''un enfant et sa taille."},{"id":"c","label":"La distance parcourue par une voiture à vitesse constante est proportionnelle au temps."},{"id":"d","label":"Le périmètre d''un carré est proportionnel à la longueur de son côté."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''âge d''un enfant et sa taille ne sont PAS dans une relation de proportionnalité : un enfant de 10 ans ne mesure pas le double d''un enfant de 5 ans. La croissance n''est pas linéaire. Les trois autres situations sont de vraies proportionnalités : prix = k × quantité, distance = v × temps, périmètre = 4 × côté.',
  'Penser que toute relation « quand l''un augmente, l''autre augmente » est proportionnelle. La proportionnalité exige que le rapport soit constant : taille/âge n''est pas constant.',
  'valide',
  'CRPE Maths — Proportionnalité situations concrètes',
  'free',
  true
);

-- Q9 — Taux d'évolution (Avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9020000-0000-0000-0000-000000000009',
  'Mathematiques',
  'nombres_calcul',
  'proportionnalite_situations_concretes',
  'Proportionnalité — Situations concrètes',
  'Avance',
  'qcm',
  'Le prix d''un objet augmente de 20 %, puis le nouveau prix diminue de 20 %. Le prix final est :',
  NULL,
  '[{"id":"a","label":"Égal au prix initial"},{"id":"b","label":"Inférieur au prix initial (−4 %)"},{"id":"c","label":"Supérieur au prix initial (+4 %)"},{"id":"d","label":"Inférieur au prix initial (−2 %)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Prix initial = 100. Après +20 % : 100 × 1,20 = 120. Après −20 % : 120 × 0,80 = 96. Le prix final est 96, soit −4 % par rapport au prix initial. En effet : 1,20 × 0,80 = 0,96, et non 1. Les pourcentages ne s''additionnent pas car ils s''appliquent à des valeurs différentes.',
  'Penser que +20 % puis −20 % = 0 % (retour au prix initial). C''est l''erreur la plus classique : les pourcentages d''augmentation et de diminution ne se compensent pas car la base de calcul change.',
  'valide',
  'CRPE Maths — Proportionnalité situations concrètes',
  'premium',
  true
);

-- Q10 — Passage à l'unité (Facile)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e9020000-0000-0000-0000-00000000000a',
  'Mathematiques',
  'nombres_calcul',
  'proportionnalite_situations_concretes',
  'Proportionnalité — Situations concrètes',
  'Facile',
  'qcm',
  '5 cahiers coûtent 8,50 €. Combien coûtent 12 cahiers au même prix unitaire ?',
  NULL,
  '[{"id":"a","label":"17,00 €"},{"id":"b","label":"20,40 €"},{"id":"c","label":"19,50 €"},{"id":"d","label":"21,00 €"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Passage à l''unité : prix d''un cahier = 8,50 / 5 = 1,70 €. Pour 12 cahiers : 1,70 × 12 = 20,40 €. Autre méthode : produit en croix : (8,50 × 12) / 5 = 102 / 5 = 20,40 €.',
  'Ajouter 8,50 + 8,50 = 17 € (pour 10 cahiers), puis tenter un ajustement approximatif. La méthode correcte passe par le prix unitaire ou le produit en croix.',
  'valide',
  'CRPE Maths — Proportionnalité situations concrètes',
  'free',
  true
);
