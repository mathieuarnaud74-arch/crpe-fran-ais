-- ============================================================
-- Migration : 8 nouvelles séries d'exercices variés (80 questions)
-- Respecte la terminologie officielle Éduscol 2021
-- Types : tri_categories, surlignage_propositions
-- ============================================================

-- ============================================================
-- SÉRIE 1 : Types et formes de phrases (tri_categories)
-- Topic : grm_types_formes_phrases
-- UUID prefix : c1010000
-- Terminologie clé : l'exclamation est une FORME, pas un TYPE
-- ============================================================

-- Q1 — Facile — Classer des phrases par type (déclaratif / interrogatif / impératif)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c1010000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'grm_types_formes_phrases',
  'Types et formes de phrases',
  'Facile',
  'tri_categories',
  'Classez chaque phrase selon son type : déclaratif, interrogatif ou impératif.',
  NULL,
  '[{"id":"w1","label":"Le chat dort sur le canapé."},{"id":"w2","label":"Fermez la porte !"},{"id":"w3","label":"As-tu fini ton exercice ?"},{"id":"w4","label":"Les oiseaux chantent au printemps."},{"id":"w5","label":"Viens ici immédiatement."},{"id":"w6","label":"Où as-tu rangé mes clés ?"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"decl","label":"Déclaratif"},{"id":"inter","label":"Interrogatif"},{"id":"imper","label":"Impératif"}],"mapping":{"w1":"decl","w2":"imper","w3":"inter","w4":"decl","w5":"imper","w6":"inter"}}'::jsonb,
  'Retiens les trois types de phrases : le déclaratif affirme quelque chose (point final), l''interrogatif pose une question (point d''interrogation), l''impératif donne un ordre ou un conseil. Attention : « Fermez la porte ! » est impératif malgré le point d''exclamation — c''est un ordre.',
  'Confondre le type impératif et la forme exclamative : un ordre reste impératif même avec « ! ».',
  'valide',
  'CRPE Français — Types et formes de phrases',
  'free',
  true
);

-- Q2 — Facile — Classer par type (variantes)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c1010000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'grm_types_formes_phrases',
  'Types et formes de phrases',
  'Facile',
  'tri_categories',
  'Classez chaque phrase selon son type : déclaratif, interrogatif ou impératif.',
  NULL,
  '[{"id":"w1","label":"La Terre tourne autour du Soleil."},{"id":"w2","label":"Est-ce que tu comprends la leçon ?"},{"id":"w3","label":"Écoutez attentivement."},{"id":"w4","label":"Qui a pris mon stylo ?"},{"id":"w5","label":"Ne touche pas à ce vase."},{"id":"w6","label":"Le concert commence à vingt heures."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"decl","label":"Déclaratif"},{"id":"inter","label":"Interrogatif"},{"id":"imper","label":"Impératif"}],"mapping":{"w1":"decl","w2":"inter","w3":"imper","w4":"inter","w5":"imper","w6":"decl"}}'::jsonb,
  '« Ne touche pas à ce vase » est bien impératif (ordre négatif). La forme négative (« ne…pas ») se combine ici avec le type impératif : type et forme sont indépendants.',
  'Croire que la négation change le type de la phrase : « Ne touche pas » reste impératif, la négation est une forme.',
  'valide',
  'CRPE Français — Types et formes de phrases',
  'free',
  true
);

-- Q3 — Facile — TYPE ou FORME ? (piège CRPE fondamental)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c1010000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'grm_types_formes_phrases',
  'Types et formes de phrases',
  'Facile',
  'tri_categories',
  'Classez chaque terme : s''agit-il d''un TYPE de phrase ou d''une FORME de phrase selon la terminologie officielle ?',
  NULL,
  '[{"id":"w1","label":"Déclaratif"},{"id":"w2","label":"Exclamatif"},{"id":"w3","label":"Interrogatif"},{"id":"w4","label":"Négatif"},{"id":"w5","label":"Impératif"},{"id":"w6","label":"Passif"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"type","label":"Type de phrase"},{"id":"forme","label":"Forme de phrase"}],"mapping":{"w1":"type","w2":"forme","w3":"type","w4":"forme","w5":"type","w6":"forme"}}'::jsonb,
  'Point crucial pour le CRPE : il n''existe que TROIS types de phrases (déclaratif, interrogatif, impératif). L''exclamation n''est PAS un 4e type mais une FORME de phrase, comme le négatif ou le passif. La phrase de base est positive, active et non exclamative.',
  'Considérer l''exclamation comme un 4e type de phrase : c''est l''erreur la plus fréquente au CRPE.',
  'valide',
  'CRPE Français — Types et formes de phrases',
  'free',
  true
);

-- Q4 — Intermédiaire — Identifier la forme de phrase
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c1010000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'grm_types_formes_phrases',
  'Types et formes de phrases',
  'Intermediaire',
  'tri_categories',
  'Classez chaque phrase selon sa forme : négative, passive ou exclamative.',
  NULL,
  '[{"id":"w1","label":"Le gâteau n''est pas cuit."},{"id":"w2","label":"La lettre a été envoyée par Marie."},{"id":"w3","label":"Comme c''est beau !"},{"id":"w4","label":"Elles ne viendront pas."},{"id":"w5","label":"Le match a été remporté par l''équipe adverse."},{"id":"w6","label":"Quel magnifique spectacle !"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"neg","label":"Forme négative"},{"id":"pass","label":"Forme passive"},{"id":"excl","label":"Forme exclamative"}],"mapping":{"w1":"neg","w2":"pass","w3":"excl","w4":"neg","w5":"pass","w6":"excl"}}'::jsonb,
  'La forme négative se repère par « ne…pas », « ne…plus », « ne…jamais ». La forme passive se reconnaît à l''auxiliaire être + participe passé (+ complément d''agent). La forme exclamative ajoute une dimension émotionnelle (« Comme… ! », « Quel… ! »).',
  NULL,
  'valide',
  'CRPE Français — Types et formes de phrases',
  'premium',
  true
);

-- Q5 — Intermédiaire — Type ou forme ? (avancé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c1010000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'grm_types_formes_phrases',
  'Types et formes de phrases',
  'Intermediaire',
  'tri_categories',
  'Classez chaque terme : type de phrase ou forme de phrase ?',
  NULL,
  '[{"id":"w1","label":"Emphatique"},{"id":"w2","label":"Impersonnel"},{"id":"w3","label":"Interrogatif"},{"id":"w4","label":"Déclaratif"},{"id":"w5","label":"Impératif"},{"id":"w6","label":"Négatif"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"type","label":"Type de phrase"},{"id":"forme","label":"Forme de phrase"}],"mapping":{"w1":"forme","w2":"forme","w3":"type","w4":"type","w5":"type","w6":"forme"}}'::jsonb,
  'Trois types (déclaratif, interrogatif, impératif) et cinq formes (négative, passive, exclamative, emphatique, impersonnelle). L''emphatique met un élément en relief par clivage (« C''est Pierre qui… ») ou détachement (« Pierre, lui, a gagné »). L''impersonnel utilise le sujet apparent « il » (« Il pleut »).',
  'Classer l''emphatique ou l''impersonnel comme type : ce sont des formes qui se combinent avec n''importe quel type.',
  'valide',
  'CRPE Français — Types et formes de phrases',
  'premium',
  true
);

-- Q6 — Intermédiaire — Phrases verbales vs averbales
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c1010000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'grm_types_formes_phrases',
  'Types et formes de phrases',
  'Intermediaire',
  'tri_categories',
  'Classez chaque phrase : phrase verbale (avec verbe conjugué) ou phrase averbale (sans verbe conjugué) ?',
  NULL,
  '[{"id":"w1","label":"Le train arrive à midi."},{"id":"w2","label":"Excellent, ce dessert !"},{"id":"w3","label":"Les enfants jouent dans le jardin."},{"id":"w4","label":"Quelle belle journée !"},{"id":"w5","label":"Moi aussi."},{"id":"w6","label":"Elle a terminé son travail."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"verb","label":"Phrase verbale"},{"id":"averb","label":"Phrase averbale"}],"mapping":{"w1":"verb","w2":"averb","w3":"verb","w4":"averb","w5":"averb","w6":"verb"}}'::jsonb,
  'La terminologie officielle distingue les phrases atypiques : la phrase averbale n''a pas de verbe conjugué (« Excellent, ce rôti ! »), la phrase elliptique sous-entend un élément (« Moi aussi »), le mot-phrase est réduit à un seul mot (« Oui. »). Toutes sont des phrases averbales.',
  NULL,
  'valide',
  'CRPE Français — Types et formes de phrases',
  'premium',
  true
);

-- Q7 — Intermédiaire — Tri par type avec pièges courants
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c1010000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'grm_types_formes_phrases',
  'Types et formes de phrases',
  'Intermediaire',
  'tri_categories',
  'Classez chaque phrase selon son type : déclaratif, interrogatif ou impératif.',
  NULL,
  '[{"id":"w1","label":"Partons avant la nuit."},{"id":"w2","label":"Comment s''appelle cette fleur ?"},{"id":"w3","label":"La bibliothèque ferme à dix-huit heures."},{"id":"w4","label":"N''oubliez pas vos cahiers."},{"id":"w5","label":"Les hirondelles reviennent au printemps."},{"id":"w6","label":"Quelle heure est-il ?"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"decl","label":"Déclaratif"},{"id":"inter","label":"Interrogatif"},{"id":"imper","label":"Impératif"}],"mapping":{"w1":"imper","w2":"inter","w3":"decl","w4":"imper","w5":"decl","w6":"inter"}}'::jsonb,
  '« Partons » est bien impératif : 1re personne du pluriel de l''impératif (sans pronom sujet). « N''oubliez pas » est aussi impératif (avec forme négative combinée). Le type se définit par l''acte de langage : affirmer (déclaratif), interroger (interrogatif), ordonner/conseiller (impératif).',
  NULL,
  'valide',
  'CRPE Français — Types et formes de phrases',
  'premium',
  true
);

-- Q8 — Difficile — Piège : interrogation indirecte = phrase déclarative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c1010000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'grm_types_formes_phrases',
  'Types et formes de phrases',
  'Difficile',
  'tri_categories',
  'Classez chaque phrase selon son type. Attention aux pièges !',
  NULL,
  '[{"id":"w1","label":"Je me demande si tu viendras."},{"id":"w2","label":"Est-ce que l''eau bout à cent degrés ?"},{"id":"w3","label":"Allons-y sans tarder."},{"id":"w4","label":"Il fait beau aujourd''hui."},{"id":"w5","label":"Prends ton manteau."},{"id":"w6","label":"Pourquoi le ciel est-il bleu ?"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"decl","label":"Déclaratif"},{"id":"inter","label":"Interrogatif"},{"id":"imper","label":"Impératif"}],"mapping":{"w1":"decl","w2":"inter","w3":"imper","w4":"decl","w5":"imper","w6":"inter"}}'::jsonb,
  'Piège classique du CRPE : « Je me demande si tu viendras » est une phrase DÉCLARATIVE contenant une subordonnée interrogative indirecte. L''interrogation indirecte n''est pas une phrase interrogative ! Seule l''interrogation directe (avec « ? ») donne une phrase de type interrogatif.',
  'Classer « Je me demande si… » comme interrogatif : l''interrogation indirecte est une subordonnée incluse dans une phrase déclarative.',
  'valide',
  'CRPE Français — Types et formes de phrases',
  'premium',
  true
);

-- Q9 — Difficile — Formes avancées
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c1010000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'grm_types_formes_phrases',
  'Types et formes de phrases',
  'Difficile',
  'tri_categories',
  'Classez chaque phrase selon sa forme de phrase : emphatique, impersonnelle ou passive.',
  NULL,
  '[{"id":"w1","label":"C''est Marie qui a trouvé la réponse."},{"id":"w2","label":"Il faut partir immédiatement."},{"id":"w3","label":"Le voleur a été arrêté par la police."},{"id":"w4","label":"Les devoirs, eux, sont terminés."},{"id":"w5","label":"Il est arrivé un accident."},{"id":"w6","label":"La souris est attrapée par le chat."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"emph","label":"Forme emphatique"},{"id":"impers","label":"Forme impersonnelle"},{"id":"pass","label":"Forme passive"}],"mapping":{"w1":"emph","w2":"impers","w3":"pass","w4":"emph","w5":"impers","w6":"pass"}}'::jsonb,
  'La forme emphatique met en relief un élément : par clivage (« C''est Marie QUI… ») ou par détachement (« Les devoirs, EUX, sont terminés »). La forme impersonnelle utilise le pronom « il » sans référent réel (« Il faut… », « Il est arrivé… »). La forme passive se reconnaît par être + participe passé (+ par + agent).',
  'Confondre forme passive et forme impersonnelle quand les deux utilisent « être » : vérifier si le sujet « il » a un référent réel.',
  'valide',
  'CRPE Français — Types et formes de phrases',
  'premium',
  true
);

