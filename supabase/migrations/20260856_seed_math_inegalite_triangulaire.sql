-- Migration: 10 exercices — L'inégalité triangulaire et existence d'un triangle
-- Série : math_inegalite_triangulaire (Mathématiques, geometrie)
-- Condition d'existence, construction possible ou impossible, applications
-- UUID prefix: a8190000

-- Q1 — QCM — Énoncé de l'inégalité triangulaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a8190000-0000-0000-0000-000000000001',
  'Mathematiques',
  'geometrie',
  'math_inegalite_triangulaire',
  'Inégalité triangulaire et existence d''un triangle',
  'Standard',
  'qcm',
  'Quel est l''énoncé correct de l''inégalité triangulaire ?',
  NULL,
  '[{"id":"a","label":"Dans tout triangle, chaque côté est inférieur ou égal à la somme des deux autres."},{"id":"b","label":"Dans tout triangle, chaque côté est strictement inférieur à la somme des deux autres."},{"id":"c","label":"Dans tout triangle, chaque côté est strictement supérieur à la différence des deux autres."},{"id":"d","label":"Dans tout triangle, la somme de deux côtés est égale au troisième côté."}]',
  '{"mode":"single","value":"b"}',
  'L''inégalité triangulaire stipule que, dans tout triangle, chaque côté est STRICTEMENT inférieur à la somme des deux autres. Si a, b, c sont les longueurs des côtés, on a : a < b + c, b < a + c et c < a + b. L''inégalité est stricte : l''égalité n''est pas possible pour un vrai triangle (elle correspondrait à un triangle dégénéré, c''est-à-dire à trois points alignés). La proposition c) est vraie aussi (a > |b − c|), mais elle n''énonce pas le principe classique de l''inégalité triangulaire.',
  'Confondre l''inégalité stricte (<) avec l''inégalité large (≤). Un triangle vérifie a < b + c et non a ≤ b + c : l''égalité correspond à un triangle plat (points alignés), qui n''est pas un vrai triangle.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — vrai_faux — Triangle de côtés 3, 4, 8 cm
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a8190000-0000-0000-0000-000000000002',
  'Mathematiques',
  'geometrie',
  'math_inegalite_triangulaire',
  'Inégalité triangulaire et existence d''un triangle',
  'Standard',
  'vrai_faux',
  'On peut construire un triangle de côtés 3 cm, 4 cm et 8 cm.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]',
  '{"mode":"single","value":"false"}',
  'Pour vérifier si un triangle est constructible, il faut que la somme de chaque paire de côtés soit strictement supérieure au troisième. Ici : 3 + 4 = 7, et 7 < 8. La condition n''est pas satisfaite pour cette paire. Il est donc IMPOSSIBLE de construire un triangle de côtés 3, 4 et 8 cm. Le côté de 8 cm est trop long : il dépasse la somme des deux autres.',
  'Ne vérifier qu''une seule des trois inégalités (par exemple 4 + 8 > 3, ce qui est vrai) et en conclure que le triangle est constructible. Il faut vérifier les TROIS inégalités, et notamment la plus contraignante : la somme des deux plus petits côtés doit être supérieure au plus grand.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Lequel de ces triplets forme un triangle ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a8190000-0000-0000-0000-000000000003',
  'Mathematiques',
  'geometrie',
  'math_inegalite_triangulaire',
  'Inégalité triangulaire et existence d''un triangle',
  'Standard',
  'qcm',
  'Parmi les quatre triplets suivants, lequel peut être l''ensemble des longueurs des côtés d''un triangle ?',
  NULL,
  '[{"id":"a","label":"2 cm, 3 cm, 6 cm"},{"id":"b","label":"5 cm, 7 cm, 9 cm"},{"id":"c","label":"1 cm, 2 cm, 4 cm"},{"id":"d","label":"4 cm, 4 cm, 9 cm"}]',
  '{"mode":"single","value":"b"}',
  'On vérifie l''inégalité triangulaire pour chaque triplet en testant si la somme des deux plus petits côtés est strictement supérieure au plus grand :\n• (a) 2 + 3 = 5 < 6 → non constructible.\n• (b) 5 + 7 = 12 > 9 ✓ ; 5 + 9 = 14 > 7 ✓ ; 7 + 9 = 16 > 5 ✓ → constructible.\n• (c) 1 + 2 = 3 < 4 → non constructible.\n• (d) 4 + 4 = 8 < 9 → non constructible.\nSeul le triplet (b) satisfait les trois inégalités.',
  'Ne tester que l''inégalité impliquant le plus grand côté et négliger les autres, ou inverser le sens de l''inégalité. Il suffit de tester la condition critique : somme des deux plus petits > plus grand. Pour (d), 4 + 4 = 8 est bien inférieur à 9 : erreur classique de penser qu''un triangle isocèle est toujours constructible.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — reponse_courte — Valeurs possibles du 3e côté (6 cm et 10 cm)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a8190000-0000-0000-0000-000000000004',
  'Mathematiques',
  'geometrie',
  'math_inegalite_triangulaire',
  'Inégalité triangulaire et existence d''un triangle',
  'Standard',
  'reponse_courte',
  'Un triangle a deux côtés mesurant 6 cm et 10 cm. En notant c la longueur du troisième côté (en cm), donnez l''encadrement strict que doit vérifier c pour que le triangle soit constructible.',
  NULL,
  NULL,
  '{"mode":"acceptableAnswers","acceptableAnswers":["4 < c < 16","4<c<16","entre 4 et 16 exclus","c appartient à ]4 ; 16["]}',
  'L''inégalité triangulaire impose trois conditions, qui se réduisent à un encadrement :\n1) c < 6 + 10 = 16 (le 3e côté doit être inférieur à la somme des deux autres)\n2) 6 < c + 10, soit c > −4 (toujours vraie pour c > 0)\n3) 10 < c + 6, soit c > 4 (condition la plus restrictive)\nOn obtient donc : 4 < c < 16. Les bornes sont exclues : c = 4 ou c = 16 donneraient un triangle dégénéré (points alignés).',
  'Oublier l''une des deux bornes, ou inclure les bornes (écrire 4 ≤ c ≤ 16). La borne inférieure vient de |b − a| = |10 − 6| = 4 : si c ≤ 4 le triangle s''effondre. La borne supérieure vient de a + b = 16 : si c ≥ 16 le triangle est impossible.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — vrai_faux — Triangle dégénéré (côté = somme des deux autres)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a8190000-0000-0000-0000-000000000005',
  'Mathematiques',
  'geometrie',
  'math_inegalite_triangulaire',
  'Inégalité triangulaire et existence d''un triangle',
  'Standard',
  'vrai_faux',
  'Un triangle dit « dégénéré » est une configuration où un côté est égal à la somme des deux autres (par exemple : côtés de 3 cm, 4 cm et 7 cm). Dans ce cas, les trois sommets sont alignés.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]',
  '{"mode":"single","value":"true"}',
  'Lorsque l''on a c = a + b (égalité au lieu d''inégalité stricte), les trois points A, B, C sont alignés : le « triangle » est aplati et n''a plus d''aire. On parle de triangle dégénéré. Ici : 3 + 4 = 7, donc les trois points sont alignés. Ce n''est pas un vrai triangle au sens géométrique : il ne définit pas une surface. C''est pourquoi l''inégalité triangulaire est STRICTE.',
  'Penser qu''un triangle dégénéré est quand même un triangle valide. En géométrie élémentaire (et au CRPE), on exige que les trois points ne soient pas alignés pour parler de triangle, ce qui impose l''inégalité stricte.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Triangle 5, 12, 13 : constructible et type
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a8190000-0000-0000-0000-000000000006',
  'Mathematiques',
  'geometrie',
  'math_inegalite_triangulaire',
  'Inégalité triangulaire et existence d''un triangle',
  'Standard',
  'qcm',
  'Dans un triangle ABC, on a AB = 5 cm, BC = 12 cm et AC = 13 cm. Ce triangle est-il constructible ? Si oui, quel type de triangle est-ce ?',
  NULL,
  '[{"id":"a","label":"Non constructible, car 5 + 12 = 17 > 13."},{"id":"b","label":"Constructible ; c''est un triangle quelconque."},{"id":"c","label":"Constructible ; c''est un triangle rectangle en B."},{"id":"d","label":"Constructible ; c''est un triangle isocèle."}]',
  '{"mode":"single","value":"c"}',
  'Étape 1 — Vérification de l''inégalité triangulaire :\n• 5 + 12 = 17 > 13 ✓\n• 5 + 13 = 18 > 12 ✓\n• 12 + 13 = 25 > 5 ✓\nLe triangle est constructible.\n\nÉtape 2 — Identification du type :\nOn teste la réciproque du théorème de Pythagore avec le plus grand côté (AC = 13) comme hypoténuse supposée :\nAB² + BC² = 5² + 12² = 25 + 144 = 169 = 13² = AC²\nL''égalité est vérifiée, donc le triangle ABC est rectangle en B (l''angle droit est en face de l''hypoténuse AC).',
  'Confondre le sommet de l''angle droit avec l''hypoténuse. L''angle droit est en B (en face du plus grand côté AC = 13), et non en A ou C. Autre erreur : ne pas penser à vérifier la réciproque de Pythagore et se contenter de dire que le triangle est "quelconque".',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — reponse_courte — Valeur minimale de x (triangle isocèle, petit côté 5 cm)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a8190000-0000-0000-0000-000000000007',
  'Mathematiques',
  'geometrie',
  'math_inegalite_triangulaire',
  'Inégalité triangulaire et existence d''un triangle',
  'Standard',
  'reponse_courte',
  'Un triangle isocèle a un côté de base mesurant 5 cm. Les deux côtés égaux mesurent chacun x cm. Quelle est la valeur minimale que doit dépasser x (en cm) pour que le triangle soit constructible ?',
  NULL,
  NULL,
  '{"mode":"acceptableAnswers","acceptableAnswers":["2,5","2.5","x > 2,5","x > 2.5"]}',
  'On applique l''inégalité triangulaire aux trois paires de côtés :\n1) x + x > 5 → 2x > 5 → x > 2,5 (condition la plus restrictive)\n2) x + 5 > x → 5 > 0 ✓ (toujours vraie)\n3) x + 5 > x → même condition, toujours vraie.\nDonc x doit être strictement supérieur à 2,5 cm. La borne 2,5 est exclue (égalité = triangle dégénéré).',
  'Oublier d''appliquer l''inégalité à la paire (x, x) et écrire seulement la condition x + 5 > x, qui est trivialement vraie. La condition non triviale est bien x > 5/2 = 2,5 cm.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Compléter la phrase sur l'inégalité triangulaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a8190000-0000-0000-0000-000000000008',
  'Mathematiques',
  'geometrie',
  'math_inegalite_triangulaire',
  'Inégalité triangulaire et existence d''un triangle',
  'Standard',
  'qcm',
  'L''inégalité triangulaire affirme que, dans tout triangle, chaque côté est strictement inférieur à ___. Quelle expression complète correctement cette phrase ?',
  NULL,
  '[{"id":"a","label":"… la différence des deux autres côtés."},{"id":"b","label":"… la somme des deux autres côtés."},{"id":"c","label":"… le double du plus petit côté."},{"id":"d","label":"… le produit des deux autres côtés."}]',
  '{"mode":"single","value":"b"}',
  'La formulation complète de l''inégalité triangulaire est : dans tout triangle de côtés a, b, c, on a a < b + c, b < a + c et c < a + b. Chaque côté est donc strictement inférieur à la SOMME des deux autres. Les propositions a), c) et d) sont fausses : la différence des deux autres côtés donne la borne inférieure (|b − c| < a), et non la borne supérieure.',
  'Confondre la borne supérieure (somme) et la borne inférieure (différence en valeur absolue). L''inégalité triangulaire donne en réalité un encadrement complet : |b − c| < a < b + c.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — Triangle de côtés 5, 8, 12 cm constructible
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a8190000-0000-0000-0000-000000000009',
  'Mathematiques',
  'geometrie',
  'math_inegalite_triangulaire',
  'Inégalité triangulaire et existence d''un triangle',
  'Standard',
  'vrai_faux',
  'Un triangle de côtés 5 cm, 8 cm et 12 cm est constructible.',
  NULL,
  '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]',
  '{"mode":"single","value":"true"}',
  'On vérifie l''inégalité triangulaire pour les trois paires :\n• 5 + 8 = 13 > 12 ✓ (condition la plus contraignante)\n• 5 + 12 = 17 > 8 ✓\n• 8 + 12 = 20 > 5 ✓\nLes trois inégalités sont satisfaites, donc ce triangle est constructible. La condition critique est bien 5 + 8 > 12 : la somme des deux plus petits côtés (13) est strictement supérieure au plus grand côté (12).',
  'Penser que parce que 5 + 8 = 13 et 13 − 12 = 1 est "petit", le triangle est à la limite et donc non constructible. L''inégalité est stricte (>), et 13 > 12, donc la condition est bien remplie.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Corde tendue entre trois piquets
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a8190000-0000-0000-0000-000000000010',
  'Mathematiques',
  'geometrie',
  'math_inegalite_triangulaire',
  'Inégalité triangulaire et existence d''un triangle',
  'Standard',
  'reponse_courte',
  'En activité de jardinage, on plante trois piquets dans le sol et on tend une corde entre eux pour délimiter un espace triangulaire. Est-ce que cette disposition forme toujours un triangle au sens géométrique ? Justifiez brièvement.',
  NULL,
  NULL,
  '{"mode":"acceptableAnswers","acceptableAnswers":["non","Non","non, pas toujours","Non, si les piquets sont alignés","Non, si une longueur est supérieure ou égale à la somme des deux autres"]}',
  'Non, ce n''est pas toujours le cas. Pour obtenir un vrai triangle, il faut que les trois piquets ne soient pas alignés ET que les longueurs des segments vérifient l''inégalité triangulaire stricte. Deux situations empêchent la formation d''un triangle :\n1) Les trois piquets sont alignés : la corde forme une droite, pas un triangle (triangle dégénéré).\n2) Une des longueurs de corde est supérieure ou égale à la somme des deux autres : la corde ne peut pas se refermer pour former un triangle.\nDans ces deux cas, l''inégalité triangulaire n''est pas respectée et aucune surface triangulaire n''est délimitée.',
  'Penser que trois piquets reliés par une corde forment automatiquement un triangle. Le contre-exemple le plus simple est d''aligner les trois piquets : la corde reste droite. La condition mathématique (inégalité triangulaire stricte) est la traduction de la condition physique réelle.',
  'valide',
  'CRPE Mathématiques',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
