-- Sujet blanc CRPE — Épreuve de mathématiques n°3
-- 7 exercices de niveau Avancé (premium) — Simulation d''épreuve

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0210000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_03',
  'Sujet blanc CRPE — Épreuve de mathématiques n°3', 'Avance', 'reponse_courte',
  'Décomposer 360 en produit de facteurs premiers.',
  NULL,
  NULL,
  '{"mode": "acceptableAnswers", "acceptableAnswers": ["2³ × 3² × 5", "2^3 × 3^2 × 5", "2^3 x 3^2 x 5", "2³ × 3² × 5", "8 × 9 × 5", "2^3 × 3² × 5", "2³ x 3² x 5"]}',
  'On divise successivement 360 par les nombres premiers :\n\n• 360 ÷ 2 = 180\n• 180 ÷ 2 = 90\n• 90 ÷ 2 = 45\n• 45 ÷ 3 = 15\n• 15 ÷ 3 = 5\n• 5 ÷ 5 = 1\n\nOn a donc utilisé le facteur 2 trois fois, le facteur 3 deux fois et le facteur 5 une fois.\n\n**360 = 2³ × 3² × 5**\n\nVérification : 8 × 9 × 5 = 72 × 5 = 360 ✓',
  'Oublier un facteur ou ne pas aller jusqu''au bout de la décomposition. Par exemple, écrire 360 = 2² × 90 sans continuer à décomposer 90. Il faut diviser jusqu''à obtenir 1.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0210000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_03',
  'Sujet blanc CRPE — Épreuve de mathématiques n°3', 'Avance', 'qcm',
  'Un triangle ABC a AB = 8 cm, AC = 6 cm et l''angle en A = 90°. Calculez la longueur de BC et l''aire du triangle.',
  NULL,
  '[{"id": "a", "label": "BC = 10 cm et aire = 24 cm²"}, {"id": "b", "label": "BC = 10 cm et aire = 48 cm²"}, {"id": "c", "label": "BC = 14 cm et aire = 24 cm²"}, {"id": "d", "label": "BC = 10 cm et aire = 30 cm²"}]',
  '{"mode": "value", "value": "a"}',
  'Le triangle ABC est rectangle en A.\n\n**Calcul de BC** (théorème de Pythagore) :\nBC² = AB² + AC² = 8² + 6² = 64 + 36 = 100\nBC = √100 = **10 cm**\n\n**Calcul de l''aire** :\nAire = (AB × AC) / 2 = (8 × 6) / 2 = 48 / 2 = **24 cm²**\n\nLes deux côtés de l''angle droit (AB et AC) servent directement de base et de hauteur.',
  'Oublier de diviser par 2 pour le calcul de l''aire (trouver 48 cm² au lieu de 24 cm²), ou additionner les côtés au lieu d''appliquer le théorème de Pythagore (trouver BC = 14 cm).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0210000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_03',
  'Sujet blanc CRPE — Épreuve de mathématiques n°3', 'Avance', 'reponse_courte',
  'Un sac contient 4 boules rouges, 3 bleues et 2 vertes. On tire une boule au hasard. Quelle est la probabilité de NE PAS tirer une boule rouge ? Exprimer sous forme de fraction irréductible.',
  NULL,
  NULL,
  '{"mode": "acceptableAnswers", "acceptableAnswers": ["5/9"]}',
  'Nombre total de boules : 4 + 3 + 2 = **9 boules**.\n\nNombre de boules qui ne sont PAS rouges : 3 bleues + 2 vertes = **5 boules**.\n\nP(pas rouge) = 5/9\n\nVérification : P(rouge) = 4/9 et P(rouge) + P(pas rouge) = 4/9 + 5/9 = 9/9 = 1 ✓\n\nLa fraction 5/9 est déjà irréductible car 5 et 9 n''ont aucun diviseur commun autre que 1.',
  'Calculer la probabilité de tirer une boule rouge (4/9) au lieu de la probabilité complémentaire (5/9). Ou se tromper dans le dénombrement total des boules.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0210000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_03',
  'Sujet blanc CRPE — Épreuve de mathématiques n°3', 'Avance', 'qcm',
  'Un robinet remplit un bac de 300 L en 2 h 30. Un second robinet le remplit en 5 h. Si les deux robinets coulent ensemble, en combien de temps le bac sera-t-il rempli ?',
  NULL,
  '[{"id": "a", "label": "1 h 15 min"}, {"id": "b", "label": "1 h 40 min"}, {"id": "c", "label": "2 h"}, {"id": "d", "label": "3 h 45 min"}]',
  '{"mode": "value", "value": "b"}',
  '**Débit du robinet 1** : 300 L ÷ 2,5 h = **120 L/h**\n\n**Débit du robinet 2** : 300 L ÷ 5 h = **60 L/h**\n\n**Débit total** (les deux ensemble) : 120 + 60 = **180 L/h**\n\n**Temps pour remplir 300 L** : 300 ÷ 180 = 5/3 h\n\nConversion : 5/3 h = 1 h + 2/3 h = 1 h + 40 min = **1 h 40 min**\n\nVérification : en 1 h 40 min (= 5/3 h), le robinet 1 verse 120 × 5/3 = 200 L et le robinet 2 verse 60 × 5/3 = 100 L. Total : 200 + 100 = 300 L ✓',
  'Faire la moyenne des temps (2h30 + 5h) / 2 = 3h45, ce qui est faux : on additionne les débits, pas les temps. Autre erreur : diviser le temps le plus court par 2 (1h15).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0210000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_03',
  'Sujet blanc CRPE — Épreuve de mathématiques n°3', 'Avance', 'vrai_faux',
  'Si la moyenne d''une classe de 25 élèves est 12/20, et que la moyenne d''une autre classe de 30 élèves est 14/20, alors la moyenne globale des 55 élèves est 13/20.',
  NULL,
  NULL,
  '{"mode": "value", "value": "faux"}',
  'La moyenne globale n''est **pas** la moyenne simple des deux moyennes. Il faut calculer la **moyenne pondérée** par les effectifs.\n\n**Somme des notes classe 1** : 25 × 12 = 300\n**Somme des notes classe 2** : 30 × 14 = 420\n**Somme totale** : 300 + 420 = 720\n**Effectif total** : 25 + 30 = 55\n\n**Moyenne globale** : 720 ÷ 55 = 144/11 ≈ **13,09**\n\nLa moyenne globale est 144/11, qui est différente de 13. Elle est légèrement supérieure à 13 car la classe la plus nombreuse (30 élèves) a la meilleure moyenne (14/20), ce qui « tire » la moyenne globale vers le haut.\n\nL''affirmation est donc **FAUSSE**.',
  'Croire que la moyenne de deux moyennes est toujours la moyenne globale. Cela n''est vrai que si les deux groupes ont le même effectif. Ici, 25 ≠ 30, donc la moyenne arithmétique simple (12 + 14) / 2 = 13 ne donne pas le bon résultat.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0210000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_03',
  'Sujet blanc CRPE — Épreuve de mathématiques n°3', 'Avance', 'reponse_courte',
  'Un élève de CM1 effectue la multiplication posée 23 × 14 et trouve 252 au lieu de 322. En analysant son calcul posé, on constate qu''il a bien calculé 23 × 4 = 92, mais a ensuite calculé 23 × 1 = 23 au lieu de 23 × 10 = 230 (il n''a pas décalé d''un rang). Quel est le nom de cette erreur en didactique des mathématiques et comment y remédier ?',
  NULL,
  NULL,
  '{"mode": "acceptableAnswers", "acceptableAnswers": ["erreur de positionnement", "oubli du décalage", "numération positionnelle", "erreur de numération positionnelle", "erreur liée à la numération positionnelle", "erreur de valeur positionnelle"]}',
  'Il s''agit d''une **erreur de numération positionnelle** (ou erreur de positionnement / oubli du décalage).\n\n**Analyse de l''erreur** :\n• L''élève a calculé 23 × 4 = 92 ✓\n• Puis 23 × 1 = 23 (au lieu de 23 × 10 = 230) ✗\n• Il additionne : 92 + 23 × 10 = 92 + 230 = 322, mais il fait 92 + 160 = 252\n\nEn réalité : 92 + 23 (sans décalage) = 92 + 23 = 115... L''élève a probablement posé 23 décalé d''un rang mais s''est trompé dans l''addition. Le résultat 252 = 92 + 160, ce qui correspond à 23 × 4 + 23 × 1 décalé incorrectement.\n\n**Remédiation** :\n- Revenir à la décomposition : 23 × 14 = 23 × (10 + 4) = 23 × 10 + 23 × 4\n- Utiliser du matériel de numération pour comprendre que le « 1 » de 14 vaut 10\n- Travailler sur la valeur des chiffres selon leur position\n- Faire poser la multiplication avec des couleurs différentes pour chaque rang',
  'Ne pas identifier que l''erreur est liée à la compréhension de la numération de position. L''élève ne fait pas une simple erreur de calcul : il ne comprend pas que le chiffre des dizaines du multiplicateur représente des dizaines, pas des unités.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b0210000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_sujet_blanc_03',
  'Sujet blanc CRPE — Épreuve de mathématiques n°3', 'Avance', 'qcm',
  'Une maquette à l''échelle 1/50 d''un bâtiment mesure 24 cm de haut et 16 cm de large. Quelle est la surface réelle de la façade du bâtiment ?',
  NULL,
  '[{"id": "a", "label": "19,2 m²"}, {"id": "b", "label": "96 m²"}, {"id": "c", "label": "192 m²"}, {"id": "d", "label": "48 m²"}]',
  '{"mode": "value", "value": "b"}',
  '**Méthode 1 — Par les dimensions réelles** :\n\nÉchelle 1/50 signifie que 1 cm sur la maquette = 50 cm en réalité.\n\n• Hauteur réelle : 24 × 50 = 1 200 cm = **12 m**\n• Largeur réelle : 16 × 50 = 800 cm = **8 m**\n• Surface réelle : 12 × 8 = **96 m²**\n\n**Méthode 2 — Par le coefficient de surface** :\n\nSi l''échelle linéaire est 1/50, l''échelle des surfaces est (1/50)² = 1/2 500.\n\n• Surface sur la maquette : 24 × 16 = 384 cm²\n• Surface réelle : 384 × 2 500 = 960 000 cm² = **96 m²** ✓\n\nVérification : 960 000 cm² ÷ 10 000 = 96 m² ✓',
  'Appliquer le facteur d''échelle une seule fois pour la surface (24 × 16 × 50 = 19 200 cm² = 19,2 m²). Pour les surfaces, il faut appliquer le facteur d''échelle AU CARRÉ, car on multiplie deux dimensions.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