-- Q10 — Difficile — Synthèse type vs forme (CRPE)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c1010000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'grm_types_formes_phrases',
  'Types et formes de phrases',
  'Difficile',
  'tri_categories',
  'Synthèse CRPE : classez chaque étiquette comme type de phrase ou forme de phrase.',
  NULL,
  '[{"id":"w1","label":"La phrase interrogative"},{"id":"w2","label":"La phrase exclamative"},{"id":"w3","label":"La phrase emphatique"},{"id":"w4","label":"La phrase impérative"},{"id":"w5","label":"La phrase impersonnelle"},{"id":"w6","label":"La phrase déclarative"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"type","label":"Type de phrase"},{"id":"forme","label":"Forme de phrase"}],"mapping":{"w1":"type","w2":"forme","w3":"forme","w4":"type","w5":"forme","w6":"type"}}'::jsonb,
  'Synthèse essentielle : 3 types (déclaratif, interrogatif, impératif) et 5 formes (négative, passive, exclamative, emphatique, impersonnelle). La phrase de base est positive, active et non exclamative — on ne dit pas « forme positive » ni « forme active ». L''exclamation est une nuance qui peut s''ajouter à N''IMPORTE QUEL type.',
  'Ne pas retenir que les types sont exclusifs (une phrase appartient à UN seul type) tandis que les formes sont cumulables (une phrase peut être à la fois négative et passive).',
  'valide',
  'CRPE Français — Types et formes de phrases',
  'premium',
  true
);

-- ============================================================
-- SÉRIE 2 : Constituants de la phrase P = [GS + GV] (+ GC)
-- Topic : grm_constituants_phrase
-- UUID prefix : c2010000
-- Type : surlignage_propositions
-- ============================================================

-- Q1 — Facile — Phrase simple GS + GV
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c2010000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'grm_constituants_phrase',
  'Constituants de la phrase : GS, GV, GC',
  'Facile',
  'surlignage_propositions',
  'Identifiez le groupe sujet (GS) et le groupe verbal (GV) dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Les élèves"},{"id":"s2","label":"travaillent"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gs","label":"Groupe sujet (GS)","color":"blue"},{"id":"gv","label":"Groupe verbal (GV)","color":"amber"}],"mapping":{"s1":"gs","s2":"gv"}}'::jsonb,
  'Dans la formule P = [GS + GV], « Les élèves » est le groupe sujet (il règle l''accord du verbe) et « travaillent » est le groupe verbal. La phrase minimale est toujours composée de ces deux constituants obligatoires.',
  'Oublier que le GS peut être réduit à un seul mot (pronom, nom propre).',
  'valide',
  'CRPE Français — Constituants de la phrase',
  'free',
  true
);

-- Q2 — Facile — GS + GV + GC
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c2010000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'grm_constituants_phrase',
  'Constituants de la phrase : GS, GV, GC',
  'Facile',
  'surlignage_propositions',
  'Identifiez le GS, le GV et le GC dans cette phrase : P = [GS + GV] (+ GC).',
  NULL,
  '[{"id":"s1","label":"Le facteur"},{"id":"s2","label":"distribue le courrier"},{"id":"s3","label":"chaque matin"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gs","label":"Groupe sujet (GS)","color":"blue"},{"id":"gv","label":"Groupe verbal (GV)","color":"amber"},{"id":"gc","label":"Groupe circonstanciel (GC)","color":"emerald"}],"mapping":{"s1":"gs","s2":"gv","s3":"gc"}}'::jsonb,
  'P = [GS + GV] (+ GC). « Le facteur » = GS (obligatoire), « distribue le courrier » = GV (obligatoire, inclut le COD), « chaque matin » = GC (facultatif et déplaçable : « Chaque matin, le facteur distribue le courrier »).',
  'Confondre le COD (qui fait partie du GV) avec le GC : le COD n''est ni supprimable ni déplaçable, il est inclus dans le GV.',
  'valide',
  'CRPE Français — Constituants de la phrase',
  'free',
  true
);

-- Q3 — Facile — Phrase avec GN étendu en GS
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c2010000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'grm_constituants_phrase',
  'Constituants de la phrase : GS, GV, GC',
  'Facile',
  'surlignage_propositions',
  'Attribuez chaque segment à son groupe : GS, GV ou GC.',
  NULL,
  '[{"id":"s1","label":"Ma sœur aînée"},{"id":"s2","label":"prépare le dîner"},{"id":"s3","label":"dans la cuisine"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gs","label":"Groupe sujet (GS)","color":"blue"},{"id":"gv","label":"Groupe verbal (GV)","color":"amber"},{"id":"gc","label":"Groupe circonstanciel (GC)","color":"emerald"}],"mapping":{"s1":"gs","s2":"gv","s3":"gc"}}'::jsonb,
  '« Ma sœur aînée » est un GN étendu (Dét + N + Adj épithète) qui constitue le GS. « Prépare le dîner » = GV (verbe + COD). « Dans la cuisine » = GC de lieu, facultatif et déplaçable.',
  NULL,
  'valide',
  'CRPE Français — Constituants de la phrase',
  'free',
  true
);

-- Q4 — Intermédiaire — GC antéposé + deux GC
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c2010000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'grm_constituants_phrase',
  'Constituants de la phrase : GS, GV, GC',
  'Intermediaire',
  'surlignage_propositions',
  'Attribuez chaque segment à son groupe. Attention : plusieurs segments peuvent appartenir au même groupe.',
  NULL,
  '[{"id":"s1","label":"Depuis hier,"},{"id":"s2","label":"le petit chat gris"},{"id":"s3","label":"dort"},{"id":"s4","label":"sur le canapé"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gs","label":"Groupe sujet (GS)","color":"blue"},{"id":"gv","label":"Groupe verbal (GV)","color":"amber"},{"id":"gc","label":"Groupe circonstanciel (GC)","color":"emerald"}],"mapping":{"s1":"gc","s2":"gs","s3":"gv","s4":"gc"}}'::jsonb,
  'Deux GC dans cette phrase : « Depuis hier » (temps) et « sur le canapé » (lieu). Tous deux sont supprimables et déplaçables. Le GC peut apparaître en début de phrase, entre GS et GV, ou en fin de phrase — c''est une preuve de son caractère facultatif.',
  'Croire qu''un GC placé en début de phrase est un sujet : le GS est « le petit chat gris » (c''est lui qui règle l''accord du verbe « dort »).',
  'valide',
  'CRPE Français — Constituants de la phrase',
  'premium',
  true
);

-- Q5 — Intermédiaire — Pronom sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c2010000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'grm_constituants_phrase',
  'Constituants de la phrase : GS, GV, GC',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le GS, le GV et le(s) GC.',
  NULL,
  '[{"id":"s1","label":"Chaque matin,"},{"id":"s2","label":"elle"},{"id":"s3","label":"court"},{"id":"s4","label":"dans le parc"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gs","label":"Groupe sujet (GS)","color":"blue"},{"id":"gv","label":"Groupe verbal (GV)","color":"amber"},{"id":"gc","label":"Groupe circonstanciel (GC)","color":"emerald"}],"mapping":{"s1":"gc","s2":"gs","s3":"gv","s4":"gc"}}'::jsonb,
  'Le GS peut être réduit à un pronom personnel (« elle »). Le GV peut être réduit au verbe seul quand celui-ci est intransitif (« court », sans COD ni COI). Les deux GC (temps et lieu) encadrent le noyau [GS + GV].',
  NULL,
  'valide',
  'CRPE Français — Constituants de la phrase',
  'premium',
  true
);

-- Q6 — Intermédiaire — GS avec complément du nom
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c2010000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'grm_constituants_phrase',
  'Constituants de la phrase : GS, GV, GC',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez les constituants de cette phrase.',
  NULL,
  '[{"id":"s1","label":"La pharmacienne de mon quartier"},{"id":"s2","label":"prépare les commandes"},{"id":"s3","label":"avec soin"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gs","label":"Groupe sujet (GS)","color":"blue"},{"id":"gv","label":"Groupe verbal (GV)","color":"amber"},{"id":"gc","label":"Groupe circonstanciel (GC)","color":"emerald"}],"mapping":{"s1":"gs","s2":"gv","s3":"gc"}}'::jsonb,
  '« La pharmacienne de mon quartier » forme un seul GS : le GN est étendu par un complément du nom (« de mon quartier »). Le complément du nom est une expansion INTERNE au GN, pas un GC. « Avec soin » est un GC de manière.',
  'Séparer « de mon quartier » du GS pour en faire un GC : c''est un complément du nom (expansion du GN sujet), pas un complément circonstanciel.',
  'valide',
  'CRPE Français — Constituants de la phrase',
  'premium',
  true
);

-- Q7 — Intermédiaire — GV avec COD et COI
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c2010000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'grm_constituants_phrase',
  'Constituants de la phrase : GS, GV, GC',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez le GS et le GV. Rappel : le COD et le COI font partie du GV.',
  NULL,
  '[{"id":"s1","label":"Le professeur"},{"id":"s2","label":"donne un exercice à ses élèves"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gs","label":"Groupe sujet (GS)","color":"blue"},{"id":"gv","label":"Groupe verbal (GV)","color":"amber"}],"mapping":{"s1":"gs","s2":"gv"}}'::jsonb,
  'Le GV comprend le verbe ET tous ses compléments d''objet : « donne un exercice à ses élèves » = V + COD (un exercice) + COI (à ses élèves). Le COD et le COI sont des fonctions INTERNES au GV — ils ne forment pas des GC car ils ne sont ni supprimables ni déplaçables.',
  'Confondre le COI « à ses élèves » avec un GC : le COI est lié au sens du verbe (« donner quelque chose à quelqu''un »), il fait partie du GV.',
  'valide',
  'CRPE Français — Constituants de la phrase',
  'premium',
  true
);

-- Q8 — Difficile — GC multiples et GS complexe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c2010000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'grm_constituants_phrase',
  'Constituants de la phrase : GS, GV, GC',
  'Difficile',
  'surlignage_propositions',
  'Attribuez chaque segment au bon constituant : GS, GV ou GC.',
  NULL,
  '[{"id":"s1","label":"En silence,"},{"id":"s2","label":"les enfants"},{"id":"s3","label":"lisent leur livre"},{"id":"s4","label":"à la bibliothèque"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gs","label":"Groupe sujet (GS)","color":"blue"},{"id":"gv","label":"Groupe verbal (GV)","color":"amber"},{"id":"gc","label":"Groupe circonstanciel (GC)","color":"emerald"}],"mapping":{"s1":"gc","s2":"gs","s3":"gv","s4":"gc"}}'::jsonb,
  'Deux GC encadrent [GS + GV] : « En silence » (manière) et « à la bibliothèque » (lieu). Le GV « lisent leur livre » inclut le COD (« leur livre »). Pour vérifier les GC : supprimez-les → « Les enfants lisent leur livre » reste grammaticale.',
  NULL,
  'valide',
  'CRPE Français — Constituants de la phrase',
  'premium',
  true
);

-- Q9 — Difficile — GS coordonné
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c2010000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'grm_constituants_phrase',
  'Constituants de la phrase : GS, GV, GC',
  'Difficile',
  'surlignage_propositions',
  'Identifiez les constituants. Le GS peut contenir une coordination.',
  NULL,
  '[{"id":"s1","label":"Pendant les vacances,"},{"id":"s2","label":"mon frère et ma sœur"},{"id":"s3","label":"jouent"},{"id":"s4","label":"dans le jardin"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gs","label":"Groupe sujet (GS)","color":"blue"},{"id":"gv","label":"Groupe verbal (GV)","color":"amber"},{"id":"gc","label":"Groupe circonstanciel (GC)","color":"emerald"}],"mapping":{"s1":"gc","s2":"gs","s3":"gv","s4":"gc"}}'::jsonb,
  '« Mon frère et ma sœur » est un GS coordonné (deux GN reliés par « et ») qui commande l''accord du verbe au pluriel (« jouent »). La coordination ne crée pas deux GS distincts : c''est un seul GS composé.',
  'Séparer les deux noms coordonnés en deux sujets distincts : ils forment un seul GS coordonné.',
  'valide',
  'CRPE Français — Constituants de la phrase',
  'premium',
  true
);

