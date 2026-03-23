-- Seed: Multiples, diviseurs et nombres premiers (7 exercices, Intermédiaire, free)

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7030000-0000-0000-0000-000000000001', 'Mathematiques', 'nombres_calcul', 'math_multiples_diviseurs',
  'Multiples, diviseurs et nombres premiers', 'Intermediaire', 'qcm',
  'Parmi les nombres suivants, lequel est un diviseur de 84 ?',
  NULL,
  '[{"id": "a", "label": "8"}, {"id": "b", "label": "7"}, {"id": "c", "label": "9"}, {"id": "d", "label": "16"}]',
  '{"mode": "single", "value": "b"}',
  '84 ÷ 7 = 12, donc 7 est bien un diviseur de 84. Vérifions les autres propositions : 84 ÷ 8 = 10,5 (non entier, donc 8 ne divise pas 84), 84 ÷ 9 = 9,33… (non entier), 84 ÷ 16 = 5,25 (non entier). Un nombre d est diviseur d''un entier n si et seulement s''il existe un entier q tel que n = d × q. Ici, 84 = 7 × 12. La décomposition en facteurs premiers de 84 est : 84 = 2² × 3 × 7. Ses diviseurs sont tous les produits possibles de ces facteurs premiers : 1, 2, 3, 4, 6, 7, 12, 14, 21, 28, 42, 84.',
  'Confondre « diviseur de 84 » avec « 84 est divisible par... » (ce sont deux formulations équivalentes) ou tester seulement la divisibilité par 2 et 3 en oubliant de vérifier par 7.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7030000-0000-0000-0000-000000000002', 'Mathematiques', 'nombres_calcul', 'math_multiples_diviseurs',
  'Multiples, diviseurs et nombres premiers', 'Intermediaire', 'vrai_faux',
  'Un nombre est divisible par 4 si et seulement si son chiffre des unités est pair.',
  NULL,
  NULL,
  '{"mode": "single", "value": "faux"}',
  'Cette affirmation est fausse. Le critère de divisibilité par 4 ne porte pas sur le seul chiffre des unités, mais sur le nombre formé par les deux derniers chiffres. Par exemple, 22 a un chiffre des unités pair (2) mais n''est pas divisible par 4 (22 ÷ 4 = 5,5). En revanche, 32 est divisible par 4 car 32 ÷ 4 = 8. Le critère correct est : un nombre est divisible par 4 si le nombre formé par ses deux derniers chiffres est divisible par 4. Cela se démontre par le fait que 100 = 4 × 25, donc tout multiple de 100 est divisible par 4, et il suffit de vérifier le reste (les deux derniers chiffres). Le critère énoncé (chiffre des unités pair) correspond au critère de divisibilité par 2, non par 4.',
  'Confondre le critère de divisibilité par 2 (chiffre des unités pair) avec celui de divisibilité par 4 (nombre formé par les deux derniers chiffres divisible par 4).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7030000-0000-0000-0000-000000000003', 'Mathematiques', 'nombres_calcul', 'math_multiples_diviseurs',
  'Multiples, diviseurs et nombres premiers', 'Intermediaire', 'qcm',
  'Le nombre 91 est-il premier ?',
  NULL,
  '[{"id": "a", "label": "Oui, car il n''est divisible ni par 2, ni par 3, ni par 5"}, {"id": "b", "label": "Non, car 91 = 7 × 13"}, {"id": "c", "label": "Oui, car il se termine par 1"}, {"id": "d", "label": "Non, car 91 = 9 × 11"}]',
  '{"mode": "single", "value": "b"}',
  '91 n''est PAS un nombre premier car 91 = 7 × 13. C''est l''un des pièges les plus classiques du CRPE. Pour vérifier si un nombre n est premier, on teste sa divisibilité par tous les nombres premiers p tels que p² ≤ n. Ici, √91 ≈ 9,5, donc on teste les nombres premiers jusqu''à 9 : 2, 3, 5, 7. 91 ÷ 2 = 45,5 (non), 91 ÷ 3 = 30,33… (non, car 9+1 = 10 non divisible par 3), 91 ÷ 5 = 18,2 (non), 91 ÷ 7 = 13 (oui !). Donc 91 = 7 × 13. Le distracteur (a) illustre l''erreur fréquente de ne tester que 2, 3 et 5 sans aller jusqu''à 7. Le distracteur (d) est faux car 9 × 11 = 99 ≠ 91.',
  'S''arrêter aux critères de divisibilité par 2, 3 et 5 sans penser à tester 7, et conclure à tort que 91 est premier.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7030000-0000-0000-0000-000000000004', 'Mathematiques', 'nombres_calcul', 'math_multiples_diviseurs',
  'Multiples, diviseurs et nombres premiers', 'Intermediaire', 'reponse_courte',
  'Donnez la décomposition en facteurs premiers de 180.',
  NULL,
  NULL,
  '{"mode": "text", "acceptableAnswers": ["2² × 3² × 5", "2^2 × 3^2 × 5", "2^2 x 3^2 x 5", "4 × 9 × 5", "2² x 3² x 5"]}',
  'La décomposition en facteurs premiers de 180 se fait par divisions successives : 180 ÷ 2 = 90, 90 ÷ 2 = 45, 45 ÷ 3 = 15, 15 ÷ 3 = 5, 5 ÷ 5 = 1. Donc 180 = 2² × 3² × 5. Cette décomposition est unique (théorème fondamental de l''arithmétique). Elle est essentielle pour calculer le PGCD et le PPCM, simplifier des fractions, et résoudre des problèmes d''arithmétique au CRPE. Méthode alternative par arbre de facteurs : 180 = 18 × 10 = (2 × 9) × (2 × 5) = (2 × 3²) × (2 × 5) = 2² × 3² × 5.',
  'Oublier un facteur dans la décomposition (par exemple écrire 2 × 3² × 5 en oubliant le carré de 2) ou ne pas achever la décomposition (s''arrêter à 180 = 4 × 45 sans décomposer davantage).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7030000-0000-0000-0000-000000000005', 'Mathematiques', 'nombres_calcul', 'math_multiples_diviseurs',
  'Multiples, diviseurs et nombres premiers', 'Intermediaire', 'qcm',
  'On sait que 360 = 2³ × 3² × 5 et que 150 = 2 × 3 × 5². Quel est le PGCD de 360 et 150 ?',
  NULL,
  '[{"id": "a", "label": "30"}, {"id": "b", "label": "60"}, {"id": "c", "label": "1800"}, {"id": "d", "label": "15"}]',
  '{"mode": "single", "value": "a"}',
  'Le PGCD se calcule en prenant, pour chaque facteur premier commun, la plus petite puissance. Facteurs premiers communs : 2, 3 et 5. Pour 2 : min(3, 1) = 1, donc 2¹. Pour 3 : min(2, 1) = 1, donc 3¹. Pour 5 : min(1, 2) = 1, donc 5¹. PGCD(360, 150) = 2 × 3 × 5 = 30. Le distracteur 60 (réponse b) correspondrait à une erreur de prise de la plus grande puissance pour un facteur. Le distracteur 1800 (réponse c) est en réalité le PPCM (qui prend la plus grande puissance de chaque facteur). Le distracteur 15 omet le facteur 2.',
  'Confondre PGCD et PPCM : le PGCD prend le minimum des exposants, le PPCM prend le maximum. L''erreur classique est de calculer le PPCM (1800) en pensant calculer le PGCD.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7030000-0000-0000-0000-000000000006', 'Mathematiques', 'nombres_calcul', 'math_multiples_diviseurs',
  'Multiples, diviseurs et nombres premiers', 'Intermediaire', 'reponse_courte',
  'On veut simplifier la fraction 84/126 en fraction irréductible. Quelle est cette fraction irréductible ?',
  NULL,
  NULL,
  '{"mode": "text", "acceptableAnswers": ["2/3", "2 / 3"]}',
  'Pour simplifier 84/126, on cherche le PGCD de 84 et 126. Décompositions : 84 = 2² × 3 × 7 et 126 = 2 × 3² × 7. PGCD(84, 126) = 2 × 3 × 7 = 42. Donc 84/126 = (84 ÷ 42)/(126 ÷ 42) = 2/3. La fraction 2/3 est irréductible car PGCD(2, 3) = 1. Application concrète du PGCD : simplifier une fraction revient à diviser numérateur et dénominateur par leur PGCD. C''est une compétence attendue au CRPE, tant en mathématiques pures que dans les problèmes concrets (proportions, probabilités).',
  'Simplifier partiellement sans obtenir la fraction irréductible (par exemple diviser par 2 pour obtenir 42/63, puis par 7 pour obtenir 6/9, puis par 3 pour obtenir 2/3 — la méthode fonctionne mais est plus longue et source d''erreurs d''arrêt prématuré).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'f7030000-0000-0000-0000-000000000007', 'Mathematiques', 'nombres_calcul', 'math_multiples_diviseurs',
  'Multiples, diviseurs et nombres premiers', 'Intermediaire', 'qcm',
  'Un fleuriste dispose de 48 roses et 36 tulipes. Il veut réaliser des bouquets identiques en utilisant toutes les fleurs, sans qu''il en reste. Quel est le nombre maximal de bouquets qu''il peut réaliser ?',
  NULL,
  '[{"id": "a", "label": "6 bouquets"}, {"id": "b", "label": "12 bouquets"}, {"id": "c", "label": "8 bouquets"}, {"id": "d", "label": "4 bouquets"}]',
  '{"mode": "single", "value": "b"}',
  'Le nombre maximal de bouquets identiques correspond au PGCD de 48 et 36. Décompositions : 48 = 2⁴ × 3 et 36 = 2² × 3². PGCD(48, 36) = 2² × 3 = 12. On peut donc réaliser 12 bouquets, chacun contenant 48 ÷ 12 = 4 roses et 36 ÷ 12 = 3 tulipes. Ce type de problème concret est récurrent au CRPE : il faut reconnaître que la situation relève du PGCD (partage en parts égales maximales) et non du PPCM. Le distracteur 6 correspondrait à un calcul erroné du PGCD. Le distracteur 8 est un diviseur de 48 mais pas de 36. Le distracteur 4 est un diviseur commun mais pas le plus grand.',
  'Confondre ce problème avec une situation de PPCM (qui s''applique aux problèmes de synchronisation, comme « à quel moment deux bus repartent ensemble »), ou prendre un diviseur commun qui n''est pas le plus grand.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'free', true
) ON CONFLICT (id) DO NOTHING;
