-- ============================================================
-- Migration : Série Lexique — Champs lexicaux et réseaux de sens
-- UUID prefix : d401
-- 10 exercices : qcm (5), tri_categories (3), reponse_courte (2)
-- ============================================================

-- Q1 — Facile — qcm — Identifier un champ lexical
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lexique_champs_lexicaux',
  'Champs lexicaux et réseaux de sens',
  'Facile',
  'qcm',
  'Parmi les listes suivantes, laquelle constitue un champ lexical cohérent ?',
  NULL,
  '[{"id":"a","label":"Vague, écume, marée, récif, embruns"},{"id":"b","label":"Vague, chaleur, récif, boulanger, embruns"},{"id":"c","label":"Nuage, rivière, tableau, falaise, sable"},{"id":"d","label":"Océan, prairie, montagne, forêt, désert"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Un champ lexical regroupe l''ensemble des mots qui se rapportent à un même thème ou une même notion. Ici, « vague, écume, marée, récif, embruns » appartiennent tous au champ lexical de la mer. Les autres listes mélangent des mots issus de domaines différents. Au cycle 3, l''identification des champs lexicaux permet aux élèves de structurer leur vocabulaire et d''enrichir leurs productions écrites.',
  'Confondre champ lexical et champ sémantique : le champ lexical regroupe des mots autour d''un thème commun, tandis que le champ sémantique désigne l''ensemble des sens d''un même mot.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — qcm — Nommer le champ lexical d''une série
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lexique_champs_lexicaux',
  'Champs lexicaux et réseaux de sens',
  'Facile',
  'qcm',
  'À quel champ lexical appartiennent les mots suivants : « sonate, partition, orchestre, crescendo, mélodie » ?',
  NULL,
  '[{"id":"a","label":"La danse"},{"id":"b","label":"La musique"},{"id":"c","label":"Le théâtre"},{"id":"d","label":"La poésie"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ces cinq mots se rapportent tous au domaine de la musique : la sonate est une forme musicale, la partition est le support écrit, l''orchestre désigne un ensemble d''instrumentistes, le crescendo est une nuance d''intensité et la mélodie est une suite de notes. Le repérage du champ lexical dominant dans un texte est une compétence clé en compréhension de lecture au cycle 3.',
  'On pourrait hésiter avec « poésie » car certains termes comme « mélodie » peuvent s''y rapporter métaphoriquement. Mais au sens propre, tous ces mots relèvent de la musique.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — tri_categories — Classer des mots dans leurs champs lexicaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lexique_champs_lexicaux',
  'Champs lexicaux et réseaux de sens',
  'Facile',
  'tri_categories',
  'Classez ces mots selon qu''ils appartiennent au champ lexical de la peur, de la joie ou de la colère.',
  NULL,
  '[{"id":"tc72q1w1","label":"effroi"},{"id":"tc72q1w2","label":"allégresse"},{"id":"tc72q1w3","label":"fureur"},{"id":"tc72q1w4","label":"terreur"},{"id":"tc72q1w5","label":"ravissement"},{"id":"tc72q1w6","label":"courroux"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"peur","label":"Peur"},{"id":"joie","label":"Joie"},{"id":"colere","label":"Colère"}],"mapping":{"tc72q1w1":"peur","tc72q1w2":"joie","tc72q1w3":"colere","tc72q1w4":"peur","tc72q1w5":"joie","tc72q1w6":"colere"}}'::jsonb,
  'Effroi et terreur expriment une peur intense et appartiennent au champ lexical de la peur. Allégresse et ravissement traduisent une joie vive et relèvent du champ lexical de la joie. Fureur et courroux désignent une colère violente. Maîtriser ces registres lexicaux permet aux élèves de nuancer l''expression des émotions dans leurs écrits, conformément aux attendus du cycle 3.',
  'Confondre « courroux » (colère soutenue) avec un mot lié à la peur en raison de sa sonorité inhabituelle. Le courroux est bien un synonyme littéraire de colère.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Identifier l''intrus dans un champ lexical
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lexique_champs_lexicaux',
  'Champs lexicaux et réseaux de sens',
  'Intermediaire',
  'qcm',
  'Quel mot est un intrus dans la liste suivante : « scalpel, auscultation, ordonnance, diagnostic, réquisitoire » ?',
  NULL,
  '[{"id":"a","label":"scalpel"},{"id":"b","label":"auscultation"},{"id":"c","label":"réquisitoire"},{"id":"d","label":"diagnostic"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Scalpel, auscultation, ordonnance et diagnostic appartiennent au champ lexical de la médecine. Le réquisitoire est un terme juridique désignant le discours du procureur lors d''un procès. L''exercice de l''intrus permet de vérifier la capacité à percevoir la cohérence sémantique d''un ensemble lexical, compétence évaluée au CRPE dans l''analyse de textes.',
  'Le mot « diagnostic » peut aussi s''employer dans un contexte non médical (diagnostic d''une panne), ce qui peut créer une hésitation. Mais dans cette liste, il s''inscrit clairement dans le champ médical.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — tri_categories — Champs lexicaux dans un extrait littéraire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lexique_champs_lexicaux',
  'Champs lexicaux et réseaux de sens',
  'Intermediaire',
  'tri_categories',
  'Classez ces mots extraits d''un récit selon qu''ils relèvent du champ lexical de la lumière ou de l''obscurité.',
  NULL,
  '[{"id":"tc72q2w1","label":"éclat"},{"id":"tc72q2w2","label":"pénombre"},{"id":"tc72q2w3","label":"lueur"},{"id":"tc72q2w4","label":"ténèbres"},{"id":"tc72q2w5","label":"resplendissant"},{"id":"tc72q2w6","label":"opaque"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"lumiere","label":"Lumière"},{"id":"obscurite","label":"Obscurité"}],"mapping":{"tc72q2w1":"lumiere","tc72q2w2":"obscurite","tc72q2w3":"lumiere","tc72q2w4":"obscurite","tc72q2w5":"lumiere","tc72q2w6":"obscurite"}}'::jsonb,
  'Éclat, lueur et resplendissant évoquent la présence de lumière à des degrés divers. Pénombre, ténèbres et opaque renvoient à l''absence de lumière. L''opposition de deux champs lexicaux dans un texte est un procédé stylistique fréquent (antithèse) que les élèves doivent apprendre à repérer en lecture analytique dès le cycle 3.',
  'Le mot « lueur » peut prêter à confusion car il désigne une lumière faible, mais il reste bien dans le champ de la lumière, non de l''obscurité.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — qcm — Réseau sémantique et polysémie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lexique_champs_lexicaux',
  'Champs lexicaux et réseaux de sens',
  'Intermediaire',
  'qcm',
  'Le mot « feuille » peut appartenir à plusieurs champs lexicaux. Lequel de ces champs lexicaux ne peut PAS inclure ce mot ?',
  NULL,
  '[{"id":"a","label":"La botanique (feuille d''arbre)"},{"id":"b","label":"La papeterie (feuille de papier)"},{"id":"c","label":"La cuisine (feuille de brick)"},{"id":"d","label":"L''astronomie (feuille de route)"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Le mot « feuille » est polysémique : il appartient au champ lexical de la botanique (feuille d''arbre), de la papeterie (feuille de papier) et de la cuisine (feuille de brick). L''expression « feuille de route » relève du domaine de la planification ou du voyage, non de l''astronomie. La polysémie est un concept central dans l''enseignement du lexique : un même mot peut s''inscrire dans plusieurs champs lexicaux selon son contexte d''emploi.',
  'Croire que « feuille de route » est un terme d''astronomie. Cette expression désigne un document de planification et relève du champ lexical du voyage ou de l''organisation.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — reponse_courte — Nommer un champ lexical
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lexique_champs_lexicaux',
  'Champs lexicaux et réseaux de sens',
  'Intermediaire',
  'reponse_courte',
  'Quel est le champ lexical commun aux mots suivants : « toile, chevalet, palette, pigment, vernissage » ? Répondez en un ou deux mots.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["peinture","la peinture","art","arts plastiques","les arts plastiques","beaux-arts"]}'::jsonb,
  'Ces mots appartiennent au champ lexical de la peinture (ou des arts plastiques). La toile est le support, le chevalet le meuble de peintre, la palette l''outil pour mélanger les couleurs, le pigment la matière colorante et le vernissage l''inauguration d''une exposition. Savoir identifier et nommer un champ lexical est une compétence fondamentale au CRPE.',
  'Répondre « musée » ou « exposition » : ces mots désignent des lieux liés à l''art, mais le champ lexical ici est plus précisément celui de la peinture (les outils et la pratique).',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — qcm — Champ lexical et effet stylistique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lexique_champs_lexicaux',
  'Champs lexicaux et réseaux de sens',
  'Avance',
  'qcm',
  'Dans l''extrait « Le soleil dévorait la plaine, les blés agonisaient sous la fournaise, la terre se craquelait de soif », quels champs lexicaux dominants s''entrecroisent pour créer un effet stylistique ?',
  'Le soleil dévorait la plaine, les blés agonisaient sous la fournaise, la terre se craquelait de soif.',
  '[{"id":"a","label":"La chaleur et la mort"},{"id":"b","label":"La nature et la joie"},{"id":"c","label":"La guerre et la victoire"},{"id":"d","label":"Le feu et l''eau"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Cet extrait entrelace le champ lexical de la chaleur (dévorait, fournaise, soif) et celui de la mort/souffrance (agonisaient, craquelait). Cette superposition crée une personnification de la nature souffrante et une atmosphère dramatique. L''analyse des champs lexicaux croisés dans un texte littéraire est une compétence avancée attendue au CRPE pour l''épreuve de français.',
  'Choisir « le feu et l''eau » : bien que la soif évoque l''eau par son absence, le champ lexical dominant n''est pas celui de l''eau mais celui de la chaleur destructrice.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — tri_categories — Réseaux de sens : synonymes, antonymes, hyperonymes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lexique_champs_lexicaux',
  'Champs lexicaux et réseaux de sens',
  'Avance',
  'tri_categories',
  'Classez les relations suivantes entre les mots proposés : synonymie, antonymie ou hyperonymie.',
  'Pour chaque paire, identifiez le type de relation sémantique.',
  '[{"id":"tc72q3w1","label":"véhicule / voiture"},{"id":"tc72q3w2","label":"rapide / lent"},{"id":"tc72q3w3","label":"demeure / maison"},{"id":"tc72q3w4","label":"fleur / tulipe"},{"id":"tc72q3w5","label":"joyeux / triste"},{"id":"tc72q3w6","label":"courageux / brave"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"synonymie","label":"Synonymie"},{"id":"antonymie","label":"Antonymie"},{"id":"hyperonymie","label":"Hyperonymie"}],"mapping":{"tc72q3w1":"hyperonymie","tc72q3w2":"antonymie","tc72q3w3":"synonymie","tc72q3w4":"hyperonymie","tc72q3w5":"antonymie","tc72q3w6":"synonymie"}}'::jsonb,
  'Véhicule/voiture et fleur/tulipe sont des relations d''hyperonymie : le premier terme est le terme générique (hyperonyme), le second le terme spécifique (hyponyme). Rapide/lent et joyeux/triste sont des antonymes (sens contraires). Demeure/maison et courageux/brave sont des synonymes (sens proches). Ces trois types de relations sémantiques structurent les réseaux de sens étudiés dans les programmes Éduscol du cycle 3.',
  'Confondre hyperonymie et synonymie : « véhicule » n''est pas un synonyme de « voiture », c''est un terme générique qui inclut aussi les camions, les motos, etc.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Facile — reponse_courte — Trouver un mot appartenant à un champ lexical
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-00000000000a',
  'Francais',
  'lexique',
  'lexique_champs_lexicaux',
  'Champs lexicaux et réseaux de sens',
  'Facile',
  'reponse_courte',
  'Donnez un synonyme du mot « maison » appartenant à un registre de langue soutenu.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["demeure","une demeure","résidence","une résidence","logis","un logis","domicile","un domicile","habitation","une habitation"]}'::jsonb,
  'En registre soutenu, le mot « maison » peut être remplacé par « demeure », « résidence », « logis » ou « domicile ». Ces synonymes appartiennent au même champ lexical (l''habitat) mais relèvent de niveaux de langue différents. L''enseignement des registres de langue et de la synonymie est un axe majeur du programme de lexique au cycle 3, conformément aux recommandations d''Éduscol.',
  'Proposer un mot familier comme « baraque » ou « piaule » : ces termes appartiennent bien au champ lexical de l''habitat, mais relèvent du registre familier et non soutenu.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