-- Q10 — Difficile — Phrase avec infinitif sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c2010000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'grm_constituants_phrase',
  'Constituants de la phrase : GS, GV, GC',
  'Difficile',
  'surlignage_propositions',
  'Identifiez le GS et le GV. Attention : le GS n''est pas toujours un GN.',
  NULL,
  '[{"id":"s1","label":"Jouer dehors"},{"id":"s2","label":"détend les enfants"},{"id":"s3","label":"après l''école"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"gs","label":"Groupe sujet (GS)","color":"blue"},{"id":"gv","label":"Groupe verbal (GV)","color":"amber"},{"id":"gc","label":"Groupe circonstanciel (GC)","color":"emerald"}],"mapping":{"s1":"gs","s2":"gv","s3":"gc"}}'::jsonb,
  'Le GS peut être un infinitif ou un groupe infinitif : « Jouer dehors » est ici le sujet (c''est ce qui « détend les enfants »). D''autres natures possibles pour le GS : pronom, proposition subordonnée complétive (« Qu''elle soit en retard me surprend »).',
  'Ne pas reconnaître un infinitif comme sujet : le GS n''est pas forcément un GN.',
  'valide',
  'CRPE Français — Constituants de la phrase',
  'premium',
  true
);

-- ============================================================
-- SÉRIE 3 : Formation des mots (tri_categories) — Lexique
-- Topic : lex_formation_mots
-- UUID prefix : c3010000
-- ============================================================

-- Q1 — Facile — Préfixation / suffixation / composition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_formation_mots',
  'Formation des mots : dérivation et composition',
  'Facile',
  'tri_categories',
  'Classez chaque mot selon son procédé de formation : préfixation, suffixation ou composition.',
  NULL,
  '[{"id":"w1","label":"refaire"},{"id":"w2","label":"chanteur"},{"id":"w3","label":"portefeuille"},{"id":"w4","label":"impossible"},{"id":"w5","label":"national"},{"id":"w6","label":"arc-en-ciel"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pref","label":"Préfixation"},{"id":"suf","label":"Suffixation"},{"id":"comp","label":"Composition"}],"mapping":{"w1":"pref","w2":"suf","w3":"comp","w4":"pref","w5":"suf","w6":"comp"}}'::jsonb,
  'Préfixation : ajout AVANT le radical (re-faire, im-possible) — ne change pas la classe grammaticale. Suffixation : ajout APRÈS le radical (chant-eur, nation-al) — peut changer la classe. Composition : assemblage de deux unités lexicales autonomes (porte-feuille, arc-en-ciel).',
  'Confondre préfixation et composition : si le premier élément est un mot autonome ET le second aussi, c''est de la composition.',
  'valide',
  'CRPE Français — Formation des mots',
  'free',
  true
);

-- Q2 — Facile — Suite préfixation / suffixation / composition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_formation_mots',
  'Formation des mots : dérivation et composition',
  'Facile',
  'tri_categories',
  'Classez chaque mot : préfixation, suffixation ou composition.',
  NULL,
  '[{"id":"w1","label":"déranger"},{"id":"w2","label":"gentiment"},{"id":"w3","label":"rouge-gorge"},{"id":"w4","label":"prévoir"},{"id":"w5","label":"liberté"},{"id":"w6","label":"coffre-fort"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pref","label":"Préfixation"},{"id":"suf","label":"Suffixation"},{"id":"comp","label":"Composition"}],"mapping":{"w1":"pref","w2":"suf","w3":"comp","w4":"pref","w5":"suf","w6":"comp"}}'::jsonb,
  'Dé-ranger (préfixe dé-), genti-ment (suffixe -ment formé sur le féminin de l''adjectif), rouge-gorge (adjectif + nom = composition), pré-voir (préfixe pré-), liber-té (suffixe -té), coffre-fort (nom + adjectif = composition).',
  NULL,
  'valide',
  'CRPE Français — Formation des mots',
  'free',
  true
);

-- Q3 — Facile — Dérivation vs composition (2 catégories)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_formation_mots',
  'Formation des mots : dérivation et composition',
  'Facile',
  'tri_categories',
  'Classez chaque mot complexe : formé par dérivation (préfixation ou suffixation) ou par composition ?',
  NULL,
  '[{"id":"w1","label":"incapable"},{"id":"w2","label":"pomme de terre"},{"id":"w3","label":"courageux"},{"id":"w4","label":"porte-clés"},{"id":"w5","label":"malheureux"},{"id":"w6","label":"chou-fleur"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"deriv","label":"Dérivation"},{"id":"comp","label":"Composition"}],"mapping":{"w1":"deriv","w2":"comp","w3":"deriv","w4":"comp","w5":"deriv","w6":"comp"}}'::jsonb,
  'La dérivation modifie un mot existant par ajout d''affixes (in-capable, courage-ux, mal-heureux). La composition assemble deux mots autonomes (pomme + terre, porte + clés, chou + fleur). Le trait d''union ou la préposition signalent souvent un mot composé.',
  NULL,
  'valide',
  'CRPE Français — Formation des mots',
  'free',
  true
);

-- Q4 — Intermédiaire — Dérivation parasynthétique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_formation_mots',
  'Formation des mots : dérivation et composition',
  'Intermediaire',
  'tri_categories',
  'Classez ces mots dérivés : préfixation simple, suffixation simple ou dérivation parasynthétique (préfixe ET suffixe simultanés) ?',
  NULL,
  '[{"id":"w1","label":"relire"},{"id":"w2","label":"chanteur"},{"id":"w3","label":"encolure"},{"id":"w4","label":"défaire"},{"id":"w5","label":"bavardage"},{"id":"w6","label":"embarquer"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pref","label":"Préfixation"},{"id":"suf","label":"Suffixation"},{"id":"para","label":"Parasynthétique"}],"mapping":{"w1":"pref","w2":"suf","w3":"para","w4":"pref","w5":"suf","w6":"para"}}'::jsonb,
  'La dérivation parasynthétique ajoute un préfixe ET un suffixe simultanément : ni le préfixé seul ni le suffixé seul n''existe. « Encolure » : en- + col + -ure (« *encol » et « *colure » n''existent pas). « Embarquer » : em- + barque + -er (« *embarque » comme nom et « *barquer » n''existent pas).',
  'Confondre parasynthétique et double dérivation successive : en parasynthétique, les deux affixes s''ajoutent EN MÊME TEMPS.',
  'valide',
  'CRPE Français — Formation des mots',
  'premium',
  true
);

-- Q5 — Intermédiaire — Conversion, troncation, emprunt
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_formation_mots',
  'Formation des mots : dérivation et composition',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon son procédé de formation : conversion, troncation ou emprunt.',
  NULL,
  '[{"id":"w1","label":"le dîner (verbe → nom)"},{"id":"w2","label":"métro (métropolitain)"},{"id":"w3","label":"parking"},{"id":"w4","label":"le sourire (verbe → nom)"},{"id":"w5","label":"prof (professeur)"},{"id":"w6","label":"week-end"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"conv","label":"Conversion"},{"id":"tronc","label":"Troncation"},{"id":"empr","label":"Emprunt"}],"mapping":{"w1":"conv","w2":"tronc","w3":"empr","w4":"conv","w5":"tronc","w6":"empr"}}'::jsonb,
  'Conversion : changement de classe SANS modification de forme (le dîner : verbe → nom). Troncation : abrègement d''un mot (métro < métropolitain, prof < professeur). Emprunt : mot issu d''une autre langue (parking, week-end viennent de l''anglais).',
  NULL,
  'valide',
  'CRPE Français — Formation des mots',
  'premium',
  true
);

-- Q6 — Intermédiaire — Famille de mots vs champ lexical
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_formation_mots',
  'Formation des mots : dérivation et composition',
  'Intermediaire',
  'tri_categories',
  'Ces groupes de mots forment-ils une famille de mots (même radical) ou un champ lexical (même thème) ?',
  NULL,
  '[{"id":"w1","label":"terre, terrain, enterrer"},{"id":"w2","label":"fleur, jardin, arroser"},{"id":"w3","label":"cœur, cardiaque, cordial"},{"id":"w4","label":"classe, bureau, tableau"},{"id":"w5","label":"chant, chanter, chanteur"},{"id":"w6","label":"forêt, arbre, feuille"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"fam","label":"Famille de mots"},{"id":"champ","label":"Champ lexical"}],"mapping":{"w1":"fam","w2":"champ","w3":"fam","w4":"champ","w5":"fam","w6":"champ"}}'::jsonb,
  'Famille de mots : les mots partagent un même radical (terre/terrain/enterrer → radical terr-). Champ lexical : les mots se rapportent au même thème SANS lien morphologique (forêt, arbre, feuille = thème de la nature). Attention : « cœur, cardiaque, cordial » sont de la même famille via le latin cor, cordis.',
  'Confondre famille de mots et champ lexical : la famille repose sur le RADICAL commun, le champ lexical sur le THÈME commun.',
  'valide',
  'CRPE Français — Formation des mots',
  'premium',
  true
);

-- Q7 — Intermédiaire — Préfixes et leur sens
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_formation_mots',
  'Formation des mots : dérivation et composition',
  'Intermediaire',
  'tri_categories',
  'Classez ces mots préfixés selon le sens du préfixe : négation, répétition ou antériorité.',
  NULL,
  '[{"id":"w1","label":"impossible"},{"id":"w2","label":"refaire"},{"id":"w3","label":"prévoir"},{"id":"w4","label":"incapable"},{"id":"w5","label":"relire"},{"id":"w6","label":"prédire"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"neg","label":"Négation (in-, im-)"},{"id":"rep","label":"Répétition (re-)"},{"id":"ant","label":"Antériorité (pré-)"}],"mapping":{"w1":"neg","w2":"rep","w3":"ant","w4":"neg","w5":"rep","w6":"ant"}}'::jsonb,
  'Les préfixes ont un sens qui modifie la base sans changer sa classe grammaticale. In-/im- = négation (capable → incapable). Re- = répétition (faire → refaire). Pré- = antériorité (voir → prévoir = voir avant). Connaître le sens des préfixes courants aide à comprendre des mots inconnus.',
  NULL,
  'valide',
  'CRPE Français — Formation des mots',
  'premium',
  true
);

-- Q8 — Difficile — Relations sémantiques : synonymes / antonymes / homonymes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_formation_mots',
  'Formation des mots : dérivation et composition',
  'Difficile',
  'tri_categories',
  'Classez chaque paire de mots selon la relation sémantique : synonymie, antonymie ou homonymie.',
  NULL,
  '[{"id":"w1","label":"content / joyeux"},{"id":"w2","label":"grand / petit"},{"id":"w3","label":"vers / vert / verre"},{"id":"w4","label":"beau / laid"},{"id":"w5","label":"logement / habitation"},{"id":"w6","label":"mousse (plante) / mousse (marin)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"syn","label":"Synonymie"},{"id":"ant","label":"Antonymie"},{"id":"hom","label":"Homonymie"}],"mapping":{"w1":"syn","w2":"ant","w3":"hom","w4":"ant","w5":"syn","w6":"hom"}}'::jsonb,
  'Synonymie : sens proches, interchangeables dans certains contextes (content/joyeux). Antonymie : sens opposés (grand/petit). Homonymie : mots de même forme mais de significations différentes (mousse = plante vs mousse = marin). Les homonymes homophones se prononcent pareil mais s''écrivent différemment (vers/vert/verre).',
  'Confondre homonymie et polysémie : l''homonymie concerne des MOTS DIFFÉRENTS de même forme, la polysémie concerne les DIFFÉRENTS SENS d''un même mot.',
  'valide',
  'CRPE Français — Formation des mots',
  'premium',
  true
);

-- Q9 — Difficile — Polysémie vs homonymie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_formation_mots',
  'Formation des mots : dérivation et composition',
  'Difficile',
  'tri_categories',
  'Polysémie (un même mot, plusieurs sens liés) ou homonymie (mots différents, même forme) ?',
  NULL,
  '[{"id":"w1","label":"souris (rongeur) / souris (informatique)"},{"id":"w2","label":"avocat (fruit) / avocat (juriste)"},{"id":"w3","label":"feuille (arbre) / feuille (papier)"},{"id":"w4","label":"livre (ouvrage) / livre (unité de poids)"},{"id":"w5","label":"glace (miroir) / glace (dessert glacé)"},{"id":"w6","label":"mousse (écume) / mousse (jeune matelot)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"poly","label":"Polysémie"},{"id":"hom","label":"Homonymie"}],"mapping":{"w1":"poly","w2":"hom","w3":"poly","w4":"hom","w5":"poly","w6":"hom"}}'::jsonb,
  'La polysémie concerne un MÊME MOT dont les sens sont liés par analogie : souris (rongeur → forme similaire de l''objet informatique), feuille (arbre → forme plate du papier), glace (miroir → surface lisse et froide). L''homonymie concerne des MOTS DIFFÉRENTS : avocat (de l''espagnol aguacate) ≠ avocat (du latin advocatus), livre (latin liber) ≠ livre (latin libra).',
  'Croire que tous les mots de même forme sont des homonymes : si les sens sont liés par une ressemblance, c''est de la polysémie.',
  'valide',
  'CRPE Français — Formation des mots',
  'premium',
  true
);

