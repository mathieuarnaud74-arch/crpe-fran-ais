-- Migration: 2 séries interactives grammaire (tri_categories + surlignage_propositions)
-- Série 1 : tri_phrase_emphatique (10 questions, free) — UUID prefix fa1e0000
-- Série 2 : surlignage_expansions_nom (10 questions, premium) — UUID prefix fa1f0000

-- ============================================================================
-- SÉRIE 1 : Tri — Phrase neutre vs phrase emphatique
-- ============================================================================

-- Q1 — Facile — 2 catégories (neutre / emphatique)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1e0000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'tri_phrase_emphatique',
  'Tri — Phrase neutre vs phrase emphatique',
  'Facile',
  'tri_categories',
  'Classez chaque phrase selon qu''elle est neutre ou emphatique.',
  NULL,
  '[{"id":"s1q1w1","label":"Le chat dort sur le canapé."},{"id":"s1q1w2","label":"C''est le chat qui dort sur le canapé."},{"id":"s1q1w3","label":"Les enfants jouent dehors."},{"id":"s1q1w4","label":"Ce sont les enfants qui jouent dehors."},{"id":"s1q1w5","label":"Pierre mange une pomme."},{"id":"s1q1w6","label":"La pomme, Pierre la mange."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"neutre","label":"Phrase neutre"},{"id":"emphatique","label":"Phrase emphatique"}],"mapping":{"s1q1w1":"neutre","s1q1w2":"emphatique","s1q1w3":"neutre","s1q1w4":"emphatique","s1q1w5":"neutre","s1q1w6":"emphatique"}}'::jsonb,
  'La phrase neutre suit l''ordre canonique sujet-verbe-complément sans mise en relief. La phrase emphatique met en valeur un élément par extraction (« C''est… qui ») ou par dislocation (« La pomme, Pierre la mange »). Ces procédés sont définis dans les programmes Éduscol comme des transformations syntaxiques de la phrase de base.',
  'Confondre phrase exclamative et phrase emphatique. L''emphase désigne une mise en relief syntaxique, non une intonation forte.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — 2 catégories (neutre / emphatique)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1e0000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'tri_phrase_emphatique',
  'Tri — Phrase neutre vs phrase emphatique',
  'Facile',
  'tri_categories',
  'Classez chaque phrase selon qu''elle est neutre ou emphatique.',
  NULL,
  '[{"id":"s1q2w1","label":"Marie a réussi son examen."},{"id":"s1q2w2","label":"C''est Marie qui a réussi son examen."},{"id":"s1q2w3","label":"Le directeur annonce la nouvelle."},{"id":"s1q2w4","label":"La nouvelle, le directeur l''annonce."},{"id":"s1q2w5","label":"Mon frère habite à Lyon."},{"id":"s1q2w6","label":"C''est à Lyon que mon frère habite."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"neutre","label":"Phrase neutre"},{"id":"emphatique","label":"Phrase emphatique"}],"mapping":{"s1q2w1":"neutre","s1q2w2":"emphatique","s1q2w3":"neutre","s1q2w4":"emphatique","s1q2w5":"neutre","s1q2w6":"emphatique"}}'::jsonb,
  'Les phrases neutres présentent l''information sans mise en relief particulière. « C''est Marie qui… » et « C''est à Lyon que… » sont des extractions (tournure « c''est… qui/que »). « La nouvelle, le directeur l''annonce » est une dislocation à gauche avec reprise pronominale « l'' ».',
  'Ne pas repérer la dislocation quand le complément est détaché en tête de phrase. Le critère est la présence d''un pronom de reprise (« l'' ») dans la proposition.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — 2 catégories (neutre / emphatique)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1e0000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'tri_phrase_emphatique',
  'Tri — Phrase neutre vs phrase emphatique',
  'Facile',
  'tri_categories',
  'Classez chaque phrase selon qu''elle est neutre ou emphatique.',
  NULL,
  '[{"id":"s1q3w1","label":"Le professeur corrige les copies."},{"id":"s1q3w2","label":"Les copies, le professeur les corrige."},{"id":"s1q3w3","label":"Nous partons demain matin."},{"id":"s1q3w4","label":"C''est demain matin que nous partons."},{"id":"s1q3w5","label":"L''orage a éclaté cette nuit."},{"id":"s1q3w6","label":"Cette nuit, l''orage, il a éclaté."},{"id":"s1q3w7","label":"Julie lit un roman."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"neutre","label":"Phrase neutre"},{"id":"emphatique","label":"Phrase emphatique"}],"mapping":{"s1q3w1":"neutre","s1q3w2":"emphatique","s1q3w3":"neutre","s1q3w4":"emphatique","s1q3w5":"neutre","s1q3w6":"emphatique","s1q3w7":"neutre"}}'::jsonb,
  'La phrase emphatique se distingue par un procédé de mise en relief : extraction avec « c''est… que » ou dislocation avec détachement d''un constituant et reprise pronominale. « Les copies, le professeur les corrige » détache le COD en tête. « Cette nuit, l''orage, il a éclaté » présente une double dislocation. Selon les programmes Éduscol, identifier ces transformations fait partie de l''étude de la phrase.',
  'Croire qu''un complément circonstanciel antéposé (« Demain, nous partons ») est toujours une dislocation. Sans pronom de reprise, il s''agit d''un simple déplacement, pas d''une emphase.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — 3 catégories (extraction / dislocation / neutre)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1e0000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'tri_phrase_emphatique',
  'Tri — Phrase neutre vs phrase emphatique',
  'Intermediaire',
  'tri_categories',
  'Classez chaque phrase selon le procédé emphatique utilisé : extraction, dislocation ou phrase neutre.',
  NULL,
  '[{"id":"s1q4w1","label":"C''est Paul qui a gagné la course."},{"id":"s1q4w2","label":"Le vélo, Paul l''a réparé hier."},{"id":"s1q4w3","label":"L''enseignante distribue les cahiers."},{"id":"s1q4w4","label":"C''est dans la cour que les élèves jouent."},{"id":"s1q4w5","label":"Les devoirs, je les fais le soir."},{"id":"s1q4w6","label":"Le train arrive à huit heures."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"extraction","label":"Extraction (C''est… qui/que)"},{"id":"dislocation","label":"Dislocation (détachement)"},{"id":"neutre","label":"Phrase neutre"}],"mapping":{"s1q4w1":"extraction","s1q4w2":"dislocation","s1q4w3":"neutre","s1q4w4":"extraction","s1q4w5":"dislocation","s1q4w6":"neutre"}}'::jsonb,
  'L''extraction utilise la tournure « c''est… qui/que » pour focaliser un constituant. La dislocation détache un élément (souvent le COD ou le sujet) en tête ou en fin de phrase, avec un pronom de reprise. Les programmes Éduscol distinguent ces deux procédés comme des transformations de la phrase de base permettant la mise en relief.',
  'Confondre extraction et dislocation. L''extraction encadre le constituant par « c''est… qui/que » ; la dislocation le détache et le reprend par un pronom clitique.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — 3 catégories (extraction / dislocation / neutre)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1e0000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'tri_phrase_emphatique',
  'Tri — Phrase neutre vs phrase emphatique',
  'Intermediaire',
  'tri_categories',
  'Classez chaque phrase selon le procédé emphatique utilisé : extraction, dislocation ou phrase neutre.',
  NULL,
  '[{"id":"s1q5w1","label":"C''est cette chanson que je préfère."},{"id":"s1q5w2","label":"Mon voisin, il part toujours très tôt."},{"id":"s1q5w3","label":"La bibliothécaire range les livres."},{"id":"s1q5w4","label":"C''est en forgeant qu''on devient forgeron."},{"id":"s1q5w5","label":"Ce gâteau, ma mère le prépare chaque dimanche."},{"id":"s1q5w6","label":"Le médecin consulte chaque matin."},{"id":"s1q5w7","label":"Moi, je n''y crois pas."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"extraction","label":"Extraction (C''est… qui/que)"},{"id":"dislocation","label":"Dislocation (détachement)"},{"id":"neutre","label":"Phrase neutre"}],"mapping":{"s1q5w1":"extraction","s1q5w2":"dislocation","s1q5w3":"neutre","s1q5w4":"extraction","s1q5w5":"dislocation","s1q5w6":"neutre","s1q5w7":"dislocation"}}'::jsonb,
  '« C''est cette chanson que… » et « C''est en forgeant qu''… » sont des extractions (structure présentative « c''est… que »). « Mon voisin, il part… », « Ce gâteau, ma mère le prépare… » et « Moi, je n''y crois pas » sont des dislocations à gauche avec pronom de reprise (il, le, je). Les phrases neutres suivent l''ordre canonique SVO.',
  'Ne pas reconnaître « Moi, je… » comme une dislocation. Le pronom tonique « moi » est détaché et repris par « je » : c''est bien une forme emphatique par dislocation.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — 3 catégories (extraction / dislocation / neutre)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1e0000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'tri_phrase_emphatique',
  'Tri — Phrase neutre vs phrase emphatique',
  'Intermediaire',
  'tri_categories',
  'Classez chaque phrase selon le procédé emphatique utilisé : extraction, dislocation ou phrase neutre.',
  NULL,
  '[{"id":"s1q6w1","label":"C''est à toi que je parle."},{"id":"s1q6w2","label":"Cette histoire, personne n''y croit."},{"id":"s1q6w3","label":"Les élèves révisent pour le contrôle."},{"id":"s1q6w4","label":"C''est le directeur qui a pris cette décision."},{"id":"s1q6w5","label":"Le jardin, nous l''entretenons chaque semaine."},{"id":"s1q6w6","label":"Elle prend le bus tous les matins."},{"id":"s1q6w7","label":"Lui, il ne dit jamais rien."},{"id":"s1q6w8","label":"Le facteur distribue le courrier."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"extraction","label":"Extraction (C''est… qui/que)"},{"id":"dislocation","label":"Dislocation (détachement)"},{"id":"neutre","label":"Phrase neutre"}],"mapping":{"s1q6w1":"extraction","s1q6w2":"dislocation","s1q6w3":"neutre","s1q6w4":"extraction","s1q6w5":"dislocation","s1q6w6":"neutre","s1q6w7":"dislocation","s1q6w8":"neutre"}}'::jsonb,
  '« C''est à toi que… » et « C''est le directeur qui… » sont des extractions. « Cette histoire, personne n''y croit », « Le jardin, nous l''entretenons… » et « Lui, il ne dit jamais rien » sont des dislocations avec pronoms de reprise (y, l'', il). Les trois phrases restantes sont neutres : elles respectent l''ordre sujet-verbe-complément sans transformation emphatique.',
  'Oublier que le pronom « y » dans « personne n''y croit » reprend « cette histoire » détaché en tête. La présence de ce pronom anaphorique confirme la dislocation.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — 3 catégories (extraction / dislocation / neutre)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1e0000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'tri_phrase_emphatique',
  'Tri — Phrase neutre vs phrase emphatique',
  'Intermediaire',
  'tri_categories',
  'Classez chaque phrase selon le procédé emphatique utilisé : extraction, dislocation ou phrase neutre.',
  NULL,
  '[{"id":"s1q7w1","label":"C''est pour cette raison que je refuse."},{"id":"s1q7w2","label":"Ton projet, je n''en veux pas."},{"id":"s1q7w3","label":"Le boulanger ouvre sa boutique à six heures."},{"id":"s1q7w4","label":"C''est elle qui a trouvé la solution."},{"id":"s1q7w5","label":"La musique, il l''écoute sans arrêt."},{"id":"s1q7w6","label":"Nous avons visité le musée hier."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"extraction","label":"Extraction (C''est… qui/que)"},{"id":"dislocation","label":"Dislocation (détachement)"},{"id":"neutre","label":"Phrase neutre"}],"mapping":{"s1q7w1":"extraction","s1q7w2":"dislocation","s1q7w3":"neutre","s1q7w4":"extraction","s1q7w5":"dislocation","s1q7w6":"neutre"}}'::jsonb,
  '« C''est pour cette raison que… » et « C''est elle qui… » sont des extractions par le présentatif « c''est… qui/que ». « Ton projet, je n''en veux pas » et « La musique, il l''écoute… » sont des dislocations : le complément est détaché en tête et repris par un pronom (en, l''). Les phrases neutres conservent l''ordre canonique sans mise en relief.',
  'Ne pas voir que « en » dans « je n''en veux pas » reprend « ton projet ». Le pronom adverbial « en » est un indice de dislocation quand un GN est détaché en position frontale.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — 3 catégories (extraction / dislocation / présentatif)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1e0000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'tri_phrase_emphatique',
  'Tri — Phrase neutre vs phrase emphatique',
  'Difficile',
  'tri_categories',
  'Classez chaque phrase emphatique selon le procédé utilisé : extraction, dislocation ou présentatif.',
  NULL,
  '[{"id":"s1q8w1","label":"C''est dans cette école que j''ai appris à lire."},{"id":"s1q8w2","label":"Voici le document que vous cherchiez."},{"id":"s1q8w3","label":"La grammaire, les élèves la trouvent difficile."},{"id":"s1q8w4","label":"Il y a trois erreurs dans ta dictée."},{"id":"s1q8w5","label":"Ce livre, je te l''avais recommandé."},{"id":"s1q8w6","label":"C''est en lisant qu''on enrichit son vocabulaire."},{"id":"s1q8w7","label":"Voilà ce que je voulais dire."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"extraction","label":"Extraction"},{"id":"dislocation","label":"Dislocation"},{"id":"presentatif","label":"Présentatif (il y a, voici)"}],"mapping":{"s1q8w1":"extraction","s1q8w2":"presentatif","s1q8w3":"dislocation","s1q8w4":"presentatif","s1q8w5":"dislocation","s1q8w6":"extraction","s1q8w7":"presentatif"}}'::jsonb,
  'Les présentatifs (voici, voilà, il y a) sont des outils de mise en relief qui présentent un élément au destinataire. L''extraction (« c''est… qui/que ») focalise un constituant de la phrase. La dislocation détache un GN avec reprise pronominale. Le programme Éduscol cycle 3 inclut l''identification de ces procédés dans l''étude de la syntaxe de la phrase.',
  'Confondre le présentatif « il y a » (mise en relief) avec un simple verbe impersonnel. Dans « Il y a trois erreurs », la structure présente un élément nouveau ; c''est un procédé emphatique à part entière.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — 3 catégories (extraction / dislocation / présentatif)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1e0000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'tri_phrase_emphatique',
  'Tri — Phrase neutre vs phrase emphatique',
  'Difficile',
  'tri_categories',
  'Classez chaque phrase emphatique selon le procédé utilisé : extraction, dislocation ou présentatif.',
  NULL,
  '[{"id":"s1q9w1","label":"Voici les résultats tant attendus."},{"id":"s1q9w2","label":"C''est avec patience qu''on obtient de bons résultats."},{"id":"s1q9w3","label":"Eux, ils n''ont rien compris."},{"id":"s1q9w4","label":"Il y a un problème que nous devons résoudre."},{"id":"s1q9w5","label":"Ces exercices, nous les avons déjà faits."},{"id":"s1q9w6","label":"C''est le sens du texte qui pose difficulté."},{"id":"s1q9w7","label":"Voilà pourquoi la lecture est essentielle."},{"id":"s1q9w8","label":"Son cartable, il l''a oublié à l''école."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"extraction","label":"Extraction"},{"id":"dislocation","label":"Dislocation"},{"id":"presentatif","label":"Présentatif (il y a, voici)"}],"mapping":{"s1q9w1":"presentatif","s1q9w2":"extraction","s1q9w3":"dislocation","s1q9w4":"presentatif","s1q9w5":"dislocation","s1q9w6":"extraction","s1q9w7":"presentatif","s1q9w8":"dislocation"}}'::jsonb,
  '« Voici… » et « Voilà… » sont des présentatifs qui mettent en relief l''élément qu''ils introduisent. « Il y a un problème… » présente un référent nouveau. Les extractions « C''est… qui/que » focalisent un constituant. Les dislocations détachent un GN (« Eux », « Ces exercices », « Son cartable ») repris par un pronom clitique. Selon les programmes Éduscol, ces trois procédés relèvent de l''étude des types de phrases au cycle 3.',
  'Classer « Voilà pourquoi… » comme une extraction. La structure « voilà + mot interrogatif » reste un présentatif ; elle ne contient pas le dispositif « c''est… qui/que » propre à l''extraction.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — 3 catégories (extraction / dislocation / présentatif)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1e0000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'tri_phrase_emphatique',
  'Tri — Phrase neutre vs phrase emphatique',
  'Difficile',
  'tri_categories',
  'Classez chaque phrase emphatique selon le procédé utilisé : extraction, dislocation ou présentatif.',
  NULL,
  '[{"id":"s1q10w1","label":"C''est à l''école maternelle que se construit le langage oral."},{"id":"s1q10w2","label":"Voici comment procéder pour analyser un texte."},{"id":"s1q10w3","label":"La phonologie, les enseignants l''enseignent dès la grande section."},{"id":"s1q10w4","label":"Il y a des compétences transversales à mobiliser."},{"id":"s1q10w5","label":"C''est par la manipulation que l''élève comprend la grammaire."},{"id":"s1q10w6","label":"Le vocabulaire, on ne l''acquiert pas sans lecture régulière."},{"id":"s1q10w7","label":"Voilà l''objectif que fixent les programmes."},{"id":"s1q10w8","label":"Toi, tu dois relire ta copie avant de la rendre."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"extraction","label":"Extraction"},{"id":"dislocation","label":"Dislocation"},{"id":"presentatif","label":"Présentatif (il y a, voici)"}],"mapping":{"s1q10w1":"extraction","s1q10w2":"presentatif","s1q10w3":"dislocation","s1q10w4":"presentatif","s1q10w5":"extraction","s1q10w6":"dislocation","s1q10w7":"presentatif","s1q10w8":"dislocation"}}'::jsonb,
  'Cette question mobilise du vocabulaire didactique (phonologie, compétences transversales, manipulation). « C''est à l''école maternelle que… » et « C''est par la manipulation que… » sont des extractions. « La phonologie, les enseignants l''enseignent… », « Le vocabulaire, on ne l''acquiert pas… » et « Toi, tu dois… » sont des dislocations. « Voici… », « Il y a… » et « Voilà… » sont des présentatifs. Selon le référentiel Éduscol, maîtriser ces procédés est nécessaire pour l''analyse syntaxique au CRPE.',
  'Confondre la dislocation « Toi, tu… » avec une simple apostrophe. Le pronom tonique détaché « Toi » est bien repris par « tu » : c''est une dislocation du sujet, pas une interpellation.',
  'valide',
  'CRPE Français — Grammaire',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- SÉRIE 2 : Surlignage — Expansions du groupe nominal
