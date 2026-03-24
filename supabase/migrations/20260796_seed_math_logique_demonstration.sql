-- Seed: Logique et démonstration mathématique (7 exercices)
-- Subdomain: nombres_calcul | Level: Intermediaire–Avancé | Access: free/premium
-- Topic: math_logique_demonstration

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd020000-0000-0000-0000-000000000001',
  'Mathematiques', 'nombres_calcul', 'math_logique_demonstration',
  'Logique et démonstration', 'Intermediaire',
  'qcm',
  'En mathématiques, pour démontrer qu''une propriété P est FAUSSE, il suffit de :',
  NULL,
  '[{"id":"a","label":"Vérifier la propriété sur plusieurs exemples et constater qu''elle ne marche jamais"},{"id":"b","label":"Trouver un seul contre-exemple"},{"id":"c","label":"Démontrer la propriété opposée sur tous les cas possibles"},{"id":"d","label":"Demander à l''enseignant de confirmer"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Pour réfuter une propriété universelle (du type « Pour tout n, P(n) est vraie »), il suffit de trouver UN SEUL contre-exemple — un cas particulier où la propriété est fausse. En revanche, pour démontrer qu''une propriété est VRAIE pour tous les cas, un ou plusieurs exemples ne suffisent jamais : il faut une démonstration générale. C''est l''asymétrie fondamentale de la logique mathématique. Exemple : pour réfuter « tout nombre premier est impair », il suffit de donner l''exemple de 2 (premier et pair). Au CRPE, cette logique s''applique notamment aux questions du type « ce résultat est-il toujours vrai ? ».',
  'Penser que vérifier sur de nombreux exemples prouve une propriété. Un exemple confirme, cent exemples ne prouvent pas ; un seul contre-exemple réfute.',
  'valide',
  'Génération Claude — Logique mathématique / Contre-exemple / Raisonnement',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd020000-0000-0000-0000-000000000002',
  'Mathematiques', 'nombres_calcul', 'math_logique_demonstration',
  'Logique et démonstration', 'Intermediaire',
  'vrai_faux',
  'VRAI ou FAUX : La proposition « Si P alors Q » est logiquement équivalente à « Si Q alors P ».',
  NULL,
  '[{"id":"vrai","label":"VRAI"},{"id":"faux","label":"FAUX"}]'::jsonb,
  '{"mode":"single","value":"faux"}'::jsonb,
  'FAUX. « Si P alors Q » (P ⟹ Q) est la proposition initiale. « Si Q alors P » (Q ⟹ P) est la RÉCIPROQUE, qui n''est pas forcément vraie. Exemple : « Si un quadrilatère est un carré, alors il a 4 angles droits » est vraie. La réciproque « Si un quadrilatère a 4 angles droits, alors c''est un carré » est FAUSSE (un rectangle a aussi 4 angles droits sans être un carré). En revanche, « Si P alors Q » est équivalente à sa CONTRAPOSÉE : « Si non Q alors non P ». Au CRPE, la confusion entre une propriété et sa réciproque est une erreur très fréquente, notamment en géométrie (propriétés des quadrilatères, théorème de Pythagore et sa réciproque).',
  'Confondre implication et équivalence, ou confondre réciproque et contraposée.',
  'valide',
  'Génération Claude — Logique mathématique / Implication / Réciproque',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd020000-0000-0000-0000-000000000003',
  'Mathematiques', 'nombres_calcul', 'math_logique_demonstration',
  'Logique et démonstration', 'Intermediaire',
  'qcm',
  'Parmi les propositions suivantes, laquelle est le CONTRE-EXEMPLE de « Tout carré d''un entier impair est impair » ?',
  NULL,
  '[{"id":"a","label":"7² = 49 (impair)"},{"id":"b","label":"4² = 16 (pair)"},{"id":"c","label":"3² = 9 (impair)"},{"id":"d","label":"Il n''existe pas de contre-exemple, la propriété est vraie"}]'::jsonb,
  '{"mode":"single","value":"d"}'::jsonb,
  'La propriété « Tout carré d''un entier impair est impair » est en réalité VRAIE. Il n''existe donc pas de contre-exemple. Preuve : si n est impair, alors n = 2k + 1 pour un entier k. Alors n² = (2k+1)² = 4k² + 4k + 1 = 2(2k² + 2k) + 1, qui est bien de la forme 2m + 1 (impair). La réponse b (4² = 16) n''est pas un contre-exemple car 4 est PAIR, pas impair — et la propriété ne parle que des entiers impairs. Un contre-exemple n''aurait de sens que si on trouvait un entier impair dont le carré est pair, ce qui est impossible.',
  'Proposer 4² = 16 comme contre-exemple, en oubliant que 4 est pair et que la propriété ne porte que sur les entiers impairs.',
  'valide',
  'Génération Claude — Logique / Contre-exemple / Démonstration algébrique',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd020000-0000-0000-0000-000000000004',
  'Mathematiques', 'nombres_calcul', 'math_logique_demonstration',
  'Logique et démonstration', 'Avance',
  'qcm',
  'Dans un raisonnement par l''absurde, quelle est la méthode générale ?',
  NULL,
  '[{"id":"a","label":"On suppose que la conclusion est vraie et on en déduit la prémisse"},{"id":"b","label":"On suppose que la conclusion est FAUSSE (négation de ce qu''on veut démontrer) et on montre que cela conduit à une contradiction"},{"id":"c","label":"On vérifie la propriété sur un grand nombre d''exemples"},{"id":"d","label":"On démontre d''abord la réciproque, puis on conclut sur la propriété initiale"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Dans un raisonnement par l''absurde (ou réductio ad absurdum), on part de l''hypothèse que ce qu''on veut démontrer est FAUX, et on montre que cette hypothèse conduit à une contradiction logique (un résultat manifestement faux ou en contradiction avec une propriété connue). On en conclut que l''hypothèse initiale (la négation) est impossible, donc que la propriété est vraie. Exemple classique : démonstration de l''infinité des nombres premiers (Euclide). On suppose qu''il y en a un nombre fini p₁, p₂, …, pₙ, on construit N = p₁ × p₂ × … × pₙ + 1 qui ne peut être divisible par aucun des pᵢ, contradiction avec l''hypothèse que les pᵢ sont tous les nombres premiers.',
  'Confondre raisonnement par l''absurde et démonstration par la contraposée, ou penser qu''il suffit de chercher une contradiction sans partir de la négation de la conclusion.',
  'valide',
  'Génération Claude — Logique mathématique / Raisonnement par l''absurde / Euclide',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd020000-0000-0000-0000-000000000005',
  'Mathematiques', 'nombres_calcul', 'math_logique_demonstration',
  'Logique et démonstration', 'Intermediaire',
  'vrai_faux',
  'VRAI ou FAUX : La réciproque du théorème de Pythagore est vraie : si dans un triangle ABC on a AC² = AB² + BC², alors le triangle est rectangle en B.',
  NULL,
  '[{"id":"vrai","label":"VRAI"},{"id":"faux","label":"FAUX"}]'::jsonb,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'VRAI. Le théorème de Pythagore ET sa réciproque sont tous les deux vrais : (1) Théorème direct : si un triangle est rectangle en B, alors AC² = AB² + BC². (2) Réciproque : si AC² = AB² + BC², alors le triangle est rectangle en B. La réciproque permet de VÉRIFIER qu''un triangle est rectangle en calculant les carrés des côtés. Exemple : triangle avec les côtés 3, 4, 5 : 5² = 25 = 3² + 4² = 9 + 16 = 25 ✓ → triangle rectangle. ATTENTION : ce n''est pas toujours le cas. La réciproque de Thalès (si les rapports sont égaux, alors les droites sont parallèles) est aussi vraie, mais la réciproque de nombreux théorèmes est fausse (ex : réciproque de « carré ⟹ 4 angles droits » est fausse car le rectangle a aussi 4 angles droits).',
  'Confondre la réciproque de Pythagore (vraie) avec la réciproque de propriétés dont la réciproque est fausse (comme « 4 angles droits ⟹ carré »).',
  'valide',
  'Génération Claude — Logique / Réciproque / Théorème de Pythagore',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd020000-0000-0000-0000-000000000006',
  'Mathematiques', 'nombres_calcul', 'math_logique_demonstration',
  'Logique et démonstration', 'Avance',
  'qcm',
  'Parmi les raisonnements suivants, lequel constitue une démonstration VALIDE que la somme de deux nombres pairs est toujours paire ?',
  NULL,
  '[{"id":"a","label":"J''ai vérifié : 2+4=6, 6+8=14, 10+12=22. C''est toujours pair."},{"id":"b","label":"Soient a = 2k et b = 2m (deux entiers pairs, k et m entiers). Alors a + b = 2k + 2m = 2(k + m). Comme k + m est un entier, a + b est pair."},{"id":"c","label":"Un nombre pair plus un nombre pair, ça fait forcément pair, c''est logique."},{"id":"d","label":"Je prends le cas le plus général : 2 + 2 = 4, c''est pair."}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Seule la réponse b constitue une DÉMONSTRATION valide. Elle utilise le calcul algébrique pour prouver la propriété dans le cas GÉNÉRAL : en posant a = 2k et b = 2m (définition d''un entier pair comme multiple de 2), on obtient a + b = 2(k+m), qui est bien pair. Cette approche couvre TOUS les cas possibles. La réponse a (vérification sur des exemples) ne prouve pas la propriété pour tous les entiers pairs. La réponse c est une affirmation sans justification. La réponse d ne concerne qu''un seul cas particulier. Au CRPE, la distinction entre « vérifier » (exemples) et « démontrer » (preuve générale) est fondamentale.',
  'Croire que vérifier sur plusieurs exemples constitue une démonstration. En mathématiques, une démonstration doit être valide pour TOUS les cas du domaine concerné.',
  'valide',
  'Génération Claude — Logique / Démonstration algébrique / Calcul littéral',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fd020000-0000-0000-0000-000000000007',
  'Mathematiques', 'nombres_calcul', 'math_logique_demonstration',
  'Logique et démonstration', 'Avance',
  'qcm',
  'Euclide a démontré que le nombre de nombres premiers est infini. Quelle technique de raisonnement a-t-il utilisée ?',
  NULL,
  '[{"id":"a","label":"Raisonnement par récurrence"},{"id":"b","label":"Raisonnement par l''absurde"},{"id":"c","label":"Vérification exhaustive sur les 1000 premiers nombres"},{"id":"d","label":"Démonstration par contraposée"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Euclide (~300 av. J.-C.) a démontré l''infinité des nombres premiers par l''ABSURDE. Voici le raisonnement : (1) On suppose (par l''absurde) qu''il existe un nombre fini de nombres premiers : p₁, p₂, …, pₙ. (2) On construit N = p₁ × p₂ × … × pₙ + 1. (3) N est soit premier, soit divisible par un nombre premier. (4) Or N ne peut être divisible par aucun des pᵢ (car N laisse un reste de 1 à la division par chacun des pᵢ). (5) Donc N serait un nombre premier non inclus dans notre liste, ou aurait un facteur premier non inclus dans notre liste. (6) Contradiction avec l''hypothèse que la liste est complète. (7) Conclusion : l''hypothèse est fausse, il y a infiniment de nombres premiers. C''est un des exemples les plus élégants de raisonnement par l''absurde de toute l''histoire des mathématiques.',
  'Confondre raisonnement par l''absurde (partir de la négation de ce qu''on veut prouver) et raisonnement par récurrence (montrer P(n) ⟹ P(n+1)).',
  'valide',
  'Génération Claude — Logique / Raisonnement par l''absurde / Euclide / Nombres premiers',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