-- Q10 — Difficile — Registres de langue
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c3010000-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'lex_formation_mots',
  'Formation des mots : dérivation et composition',
  'Difficile',
  'tri_categories',
  'Classez chaque mot dans le bon registre de langue : familier, courant ou soutenu.',
  NULL,
  '[{"id":"w1","label":"bagnole"},{"id":"w2","label":"voiture"},{"id":"w3","label":"véhicule"},{"id":"w4","label":"bouquin"},{"id":"w5","label":"livre"},{"id":"w6","label":"ouvrage"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"fam","label":"Familier"},{"id":"cour","label":"Courant"},{"id":"sout","label":"Soutenu"}],"mapping":{"w1":"fam","w2":"cour","w3":"sout","w4":"fam","w5":"cour","w6":"sout"}}'::jsonb,
  'Les registres (ou niveaux) de langue classent les mots selon leur degré de formalité. Familier : langage oral, relâché (bagnole, bouquin). Courant : usage quotidien neutre (voiture, livre). Soutenu : littéraire ou formel (véhicule, ouvrage). Un même sens peut avoir des équivalents dans les trois registres.',
  NULL,
  'valide',
  'CRPE Français — Formation des mots',
  'premium',
  true
);

-- ============================================================
-- SÉRIE 4 : Les 8 classes de mots (tri_categories) — Grammaire
-- Topic : grm_classes_de_mots
-- UUID prefix : c4010000
-- ============================================================

-- Q1 — Facile — Mot lexical vs mot grammatical
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'grm_classes_de_mots',
  'Les huit classes de mots',
  'Facile',
  'tri_categories',
  'Classez chaque classe de mots : mot lexical (porteur de sens) ou mot grammatical (outil de la langue) ?',
  NULL,
  '[{"id":"w1","label":"Nom"},{"id":"w2","label":"Déterminant"},{"id":"w3","label":"Verbe"},{"id":"w4","label":"Pronom"},{"id":"w5","label":"Adjectif"},{"id":"w6","label":"Préposition"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"lex","label":"Mot lexical"},{"id":"gram","label":"Mot grammatical"}],"mapping":{"w1":"lex","w2":"gram","w3":"lex","w4":"gram","w5":"lex","w6":"gram"}}'::jsonb,
  'Les 8 classes se répartissent en deux catégories : 4 mots lexicaux (nom, verbe, adjectif, adverbe) qui portent le sens, et 4 mots grammaticaux (déterminant, pronom, conjonction, préposition) qui structurent la langue. Les mots grammaticaux n''ont pas de fonction propre : ils font partie d''un groupe qui a une fonction.',
  NULL,
  'valide',
  'CRPE Français — Classes de mots',
  'free',
  true
);

-- Q2 — Facile — Variable vs invariable
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'grm_classes_de_mots',
  'Les huit classes de mots',
  'Facile',
  'tri_categories',
  'Classez chaque classe de mots : variable (change de forme) ou invariable (ne change jamais de forme) ?',
  NULL,
  '[{"id":"w1","label":"Nom"},{"id":"w2","label":"Adverbe"},{"id":"w3","label":"Adjectif"},{"id":"w4","label":"Conjonction"},{"id":"w5","label":"Verbe"},{"id":"w6","label":"Préposition"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"var","label":"Variable"},{"id":"inv","label":"Invariable"}],"mapping":{"w1":"var","w2":"inv","w3":"var","w4":"inv","w5":"var","w6":"inv"}}'::jsonb,
  'Variables : nom (genre, nombre), verbe (mode, temps, personne, nombre), adjectif (genre, nombre), déterminant et pronom (genre, nombre, personne). Invariables : adverbe, conjonction, préposition. Retiens : les mots invariables ne prennent JAMAIS de marques d''accord.',
  NULL,
  'valide',
  'CRPE Français — Classes de mots',
  'free',
  true
);

-- Q3 — Facile — Identifier nom / verbe / adjectif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'grm_classes_de_mots',
  'Les huit classes de mots',
  'Facile',
  'tri_categories',
  'Classez chaque mot selon sa classe grammaticale (nature) : nom, verbe ou adjectif.',
  NULL,
  '[{"id":"w1","label":"soleil"},{"id":"w2","label":"courir"},{"id":"w3","label":"magnifique"},{"id":"w4","label":"liberté"},{"id":"w5","label":"chanter"},{"id":"w6","label":"fragile"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom","label":"Nom"},{"id":"verbe","label":"Verbe"},{"id":"adjectif","label":"Adjectif"}],"mapping":{"w1":"nom","w2":"verbe","w3":"adjectif","w4":"nom","w5":"verbe","w6":"adjectif"}}'::jsonb,
  'Le nom désigne un être, une chose ou une idée (soleil, liberté). Le verbe exprime une action ou un état (courir, chanter). L''adjectif qualificatif exprime une qualité du nom (magnifique, fragile). Rappel : « nature » et « classe grammaticale » sont synonymes dans la terminologie officielle.',
  'Confondre la nature (ce qu''EST le mot) et la fonction (son RÔLE dans la phrase).',
  'valide',
  'CRPE Français — Classes de mots',
  'free',
  true
);

-- Q4 — Intermédiaire — Déterminant / pronom / préposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'grm_classes_de_mots',
  'Les huit classes de mots',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot : déterminant, pronom ou préposition.',
  NULL,
  '[{"id":"w1","label":"le (devant un nom)"},{"id":"w2","label":"il"},{"id":"w3","label":"dans"},{"id":"w4","label":"cette"},{"id":"w5","label":"elle"},{"id":"w6","label":"avec"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant"},{"id":"pro","label":"Pronom"},{"id":"prep","label":"Préposition"}],"mapping":{"w1":"det","w2":"pro","w3":"prep","w4":"det","w5":"pro","w6":"prep"}}'::jsonb,
  'Le déterminant se place AVANT le nom dans le GN (le, cette). Le pronom « tient lieu d''un GN » (formulation officielle, plus précise que « remplace un nom ») : il, elle. La préposition introduit un groupe prépositionnel qui joue un rôle de complément : dans, avec.',
  'Dire que le pronom « remplace un nom » : la formulation officielle est qu''il « tient lieu d''un GN ».',
  'valide',
  'CRPE Français — Classes de mots',
  'premium',
  true
);

-- Q5 — Intermédiaire — Conjonctions de coordination vs subordination
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'grm_classes_de_mots',
  'Les huit classes de mots',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot : conjonction de coordination ou conjonction de subordination ?',
  NULL,
  '[{"id":"w1","label":"mais"},{"id":"w2","label":"quand"},{"id":"w3","label":"et"},{"id":"w4","label":"parce que"},{"id":"w5","label":"or"},{"id":"w6","label":"bien que"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"coord","label":"Conjonction de coordination"},{"id":"sub","label":"Conjonction de subordination"}],"mapping":{"w1":"coord","w2":"sub","w3":"coord","w4":"sub","w5":"coord","w6":"sub"}}'::jsonb,
  'Coordination : relie des éléments de MÊME fonction et souvent de même nature (mais, ou, et, or, ni, car — liste officielle). Subordination : inclut une proposition subordonnée dans une principale (quand, parce que, bien que, si…). Les locutions conjonctives (parce que, bien que…) sont formées sur « que », conjonction de subordination fondamentale.',
  NULL,
  'valide',
  'CRPE Français — Classes de mots',
  'premium',
  true
);

-- Q6 — Intermédiaire — Adverbe vs préposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'grm_classes_de_mots',
  'Les huit classes de mots',
  'Intermediaire',
  'tri_categories',
  'Classez ces mots invariables : adverbe ou préposition ?',
  NULL,
  '[{"id":"w1","label":"rapidement"},{"id":"w2","label":"dans"},{"id":"w3","label":"hier"},{"id":"w4","label":"pour"},{"id":"w5","label":"très"},{"id":"w6","label":"avec"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"adv","label":"Adverbe"},{"id":"prep","label":"Préposition"}],"mapping":{"w1":"adv","w2":"prep","w3":"adv","w4":"prep","w5":"adv","w6":"prep"}}'::jsonb,
  'L''adverbe modifie un verbe, un adjectif ou un autre adverbe (rapidement, hier, très). La préposition introduit un complément — elle se place DEVANT un GN, un pronom ou un infinitif (dans, pour, avec). Les deux sont invariables, mais leur rôle syntaxique diffère.',
  NULL,
  'valide',
  'CRPE Français — Classes de mots',
  'premium',
  true
);

-- Q7 — Difficile — Piège CRPE : « donc » est un adverbe !
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'grm_classes_de_mots',
  'Les huit classes de mots',
  'Difficile',
  'tri_categories',
  'Classez chaque mot : conjonction de coordination ou adverbe ? Attention aux pièges de la terminologie officielle.',
  NULL,
  '[{"id":"w1","label":"mais"},{"id":"w2","label":"donc"},{"id":"w3","label":"et"},{"id":"w4","label":"pourtant"},{"id":"w5","label":"ni"},{"id":"w6","label":"cependant"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"conj","label":"Conjonction de coordination"},{"id":"adv","label":"Adverbe"}],"mapping":{"w1":"conj","w2":"adv","w3":"conj","w4":"adv","w5":"conj","w6":"adv"}}'::jsonb,
  'Piège classique du CRPE ! La liste officielle des conjonctions de coordination est : mais, ou, et, or, ni, car. Le mot « donc » est classé comme ADVERBE dans la terminologie officielle (preuve : il peut apparaître en fin de phrase : « Tu pars, donc »). De même, « pourtant » et « cependant » sont des adverbes, pas des conjonctions.',
  'Réciter « mais où est donc Ornicar » et croire que « donc » est une conjonction : dans la terminologie officielle, c''est un adverbe.',
  'valide',
  'CRPE Français — Classes de mots',
  'premium',
  true
);

-- Q8 — Difficile — Types de déterminants
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'grm_classes_de_mots',
  'Les huit classes de mots',
  'Difficile',
  'tri_categories',
  'Classez chaque déterminant selon son type : article, déterminant possessif ou déterminant démonstratif.',
  NULL,
  '[{"id":"w1","label":"le"},{"id":"w2","label":"mon"},{"id":"w3","label":"ce"},{"id":"w4","label":"une"},{"id":"w5","label":"leur (+ nom)"},{"id":"w6","label":"cette"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"art","label":"Article"},{"id":"poss","label":"Dét. possessif"},{"id":"dem","label":"Dét. démonstratif"}],"mapping":{"w1":"art","w2":"poss","w3":"dem","w4":"art","w5":"poss","w6":"dem"}}'::jsonb,
  'Les articles sont les déterminants les plus fréquents : définis (le, la, les), indéfinis (un, une, des), partitifs (du, de la). Les déterminants possessifs indiquent l''appartenance (mon, ton, son, notre, votre, leur). Les démonstratifs désignent ce que l''on montre (ce, cet, cette, ces).',
  'Confondre « leur » déterminant possessif (leur maison) et « leur » pronom personnel COI (elle leur parle).',
  'valide',
  'CRPE Français — Classes de mots',
  'premium',
  true
);

-- Q9 — Difficile — Types de pronoms
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'grm_classes_de_mots',
  'Les huit classes de mots',
  'Difficile',
  'tri_categories',
  'Classez chaque pronom selon son type : personnel, démonstratif ou relatif.',
  NULL,
  '[{"id":"w1","label":"il"},{"id":"w2","label":"celui"},{"id":"w3","label":"qui"},{"id":"w4","label":"nous"},{"id":"w5","label":"cela"},{"id":"w6","label":"dont"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pers","label":"Pronom personnel"},{"id":"dem","label":"Pronom démonstratif"},{"id":"rel","label":"Pronom relatif"}],"mapping":{"w1":"pers","w2":"dem","w3":"rel","w4":"pers","w5":"dem","w6":"rel"}}'::jsonb,
  'Pronoms personnels : je, tu, il, elle, nous, vous, ils, elles (+ formes COD/COI : me, te, le, la, lui, leur, se). Pronoms démonstratifs : celui, celle, ceux, ce, ceci, cela, ça. Pronoms relatifs : qui, que, quoi, dont, où, lequel… — ils introduisent une subordonnée relative.',
  NULL,
  'valide',
  'CRPE Français — Classes de mots',
  'premium',
  true
);

