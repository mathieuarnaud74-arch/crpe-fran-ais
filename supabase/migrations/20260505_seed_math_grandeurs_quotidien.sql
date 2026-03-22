-- Migration: série math_grandeurs_quotidien (10 questions)
-- Maths du quotidien — Grandeurs et proportionnalité
-- UUID prefix: b0030000
-- Types : qcm (4), reponse_courte (3), vrai_faux (3)
-- Niveau : Facile
-- Access : free

-- ============================================================================
-- Q1 — QCM — CUISINE — Proportionnalité recette
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0030000-0000-0000-0000-000000000001',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_quotidien',
  'Maths du quotidien — Grandeurs et proportionnalité',
  'Facile',
  'qcm',
  'Vous préparez un gâteau au chocolat pour 6 personnes, mais la recette est prévue pour 4. La recette indique 250 g de farine. Combien de farine vous faut-il pour 6 personnes ?',
  NULL,
  '[{"id":"a","label":"300 g"},{"id":"b","label":"375 g"},{"id":"c","label":"350 g"},{"id":"d","label":"500 g"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Il s''agit d''une situation de proportionnalité. On passe de 4 personnes à 6 personnes, soit un coefficient multiplicateur de 6 ÷ 4 = 1,5. On applique ce coefficient à la quantité de farine : 250 g × 1,5 = 375 g. Autre méthode : on calcule la quantité par personne (250 ÷ 4 = 62,5 g), puis on multiplie par 6 (62,5 × 6 = 375 g).',
  'Ajouter 250 g × 2 = 500 g en pensant qu''on « double la recette », alors qu''on passe de 4 à 6 personnes (facteur 1,5, pas 2). Autre erreur : ajouter simplement 100 g (pour 2 personnes de plus) sans calculer la proportionnalité exacte.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q2 — QCM — COURSES — Pourcentage de réduction
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0030000-0000-0000-0000-000000000002',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_quotidien',
  'Maths du quotidien — Grandeurs et proportionnalité',
  'Facile',
  'qcm',
  'Pendant les soldes, vous repérez une veste à 45 €, affichée avec une réduction de 30 %. Quel est le prix que vous allez payer en caisse ?',
  NULL,
  '[{"id":"a","label":"31,50 €"},{"id":"b","label":"15,00 €"},{"id":"c","label":"30,00 €"},{"id":"d","label":"35,50 €"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Pour calculer une réduction de 30 %, on détermine d''abord le montant de la remise : 45 × 30 ÷ 100 = 13,50 €. Puis on soustrait : 45 − 13,50 = 31,50 €. Méthode rapide : payer 70 % du prix revient à multiplier par 0,7. Ainsi : 45 × 0,7 = 31,50 €.',
  'Confondre le montant de la réduction (13,50 €) avec le prix final, ou calculer 30 % de manière erronée (par ex. 45 − 30 = 15 €, en soustrayant directement le pourcentage comme un montant en euros).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q3 — reponse_courte — VOYAGE — Vitesse, distance, temps
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0030000-0000-0000-0000-000000000003',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_quotidien',
  'Maths du quotidien — Grandeurs et proportionnalité',
  'Facile',
  'reponse_courte',
  'Vous prenez le TGV Paris-Bordeaux. Le train roule à une vitesse constante de 160 km/h pendant 2 h 15 min. Quelle distance parcourt-il ? (Répondez en km.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["360 km","360","360km","360 Km","360KM"]}'::jsonb,
  'La formule est : distance = vitesse × temps. Il faut d''abord convertir le temps en heures : 2 h 15 min = 2 + 15/60 = 2,25 h. Ensuite : 160 × 2,25 = 360 km. Détail du calcul : 160 × 2 = 320 km pour les 2 heures, puis 160 × 0,25 = 40 km pour les 15 minutes. Total : 320 + 40 = 360 km.',
  'Ne pas convertir correctement les minutes en fraction d''heure : écrire 2,15 h au lieu de 2,25 h, ce qui donnerait 160 × 2,15 = 344 km (faux). Rappel : 15 min = 15/60 = 0,25 h.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — vrai_faux — SPORT — Superficie terrain de football
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0030000-0000-0000-0000-000000000004',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_quotidien',
  'Maths du quotidien — Grandeurs et proportionnalité',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : un terrain de football réglementaire fait environ 1 hectare.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Un hectare = 10 000 m². Un terrain de football standard mesure environ 105 m × 68 m = 7 140 m², soit environ 0,7 hectare. C''est nettement moins qu''un hectare. Pour atteindre 1 hectare, il faudrait un terrain de 100 m × 100 m, ce qui est bien plus large qu''un terrain de foot réglementaire.',
  'Surestimer la surface d''un terrain de football en arrondissant généreusement (« environ 100 m × 100 m »). En réalité, la largeur d''un terrain (65-68 m) est bien inférieure à 100 m.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — QCM — BRICOLAGE — Aire et peinture
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0030000-0000-0000-0000-000000000005',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_quotidien',
  'Maths du quotidien — Grandeurs et proportionnalité',
  'Facile',
  'qcm',
  'C''est le week-end bricolage ! Vous voulez repeindre un mur de 4 m de long et 2,5 m de haut. Un pot de peinture couvre 5 m². Combien de pots devez-vous acheter ?',
  NULL,
  '[{"id":"a","label":"1 pot"},{"id":"b","label":"2 pots"},{"id":"c","label":"3 pots"},{"id":"d","label":"4 pots"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''aire du mur est : 4 m × 2,5 m = 10 m². Chaque pot couvre 5 m². Nombre de pots nécessaires : 10 ÷ 5 = 2 pots. Ici le résultat tombe juste, mais dans la vraie vie, si le résultat n''est pas entier (par ex. 2,3 pots), on arrondit toujours au pot supérieur car on ne peut pas acheter une fraction de pot.',
  'Calculer l''aire incorrectement (par ex. confondre périmètre et aire : 2 × (4 + 2,5) = 13 m², ce qui donnerait 3 pots). L''aire d''un rectangle est longueur × largeur, pas le périmètre.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — reponse_courte — CUISINE — Division de contenances
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0030000-0000-0000-0000-000000000006',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_quotidien',
  'Maths du quotidien — Grandeurs et proportionnalité',
  'Facile',
  'reponse_courte',
  'Vous organisez un apéro entre amis. Une bouteille de jus de fruit contient 75 cL. Vous servez des verres de 15 cL chacun. Combien de verres pouvez-vous remplir avec une bouteille ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["5","5 verres","cinq","5 verres."]}'::jsonb,
  'On divise le contenu total par la contenance d''un verre : 75 cL ÷ 15 cL = 5 verres. On peut aussi raisonner en litres : 75 cL = 0,75 L et 15 cL = 0,15 L, donc 0,75 ÷ 0,15 = 5 verres.',
  'Se tromper dans la conversion des unités, par exemple convertir 75 cL en 7,5 L (au lieu de 0,75 L). Rappel : 1 L = 100 cL.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — vrai_faux — MESURES — Masse d'un litre d'eau
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0030000-0000-0000-0000-000000000007',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_quotidien',
  'Maths du quotidien — Grandeurs et proportionnalité',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : 1 litre d''eau pèse exactement 1 kg.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Par définition historique, le kilogramme a été défini comme la masse d''un litre (1 dm³) d''eau pure à 4 °C. Cette équivalence reste vraie en pratique : 1 L d''eau ≈ 1 kg. C''est une relation fondamentale à connaître : 1 L = 1 dm³ = 1 kg d''eau. Cette correspondance est extrêmement utile dans la vie quotidienne pour estimer des masses.',
  'Penser que cette relation ne vaut que pour l''eau chaude ou froide. En réalité, la masse volumique de l''eau varie très peu avec la température dans les conditions courantes (entre 0,998 et 1,000 kg/L entre 4 °C et 25 °C).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q8 — QCM — SHOPPING — Proportionnalité prix croissants
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0030000-0000-0000-0000-000000000008',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_quotidien',
  'Maths du quotidien — Grandeurs et proportionnalité',
  'Facile',
  'qcm',
  'À la boulangerie du coin, 3 croissants coûtent 3,60 €. Vous êtes gourmand et vous en voulez 7 pour le brunch de dimanche. Combien allez-vous payer ?',
  NULL,
  '[{"id":"a","label":"7,00 €"},{"id":"b","label":"7,20 €"},{"id":"c","label":"8,40 €"},{"id":"d","label":"9,60 €"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'On calcule d''abord le prix unitaire d''un croissant : 3,60 € ÷ 3 = 1,20 €. Puis on multiplie par 7 : 1,20 € × 7 = 8,40 €. Vérification : 7 croissants = 2 × 3 croissants + 1 croissant = 2 × 3,60 + 1,20 = 7,20 + 1,20 = 8,40 €.',
  'Diviser incorrectement : 3,60 ÷ 3 = 1,30 € (erreur de calcul mental). Ou tenter de faire 3,60 × 7 ÷ 3 et se tromper dans l''ordre des opérations.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q9 — reponse_courte — ÉCHELLE — Plan et longueur réelle
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0030000-0000-0000-0000-000000000009',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_quotidien',
  'Maths du quotidien — Grandeurs et proportionnalité',
  'Facile',
  'reponse_courte',
  'Vous consultez le plan de votre futur appartement. L''échelle indiquée est 1/200. Sur le plan, le mur du salon mesure 4 cm. Quelle est la longueur réelle de ce mur ? (Répondez en mètres.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["8 m","8","8m","8 mètres","8 metres"]}'::jsonb,
  'L''échelle 1/200 signifie que 1 cm sur le plan représente 200 cm en réalité. Longueur réelle = 4 cm × 200 = 800 cm = 8 m. Autre façon de voir : l''échelle 1/200 signifie que les dimensions réelles sont 200 fois plus grandes que sur le plan.',
  'Oublier de convertir les centimètres en mètres : donner 800 cm au lieu de 8 m. Ou confondre le sens de l''échelle et diviser au lieu de multiplier (4 ÷ 200 = 0,02 cm, ce qui n''a pas de sens pour un mur).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q10 — vrai_faux — CONVERSIONS — Millilitres et litres
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0030000-0000-0000-0000-000000000010',
  'Mathematiques',
  'grandeurs_mesures',
  'math_grandeurs_quotidien',
  'Maths du quotidien — Grandeurs et proportionnalité',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : 2 500 mL, c''est la même chose que 25 L.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. 1 L = 1 000 mL, donc 2 500 mL = 2 500 ÷ 1 000 = 2,5 L (et non 25 L). Pour obtenir 25 L, il faudrait 25 000 mL. L''erreur vient d''un décalage de virgule : on a divisé par 100 au lieu de 1 000.',
  'Diviser par 100 au lieu de 1 000 lors de la conversion mL → L. C''est une erreur de placement de virgule très courante. Astuce : milli- signifie « millième », donc 1 mL = 0,001 L, et il faut bien diviser par 1 000.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
