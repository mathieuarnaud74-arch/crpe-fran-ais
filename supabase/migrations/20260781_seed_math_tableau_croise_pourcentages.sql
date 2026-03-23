-- Seed: Tableaux croisés et pourcentages (7 exercices)
-- Subdomain: organisation_donnees | Level: Difficile | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb100000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_tableau_croise_pourcentages',
  'Tableaux croisés et pourcentages', 'Difficile',
  'qcm',
  'Dans un tableau croisé, on a recensé 120 élèves selon leur pratique sportive (oui/non) et leur sexe (fille/garçon). On sait que 45 filles pratiquent un sport, 15 filles ne pratiquent pas de sport, 40 garçons pratiquent un sport et 20 garçons ne pratiquent pas de sport. Quel est le total marginal de la ligne « Pratique un sport » ?',
  'Tableau :\n| | Filles | Garçons | Total |\n|---|---|---|---|\n| Pratique un sport | 45 | 40 | ? |\n| Ne pratique pas | 15 | 20 | ? |\n| Total | 60 | 60 | 120 |',
  '[{"id":"a","label":"60"},{"id":"b","label":"85"},{"id":"c","label":"45"},{"id":"d","label":"100"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le total marginal de la ligne « Pratique un sport » s''obtient en additionnant toutes les valeurs de cette ligne : 45 (filles) + 40 (garçons) = 85. Les totaux marginaux correspondent aux sommes en fin de ligne ou de colonne d''un tableau croisé. Ils permettent de connaître la distribution d''une variable indépendamment de l''autre. Ici, 85 élèves sur 120 pratiquent un sport, soit environ 70,8 %. La lecture et la construction de tableaux à double entrée sont des compétences fondamentales en organisation et gestion de données (Éduscol cycle 3).',
  'Confondre le total marginal de la ligne avec celui de la colonne, ou lire une seule cellule au lieu d''additionner toute la ligne.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3 / CRPE',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb100000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_tableau_croise_pourcentages',
  'Tableaux croisés et pourcentages', 'Difficile',
  'reponse_courte',
  'En reprenant le tableau précédent (45 filles sportives, 15 filles non sportives, 40 garçons sportifs, 20 garçons non sportifs), quel est le pourcentage de filles parmi les élèves qui pratiquent un sport ? (Arrondissez à l''unité, ex : 53)',
  'Tableau :\n| | Filles | Garçons | Total |\n|---|---|---|---|\n| Pratique un sport | 45 | 40 | 85 |\n| Ne pratique pas | 15 | 20 | 35 |\n| Total | 60 | 60 | 120 |',
  NULL,
  '{"mode":"text","acceptableAnswers":["53","53 %","53%","52,9","52,9 %","52,94"]}'::jsonb,
  'On cherche le pourcentage de filles parmi les sportifs. Il y a 45 filles sportives sur un total de 85 sportifs. Le pourcentage est : (45 / 85) × 100 ≈ 52,94 %, soit environ 53 %. Il s''agit d''un pourcentage conditionnel (ou « en ligne ») : on ne considère que la sous-population des sportifs, et on calcule la part de filles dans cette sous-population. C''est différent du pourcentage global de filles (60/120 = 50 %). La distinction entre pourcentage en ligne, pourcentage en colonne et pourcentage global est une compétence essentielle pour l''analyse de données.',
  'Calculer 45/120 = 37,5 % au lieu de 45/85, c''est-à-dire confondre le pourcentage conditionnel avec le pourcentage global.',
  'valide',
  'Génération Claude — Programme Éduscol cycle 3 / CRPE',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb100000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_tableau_croise_pourcentages',
  'Tableaux croisés et pourcentages', 'Difficile',
  'qcm',
  'Un tableau croisé présente les résultats d''un test de dépistage dans deux écoles. À l''école A : 8 positifs sur 100 testés. À l''école B : 12 positifs sur 200 testés. Quel est le taux global de résultats positifs sur l''ensemble des deux écoles ?',
  NULL,
  '[{"id":"a","label":"10 %"},{"id":"b","label":"6,67 %"},{"id":"c","label":"20 %"},{"id":"d","label":"8 %"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Total de positifs : 8 + 12 = 20. Total de testés : 100 + 200 = 300. Taux global : (20 / 300) × 100 = 6,67 %. Attention : on ne peut pas faire la moyenne des deux taux (8 % et 6 %) car les effectifs sont différents. C''est un piège classique. L''école A a un taux de 8 % (8/100) et l''école B de 6 % (12/200). La moyenne arithmétique (8 + 6) / 2 = 7 % serait fausse : il faut pondérer par les effectifs. Ce phénomène est lié au paradoxe de Simpson : les pourcentages globaux ne se calculent pas en moyennant les pourcentages partiels quand les effectifs diffèrent.',
  'Faire la moyenne des pourcentages : (8 % + 6 %) / 2 = 7 %, sans tenir compte de la différence d''effectifs entre les deux écoles.',
  'valide',
  'Génération Claude — Programme Éduscol / CRPE',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb100000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_tableau_croise_pourcentages',
  'Tableaux croisés et pourcentages', 'Difficile',
  'vrai_faux',
  'Considérons deux traitements médicaux testés sur deux groupes. Le traitement A guérit 80 % des cas légers (80/100) et 50 % des cas graves (10/20). Le traitement B guérit 90 % des cas légers (18/20) et 55 % des cas graves (55/100). Le traitement B est donc globalement meilleur que le traitement A.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'C''est un exemple classique du paradoxe de Simpson. Calculons les taux globaux. Traitement A : (80 + 10) / (100 + 20) = 90/120 = 75 %. Traitement B : (18 + 55) / (20 + 100) = 73/120 ≈ 60,8 %. Globalement, le traitement A est meilleur (75 % vs 60,8 %), alors que le traitement B est meilleur dans chaque sous-groupe pris séparément (90 % > 80 % pour les cas légers, 55 % > 50 % pour les cas graves). Ce paradoxe survient parce que la répartition des patients entre cas légers et graves est très différente entre les deux traitements. Le traitement A est appliqué majoritairement aux cas légers (plus faciles à guérir), tandis que le traitement B est appliqué majoritairement aux cas graves.',
  'Croire que si un traitement est meilleur dans chaque sous-catégorie, il est forcément meilleur globalement. Le paradoxe de Simpson montre que c''est faux.',
  'valide',
  'Génération Claude — Programme Éduscol / CRPE',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb100000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_tableau_croise_pourcentages',
  'Tableaux croisés et pourcentages', 'Difficile',
  'qcm',
  'Un tableau croisé montre la répartition de 200 élèves selon leur niveau (CP, CE1) et leur résultat à un test (réussi, échoué). On sait que 70 CP ont réussi, 30 CP ont échoué, 60 CE1 ont réussi et 40 CE1 ont échoué. Quel pourcentage des CE1 a réussi le test ?',
  'Tableau :\n| | Réussi | Échoué | Total |\n|---|---|---|---|\n| CP | 70 | 30 | 100 |\n| CE1 | 60 | 40 | 100 |\n| Total | 130 | 70 | 200 |',
  '[{"id":"a","label":"60 %"},{"id":"b","label":"30 %"},{"id":"c","label":"46,2 %"},{"id":"d","label":"50 %"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'On cherche le pourcentage de CE1 ayant réussi parmi l''ensemble des CE1. Il y a 60 CE1 ayant réussi sur 100 CE1 au total : (60/100) × 100 = 60 %. C''est un pourcentage « en ligne » : on se restreint à la sous-population des CE1 et on calcule la proportion ayant réussi. Le piège serait de calculer 60/200 = 30 % (proportion des CE1 ayant réussi parmi l''ensemble des élèves) ou 60/130 ≈ 46,2 % (proportion des CE1 parmi les élèves ayant réussi). Savoir distinguer ces trois types de pourcentages est fondamental dans l''interprétation des tableaux croisés.',
  'Calculer 60/200 = 30 % (pourcentage global) au lieu de 60/100 = 60 % (pourcentage conditionnel en ligne).',
  'valide',
  'Génération Claude — Programme Éduscol / CRPE',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb100000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_tableau_croise_pourcentages',
  'Tableaux croisés et pourcentages', 'Difficile',
  'reponse_courte',
  'Dans un tableau croisé, on a les données suivantes sur 300 salariés répartis par genre et type de contrat. Femmes en CDI : 90, femmes en CDD : 60, hommes en CDI : 110, hommes en CDD : 40. Quel est le pourcentage de CDI parmi l''ensemble des salariés ? (Arrondissez à l''unité, ex : 67)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["67","67 %","67%","66,7","66,7 %","66,67"]}'::jsonb,
  'Total des CDI : 90 + 110 = 200. Total des salariés : 300. Pourcentage de CDI : (200/300) × 100 = 66,67 %, arrondi à 67 %. On peut aussi interpréter ce tableau par genre : parmi les femmes (150 au total), 90/150 = 60 % sont en CDI ; parmi les hommes (150 au total), 110/150 ≈ 73,3 % sont en CDI. On observe donc une différence de taux de CDI entre femmes et hommes. Ce type d''analyse est au cœur de la lecture critique de données statistiques, compétence développée au cycle 3 et évaluée au CRPE.',
  'Ne compter qu''un genre dans le total CDI (par exemple 90 au lieu de 200) ou diviser par un mauvais total.',
  'valide',
  'Génération Claude — Programme Éduscol / CRPE',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb100000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_tableau_croise_pourcentages',
  'Tableaux croisés et pourcentages', 'Difficile',
  'qcm',
  'Une étude sur 500 élèves analyse le lien entre le petit-déjeuner (pris / pas pris) et la concentration en classe (bonne / insuffisante). Résultats : 180 élèves prennent un petit-déjeuner et ont une bonne concentration, 60 prennent un petit-déjeuner mais ont une concentration insuffisante, 120 ne prennent pas de petit-déjeuner et ont une bonne concentration, 140 ne prennent pas de petit-déjeuner et ont une concentration insuffisante. Quelle interprétation est correcte ?',
  NULL,
  '[{"id":"a","label":"75 % des élèves qui prennent un petit-déjeuner ont une bonne concentration, contre 46,2 % de ceux qui n''en prennent pas"},{"id":"b","label":"Le petit-déjeuner n''a aucun effet : 60 % des élèves ont une bonne concentration dans les deux cas"},{"id":"c","label":"90 % des élèves qui prennent un petit-déjeuner ont une bonne concentration"},{"id":"d","label":"Les données ne permettent pas de calculer des pourcentages conditionnels"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Parmi les 240 élèves qui prennent un petit-déjeuner : 180 ont une bonne concentration, soit 180/240 × 100 = 75 %. Parmi les 260 élèves qui ne prennent pas de petit-déjeuner : 120 ont une bonne concentration, soit 120/260 × 100 ≈ 46,2 %. On observe donc une différence notable : 75 % vs 46,2 %. Attention cependant : corrélation n''implique pas causalité. Ce tableau montre une association statistique, mais d''autres facteurs pourraient expliquer cette différence (milieu social, heure de coucher, etc.). L''interprétation critique des tableaux croisés est une compétence essentielle au CRPE et dans l''enseignement des mathématiques.',
  'Calculer des pourcentages globaux au lieu de pourcentages conditionnels, ou conclure directement à une causalité à partir d''une simple corrélation.',
  'valide',
  'Génération Claude — Programme Éduscol / CRPE',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