-- Q10 — Difficile — Piège « leur » : déterminant ou pronom ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c4010000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'grm_classes_de_mots',
  'Les huit classes de mots',
  'Difficile',
  'tri_categories',
  'Le mot « leur » change de nature selon le contexte. Classez chaque emploi : déterminant possessif ou pronom personnel ?',
  NULL,
  '[{"id":"w1","label":"leur maison est grande"},{"id":"w2","label":"elle leur parle souvent"},{"id":"w3","label":"leur chat est noir"},{"id":"w4","label":"je leur donne un livre"},{"id":"w5","label":"leurs enfants jouent"},{"id":"w6","label":"il leur écrit une lettre"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"det","label":"Déterminant possessif"},{"id":"pro","label":"Pronom personnel (COI)"}],"mapping":{"w1":"det","w2":"pro","w3":"det","w4":"pro","w5":"det","w6":"pro"}}'::jsonb,
  'Astuce : si « leur » est suivi d''un NOM, c''est un déterminant possessif (leur maison, leur chat, leurs enfants). S''il est placé DEVANT un VERBE, c''est un pronom personnel COI (elle leur parle = elle parle à eux). Le déterminant varie en nombre (leur/leurs), le pronom est toujours invariable.',
  'Ne pas distinguer les deux emplois de « leur » : vérifier s''il précède un nom (déterminant) ou un verbe (pronom).',
  'valide',
  'CRPE Français — Classes de mots',
  'premium',
  true
);

-- ============================================================
-- SÉRIE 5 : Voix, modes et temps (tri_categories) — Conjugaison
-- Topic : conj_voix_modes_temps
-- UUID prefix : c5010000
-- ============================================================

-- Q1 — Facile — Voix active / passive / pronominale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c5010000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_voix_modes_temps',
  'Voix, modes et temps verbaux',
  'Facile',
  'tri_categories',
  'Classez chaque phrase selon la voix du verbe : active, passive ou pronominale.',
  NULL,
  '[{"id":"w1","label":"Le chat attrape la souris."},{"id":"w2","label":"La souris est attrapée par le chat."},{"id":"w3","label":"Elle se regarde dans le miroir."},{"id":"w4","label":"Les élèves lisent un roman."},{"id":"w5","label":"Le roman est lu par les élèves."},{"id":"w6","label":"Ils se parlent souvent."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"act","label":"Voix active"},{"id":"pass","label":"Voix passive"},{"id":"pron","label":"Voix pronominale"}],"mapping":{"w1":"act","w2":"pass","w3":"pron","w4":"act","w5":"pass","w6":"pron"}}'::jsonb,
  'Voix active : le sujet FAIT l''action (le chat attrape). Voix passive : le sujet SUBIT l''action (la souris est attrapée) — formée avec être + participe passé. Voix pronominale : le verbe est accompagné d''un pronom réfléchi (se regarder, se parler).',
  NULL,
  'valide',
  'CRPE Français — Voix, modes et temps',
  'free',
  true
);

-- Q2 — Facile — Sous-types de verbes pronominaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c5010000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_voix_modes_temps',
  'Voix, modes et temps verbaux',
  'Facile',
  'tri_categories',
  'Classez chaque emploi pronominal : réfléchi, réciproque ou à sens passif.',
  NULL,
  '[{"id":"w1","label":"Elle se regarde."},{"id":"w2","label":"Ils se parlent."},{"id":"w3","label":"Ce livre se vend bien."},{"id":"w4","label":"Il se lave les mains."},{"id":"w5","label":"Elles se téléphonent."},{"id":"w6","label":"Cette porte s''ouvre facilement."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"refl","label":"Réfléchi"},{"id":"recip","label":"Réciproque"},{"id":"passif","label":"Sens passif"}],"mapping":{"w1":"refl","w2":"recip","w3":"passif","w4":"refl","w5":"recip","w6":"passif"}}'::jsonb,
  'Réfléchi : le sujet fait l''action sur lui-même (elle se regarde = elle-même). Réciproque : les sujets agissent les uns sur les autres (ils se parlent = l''un à l''autre). Sens passif : le sujet subit l''action sans agent exprimé (ce livre se vend bien = est vendu). Le 4e sous-type (essentiellement pronominal) concerne des verbes qui n''existent qu''à la forme pronominale (s''évanouir).',
  NULL,
  'valide',
  'CRPE Français — Voix, modes et temps',
  'free',
  true
);

-- Q3 — Intermédiaire — Transitivité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c5010000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_voix_modes_temps',
  'Voix, modes et temps verbaux',
  'Intermediaire',
  'tri_categories',
  'Classez chaque verbe (dans son emploi donné) : transitif direct, transitif indirect ou intransitif.',
  NULL,
  '[{"id":"w1","label":"Elle lit un livre."},{"id":"w2","label":"Elle parle de ses vacances."},{"id":"w3","label":"L''enfant dort."},{"id":"w4","label":"Il regarde le paysage."},{"id":"w5","label":"Elle pense à son avenir."},{"id":"w6","label":"Le soleil brille."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"td","label":"Transitif direct (COD)"},{"id":"ti","label":"Transitif indirect (COI)"},{"id":"intr","label":"Intransitif"}],"mapping":{"w1":"td","w2":"ti","w3":"intr","w4":"td","w5":"ti","w6":"intr"}}'::jsonb,
  'Transitif direct : le verbe admet un COD (lire un livre, regarder le paysage). Transitif indirect : le verbe admet un COI introduit par une préposition (parler DE ses vacances, penser À son avenir). Intransitif : le verbe n''admet ni COD ni COI (dormir, briller). Attention : un même verbe peut changer de construction selon le contexte.',
  NULL,
  'valide',
  'CRPE Français — Voix, modes et temps',
  'premium',
  true
);

-- Q4 — Intermédiaire — Verbe attributif vs verbe d'action
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c5010000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_voix_modes_temps',
  'Voix, modes et temps verbaux',
  'Intermediaire',
  'tri_categories',
  'Classez chaque verbe : verbe attributif (suivi d''un attribut) ou verbe d''action ?',
  NULL,
  '[{"id":"w1","label":"être"},{"id":"w2","label":"courir"},{"id":"w3","label":"sembler"},{"id":"w4","label":"manger"},{"id":"w5","label":"devenir"},{"id":"w6","label":"écrire"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"attr","label":"Verbe attributif"},{"id":"act","label":"Verbe d''action"}],"mapping":{"w1":"attr","w2":"act","w3":"attr","w4":"act","w5":"attr","w6":"act"}}'::jsonb,
  'Le terme officiel est « verbe attributif » (et non « verbe d''état »). Les principaux sont : être, sembler, paraître, devenir, rester, demeurer, avoir l''air, passer pour. Ils sont suivis d''un ATTRIBUT DU SUJET (et non d''un COD) : « Alice est grande » (grande = attribut, pas COD).',
  'Utiliser le terme « verbe d''état » au lieu de « verbe attributif » : la terminologie officielle recommande « verbe attributif ».',
  'valide',
  'CRPE Français — Voix, modes et temps',
  'premium',
  true
);

-- Q5 — Intermédiaire — Modes personnels vs non personnels
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c5010000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_voix_modes_temps',
  'Voix, modes et temps verbaux',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mode verbal : mode personnel (varie selon la personne) ou mode non personnel ?',
  NULL,
  '[{"id":"w1","label":"Indicatif"},{"id":"w2","label":"Infinitif"},{"id":"w3","label":"Subjonctif"},{"id":"w4","label":"Participe"},{"id":"w5","label":"Impératif"},{"id":"w6","label":"Gérondif"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pers","label":"Mode personnel"},{"id":"npers","label":"Mode non personnel"}],"mapping":{"w1":"pers","w2":"npers","w3":"pers","w4":"npers","w5":"pers","w6":"npers"}}'::jsonb,
  'Modes personnels (varient selon la personne) : indicatif, subjonctif, impératif. Modes non personnels : infinitif, participe, gérondif. Point crucial : l''infinitif et le participe SONT des formes de la conjugaison du verbe (radical + désinence). Il est ERRONÉ de les considérer comme « des formes non conjuguées ».',
  'Dire que l''infinitif et le participe sont des « formes non conjuguées » : ce sont des modes de la conjugaison, avec radical et désinence.',
  'valide',
  'CRPE Français — Voix, modes et temps',
  'premium',
  true
);

-- Q6 — Intermédiaire — Auxiliaire vs semi-auxiliaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c5010000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_voix_modes_temps',
  'Voix, modes et temps verbaux',
  'Intermediaire',
  'tri_categories',
  'Classez chaque verbe : auxiliaire (temps composés / passif) ou semi-auxiliaire (valeur aspectuelle, modale ou causative) ?',
  NULL,
  '[{"id":"w1","label":"être"},{"id":"w2","label":"aller (futur proche)"},{"id":"w3","label":"avoir"},{"id":"w4","label":"venir de"},{"id":"w5","label":"devoir"},{"id":"w6","label":"pouvoir"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"aux","label":"Auxiliaire"},{"id":"semi","label":"Semi-auxiliaire"}],"mapping":{"w1":"aux","w2":"semi","w3":"aux","w4":"semi","w5":"semi","w6":"semi"}}'::jsonb,
  'Seuls DEUX auxiliaires : être et avoir — ils forment les temps composés (j''ai chanté, elle est partie) et la voix passive (il est aimé). Les semi-auxiliaires ajoutent une nuance : aller (futur proche), venir de (passé récent), devoir/pouvoir (modalité), faire (causatif : « elle fait construire »).',
  NULL,
  'valide',
  'CRPE Français — Voix, modes et temps',
  'premium',
  true
);

-- Q7 — Difficile — Temps simples vs composés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c5010000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_voix_modes_temps',
  'Voix, modes et temps verbaux',
  'Difficile',
  'tri_categories',
  'Classez chaque temps de l''indicatif : temps simple ou temps composé ?',
  NULL,
  '[{"id":"w1","label":"Présent"},{"id":"w2","label":"Passé composé"},{"id":"w3","label":"Imparfait"},{"id":"w4","label":"Plus-que-parfait"},{"id":"w5","label":"Passé simple"},{"id":"w6","label":"Futur antérieur"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"simple","label":"Temps simple"},{"id":"compose","label":"Temps composé"}],"mapping":{"w1":"simple","w2":"compose","w3":"simple","w4":"compose","w5":"simple","w6":"compose"}}'::jsonb,
  'Chaque temps simple a son temps composé correspondant : présent → passé composé, imparfait → plus-que-parfait, passé simple → passé antérieur, futur → futur antérieur. Le temps composé est formé de l''auxiliaire (être ou avoir) au temps simple correspondant + le participe passé.',
  NULL,
  'valide',
  'CRPE Français — Voix, modes et temps',
  'premium',
  true
);

-- Q8 — Difficile — Groupes de verbes (piège : aller = 3e groupe)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c5010000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_voix_modes_temps',
  'Voix, modes et temps verbaux',
  'Difficile',
  'tri_categories',
  'Classez chaque verbe dans son groupe : 1er, 2e ou 3e groupe.',
  NULL,
  '[{"id":"w1","label":"chanter"},{"id":"w2","label":"finir (finissant)"},{"id":"w3","label":"prendre"},{"id":"w4","label":"parler"},{"id":"w5","label":"grossir (grossissant)"},{"id":"w6","label":"aller"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"g1","label":"1er groupe (-er)"},{"id":"g2","label":"2e groupe (-ir/-issant)"},{"id":"g3","label":"3e groupe"}],"mapping":{"w1":"g1","w2":"g2","w3":"g3","w4":"g1","w5":"g2","w6":"g3"}}'::jsonb,
  'Piège classique : « aller » n''est PAS du 1er groupe malgré son infinitif en -er ! Il a plusieurs radicaux (je vais, nous allons, j''irai) = 3e groupe. Le 2e groupe : infinitif en -ir ET participe présent en -issant (finir → finissant, grossir → grossissant). Partir (-ir mais partant, pas *partissant) = 3e groupe.',
  '« Aller » semble être du 1er groupe (-er), mais ses multiples radicaux (va-, all-, ir-) le placent dans le 3e groupe.',
  'valide',
  'CRPE Français — Voix, modes et temps',
  'premium',
  true
);

