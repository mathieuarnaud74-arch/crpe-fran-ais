-- Seed: Moyenne pondérée — Calculs et interprétation (7 exercices)
-- Subdomain: organisation_donnees | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fb010000-0000-0000-0000-000000000001',
  'Mathematiques', 'organisation_donnees', 'math_moyenne_ponderee',
  'Moyenne pondérée — Calculs et interprétation', 'Intermediaire',
  'qcm',
  'Un élève a obtenu les notes suivantes : 12, 15 et 9. Les coefficients respectifs sont 2, 3 et 1. Quelle est sa moyenne pondérée ?',
  NULL,
  '[{"id":"a","label":"12"},{"id":"b","label":"12,5"},{"id":"c","label":"13"},{"id":"d","label":"13,5"}]'::jsonb,
  '{"mode":"single","value":"c"}'::jsonb,
  'On calcule la moyenne pondérée en multipliant chaque note par son coefficient, puis en divisant la somme par la somme des coefficients : (12×2 + 15×3 + 9×1) ÷ (2+3+1) = (24 + 45 + 9) ÷ 6 = 78 ÷ 6 = 13. La réponse correcte est donc 13.',
  'L''erreur la plus fréquente est de calculer la moyenne simple (12+15+9)÷3 = 12 au lieu de tenir compte des coefficients.',
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
  'fb010000-0000-0000-0000-000000000002',
  'Mathematiques', 'organisation_donnees', 'math_moyenne_ponderee',
  'Moyenne pondérée — Calculs et interprétation', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : la moyenne pondérée d''une série de valeurs est toujours égale à la moyenne simple de ces mêmes valeurs.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'La moyenne pondérée n''est égale à la moyenne simple que dans le cas particulier où tous les coefficients sont identiques. Dès que les coefficients diffèrent, la moyenne pondérée donne plus d''importance aux valeurs affectées des coefficients les plus élevés. Par exemple, pour les valeurs 10 et 20 avec les coefficients 1 et 3 : moyenne simple = (10+20)÷2 = 15, mais moyenne pondérée = (10×1+20×3)÷(1+3) = 70÷4 = 17,5.',
  'Certains élèves pensent que les coefficients ne changent pas le résultat final ou confondent moyenne simple et moyenne pondérée.',
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
  'fb010000-0000-0000-0000-000000000003',
  'Mathematiques', 'organisation_donnees', 'math_moyenne_ponderee',
  'Moyenne pondérée — Calculs et interprétation', 'Intermediaire',
  'reponse_courte',
  'Dans une classe, les élèves ont obtenu les résultats suivants à un contrôle : la note 8 a été obtenue par 5 élèves, la note 12 par 10 élèves, la note 16 par 5 élèves. Calculez la moyenne de la classe.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["12","12,0"]}'::jsonb,
  'Ici, les effectifs jouent le rôle de coefficients (on parle de moyenne pondérée par les effectifs ou les fréquences). On calcule : (8×5 + 12×10 + 16×5) ÷ (5+10+5) = (40 + 120 + 80) ÷ 20 = 240 ÷ 20 = 12. La moyenne de la classe est 12.',
  'L''erreur courante est de calculer (8+12+16)÷3 = 12, ce qui donne ici le même résultat par coïncidence, mais la méthode est incorrecte car elle ne tient pas compte des effectifs.',
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
  'fb010000-0000-0000-0000-000000000004',
  'Mathematiques', 'organisation_donnees', 'math_moyenne_ponderee',
  'Moyenne pondérée — Calculs et interprétation', 'Intermediaire',
  'qcm',
  'Un élève a les notes suivantes : Français 14 (coefficient 4), Mathématiques 11 (coefficient 4), Histoire-Géographie 16 (coefficient 2). Quelle affirmation est correcte ?',
  NULL,
  '[{"id":"a","label":"Sa moyenne pondérée est supérieure à sa moyenne simple."},{"id":"b","label":"Sa moyenne pondérée est inférieure à sa moyenne simple."},{"id":"c","label":"Sa moyenne pondérée est égale à sa moyenne simple."},{"id":"d","label":"On ne peut pas comparer sans connaître les autres matières."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Moyenne simple : (14+11+16)÷3 = 41÷3 ≈ 13,67. Moyenne pondérée : (14×4 + 11×4 + 16×2) ÷ (4+4+2) = (56+44+32) ÷ 10 = 132÷10 = 13,2. La moyenne pondérée (13,2) est inférieure à la moyenne simple (≈13,67) car les matières à fort coefficient (Français et Mathématiques) ont un poids relatif plus important, et la note de Mathématiques (11) tire la moyenne vers le bas. La note élevée d''Histoire-Géographie (16) a moins d''influence en raison de son coefficient plus faible.',
  'L''erreur fréquente est de penser que la moyenne pondérée est toujours plus élevée que la moyenne simple, sans analyser la répartition des coefficients par rapport aux notes.',
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
  'fb010000-0000-0000-0000-000000000005',
  'Mathematiques', 'organisation_donnees', 'math_moyenne_ponderee',
  'Moyenne pondérée — Calculs et interprétation', 'Intermediaire',
  'reponse_courte',
  'Un élève a obtenu 14 en Français (coefficient 3), 16 en Sciences (coefficient 2) et une note inconnue en Mathématiques (coefficient 5). Sa moyenne pondérée générale est 13. Quelle est sa note en Mathématiques ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["11,2","11.2"]}'::jsonb,
  'Soit x la note en Mathématiques. La moyenne pondérée vaut : (14×3 + 16×2 + x×5) ÷ (3+2+5) = 13. Donc : (42 + 32 + 5x) ÷ 10 = 13. On obtient : 74 + 5x = 130, soit 5x = 56, donc x = 56÷5 = 11,2. Vérifions : (42+32+56)÷10 = 130÷10 = 13. La note en Mathématiques est bien 11,2.',
  'L''erreur courante est d''oublier de multiplier la note inconnue par son coefficient dans l''équation, ou de diviser par le nombre de matières (3) au lieu de la somme des coefficients (10).',
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
  'fb010000-0000-0000-0000-000000000006',
  'Mathematiques', 'organisation_donnees', 'math_moyenne_ponderee',
  'Moyenne pondérée — Calculs et interprétation', 'Intermediaire',
  'qcm',
  'Dans une école, la classe A (20 élèves) a une moyenne de 13 et la classe B (30 élèves) a une moyenne de 15. Quelle est la moyenne générale de l''ensemble des élèves ?',
  NULL,
  '[{"id":"a","label":"14"},{"id":"b","label":"14,2"},{"id":"c","label":"14,5"},{"id":"d","label":"15"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour calculer la moyenne générale, on pondère chaque moyenne de classe par son effectif : (13×20 + 15×30) ÷ (20+30) = (260 + 450) ÷ 50 = 710 ÷ 50 = 14,2. On ne peut pas simplement faire (13+15)÷2 = 14 car les classes n''ont pas le même effectif. La classe B, plus nombreuse, tire la moyenne vers le haut.',
  'L''erreur classique est de calculer (13+15)÷2 = 14, en faisant la moyenne des moyennes sans tenir compte des effectifs différents. C''est un cas typique du paradoxe de Simpson.',
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
  'fb010000-0000-0000-0000-000000000007',
  'Mathematiques', 'organisation_donnees', 'math_moyenne_ponderee',
  'Moyenne pondérée — Calculs et interprétation', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : un enseignant souhaite évaluer un élève sur un trimestre. L''élève a obtenu 8/20 au contrôle final (coefficient 5) et 18/20 en contrôle continu (coefficient 1). Sa moyenne trimestrielle est supérieure à 10/20.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Calculons la moyenne pondérée : (8×5 + 18×1) ÷ (5+1) = (40+18) ÷ 6 = 58÷6 ≈ 9,67. La moyenne trimestrielle est d''environ 9,67/20, donc inférieure à 10/20. Le coefficient élevé du contrôle final (5) donne beaucoup plus de poids à la note de 8, malgré l''excellente note en contrôle continu. Cet exercice illustre l''importance de comprendre l''impact des coefficients dans un contexte scolaire réel, situation fréquemment rencontrée au CRPE.',
  'L''erreur est de se fier à l''intuition : « 18 est très élevé, donc la moyenne doit être bonne ». Sans calcul, on sous-estime l''impact du coefficient 5 sur la note faible.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