-- ============================================================================

-- Q1 — Facile — 2 groupes (épithète / complément du nom)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1f0000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'surlignage_expansions_nom',
  'Surlignage — Expansions du nom',
  'Facile',
  'surlignage_propositions',
  'Surlignez les expansions du nom en identifiant leur nature : épithète ou complément du nom.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"grand"},{"id":"s3","label":"jardin"},{"id":"s4","label":"de"},{"id":"s5","label":"ma"},{"id":"s6","label":"grand-mère"},{"id":"s7","label":"est"},{"id":"s8","label":"magnifique."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"epithete","label":"Épithète","color":"#4A6E8F"},{"id":"cdn","label":"Complément du nom","color":"#A46849"}],"mapping":{"s2":"epithete","s4":"cdn","s5":"cdn","s6":"cdn"}}'::jsonb,
  '« Grand » est un adjectif qualificatif épithète du nom « jardin » : il le caractérise directement. « De ma grand-mère » est un complément du nom introduit par la préposition « de ». Les programmes Éduscol cycle 3 identifient l''épithète et le complément du nom comme les deux premières expansions à étudier.',
  'Oublier que la préposition « de » fait partie du complément du nom. Le groupe prépositionnel complet « de ma grand-mère » est l''expansion, pas seulement « grand-mère ».',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — 2 groupes (épithète / complément du nom)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1f0000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'surlignage_expansions_nom',
  'Surlignage — Expansions du nom',
  'Facile',
  'surlignage_propositions',
  'Surlignez les expansions du nom en identifiant leur nature : épithète ou complément du nom.',
  NULL,
  '[{"id":"s1","label":"Une"},{"id":"s2","label":"jolie"},{"id":"s3","label":"maison"},{"id":"s4","label":"en"},{"id":"s5","label":"pierre"},{"id":"s6","label":"domine"},{"id":"s7","label":"la"},{"id":"s8","label":"petite"},{"id":"s9","label":"vallée."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"epithete","label":"Épithète","color":"#4A6E8F"},{"id":"cdn","label":"Complément du nom","color":"#A46849"}],"mapping":{"s2":"epithete","s4":"cdn","s5":"cdn","s8":"epithete"}}'::jsonb,
  '« Jolie » est épithète antéposée du nom « maison ». « En pierre » est un complément du nom « maison » introduit par la préposition « en ». « Petite » est épithète antéposée du nom « vallée ». Les expansions du nom enrichissent le groupe nominal sans changer sa fonction dans la phrase.',
  'Ne pas identifier « en pierre » comme complément du nom car la préposition n''est pas « de ». Un complément du nom peut être introduit par diverses prépositions : de, en, à, pour, sans, etc.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — 2 groupes (épithète / complément du nom)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1f0000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'surlignage_expansions_nom',
  'Surlignage — Expansions du nom',
  'Facile',
  'surlignage_propositions',
  'Surlignez les expansions du nom en identifiant leur nature : épithète ou complément du nom.',
  NULL,
  '[{"id":"s1","label":"Les"},{"id":"s2","label":"nouveaux"},{"id":"s3","label":"programmes"},{"id":"s4","label":"de"},{"id":"s5","label":"l''Éducation"},{"id":"s6","label":"nationale"},{"id":"s7","label":"sont"},{"id":"s8","label":"ambitieux."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"epithete","label":"Épithète","color":"#4A6E8F"},{"id":"cdn","label":"Complément du nom","color":"#A46849"}],"mapping":{"s2":"epithete","s4":"cdn","s5":"cdn","s6":"cdn"}}'::jsonb,
  '« Nouveaux » est un adjectif épithète antéposé du nom « programmes ». « De l''Éducation nationale » est un complément du nom « programmes ». Attention : « nationale » n''est pas ici épithète de « programmes » mais fait partie du groupe nominal « l''Éducation nationale » inclus dans le complément du nom. « Ambitieux » est attribut du sujet, pas une expansion du nom.',
  'Classer « ambitieux » comme épithète. En position après le verbe « sont », il est attribut du sujet, pas expansion du nom. L''épithète est directement liée au nom dans le GN, sans verbe intermédiaire.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — 3 groupes (épithète / complément du nom / subordonnée relative)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1f0000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'surlignage_expansions_nom',
  'Surlignage — Expansions du nom',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les expansions du nom : épithète, complément du nom ou subordonnée relative.',
  NULL,
  '[{"id":"s1","label":"L''"},{"id":"s2","label":"élève"},{"id":"s3","label":"studieux"},{"id":"s4","label":"qui"},{"id":"s5","label":"révise"},{"id":"s6","label":"chaque"},{"id":"s7","label":"soir"},{"id":"s8","label":"obtient"},{"id":"s9","label":"de"},{"id":"s10","label":"bons"},{"id":"s11","label":"résultats."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"epithete","label":"Épithète","color":"#4A6E8F"},{"id":"cdn","label":"Complément du nom","color":"#A46849"},{"id":"relative","label":"Subordonnée relative","color":"#6B534A"}],"mapping":{"s3":"epithete","s4":"relative","s5":"relative","s6":"relative","s7":"relative","s10":"epithete"}}'::jsonb,
  '« Studieux » est adjectif épithète postposé du nom « élève ». « Qui révise chaque soir » est une subordonnée relative complément de l''antécédent « élève » : elle contient un verbe conjugué introduit par le pronom relatif « qui ». « Bons » est épithète antéposée du nom « résultats ». Selon Éduscol, la subordonnée relative est la troisième expansion du nom étudiée au cycle 3.',
  'Rattacher « chaque soir » à la phrase principale plutôt qu''à la subordonnée relative. Le complément circonstanciel de temps dépend du verbe « révise » et appartient donc à la subordonnée.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — 3 groupes (épithète / complément du nom / subordonnée relative)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1f0000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'surlignage_expansions_nom',
  'Surlignage — Expansions du nom',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les expansions du nom : épithète, complément du nom ou subordonnée relative.',
  NULL,
  '[{"id":"s1","label":"La"},{"id":"s2","label":"vieille"},{"id":"s3","label":"horloge"},{"id":"s4","label":"du"},{"id":"s5","label":"salon"},{"id":"s6","label":"qui"},{"id":"s7","label":"sonne"},{"id":"s8","label":"toutes"},{"id":"s9","label":"les"},{"id":"s10","label":"heures"},{"id":"s11","label":"est"},{"id":"s12","label":"un"},{"id":"s13","label":"souvenir"},{"id":"s14","label":"de"},{"id":"s15","label":"famille."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"epithete","label":"Épithète","color":"#4A6E8F"},{"id":"cdn","label":"Complément du nom","color":"#A46849"},{"id":"relative","label":"Subordonnée relative","color":"#6B534A"}],"mapping":{"s2":"epithete","s4":"cdn","s5":"cdn","s6":"relative","s7":"relative","s8":"relative","s9":"relative","s10":"relative","s14":"cdn","s15":"cdn"}}'::jsonb,
  '« Vieille » est épithète antéposée de « horloge ». « Du salon » (= de le salon) est complément du nom « horloge ». « Qui sonne toutes les heures » est une subordonnée relative complément de l''antécédent « horloge ». « De famille » est complément du nom « souvenir ». Une même tête nominale peut recevoir plusieurs expansions empilées.',
  'Ne pas voir que « du salon » et « qui sonne toutes les heures » complètent tous deux « horloge ». Un nom peut avoir simultanément un complément du nom et une subordonnée relative.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — 3 groupes (épithète / complément du nom / subordonnée relative)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1f0000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'surlignage_expansions_nom',
  'Surlignage — Expansions du nom',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les expansions du nom : épithète, complément du nom ou subordonnée relative.',
  NULL,
  '[{"id":"s1","label":"Nous"},{"id":"s2","label":"avons"},{"id":"s3","label":"lu"},{"id":"s4","label":"un"},{"id":"s5","label":"long"},{"id":"s6","label":"roman"},{"id":"s7","label":"d''"},{"id":"s8","label":"aventures"},{"id":"s9","label":"que"},{"id":"s10","label":"la"},{"id":"s11","label":"maîtresse"},{"id":"s12","label":"nous"},{"id":"s13","label":"avait"},{"id":"s14","label":"recommandé."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"epithete","label":"Épithète","color":"#4A6E8F"},{"id":"cdn","label":"Complément du nom","color":"#A46849"},{"id":"relative","label":"Subordonnée relative","color":"#6B534A"}],"mapping":{"s5":"epithete","s7":"cdn","s8":"cdn","s9":"relative","s10":"relative","s11":"relative","s12":"relative","s13":"relative","s14":"relative"}}'::jsonb,
  '« Long » est adjectif épithète antéposé de « roman ». « D''aventures » est complément du nom « roman ». « Que la maîtresse nous avait recommandé » est une subordonnée relative : le pronom relatif « que » reprend l''antécédent « roman » et introduit une proposition avec un verbe conjugué au plus-que-parfait.',
  'Oublier que le pronom relatif « que » fait partie de la subordonnée relative. Il en est le premier mot et y exerce la fonction de COD du verbe « avait recommandé ».',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — 3 groupes (épithète / complément du nom / subordonnée relative)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1f0000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'surlignage_expansions_nom',
  'Surlignage — Expansions du nom',
  'Intermediaire',
  'surlignage_propositions',
  'Surlignez les expansions du nom : épithète, complément du nom ou subordonnée relative.',
  NULL,
  '[{"id":"s1","label":"Le"},{"id":"s2","label":"petit"},{"id":"s3","label":"garçon"},{"id":"s4","label":"aux"},{"id":"s5","label":"cheveux"},{"id":"s6","label":"blonds"},{"id":"s7","label":"qui"},{"id":"s8","label":"joue"},{"id":"s9","label":"dans"},{"id":"s10","label":"la"},{"id":"s11","label":"cour"},{"id":"s12","label":"est"},{"id":"s13","label":"mon"},{"id":"s14","label":"neveu."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"epithete","label":"Épithète","color":"#4A6E8F"},{"id":"cdn","label":"Complément du nom","color":"#A46849"},{"id":"relative","label":"Subordonnée relative","color":"#6B534A"}],"mapping":{"s2":"epithete","s4":"cdn","s5":"cdn","s6":"cdn","s7":"relative","s8":"relative","s9":"relative","s10":"relative","s11":"relative"}}'::jsonb,
  '« Petit » est épithète antéposée de « garçon ». « Aux cheveux blonds » est complément du nom « garçon » (la préposition « à » contractée en « aux » introduit le groupe). Attention : « blonds » qualifie « cheveux » à l''intérieur du complément du nom, il n''est pas expansion directe de « garçon ». « Qui joue dans la cour » est une subordonnée relative.',
  'Classer « blonds » comme épithète de « garçon ». Il est bien adjectif épithète, mais de « cheveux », à l''intérieur du complément du nom. Il ne constitue pas une expansion directe du nom noyau « garçon ».',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — 4 groupes (épithète / complément du nom / subordonnée relative / apposition)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1f0000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'surlignage_expansions_nom',
  'Surlignage — Expansions du nom',
  'Difficile',
  'surlignage_propositions',
  'Surlignez les quatre types d''expansions du nom : épithète, complément du nom, subordonnée relative et apposition.',
  NULL,
  '[{"id":"s1","label":"Victor"},{"id":"s2","label":"Hugo,"},{"id":"s3","label":"célèbre"},{"id":"s4","label":"écrivain"},{"id":"s5","label":"du"},{"id":"s6","label":"XIXe"},{"id":"s7","label":"siècle,"},{"id":"s8","label":"a"},{"id":"s9","label":"écrit"},{"id":"s10","label":"des"},{"id":"s11","label":"romans"},{"id":"s12","label":"inoubliables"},{"id":"s13","label":"qui"},{"id":"s14","label":"marquent"},{"id":"s15","label":"encore"},{"id":"s16","label":"les"},{"id":"s17","label":"esprits."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"epithete","label":"Épithète","color":"#4A6E8F"},{"id":"cdn","label":"Complément du nom","color":"#A46849"},{"id":"relative","label":"Subordonnée relative","color":"#6B534A"},{"id":"apposition","label":"Apposition","color":"#3A5A7A"}],"mapping":{"s3":"apposition","s4":"apposition","s5":"apposition","s6":"apposition","s7":"apposition","s12":"epithete","s13":"relative","s14":"relative","s15":"relative","s16":"relative","s17":"relative"}}'::jsonb,
  '« Célèbre écrivain du XIXe siècle » est une apposition au nom propre « Victor Hugo » : c''est un GN détaché par des virgules qui caractérise le nom sans préposition. « Inoubliables » est épithète postposée de « romans ». « Qui marquent encore les esprits » est une subordonnée relative complément de « romans ». L''apposition, selon les programmes Éduscol, est une expansion du nom détachée, à distinguer de l''épithète liée.',
  'Confondre apposition et attribut du sujet. L''apposition est détachée par des virgules et ne dépend pas d''un verbe d''état. Elle se rapporte directement au nom qu''elle complète.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — 4 groupes (épithète / complément du nom / subordonnée relative / apposition)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1f0000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'surlignage_expansions_nom',
  'Surlignage — Expansions du nom',
  'Difficile',
  'surlignage_propositions',
  'Surlignez les quatre types d''expansions du nom : épithète, complément du nom, subordonnée relative et apposition.',
  NULL,
  '[{"id":"s1","label":"Paris,"},{"id":"s2","label":"capitale"},{"id":"s3","label":"de"},{"id":"s4","label":"la"},{"id":"s5","label":"France,"},{"id":"s6","label":"possède"},{"id":"s7","label":"de"},{"id":"s8","label":"nombreux"},{"id":"s9","label":"musées"},{"id":"s10","label":"d''"},{"id":"s11","label":"art"},{"id":"s12","label":"moderne"},{"id":"s13","label":"où"},{"id":"s14","label":"affluent"},{"id":"s15","label":"les"},{"id":"s16","label":"touristes."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"epithete","label":"Épithète","color":"#4A6E8F"},{"id":"cdn","label":"Complément du nom","color":"#A46849"},{"id":"relative","label":"Subordonnée relative","color":"#6B534A"},{"id":"apposition","label":"Apposition","color":"#3A5A7A"}],"mapping":{"s2":"apposition","s3":"apposition","s4":"apposition","s5":"apposition","s8":"epithete","s10":"cdn","s11":"cdn","s12":"cdn","s13":"relative","s14":"relative","s15":"relative","s16":"relative"}}'::jsonb,
  '« Capitale de la France » est une apposition à « Paris », détachée par des virgules. « Nombreux » est épithète antéposée de « musées ». « D''art moderne » est complément du nom « musées » (noter que « moderne » qualifie « art » à l''intérieur du CdN). « Où affluent les touristes » est une subordonnée relative introduite par le pronom relatif « où ».',
  'Analyser « moderne » comme épithète de « musées » alors qu''il qualifie « art » à l''intérieur du complément du nom « d''art moderne ». Il faut bien identifier la tête nominale que chaque expansion complète.',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — 4 groupes (épithète / complément du nom / subordonnée relative / apposition)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa1f0000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'surlignage_expansions_nom',
  'Surlignage — Expansions du nom',
  'Difficile',
  'surlignage_propositions',
  'Surlignez les quatre types d''expansions du nom : épithète, complément du nom, subordonnée relative et apposition.',
  NULL,
  '[{"id":"s1","label":"L''"},{"id":"s2","label":"enseignant,"},{"id":"s3","label":"passionné"},{"id":"s4","label":"de"},{"id":"s5","label":"littérature,"},{"id":"s6","label":"propose"},{"id":"s7","label":"des"},{"id":"s8","label":"activités"},{"id":"s9","label":"pédagogiques"},{"id":"s10","label":"de"},{"id":"s11","label":"compréhension"},{"id":"s12","label":"qui"},{"id":"s13","label":"développent"},{"id":"s14","label":"l''"},{"id":"s15","label":"esprit"},{"id":"s16","label":"critique."}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"epithete","label":"Épithète","color":"#4A6E8F"},{"id":"cdn","label":"Complément du nom","color":"#A46849"},{"id":"relative","label":"Subordonnée relative","color":"#6B534A"},{"id":"apposition","label":"Apposition","color":"#3A5A7A"}],"mapping":{"s3":"apposition","s4":"apposition","s5":"apposition","s9":"epithete","s10":"cdn","s11":"cdn","s12":"relative","s13":"relative","s14":"relative","s15":"relative","s16":"relative"}}'::jsonb,
  '« Passionné de littérature » est une apposition à « enseignant », détachée par des virgules — c''est un adjectif (participe passé) accompagné de son complément. « Pédagogiques » est épithète postposée de « activités ». « De compréhension » est complément du nom « activités ». « Qui développent l''esprit critique » est une subordonnée relative. Selon Éduscol, savoir identifier ces quatre types d''expansion est un attendu pour l''analyse grammaticale au CRPE.',
  'Confondre l''apposition détachée « passionné de littérature » avec un attribut du sujet. Ici, pas de verbe d''état : le groupe est simplement détaché entre virgules et complète le nom « enseignant ».',
  'valide',
  'CRPE Français — Grammaire',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