-- Q9 — Difficile — Morphologie verbale : radical et désinence
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c5010000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_voix_modes_temps',
  'Voix, modes et temps verbaux',
  'Difficile',
  'tri_categories',
  'Dans la forme verbale « chantaient », identifiez chaque élément : radical, marque de temps ou marque de personne.',
  NULL,
  '[{"id":"w1","label":"chant-"},{"id":"w2","label":"-ai-"},{"id":"w3","label":"-ent"},{"id":"w4","label":"la partie qui porte le sens lexical"},{"id":"w5","label":"la partie qui indique l''imparfait"},{"id":"w6","label":"la partie qui indique la 3e pers. du pluriel"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"rad","label":"Radical"},{"id":"tps","label":"Marque de temps"},{"id":"per","label":"Marque de personne"}],"mapping":{"w1":"rad","w2":"tps","w3":"per","w4":"rad","w5":"tps","w6":"per"}}'::jsonb,
  'Dans « chantaient » : CHANT- est le radical (sens lexical stable), -AI- est la marque de temps (imparfait), -ENT est la marque de personne (3e personne du pluriel). La désinence (ou terminaison) = marque de temps + marque de personne (-aient). Un verbe du 1er groupe n''a qu''un seul radical, mais certains verbes du 3e groupe en ont plusieurs (vivre : vi-, viv-, véc-).',
  NULL,
  'valide',
  'CRPE Français — Voix, modes et temps',
  'premium',
  true
);

-- Q10 — Difficile — Piège CRPE : le conditionnel = temps de l'indicatif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c5010000-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'conj_voix_modes_temps',
  'Voix, modes et temps verbaux',
  'Difficile',
  'tri_categories',
  'Classez chaque forme verbale dans le bon mode : indicatif ou subjonctif. Attention au conditionnel !',
  NULL,
  '[{"id":"w1","label":"je chanterai"},{"id":"w2","label":"que je chante"},{"id":"w3","label":"je chanterais"},{"id":"w4","label":"qu''elle fasse"},{"id":"w5","label":"j''avais chanté"},{"id":"w6","label":"qu''il ait fait"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"ind","label":"Indicatif"},{"id":"subj","label":"Subjonctif"}],"mapping":{"w1":"ind","w2":"subj","w3":"ind","w4":"subj","w5":"ind","w6":"subj"}}'::jsonb,
  'Piège majeur du CRPE : le conditionnel (« je chanterais ») doit être considéré comme un TEMPS DE L''INDICATIF selon la terminologie officielle, et non comme un mode à part. Preuve morphologique : pour les verbes du 1er groupe, chanterai/chanterais fonctionne comme chantai/chantais (futur/conditionnel ≈ passé simple/imparfait).',
  'Classer le conditionnel comme un mode à part : la terminologie officielle le rattache à l''indicatif.',
  'valide',
  'CRPE Français — Voix, modes et temps',
  'premium',
  true
);

-- ============================================================
-- SÉRIE 6 : Nature vs Fonction (tri_categories) — Grammaire
-- Topic : grm_nature_fonction
-- UUID prefix : c6010000
-- ============================================================

-- Q1 — Facile — Nature ou fonction ? (bases)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6010000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'grm_nature_fonction',
  'Nature vs Fonction grammaticale',
  'Facile',
  'tri_categories',
  'Classez chaque terme : désigne-t-il une NATURE (ce qu''est un mot) ou une FONCTION (son rôle dans la phrase) ?',
  NULL,
  '[{"id":"w1","label":"Nom"},{"id":"w2","label":"Sujet"},{"id":"w3","label":"Verbe"},{"id":"w4","label":"COD"},{"id":"w5","label":"Adjectif"},{"id":"w6","label":"Épithète"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nat","label":"Nature (classe grammaticale)"},{"id":"fonc","label":"Fonction"}],"mapping":{"w1":"nat","w2":"fonc","w3":"nat","w4":"fonc","w5":"nat","w6":"fonc"}}'::jsonb,
  'La distinction nature/fonction est le cœur de l''analyse grammaticale. La NATURE (= classe grammaticale) dit ce qu''EST un mot (nom, verbe, adjectif…). La FONCTION dit quel RÔLE il joue (sujet, COD, épithète…). Un même mot garde toujours sa nature mais peut changer de fonction selon la phrase.',
  'Confondre nature et fonction : « adjectif » est une nature, « épithète » est une fonction de l''adjectif.',
  'valide',
  'CRPE Français — Nature vs Fonction',
  'free',
  true
);

-- Q2 — Facile — Suite nature / fonction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6010000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'grm_nature_fonction',
  'Nature vs Fonction grammaticale',
  'Facile',
  'tri_categories',
  'Nature ou fonction ? Classez chaque terme grammatical.',
  NULL,
  '[{"id":"w1","label":"Pronom"},{"id":"w2","label":"COI"},{"id":"w3","label":"Adverbe"},{"id":"w4","label":"Complément circonstanciel"},{"id":"w5","label":"Déterminant"},{"id":"w6","label":"Attribut du sujet"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nat","label":"Nature"},{"id":"fonc","label":"Fonction"}],"mapping":{"w1":"nat","w2":"fonc","w3":"nat","w4":"fonc","w5":"nat","w6":"fonc"}}'::jsonb,
  'Les 8 natures (classes) : nom, verbe, adjectif, adverbe, déterminant, pronom, conjonction, préposition. Les fonctions principales : sujet, COD, COI, attribut du sujet, attribut du COD, complément circonstanciel, épithète, complément du nom, apposition, complément d''agent.',
  NULL,
  'valide',
  'CRPE Français — Nature vs Fonction',
  'free',
  true
);

-- Q3 — Facile — Termes avancés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6010000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'grm_nature_fonction',
  'Nature vs Fonction grammaticale',
  'Facile',
  'tri_categories',
  'Nature ou fonction ?',
  NULL,
  '[{"id":"w1","label":"Préposition"},{"id":"w2","label":"Complément du nom"},{"id":"w3","label":"Conjonction"},{"id":"w4","label":"Apposition"},{"id":"w5","label":"Interjection"},{"id":"w6","label":"Complément d''agent"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nat","label":"Nature"},{"id":"fonc","label":"Fonction"}],"mapping":{"w1":"nat","w2":"fonc","w3":"nat","w4":"fonc","w5":"nat","w6":"fonc"}}'::jsonb,
  'Rappel important : les mots grammaticaux (déterminants, prépositions, conjonctions) n''ont PAS de fonction par eux-mêmes. Ils font PARTIE d''un groupe qui a une fonction. La préposition est une nature — elle introduit un groupe prépositionnel, mais c''est le groupe qui a une fonction (complément du nom, CC…).',
  NULL,
  'valide',
  'CRPE Français — Nature vs Fonction',
  'free',
  true
);

-- Q4 — Intermédiaire — Natures précises
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6010000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'grm_nature_fonction',
  'Nature vs Fonction grammaticale',
  'Intermediaire',
  'tri_categories',
  'Nature ou fonction ? Certains termes sont plus ambigus — réfléchissez bien !',
  NULL,
  '[{"id":"w1","label":"Groupe nominal"},{"id":"w2","label":"Sujet"},{"id":"w3","label":"Groupe verbal"},{"id":"w4","label":"Attribut du COD"},{"id":"w5","label":"Pronom personnel"},{"id":"w6","label":"Expansion du nom"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nat","label":"Nature (ce que c''est)"},{"id":"fonc","label":"Fonction (son rôle)"}],"mapping":{"w1":"nat","w2":"fonc","w3":"nat","w4":"fonc","w5":"nat","w6":"fonc"}}'::jsonb,
  '« Groupe nominal » et « pronom personnel » sont des natures — ils décrivent ce qu''EST l''élément. « Expansion du nom » est un terme général de fonction qui regroupe l''épithète et le complément du nom. Le GV, lui, est une nature (ce qu''est le groupe), et la terminologie note qu''il n''a pas de terme de fonction propre : le GV est le pivot de la phrase.',
  NULL,
  'valide',
  'CRPE Français — Nature vs Fonction',
  'premium',
  true
);

-- Q5 — Intermédiaire — Fonctions de l'adjectif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6010000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'grm_nature_fonction',
  'Nature vs Fonction grammaticale',
  'Intermediaire',
  'tri_categories',
  'L''adjectif peut remplir trois fonctions. Identifiez la fonction de l''adjectif souligné dans chaque phrase.',
  NULL,
  '[{"id":"w1","label":"un beau cahier"},{"id":"w2","label":"ce cahier est beau"},{"id":"w3","label":"on a élu Alice présidente"},{"id":"w4","label":"une voiture rapide"},{"id":"w5","label":"Alice semble compétente"},{"id":"w6","label":"ils estiment Alice brillante"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"epi","label":"Épithète"},{"id":"att_s","label":"Attribut du sujet"},{"id":"att_cod","label":"Attribut du COD"}],"mapping":{"w1":"epi","w2":"att_s","w3":"att_cod","w4":"epi","w5":"att_s","w6":"att_cod"}}'::jsonb,
  'L''adjectif a trois fonctions possibles. Épithète : il est DANS le GN, directement lié au nom (un beau cahier). Attribut du sujet : il est relié au sujet PAR un verbe attributif (Alice semble compétente). Attribut du COD : il qualifie le COD via le verbe (ils estiment Alice brillante — brillante qualifie Alice, COD).',
  NULL,
  'valide',
  'CRPE Français — Nature vs Fonction',
  'premium',
  true
);

-- Q6 — Intermédiaire — Fonctions dans le GV vs dans la phrase
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6010000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'grm_nature_fonction',
  'Nature vs Fonction grammaticale',
  'Intermediaire',
  'tri_categories',
  'Classez chaque fonction : s''exerce-t-elle au niveau de la phrase (P) ou à l''intérieur du GV ?',
  NULL,
  '[{"id":"w1","label":"COD"},{"id":"w2","label":"Sujet"},{"id":"w3","label":"COI"},{"id":"w4","label":"Complément circonstanciel"},{"id":"w5","label":"Attribut du sujet"},{"id":"w6","label":"Attribut du COD"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"phrase","label":"Niveau de la phrase"},{"id":"gv","label":"Intérieur du GV"}],"mapping":{"w1":"gv","w2":"phrase","w3":"gv","w4":"phrase","w5":"gv","w6":"gv"}}'::jsonb,
  'Au niveau de la phrase, seules DEUX fonctions existent : sujet (relation GS-GV) et complément circonstanciel (relation [GS+GV]-GC). Toutes les autres fonctions (COD, COI, attribut) sont INTERNES au GV. C''est un principe fondamental de la terminologie officielle.',
  'Croire que le COD ou le COI sont des fonctions de la phrase : ils n''existent qu''À L''INTÉRIEUR du GV.',
  'valide',
  'CRPE Français — Nature vs Fonction',
  'premium',
  true
);

-- Q7 — Intermédiaire — Fonctions dans le GN
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6010000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'grm_nature_fonction',
  'Nature vs Fonction grammaticale',
  'Intermediaire',
  'tri_categories',
  'Classez chaque fonction : s''exerce-t-elle à l''intérieur du GN (expansion du nom) ou à l''intérieur du GV ?',
  NULL,
  '[{"id":"w1","label":"Épithète"},{"id":"w2","label":"COD"},{"id":"w3","label":"Complément du nom"},{"id":"w4","label":"COI"},{"id":"w5","label":"Apposition"},{"id":"w6","label":"Attribut du sujet"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"gn","label":"Dans le GN"},{"id":"gv","label":"Dans le GV"}],"mapping":{"w1":"gn","w2":"gv","w3":"gn","w4":"gv","w5":"gn","w6":"gv"}}'::jsonb,
  'Dans le GN (formule : GN = Dét + N + Exp) : l''épithète, le complément du nom et l''apposition sont des expansions du nom. Dans le GV : le COD, le COI et l''attribut du sujet sont des fonctions internes au groupe verbal. Comprendre ces relations d''inclusion est essentiel pour l''analyse grammaticale.',
  NULL,
  'valide',
  'CRPE Français — Nature vs Fonction',
  'premium',
  true
);

-- Q8 — Difficile — Identifier nature ET fonction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6010000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'grm_nature_fonction',
  'Nature vs Fonction grammaticale',
  'Difficile',
  'tri_categories',
  'Ces affirmations concernent-elles la nature ou la fonction d''un mot ?',
  NULL,
  '[{"id":"w1","label":"« chat » est un nom commun"},{"id":"w2","label":"« Le chat » est sujet"},{"id":"w3","label":"« rapidement » est un adverbe"},{"id":"w4","label":"« à midi » est CC de temps"},{"id":"w5","label":"« qui » est un pronom relatif"},{"id":"w6","label":"« de mon quartier » est complément du nom"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nat","label":"Analyse de la nature"},{"id":"fonc","label":"Analyse de la fonction"}],"mapping":{"w1":"nat","w2":"fonc","w3":"nat","w4":"fonc","w5":"nat","w6":"fonc"}}'::jsonb,
  'L''analyse grammaticale complète d''un mot comporte toujours deux volets : sa nature (ce qu''il est intrinsèquement) et sa fonction (son rôle dans la phrase). « Chat » est toujours un nom commun (nature), mais il peut être sujet, COD, complément du nom… (fonction) selon la phrase.',
  NULL,
  'valide',
  'CRPE Français — Nature vs Fonction',
  'premium',
  true
);

-- Q9 — Difficile — Natures possibles pour la fonction sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6010000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'grm_nature_fonction',
  'Nature vs Fonction grammaticale',
  'Difficile',
  'tri_categories',
  'Quelles natures peuvent remplir la fonction SUJET ? Classez : possible ou impossible comme sujet.',
  NULL,
  '[{"id":"w1","label":"Groupe nominal"},{"id":"w2","label":"Pronom personnel"},{"id":"w3","label":"Préposition"},{"id":"w4","label":"Infinitif"},{"id":"w5","label":"Conjonction"},{"id":"w6","label":"Proposition subordonnée"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"oui","label":"Peut être sujet"},{"id":"non","label":"Ne peut pas être sujet"}],"mapping":{"w1":"oui","w2":"oui","w3":"non","w4":"oui","w5":"non","w6":"oui"}}'::jsonb,
  'Le sujet peut être : un GN (Le facteur distribue…), un pronom (Il distribue…), un infinitif (Jouer me repose), une proposition subordonnée (Qu''elle soit en retard me surprend). Les mots grammaticaux comme la préposition et la conjonction n''ont PAS de fonction propre — ils structurent les groupes.',
  NULL,
  'valide',
  'CRPE Français — Nature vs Fonction',
  'premium',
  true
);

-- Q10 — Difficile — Synthèse analyse grammaticale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6010000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'grm_nature_fonction',
  'Nature vs Fonction grammaticale',
  'Difficile',
  'tri_categories',
  'Dans la phrase « La pharmacienne de mon quartier donne un médicament à sa patiente », identifiez la fonction de chaque élément souligné.',
  NULL,
  '[{"id":"w1","label":"La pharmacienne de mon quartier"},{"id":"w2","label":"un médicament"},{"id":"w3","label":"à sa patiente"},{"id":"w4","label":"de mon quartier"},{"id":"w5","label":"donne"},{"id":"w6","label":"quartier"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"suj","label":"Sujet"},{"id":"cod","label":"COD"},{"id":"coi","label":"COI"},{"id":"cdn","label":"Complément du nom"}],"mapping":{"w1":"suj","w2":"cod","w3":"coi","w4":"cdn","w5":"cod","w6":"cdn"}}'::jsonb,
  'Analyse complète : « La pharmacienne de mon quartier » = GS (sujet). « Donne » = verbe (pas de fonction propre, c''est le pivot). « Un médicament » = COD (donner QUOI ?). « À sa patiente » = COI (donner À QUI ?). « De mon quartier » = complément du nom « pharmacienne ». « Quartier » est un nom commun (nature), ici noyau du GNP complément du nom.',
  NULL,
  'valide',
  'CRPE Français — Nature vs Fonction',
  'premium',
  true
);

-- ============================================================
-- SÉRIE 7 : Phrase complexe — Propositions (surlignage)
-- Topic : grm_phrase_complexe_prop
-- UUID prefix : c7010000
-- ============================================================

-- Q1 — Facile — Subordination simple (cause)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c7010000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'grm_phrase_complexe_prop',
  'Phrase complexe : identifier les propositions',
  'Facile',
  'surlignage_propositions',
  'Délimitez la proposition principale et la proposition subordonnée.',
  NULL,
  '[{"id":"s1","label":"Le chat dort"},{"id":"s2","label":"parce qu''il est fatigué"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"blue"},{"id":"sub","label":"Proposition subordonnée","color":"amber"}],"mapping":{"s1":"princ","s2":"sub"}}'::jsonb,
  'La proposition principale contient le verbe central de la phrase (« Le chat dort »). La proposition subordonnée est INCLUSE dans la principale et introduite par la conjonction de subordination « parce que » (cause). La subordonnée dépend de la principale — elle ne peut pas exister seule.',
  NULL,
  'valide',
  'CRPE Français — Phrase complexe',
  'free',
  true
);

-- Q2 — Facile — Subordination complétive
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c7010000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'grm_phrase_complexe_prop',
  'Phrase complexe : identifier les propositions',
  'Facile',
  'surlignage_propositions',
  'Identifiez la proposition principale et la proposition subordonnée complétive.',
  NULL,
  '[{"id":"s1","label":"Je pense"},{"id":"s2","label":"que tu as raison"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"blue"},{"id":"sub","label":"Proposition subordonnée","color":"amber"}],"mapping":{"s1":"princ","s2":"sub"}}'::jsonb,
  '« Je pense » = proposition principale. « Que tu as raison » = subordonnée conjonctive complétive, introduite par « que » (conjonction de subordination fondamentale). Cette subordonnée complétive est COD du verbe « penser » : je pense QUOI ? → que tu as raison.',
  NULL,
  'valide',
  'CRPE Français — Phrase complexe',
  'free',
  true
);

-- Q3 — Facile — Subordination antéposée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c7010000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'grm_phrase_complexe_prop',
  'Phrase complexe : identifier les propositions',
  'Facile',
  'surlignage_propositions',
  'Identifiez la principale et la subordonnée. Attention : la subordonnée peut être en premier !',
  NULL,
  '[{"id":"s1","label":"Quand il pleut,"},{"id":"s2","label":"les enfants restent à l''intérieur"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"blue"},{"id":"sub","label":"Proposition subordonnée","color":"amber"}],"mapping":{"s1":"sub","s2":"princ"}}'::jsonb,
  'La subordonnée circonstancielle « Quand il pleut » est ici antéposée (placée avant la principale). La principale reste « les enfants restent à l''intérieur ». L''ordre ne change pas la nature des propositions : la subordonnée est toujours INCLUSE dans la principale, même quand elle est placée en premier.',
  'Croire que la première proposition est toujours la principale : la subordonnée peut être antéposée.',
  'valide',
  'CRPE Français — Phrase complexe',
  'free',
  true
);

-- Q4 — Intermédiaire — Relative enchâssée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c7010000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'grm_phrase_complexe_prop',
  'Phrase complexe : identifier les propositions',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez la principale et la subordonnée relative. La relative peut être enchâssée au milieu de la principale.',
  NULL,
  '[{"id":"s1","label":"Le livre"},{"id":"s2","label":"qui est sur la table"},{"id":"s3","label":"appartient à Marie"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"blue"},{"id":"sub","label":"Subordonnée relative","color":"amber"}],"mapping":{"s1":"princ","s2":"sub","s3":"princ"}}'::jsonb,
  'La subordonnée relative « qui est sur la table » est enchâssée À L''INTÉRIEUR de la principale « Le livre appartient à Marie ». Elle est introduite par le pronom relatif « qui » et fonctionne comme épithète du nom « livre ». La principale est « coupée en deux » par la relative.',
  'Ne pas voir que la principale reprend après la relative : les segments 1 et 3 forment ensemble la proposition principale.',
  'valide',
  'CRPE Français — Phrase complexe',
  'premium',
  true
);

-- Q5 — Intermédiaire — Interrogation indirecte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c7010000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'grm_phrase_complexe_prop',
  'Phrase complexe : identifier les propositions',
  'Intermediaire',
  'surlignage_propositions',
  'Délimitez la principale et la subordonnée interrogative indirecte.',
  NULL,
  '[{"id":"s1","label":"Les élèves se demandent"},{"id":"s2","label":"si le contrôle sera difficile"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"blue"},{"id":"sub","label":"Subordonnée interrogative indirecte","color":"amber"}],"mapping":{"s1":"princ","s2":"sub"}}'::jsonb,
  '« Si le contrôle sera difficile » est une subordonnée interrogative indirecte (totale, car on peut répondre oui/non). Elle est introduite par « si » et est COD de « se demander ». Rappel : cette phrase est de type DÉCLARATIF (pas interrogatif !) car l''interrogation est indirecte.',
  NULL,
  'valide',
  'CRPE Français — Phrase complexe',
  'premium',
  true
);

-- Q6 — Intermédiaire — Coordination (indépendantes)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c7010000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'grm_phrase_complexe_prop',
  'Phrase complexe : identifier les propositions',
  'Intermediaire',
  'surlignage_propositions',
  'Cette phrase complexe est construite par COORDINATION. Identifiez les deux propositions indépendantes.',
  NULL,
  '[{"id":"s1","label":"Marie chante"},{"id":"s2","label":"et Pierre danse"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"ind1","label":"Proposition indépendante 1","color":"blue"},{"id":"ind2","label":"Proposition indépendante 2","color":"amber"}],"mapping":{"s1":"ind1","s2":"ind2"}}'::jsonb,
  'Dans la coordination, deux propositions INDÉPENDANTES sont reliées par une conjonction de coordination (ici « et »). Aucune ne dépend de l''autre — elles sont sur le même plan. Contrairement à la subordination (principale + subordonnée), la coordination relie des éléments de même statut.',
  NULL,
  'valide',
  'CRPE Français — Phrase complexe',
  'free',
  true
);

-- Q7 — Intermédiaire — Juxtaposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c7010000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'grm_phrase_complexe_prop',
  'Phrase complexe : identifier les propositions',
  'Intermediaire',
  'surlignage_propositions',
  'Cette phrase complexe est construite par JUXTAPOSITION. Identifiez les deux propositions indépendantes.',
  NULL,
  '[{"id":"s1","label":"Le soleil brille ;"},{"id":"s2","label":"les oiseaux chantent"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"ind1","label":"Proposition indépendante 1","color":"blue"},{"id":"ind2","label":"Proposition indépendante 2","color":"amber"}],"mapping":{"s1":"ind1","s2":"ind2"}}'::jsonb,
  'La juxtaposition relie deux propositions indépendantes par un signe de ponctuation (virgule, point-virgule ou deux-points) sans conjonction. C''est le 3e mode de construction de la phrase complexe, avec la subordination et la coordination.',
  NULL,
  'valide',
  'CRPE Français — Phrase complexe',
  'premium',
  true
);

-- Q8 — Difficile — Coordination avec « mais »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c7010000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'grm_phrase_complexe_prop',
  'Phrase complexe : identifier les propositions',
  'Difficile',
  'surlignage_propositions',
  'Identifiez les deux propositions indépendantes coordonnées.',
  NULL,
  '[{"id":"s1","label":"Il est fatigué"},{"id":"s2","label":"mais il continue de travailler"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"ind1","label":"Proposition indépendante 1","color":"blue"},{"id":"ind2","label":"Proposition indépendante 2","color":"amber"}],"mapping":{"s1":"ind1","s2":"ind2"}}'::jsonb,
  '« Mais » est une conjonction de coordination (liste officielle : mais, ou, et, or, ni, car). Les deux propositions sont indépendantes et de même statut. Attention : « donc » n''est PAS une conjonction de coordination selon la terminologie officielle (c''est un adverbe).',
  NULL,
  'valide',
  'CRPE Français — Phrase complexe',
  'premium',
  true
);

-- Q9 — Difficile — Concessive (bien que + subjonctif)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c7010000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'grm_phrase_complexe_prop',
  'Phrase complexe : identifier les propositions',
  'Difficile',
  'surlignage_propositions',
  'Identifiez la principale et la subordonnée concessive.',
  NULL,
  '[{"id":"s1","label":"Bien qu''il soit fatigué,"},{"id":"s2","label":"Pierre continue de courir"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"blue"},{"id":"sub","label":"Subordonnée concessive","color":"amber"}],"mapping":{"s1":"sub","s2":"princ"}}'::jsonb,
  '« Bien que » est une locution conjonctive de subordination exprimant la concession (= malgré le fait que). Elle impose le SUBJONCTIF : « bien qu''il soit » (et non « bien qu''il est »). La subordonnée circonstancielle de concession est antéposée ici.',
  'Utiliser l''indicatif après « bien que » : cette locution exige toujours le subjonctif.',
  'valide',
  'CRPE Français — Phrase complexe',
  'premium',
  true
);

-- Q10 — Difficile — Deux subordonnées dans une phrase
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c7010000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'grm_phrase_complexe_prop',
  'Phrase complexe : identifier les propositions',
  'Difficile',
  'surlignage_propositions',
  'Cette phrase contient une principale et deux subordonnées de types différents. Identifiez chaque proposition.',
  NULL,
  '[{"id":"s1","label":"Les enfants"},{"id":"s2","label":"qui jouent dans la cour"},{"id":"s3","label":"rentreront"},{"id":"s4","label":"quand la cloche sonnera"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Proposition principale","color":"blue"},{"id":"rel","label":"Subordonnée relative","color":"amber"},{"id":"circo","label":"Subordonnée circonstancielle","color":"emerald"}],"mapping":{"s1":"princ","s2":"rel","s3":"princ","s4":"circo"}}'::jsonb,
  'Trois propositions : la principale « Les enfants rentreront » (coupée en deux), la subordonnée relative « qui jouent dans la cour » (épithète de « enfants », enchâssée dans la principale), et la subordonnée circonstancielle de temps « quand la cloche sonnera ». C''est un cas typique d''analyse au CRPE.',
  'Ne pas identifier la principale quand elle est interrompue par une relative enchâssée.',
  'valide',
  'CRPE Français — Phrase complexe',
  'premium',
  true
);

-- ============================================================
-- SÉRIE 8 : Fonctions grammaticales dans la phrase (surlignage)
-- Topic : grm_fonctions_phrase
-- UUID prefix : c8010000
-- ============================================================

-- Q1 — Facile — Sujet + verbe + COD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c8010000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'grm_fonctions_phrase',
  'Identifier les fonctions grammaticales',
  'Facile',
  'surlignage_propositions',
  'Identifiez la fonction de chaque groupe dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Pierre"},{"id":"s2","label":"donne"},{"id":"s3","label":"un livre"},{"id":"s4","label":"à Marie"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"verbe","label":"Verbe","color":"amber"},{"id":"cod","label":"COD","color":"emerald"},{"id":"coi","label":"COI","color":"purple"}],"mapping":{"s1":"suj","s2":"verbe","s3":"cod","s4":"coi"}}'::jsonb,
  'Pierre = sujet (QUI donne ?). Donne = verbe (pivot du GV). Un livre = COD (donne QUOI ?). À Marie = COI, introduit par la préposition « à » (donne À QUI ?). Le COD et le COI sont des fonctions internes au GV, liées au sens du verbe.',
  'Confondre COI et CC : le COI est lié au SENS du verbe (donner à quelqu''un), le CC est facultatif et déplaçable.',
  'valide',
  'CRPE Français — Fonctions grammaticales',
  'free',
  true
);

-- Q2 — Facile — Sujet + verbe intransitif + CC
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c8010000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'grm_fonctions_phrase',
  'Identifier les fonctions grammaticales',
  'Facile',
  'surlignage_propositions',
  'Identifiez la fonction de chaque groupe.',
  NULL,
  '[{"id":"s1","label":"Les oiseaux migrateurs"},{"id":"s2","label":"reviennent"},{"id":"s3","label":"au printemps"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"verbe","label":"Verbe","color":"amber"},{"id":"cc","label":"CC de temps","color":"emerald"}],"mapping":{"s1":"suj","s2":"verbe","s3":"cc"}}'::jsonb,
  '« Les oiseaux migrateurs » = sujet (GN étendu par l''adjectif épithète « migrateurs »). « Reviennent » = verbe intransitif (pas de COD ni COI). « Au printemps » = complément circonstanciel de temps (supprimable et déplaçable : « Au printemps, les oiseaux migrateurs reviennent »).',
  NULL,
  'valide',
  'CRPE Français — Fonctions grammaticales',
  'free',
  true
);

-- Q3 — Facile — Sujet + verbe attributif + attribut du sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c8010000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'grm_fonctions_phrase',
  'Identifier les fonctions grammaticales',
  'Facile',
  'surlignage_propositions',
  'Identifiez les fonctions. Attention au verbe attributif !',
  NULL,
  '[{"id":"s1","label":"Alice"},{"id":"s2","label":"est"},{"id":"s3","label":"une bonne avocate"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"vattr","label":"Verbe attributif","color":"amber"},{"id":"att","label":"Attribut du sujet","color":"emerald"}],"mapping":{"s1":"suj","s2":"vattr","s3":"att"}}'::jsonb,
  '« Être » est le principal verbe attributif : il est suivi d''un ATTRIBUT DU SUJET (pas d''un COD !). « Une bonne avocate » = attribut du sujet « Alice ». L''attribut qualifie ou identifie le sujet à travers le verbe. Autres verbes attributifs : sembler, paraître, devenir, rester, demeurer.',
  'Analyser « une bonne avocate » comme COD : après un verbe attributif (être, sembler, devenir…), c''est un attribut, pas un COD.',
  'valide',
  'CRPE Français — Fonctions grammaticales',
  'free',
  true
);

-- Q4 — Intermédiaire — COD + CC
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c8010000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'grm_fonctions_phrase',
  'Identifier les fonctions grammaticales',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez la fonction de chaque groupe. Distinguez bien COD et CC.',
  NULL,
  '[{"id":"s1","label":"Le matin,"},{"id":"s2","label":"le boulanger"},{"id":"s3","label":"prépare"},{"id":"s4","label":"le pain"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"cc","label":"CC de temps","color":"blue"},{"id":"suj","label":"Sujet","color":"amber"},{"id":"verbe","label":"Verbe","color":"emerald"},{"id":"cod","label":"COD","color":"purple"}],"mapping":{"s1":"cc","s2":"suj","s3":"verbe","s4":"cod"}}'::jsonb,
  '« Le matin » = CC de temps (supprimable, déplaçable). « Le boulanger » = sujet. « Prépare » = verbe transitif direct. « Le pain » = COD (prépare QUOI ?). Le COD n''est ni supprimable ni déplaçable, contrairement au CC.',
  NULL,
  'valide',
  'CRPE Français — Fonctions grammaticales',
  'premium',
  true
);

-- Q5 — Intermédiaire — COI seul
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c8010000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'grm_fonctions_phrase',
  'Identifier les fonctions grammaticales',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez les fonctions. Le verbe est transitif indirect.',
  NULL,
  '[{"id":"s1","label":"Elle"},{"id":"s2","label":"parle"},{"id":"s3","label":"de ses vacances"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"verbe","label":"Verbe","color":"amber"},{"id":"coi","label":"COI","color":"emerald"}],"mapping":{"s1":"suj","s2":"verbe","s3":"coi"}}'::jsonb,
  '« De ses vacances » = COI (parler DE quelque chose). Le COI est un GN précédé d''une préposition (groupe nominal prépositionnel = GNP). Il est lié au SENS du verbe et fait partie du GV. Pour vérifier : peut-on le remplacer par un pronom ? Oui : « Elle en parle » (le pronom adverbial « en » remplace le COI).',
  'Confondre le COI « de ses vacances » avec un CC : c''est le verbe « parler » qui impose la préposition « de ».',
  'valide',
  'CRPE Français — Fonctions grammaticales',
  'premium',
  true
);

-- Q6 — Intermédiaire — Complément du nom dans le sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c8010000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'grm_fonctions_phrase',
  'Identifier les fonctions grammaticales',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez les fonctions, y compris le complément du nom à l''intérieur du sujet.',
  NULL,
  '[{"id":"s1","label":"La pharmacienne"},{"id":"s2","label":"de mon quartier"},{"id":"s3","label":"prépare"},{"id":"s4","label":"les ordonnances"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet (noyau)","color":"blue"},{"id":"cdn","label":"Complément du nom","color":"amber"},{"id":"verbe","label":"Verbe","color":"emerald"},{"id":"cod","label":"COD","color":"purple"}],"mapping":{"s1":"suj","s2":"cdn","s3":"verbe","s4":"cod"}}'::jsonb,
  '« De mon quartier » = complément du nom « pharmacienne ». C''est une fonction INTERNE au GN sujet (expansion du nom), pas un CC ! L''ensemble « La pharmacienne de mon quartier » forme le GS complet. Les ordonnances = COD (prépare QUOI ?).',
  'Analyser « de mon quartier » comme un CC : c''est un complément du nom, une expansion interne au GN sujet.',
  'valide',
  'CRPE Français — Fonctions grammaticales',
  'premium',
  true
);

-- Q7 — Intermédiaire — Attribut du sujet avec « sembler »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c8010000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'grm_fonctions_phrase',
  'Identifier les fonctions grammaticales',
  'Intermediaire',
  'surlignage_propositions',
  'Identifiez les fonctions.',
  NULL,
  '[{"id":"s1","label":"Cette chimiste"},{"id":"s2","label":"semble"},{"id":"s3","label":"compétente"},{"id":"s4","label":"dans son domaine"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"vattr","label":"Verbe attributif","color":"amber"},{"id":"att","label":"Attribut du sujet","color":"emerald"},{"id":"cda","label":"Complément de l''adjectif","color":"purple"}],"mapping":{"s1":"suj","s2":"vattr","s3":"att","s4":"cda"}}'::jsonb,
  '« Semble » est un verbe attributif (terme officiel, à préférer à « verbe d''état »). « Compétente » = attribut du sujet (adjectif). « Dans son domaine » = complément de l''adjectif « compétente ». Le complément de l''adjectif précise le domaine d''application de la qualité exprimée.',
  NULL,
  'valide',
  'CRPE Français — Fonctions grammaticales',
  'premium',
  true
);

-- Q8 — Difficile — Forme passive + complément d'agent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c8010000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'grm_fonctions_phrase',
  'Identifier les fonctions grammaticales',
  'Difficile',
  'surlignage_propositions',
  'Phrase à la voix passive. Identifiez le sujet, le verbe passif et le complément d''agent.',
  NULL,
  '[{"id":"s1","label":"La scène"},{"id":"s2","label":"a été racontée"},{"id":"s3","label":"par deux témoins"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"vpass","label":"Verbe passif","color":"amber"},{"id":"cagt","label":"Complément d''agent","color":"emerald"}],"mapping":{"s1":"suj","s2":"vpass","s3":"cagt"}}'::jsonb,
  'À la voix passive, le sujet SUBIT l''action (« La scène » ne fait rien, elle est racontée). Le complément d''agent « par deux témoins » indique QUI fait l''action. Il est introduit par « par » (parfois « de »). À la voix active, ce serait : « Deux témoins ont raconté la scène. »',
  'Confondre le complément d''agent avec un CC : le complément d''agent est spécifique à la voix passive et désigne celui qui fait l''action.',
  'valide',
  'CRPE Français — Fonctions grammaticales',
  'premium',
  true
);

-- Q9 — Difficile — Attribut du COD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c8010000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'grm_fonctions_phrase',
  'Identifier les fonctions grammaticales',
  'Difficile',
  'surlignage_propositions',
  'Identifiez les fonctions. Attention à l''attribut du COD (différent de l''attribut du sujet) !',
  NULL,
  '[{"id":"s1","label":"On"},{"id":"s2","label":"a élu"},{"id":"s3","label":"Alice"},{"id":"s4","label":"présidente"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"suj","label":"Sujet","color":"blue"},{"id":"verbe","label":"Verbe","color":"amber"},{"id":"cod","label":"COD","color":"emerald"},{"id":"attcod","label":"Attribut du COD","color":"purple"}],"mapping":{"s1":"suj","s2":"verbe","s3":"cod","s4":"attcod"}}'::jsonb,
  'L''attribut du COD qualifie le COD à travers le verbe : « présidente » qualifie « Alice » (COD). Le GV contient trois constituants : V + COD + attribut du COD. Autres exemples : « Elles estiment Alice compétente » (compétente = attribut du COD Alice). C''est une fonction avancée mais fréquente au CRPE.',
  'Confondre l''attribut du COD avec un 2e COD : « présidente » qualifie « Alice », il ne désigne pas un autre objet de l''action.',
  'valide',
  'CRPE Français — Fonctions grammaticales',
  'premium',
  true
);

-- Q10 — Difficile — Analyse complète d'une phrase complexe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c8010000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'grm_fonctions_phrase',
  'Identifier les fonctions grammaticales',
  'Difficile',
  'surlignage_propositions',
  'Identifiez la fonction de chaque groupe dans cette phrase.',
  NULL,
  '[{"id":"s1","label":"Chaque matin,"},{"id":"s2","label":"le facteur"},{"id":"s3","label":"distribue le courrier"},{"id":"s4","label":"aux habitants du quartier"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"cc","label":"CC de temps","color":"blue"},{"id":"suj","label":"Sujet","color":"amber"},{"id":"gv","label":"Verbe + COD","color":"emerald"},{"id":"coi","label":"COI","color":"purple"}],"mapping":{"s1":"cc","s2":"suj","s3":"gv","s4":"coi"}}'::jsonb,
  'Analyse complète : « Chaque matin » = CC de temps (supprimable, déplaçable). « Le facteur » = sujet. « Distribue le courrier » = verbe + COD (distribue QUOI ? le courrier). « Aux habitants du quartier » = COI (distribue À QUI ? aux habitants). Le COI est un GNP (groupe nominal prépositionnel) lié au sens du verbe « distribuer ».',
  NULL,
  'valide',
  'CRPE Français — Fonctions grammaticales',
  'premium',
  true
);
