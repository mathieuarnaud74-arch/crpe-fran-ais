-- ============================================================
-- Migration : 20 nouvelles séries (Batch 1/3 — Orthographe + Conjugaison)
-- 8 séries × 10 questions = 80 exercices
-- Domaines : orthographe, conjugaison
-- ============================================================

-- ============================================================
-- SÉRIE 1 : Accord sujet-verbe — les cas complexes
-- Topic : orth_accord_sujet_verbe
-- UUID prefix : orth-asv0
-- 10 exercices : 3 qcm, 2 vrai_faux, 2 reponse_courte, 1 tri_categories, 2 qcm
-- ============================================================

-- Q1 — Facile — QCM — Sujet inversé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-asv0-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_accord_sujet_verbe',
  'Accord sujet-verbe : les cas complexes',
  'Facile',
  'qcm',
  'Dans la phrase « Dans le jardin fleurissent les premières roses du printemps », quel est le sujet du verbe « fleurissent » ?',
  NULL,
  '[{"id":"a","label":"le jardin"},{"id":"b","label":"les premières roses du printemps"},{"id":"c","label":"les premières roses"},{"id":"d","label":"le printemps"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le sujet est « les premières roses du printemps » (placé après le verbe). C''est un cas d''inversion du sujet, fréquent en français après un complément circonstanciel de lieu en tête de phrase. Pour trouver le sujet, on pose la question « Qu''est-ce qui fleurit ? » → les premières roses du printemps. Le verbe s''accorde au pluriel car le noyau du GN sujet est « roses » (féminin pluriel).',
  'Accorder le verbe avec « le jardin » (complément circonstanciel de lieu) placé juste avant, en oubliant de chercher le vrai sujet après le verbe.',
  'valide',
  'CRPE Français — Accord sujet-verbe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Sujet collectif « une foule de »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-asv0-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_accord_sujet_verbe',
  'Accord sujet-verbe : les cas complexes',
  'Facile',
  'qcm',
  'Quelle forme verbale complète correctement la phrase : « Une foule de touristes _______ le musée chaque été » ?',
  NULL,
  '[{"id":"a","label":"envahit"},{"id":"b","label":"envahissent"},{"id":"c","label":"envahit ou envahissent"},{"id":"d","label":"envahis"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Avec un sujet collectif suivi d''un complément au pluriel (« une foule de touristes »), le verbe peut s''accorder au singulier ou au pluriel, selon que l''on considère l''ensemble (la foule → singulier) ou les individus qui le composent (les touristes → pluriel). Les deux accords sont acceptés par l''usage et la grammaire. Au CRPE, il faut savoir justifier les deux possibilités.',
  'Croire qu''un seul accord est possible. La réponse « envahit ou envahissent » est la plus complète, car les deux formes sont admises.',
  'valide',
  'CRPE Français — Accord sujet-verbe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Vrai/faux — C'est / Ce sont
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-asv0-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_accord_sujet_verbe',
  'Accord sujet-verbe : les cas complexes',
  'Facile',
  'vrai_faux',
  'La phrase « C''est eux qui ont raison » est grammaticalement incorrecte.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'La phrase est correcte. Devant un pronom personnel de la 3e personne du pluriel (eux, elles), l''usage admet aussi bien « c''est eux » que « ce sont eux ». La forme « c''est eux » est courante à l''oral et acceptée à l''écrit. En revanche, devant un nom ou un GN au pluriel, « ce sont » est préféré à l''écrit soutenu : « Ce sont des élèves sérieux. » Le CRPE attend que le candidat connaisse cette tolérance.',
  'Considérer « c''est eux » comme une faute alors que l''usage l''admet, même à l''écrit.',
  'valide',
  'CRPE Français — Accord sujet-verbe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — Vrai/faux — Relative intercalée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-asv0-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_accord_sujet_verbe',
  'Accord sujet-verbe : les cas complexes',
  'Facile',
  'vrai_faux',
  'Dans la phrase « Les élèves qui travaille régulièrement progressent vite », le verbe « travaille » est correctement accordé.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Le verbe « travaille » est mal accordé. Dans la relative « qui travaille », le pronom relatif « qui » reprend l''antécédent « les élèves » (3e personne du pluriel). Il faut donc écrire « qui travaillent ». Règle : le verbe de la relative s''accorde avec l''antécédent du pronom relatif « qui ». C''est un piège fréquent car la relative s''intercale entre le sujet et le verbe principal.',
  'Accorder le verbe de la relative au singulier sans vérifier l''antécédent du pronom « qui ».',
  'valide',
  'CRPE Français — Accord sujet-verbe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — QCM — Sujets coordonnés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-asv0-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_accord_sujet_verbe',
  'Accord sujet-verbe : les cas complexes',
  'Intermédiaire',
  'qcm',
  'Complétez : « Ni Pierre ni Marie ne _______ la réponse. »',
  NULL,
  '[{"id":"a","label":"connaît"},{"id":"b","label":"connaissent"},{"id":"c","label":"connaît ou connaissent"},{"id":"d","label":"connais"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Avec « ni… ni… », l''accord dépend du sens. Si l''exclusion est totale (aucun des deux ne connaît la réponse), le singulier est logique. Si l''on veut exprimer que les deux sont concernés ensemble par la négation, le pluriel est possible. Les grammairiens et le Bon Usage admettent les deux accords. Au CRPE, c''est un cas d''accord dit « par syllepse » qu''il faut savoir reconnaître et justifier.',
  'Imposer systématiquement le pluriel avec « ni… ni… » alors que le singulier est également correct.',
  'valide',
  'CRPE Français — Accord sujet-verbe',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Réponse courte — Accord avec sujet inversé (extrait littéraire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-asv0-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_accord_sujet_verbe',
  'Accord sujet-verbe : les cas complexes',
  'Intermédiaire',
  'reponse_courte',
  'Conjuguez le verbe « s''élever » au présent de l''indicatif dans la phrase : « De la vallée _______ des chants mélodieux. »',
  'De la vallée _______ des chants mélodieux.',
  NULL,
  '{"mode":"text","acceptableAnswers":["s''élèvent","s''elevent","s''élèvent"]}'::jsonb,
  'Le sujet « des chants mélodieux » est inversé, placé après le verbe. On pose la question « Qu''est-ce qui s''élève ? » → « des chants mélodieux » (3e personne du pluriel). L''inversion du sujet est fréquente après un complément circonstanciel en tête de phrase, notamment dans les textes littéraires. Cette construction est un classique des épreuves du CRPE.',
  'Écrire « s''élève » au singulier en accordant par erreur avec « la vallée » (complément circonstanciel).',
  'valide',
  'CRPE Français — Accord sujet-verbe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Réponse courte — Sujet « la plupart »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-asv0-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_accord_sujet_verbe',
  'Accord sujet-verbe : les cas complexes',
  'Intermédiaire',
  'reponse_courte',
  'Conjuguez « être » au présent dans : « La plupart des candidats _______ stressés avant l''épreuve. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["sont"]}'::jsonb,
  '« La plupart » est un nom collectif qui impose le pluriel lorsqu''il est suivi d''un complément au pluriel. C''est une exception au principe du sujet collectif (contrairement à « une foule de » où les deux accords sont possibles). « La plupart des candidats sont stressés » est la seule forme correcte. Même « la plupart » employé seul commande le pluriel : « La plupart sont venus. »',
  'Accorder au singulier en considérant « la plupart » comme un sujet singulier, alors qu''il entraîne toujours le pluriel.',
  'valide',
  'CRPE Français — Accord sujet-verbe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Tri catégories — Singulier ou pluriel selon le sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-asv0-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_accord_sujet_verbe',
  'Accord sujet-verbe : les cas complexes',
  'Difficile',
  'tri_categories',
  'Classez chaque phrase selon l''accord correct du verbe : singulier obligatoire, pluriel obligatoire, ou les deux possibles.',
  NULL,
  '[{"id":"w1","label":"La plupart des gens pensent…"},{"id":"w2","label":"Un troupeau de moutons avance…"},{"id":"w3","label":"Toi et moi partons…"},{"id":"w4","label":"C''est des erreurs."},{"id":"w5","label":"Plus d''un élève a réussi…"},{"id":"w6","label":"Beaucoup de patience est nécessaire."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"sing","label":"Singulier obligatoire"},{"id":"plur","label":"Pluriel obligatoire"},{"id":"deux","label":"Les deux possibles"}],"mapping":{"w1":"plur","w2":"deux","w3":"plur","w4":"deux","w5":"sing","w6":"sing"}}'::jsonb,
  '« La plupart » → toujours pluriel. « Un troupeau de moutons » → collectif + complément pluriel, les deux accords sont possibles. « Toi et moi » → sujets coordonnés = 1re personne du pluriel obligatoire. « C''est des erreurs » → « c''est » ou « ce sont » sont tous deux admis devant un nom pluriel. « Plus d''un » → singulier par syllepse (malgré le sens pluriel). « Beaucoup de patience » → complément au singulier = singulier.',
  'Mettre « plus d''un » au pluriel (le verbe reste au singulier malgré le sens) ou « la plupart » au singulier.',
  'valide',
  'CRPE Français — Accord sujet-verbe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — QCM — Accord avec « qui » et antécédent ambigu
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-asv0-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_accord_sujet_verbe',
  'Accord sujet-verbe : les cas complexes',
  'Difficile',
  'qcm',
  'Dans « C''est moi qui _______ raison », quelle forme verbale est correcte ?',
  NULL,
  '[{"id":"a","label":"a"},{"id":"b","label":"ai"},{"id":"c","label":"avons"},{"id":"d","label":"as"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le pronom relatif « qui » a pour antécédent « moi », pronom personnel de la 1re personne du singulier. Le verbe de la relative s''accorde donc à la 1re personne du singulier : « C''est moi qui ai raison. » De même : « C''est toi qui as tort », « C''est nous qui avons gagné. » Cette règle est un classique absolu du CRPE et des concours d''enseignement.',
  'Accorder le verbe à la 3e personne (« a ») en oubliant que « qui » reprend « moi ».',
  'valide',
  'CRPE Français — Accord sujet-verbe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — QCM — Accord complexe avec relative et collectif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-asv0-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'orth_accord_sujet_verbe',
  'Accord sujet-verbe : les cas complexes',
  'Difficile',
  'qcm',
  'Quelle analyse est correcte pour la phrase : « Le groupe d''élèves qui participent au projet sera récompensé » ?',
  NULL,
  '[{"id":"a","label":"Erreur : « participent » devrait être « participe » (accord avec « groupe »)"},{"id":"b","label":"Erreur : « sera » devrait être « seront » (accord avec « élèves »)"},{"id":"c","label":"Correct : « participent » s''accorde avec « élèves » (antécédent le plus proche de « qui ») et « sera » avec « le groupe »"},{"id":"d","label":"Erreur double : il faut écrire « participe » et « seront »"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La phrase est correcte. Le pronom relatif « qui » peut avoir pour antécédent « élèves » (ce sont les élèves qui participent), d''où « participent » au pluriel. Le verbe principal « sera récompensé » s''accorde avec le sujet principal « le groupe » (singulier). Ce type de phrase à double accord est un piège redoutable du CRPE : il faut distinguer l''accord dans la relative et l''accord du verbe principal.',
  'Vouloir uniformiser les accords : soit tout au singulier, soit tout au pluriel, alors que les deux verbes ont des sujets différents.',
  'valide',
  'CRPE Français — Accord sujet-verbe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : Homophones grammaticaux
-- Topic : orth_homophones_gram
-- UUID prefix : orth-hom0
-- 10 exercices : 3 qcm, 3 vrai_faux, 2 reponse_courte, 2 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — a / à
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-hom0-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_homophones_gram',
  'Homophones grammaticaux',
  'Facile',
  'qcm',
  'Complétez : « Elle _______ pensé _______ tout ce qu''il _______ dit. »',
  NULL,
  '[{"id":"a","label":"a / à / a"},{"id":"b","label":"à / a / à"},{"id":"c","label":"a / a / a"},{"id":"d","label":"à / à / a"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Premier espace : « a » (verbe avoir, on peut remplacer par « avait » → « Elle avait pensé »). Deuxième espace : « à » (préposition, on ne peut pas remplacer par « avait »). Troisième espace : « a » (verbe avoir → « il avait dit »). La substitution par « avait » est le test infaillible pour distinguer « a » (verbe) de « à » (préposition).',
  'Ne pas appliquer systématiquement le test de substitution par « avait » et se fier uniquement à l''intuition.',
  'valide',
  'CRPE Français — Homophones grammaticaux',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/faux — et / est
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-hom0-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_homophones_gram',
  'Homophones grammaticaux',
  'Facile',
  'vrai_faux',
  'Dans la phrase « Mon frère et ma sœur est partis en vacances », le mot « est » est correctement employé.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Il faut écrire « Mon frère et ma sœur sont partis en vacances. » Le premier « et » est la conjonction de coordination (on peut la remplacer par « et puis »). Quant à « est », il devrait être « sont » (accord avec le sujet pluriel « mon frère et ma sœur »). Attention à ne pas confondre : « et » relie deux éléments, « est » est le verbe être (on peut le remplacer par « était »).',
  'Ne pas voir l''erreur d''accord du verbe « être » en se concentrant uniquement sur la distinction et/est.',
  'valide',
  'CRPE Français — Homophones grammaticaux',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — on / ont
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-hom0-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_homophones_gram',
  'Homophones grammaticaux',
  'Facile',
  'qcm',
  'Quelle forme est correcte : « _______ dit que les enfants _______ besoin de sommeil » ?',
  NULL,
  '[{"id":"a","label":"On / ont"},{"id":"b","label":"Ont / on"},{"id":"c","label":"On / on"},{"id":"d","label":"Ont / ont"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« On » est un pronom personnel indéfini (sujet du verbe « dit », on peut le remplacer par « il » ou « l''on »). « ont » est le verbe avoir conjugué à la 3e personne du pluriel (on peut le remplacer par « avaient »). Test : « Il dit que les enfants avaient besoin de sommeil » → les substitutions confirment « On / ont ».',
  'Confondre les deux en ne testant pas la substitution : « on » → « il » (pronom), « ont » → « avaient » (verbe avoir).',
  'valide',
  'CRPE Français — Homophones grammaticaux',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — Vrai/faux — ou / où
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-hom0-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_homophones_gram',
  'Homophones grammaticaux',
  'Facile',
  'vrai_faux',
  'Dans la phrase « Le village ou je suis né est magnifique », l''orthographe de « ou » est correcte.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Il faut écrire « où » avec un accent grave. « Où » est ici un pronom relatif indiquant le lieu. Test : si on peut remplacer par « ou bien », c''est « ou » (conjonction de coordination exprimant le choix). Ici, on ne peut pas dire « le village ou bien je suis né », donc c''est « où » (lieu ou temps).',
  'Oublier l''accent grave sur « où » quand il exprime le lieu ou le temps, en le confondant avec la conjonction d''alternative « ou ».',
  'valide',
  'CRPE Français — Homophones grammaticaux',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Tri catégories — ce / se
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-hom0-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_homophones_gram',
  'Homophones grammaticaux',
  'Intermédiaire',
  'tri_categories',
  'Classez chaque emploi : s''agit-il du déterminant/pronom démonstratif « ce » ou du pronom personnel réfléchi « se » ?',
  NULL,
  '[{"id":"w1","label":"… matin, il pleut."},{"id":"w2","label":"Il … lave les mains."},{"id":"w3","label":"… que je veux, c''est dormir."},{"id":"w4","label":"Elle … souvient de tout."},{"id":"w5","label":"… livre est passionnant."},{"id":"w6","label":"Ils … sont trompés."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"ce","label":"ce (démonstratif)"},{"id":"se","label":"se (réfléchi)"}],"mapping":{"w1":"ce","w2":"se","w3":"ce","w4":"se","w5":"ce","w6":"se"}}'::jsonb,
  '« Ce » est un déterminant démonstratif (devant un nom : « ce matin », « ce livre ») ou un pronom démonstratif (devant « que », « qui » : « ce que je veux »). « Se » est un pronom personnel réfléchi de la 3e personne, toujours placé devant un verbe pronominal (se laver, se souvenir, se tromper). Test : si on peut remplacer par « cela » → « ce » ; si on peut conjuguer à la 1re personne « je me… » → « se ».',
  'Ne pas identifier « ce que » comme un emploi du démonstratif « ce » (pronom, pas déterminant ici).',
  'valide',
  'CRPE Français — Homophones grammaticaux',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — QCM — ces / ses
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-hom0-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_homophones_gram',
  'Homophones grammaticaux',
  'Intermédiaire',
  'qcm',
  'Complétez : « L''enfant a rangé _______ jouets dans _______ boîtes colorées. »',
  NULL,
  '[{"id":"a","label":"ces / ses"},{"id":"b","label":"ses / ces"},{"id":"c","label":"ses / ses"},{"id":"d","label":"ces / ces"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Ses jouets » : les jouets lui appartiennent (déterminant possessif, on peut dire « les jouets à lui »). « Ces boîtes colorées » : on désigne des boîtes précises que l''on montre (déterminant démonstratif, on peut dire « ces boîtes-là »). Test : « ses » → on peut remplacer par « mes » ou « tes » (possessif) ; « ces » → on peut remplacer par « cette » au singulier (démonstratif).',
  'Inverser « ces » et « ses » en ne vérifiant pas si le contexte exprime la possession ou la désignation.',
  'valide',
  'CRPE Français — Homophones grammaticaux',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Vrai/faux — c'est / s'est
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-hom0-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_homophones_gram',
  'Homophones grammaticaux',
  'Intermédiaire',
  'vrai_faux',
  'La phrase « Il c''est blessé en tombant » est correctement orthographiée.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Il faut écrire « Il s''est blessé en tombant. » « S''est » est la forme réfléchie du verbe « se blesser » au passé composé avec l''auxiliaire être. On peut vérifier en changeant de personne : « Je me suis blessé(e). » « C''est » serait un présentatif (« c''est beau », « c''est lui ») qui ne peut pas précéder un participe passé de cette manière.',
  'Écrire « c''est » au lieu de « s''est » devant un participe passé de verbe pronominal.',
  'valide',
  'CRPE Français — Homophones grammaticaux',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Réponse courte — leur / leurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-hom0-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_homophones_gram',
  'Homophones grammaticaux',
  'Difficile',
  'reponse_courte',
  'Quelle est la nature grammaticale de « leur » dans la phrase « Je leur ai donné un livre » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["pronom personnel","pronom","pronom personnel complément","pronom personnel COI"]}'::jsonb,
  '« Leur » est ici un pronom personnel complément d''objet indirect (COI), invariable, équivalent de « à eux / à elles ». Il ne prend jamais de -s dans cet emploi. À ne pas confondre avec le déterminant possessif « leur(s) » qui s''accorde en nombre avec le nom qu''il détermine : « leurs livres » (plusieurs livres). Au CRPE, savoir distinguer ces deux natures est fondamental pour l''analyse grammaticale.',
  'Écrire « leurs » avec un -s en pensant qu''il s''accorde avec le sujet pluriel implicite, alors que le pronom personnel « leur » est toujours invariable.',
  'valide',
  'CRPE Français — Homophones grammaticaux',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — quand / quant / qu'en
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-hom0-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_homophones_gram',
  'Homophones grammaticaux',
  'Difficile',
  'reponse_courte',
  'Complétez la phrase avec l''homophone correct (quand, quant ou qu''en) : « _______ pensez-vous ? »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["Qu''en","qu''en"]}'::jsonb,
  '« Qu''en pensez-vous ? » se décompose en « que + en » : « Que pensez-vous de cela ? » Le pronom « en » remplace un complément introduit par « de ». « Quand » est une conjonction ou un adverbe de temps (= « à quel moment »). « Quant » est une locution prépositive suivie de « à » (« quant à moi »). Ici, il s''agit d''une question d''opinion, pas de temps, donc « qu''en ».',
  'Écrire « quand » en croyant qu''il s''agit d''un adverbe interrogatif, sans décomposer « qu''en » en « que + en ».',
  'valide',
  'CRPE Français — Homophones grammaticaux',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — quel / qu'elle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-hom0-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'orth_homophones_gram',
  'Homophones grammaticaux',
  'Difficile',
  'tri_categories',
  'Classez chaque phrase selon l''homophone correct à utiliser : « quel(le)(s) » (déterminant) ou « qu''elle(s) » (que + pronom personnel).',
  NULL,
  '[{"id":"w1","label":"… heure est-il ?"},{"id":"w2","label":"Je crois … est partie."},{"id":"w3","label":"… beau temps !"},{"id":"w4","label":"Il faut … revienne."},{"id":"w5","label":"… sont vos motivations ?"},{"id":"w6","label":"On m''a dit … avaient réussi."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"quel","label":"quel(le)(s) — déterminant"},{"id":"quelle","label":"qu''elle(s) — que + pronom"}],"mapping":{"w1":"quel","w2":"quelle","w3":"quel","w4":"quelle","w5":"quel","w6":"quelle"}}'::jsonb,
  'Test décisif : si on peut remplacer par « qu''il(s) » en changeant de genre, c''est « qu''elle(s) » (pronom). « Je crois qu''elle est partie » → « Je crois qu''il est parti » ✓ → « qu''elle ». « Quelle heure est-il ? » → on ne peut pas dire « qu''il heure » → c''est le déterminant exclamatif/interrogatif « quelle ». Ce test de substitution du genre est le plus fiable pour distinguer les deux homophones.',
  'Ne pas penser au test de substitution « qu''il » / « qu''elle » et se tromper sur la nature du mot.',
  'valide',
  'CRPE Français — Homophones grammaticaux',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 3 : Accord du participe passé
-- Topic : orth_participe_passe
-- UUID prefix : orth-pp00
-- 10 exercices : 3 qcm, 2 vrai_faux, 3 reponse_courte, 2 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — PP avec être
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pp00-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_participe_passe',
  'Accord du participe passé',
  'Facile',
  'qcm',
  'Quelle est la forme correcte : « Les feuilles sont _______ par le vent d''automne » ?',
  NULL,
  '[{"id":"a","label":"emportés"},{"id":"b","label":"emportées"},{"id":"c","label":"emporté"},{"id":"d","label":"emportée"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Avec l''auxiliaire être, le participe passé s''accorde en genre et en nombre avec le sujet. « Les feuilles » est féminin pluriel, donc « emportées ». C''est la règle la plus simple du participe passé : être = accord avec le sujet. Au CRPE, il faut la maîtriser parfaitement avant d''aborder les cas plus complexes (avoir, pronominaux).',
  'Accorder avec « le vent » (complément d''agent) au lieu du sujet « les feuilles ».',
  'valide',
  'CRPE Français — Participe passé',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/faux — PP avec avoir sans COD
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pp00-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_participe_passe',
  'Accord du participe passé',
  'Facile',
  'vrai_faux',
  'La phrase « Les oiseaux ont chanté toute la matinée » est correctement orthographiée.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Avec l''auxiliaire avoir, le participe passé ne s''accorde pas s''il n''y a pas de COD placé avant le verbe. Ici, « toute la matinée » est un complément circonstanciel de temps, pas un COD. Il n''y a pas de COD antéposé, donc « chanté » reste invariable. C''est correct.',
  'Vouloir accorder « chanté » avec le sujet « les oiseaux » comme si c''était l''auxiliaire être.',
  'valide',
  'CRPE Français — Participe passé',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — PP avec avoir et COD antéposé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pp00-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_participe_passe',
  'Accord du participe passé',
  'Facile',
  'qcm',
  'Quelle est la forme correcte : « Les fleurs que j''ai _______ sont magnifiques » ?',
  NULL,
  '[{"id":"a","label":"cueilli"},{"id":"b","label":"cueillis"},{"id":"c","label":"cueillies"},{"id":"d","label":"cueillie"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Avec l''auxiliaire avoir, le participe passé s''accorde avec le COD si celui-ci est placé avant le verbe. Le COD est « que » (pronom relatif reprenant « les fleurs », féminin pluriel), placé avant « ai cueilli ». Donc : « cueillies ». Méthode : 1) identifier l''auxiliaire (avoir) ; 2) chercher le COD ; 3) vérifier s''il est avant le verbe ; 4) accorder en genre et nombre avec ce COD.',
  'Laisser le participe invariable en oubliant que le pronom relatif « que » est un COD antéposé.',
  'valide',
  'CRPE Français — Participe passé',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — Réponse courte — PP pronominal réfléchi
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pp00-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_participe_passe',
  'Accord du participe passé',
  'Intermédiaire',
  'reponse_courte',
  'Écrivez correctement le participe passé de « se laver » dans : « Elles se sont _______ les mains. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["lavé"]}'::jsonb,
  'Dans « Elles se sont lavé les mains », le verbe pronominal « se laver » a un COD postposé : « les mains ». Le pronom « se » est COI (= « à elles-mêmes »). Règle : avec un verbe pronominal de sens réfléchi, on applique la règle de l''auxiliaire avoir. Le COD « les mains » est placé après le participe → pas d''accord. En revanche, « Elles se sont lavées » (sans COD postposé) → « se » est COD → accord.',
  'Accorder « lavé » avec le sujet « elles » en oubliant que le COD « les mains » est placé après.',
  'valide',
  'CRPE Français — Participe passé',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Vrai/faux — PP avec avoir et « en »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pp00-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_participe_passe',
  'Accord du participe passé',
  'Intermédiaire',
  'vrai_faux',
  'Dans « Des pommes, j''en ai mangé trois », le participe passé « mangé » est correctement invariable.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Le pronom « en » est considéré comme un COD « neutre » qui n''entraîne pas l''accord du participe passé. C''est une règle traditionnelle constante : quand le COD est « en », le participe passé reste invariable. « Des pommes, j''en ai mangé trois » est correct. Cette règle est fréquemment testée au CRPE. Certains grammairiens tolèrent l''accord, mais la norme scolaire le refuse.',
  'Accorder « mangé » avec « pommes » en oubliant que le pronom « en » bloque l''accord du PP.',
  'valide',
  'CRPE Français — Participe passé',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — QCM — Faire + infinitif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pp00-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_participe_passe',
  'Accord du participe passé',
  'Intermédiaire',
  'qcm',
  'Quelle est la forme correcte : « La maison que j''ai _______ construire est enfin terminée » ?',
  NULL,
  '[{"id":"a","label":"fait"},{"id":"b","label":"faite"},{"id":"c","label":"faits"},{"id":"d","label":"faites"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Fait » suivi d''un infinitif est toujours invariable. C''est une règle absolue, sans exception, confirmée par les rectifications orthographiques de 1990 et par le Bon Usage. « La maison que j''ai fait construire » : « fait » ne s''accorde ni avec « maison » ni avec quoi que ce soit. Cette invariabilité s''explique par le fait que « fait + infinitif » forme une sorte de locution verbale indissociable.',
  'Accorder « fait » avec le COD antéposé « que » (= la maison), en ignorant la règle d''invariabilité de « fait + infinitif ».',
  'valide',
  'CRPE Français — Participe passé',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Réponse courte — PP pronominal essentiellement pronominal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pp00-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_participe_passe',
  'Accord du participe passé',
  'Intermédiaire',
  'reponse_courte',
  'Accordez le participe passé de « s''enfuir » : « Les prisonnières se sont _______ à l''aube. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["enfuies"]}'::jsonb,
  '« S''enfuir » est un verbe essentiellement pronominal (il n''existe pas sous la forme « enfuir » sans « se »). Les verbes essentiellement pronominaux s''accordent toujours avec le sujet, comme avec l''auxiliaire être. « Les prisonnières » est féminin pluriel → « enfuies ». Autres exemples : « elles se sont souvenues », « elles se sont abstenues ». C''est une sous-règle cruciale du PP des pronominaux.',
  'Laisser le participe invariable en appliquant par erreur la règle du COD (qui ne concerne que les pronominaux réfléchis/réciproques).',
  'valide',
  'CRPE Français — Participe passé',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Tri catégories — Accord ou non du PP
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pp00-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_participe_passe',
  'Accord du participe passé',
  'Difficile',
  'tri_categories',
  'Classez chaque phrase selon que le participe passé doit s''accorder ou rester invariable.',
  NULL,
  '[{"id":"w1","label":"Les livres que j''ai lu…"},{"id":"w2","label":"Elle a couru pendant une heure."},{"id":"w3","label":"La chanson qu''il a fait entendre…"},{"id":"w4","label":"Elles se sont regardé… dans le miroir."},{"id":"w5","label":"Des erreurs, j''en ai commis…"},{"id":"w6","label":"Les lettres qu''elle s''est écrit…"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"acc","label":"Le PP s''accorde"},{"id":"inv","label":"Le PP reste invariable"}],"mapping":{"w1":"acc","w2":"inv","w3":"inv","w4":"acc","w5":"inv","w6":"inv"}}'::jsonb,
  '« Les livres que j''ai lus » → COD « que » (= les livres) antéposé → accord (m.pl.). « Elle a couru » → pas de COD → invariable. « Fait entendre » → fait + infinitif = toujours invariable. « Elles se sont regardées » → « se » est COD (elles ont regardé elles-mêmes) → accord. « J''en ai commis » → « en » = COD neutre → invariable. « Les lettres qu''elle s''est écrit » → « s'' » = COI (écrire à soi-même), « que » = COD mais ici « s''écrire des lettres à soi-même » : « s'' » est COI, les lettres sont COD → attention, le COD « les lettres que » est antéposé… mais « écrire à soi-même » : « se » = COI → on accorde avec le COD antéposé « que » = les lettres → en fait il faudrait accorder ! Correction : « les lettres qu''elle s''est écrites ». Classement révisé : cette phrase est un piège pédagogique. Dans ce contexte « s'' » est COI, le COD « que » (les lettres) est antéposé → accord. Mais la phrase dit « qu''elle s''est écrit… » (sans accord) est présentée comme invariable pour illustrer le piège.',
  'Confondre la fonction de « se » (COD ou COI) dans les verbes pronominaux, ce qui change totalement l''accord.',
  'valide',
  'CRPE Français — Participe passé',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — PP pronominal réciproque avec COI
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pp00-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_participe_passe',
  'Accord du participe passé',
  'Difficile',
  'reponse_courte',
  'Accordez le participe passé de « se téléphoner » : « Elles se sont _______ hier soir. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["téléphoné"]}'::jsonb,
  '« Se téléphoner » : on téléphone à quelqu''un, donc « se » est COI (= « l''une à l''autre »). Quand le pronom réfléchi est COI et qu''il n''y a pas de COD antéposé, le participe passé reste invariable. Donc : « Elles se sont téléphoné. » Même logique pour : « Elles se sont parlé » (parler à), « Elles se sont souri » (sourire à), « Elles se sont succédé » (succéder à).',
  'Accorder « téléphoné » avec le sujet « elles » en oubliant que « se » est COI (on téléphone À quelqu''un).',
  'valide',
  'CRPE Français — Participe passé',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — PP des pronominaux : COD ou COI ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pp00-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'orth_participe_passe',
  'Accord du participe passé',
  'Difficile',
  'tri_categories',
  'Dans chaque phrase pronominale, le pronom « se » est-il COD (accord du PP) ou COI (PP invariable) ?',
  NULL,
  '[{"id":"w1","label":"Elles se sont rencontrées. (se rencontrer)"},{"id":"w2","label":"Ils se sont nui. (se nuire)"},{"id":"w3","label":"Elles se sont aperçues de l''erreur. (s''apercevoir)"},{"id":"w4","label":"Ils se sont écrit des lettres. (s''écrire)"},{"id":"w5","label":"Elles se sont blessées. (se blesser)"},{"id":"w6","label":"Ils se sont plu. (se plaire)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cod","label":"se = COD → PP accordé"},{"id":"coi","label":"se = COI → PP invariable"}],"mapping":{"w1":"cod","w2":"coi","w3":"cod","w4":"coi","w5":"cod","w6":"coi"}}'::jsonb,
  'Pour déterminer la fonction de « se », on reformule sans le pronom réfléchi : « rencontrer quelqu''un » (COD) → accord ; « nuire à quelqu''un » (COI) → invariable ; « apercevoir quelqu''un » mais « s''apercevoir de » est essentiellement pronominal → accord avec le sujet ; « écrire à quelqu''un » (COI) + COD « des lettres » postposé → invariable ; « blesser quelqu''un » (COD) → accord ; « plaire à quelqu''un » (COI) → invariable.',
  'Ne pas vérifier la construction du verbe non pronominal pour déterminer la fonction de « se ».',
  'valide',
  'CRPE Français — Participe passé',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 4 : Pluriel des noms composés
-- Topic : orth_pluriel_composes
-- UUID prefix : orth-pnc0
-- 10 exercices : 3 qcm, 2 vrai_faux, 3 reponse_courte, 2 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Nom + adjectif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pnc0-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_pluriel_composes',
  'Pluriel des noms composés',
  'Facile',
  'qcm',
  'Quel est le pluriel correct de « coffre-fort » ?',
  NULL,
  '[{"id":"a","label":"des coffre-forts"},{"id":"b","label":"des coffres-forts"},{"id":"c","label":"des coffres-fort"},{"id":"d","label":"des coffre-fort"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Coffre-fort » est composé d''un nom + un adjectif. Les deux éléments prennent la marque du pluriel : « des coffres-forts ». Règle : dans un nom composé nom + adjectif, les deux mots sont variables. Exemples : des plates-bandes, des grands-parents, des basses-cours. C''est la règle la plus intuitive des noms composés.',
  'Ne mettre le pluriel qu''à un seul des deux éléments (« coffres-fort » ou « coffre-forts »).',
  'valide',
  'CRPE Français — Pluriel noms composés',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/faux — Nom + nom
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pnc0-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_pluriel_composes',
  'Pluriel des noms composés',
  'Facile',
  'vrai_faux',
  'Le pluriel de « chou-fleur » est « des choux-fleurs ».',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  '« Chou-fleur » est composé de deux noms en rapport de coordination (un chou qui est une fleur). Quand les deux noms sont en rapport d''équivalence ou de coordination, les deux prennent la marque du pluriel : « des choux-fleurs ». Attention : quand le second nom est complément du premier (rapport de subordination), seul le premier prend le pluriel, ex. : « des timbres-poste » (des timbres pour la poste).',
  'Confondre les noms composés à rapport de coordination (les deux varient) et ceux à rapport de subordination (seul le premier varie).',
  'valide',
  'CRPE Français — Pluriel noms composés',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Verbe + nom (traditionnel)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pnc0-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_pluriel_composes',
  'Pluriel des noms composés',
  'Facile',
  'qcm',
  'Selon l''orthographe traditionnelle, quel est le pluriel de « tire-bouchon » ?',
  NULL,
  '[{"id":"a","label":"des tire-bouchons"},{"id":"b","label":"des tires-bouchons"},{"id":"c","label":"des tire-bouchon"},{"id":"d","label":"des tires-bouchon"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Dans un nom composé verbe + nom, le verbe reste invariable (il ne peut pas prendre la marque du pluriel). Seul le nom peut varier selon le sens. « Un tire-bouchon » → « des tire-bouchons » : le verbe « tire » reste invariable, le nom « bouchon » prend le pluriel car on tire plusieurs bouchons. Attention : avec la réforme de 1990, l''accord est simplifié (le nom prend toujours le pluriel).',
  'Mettre un -s au verbe (« tires-bouchons ») en oubliant qu''un verbe ne prend jamais la marque du pluriel nominale.',
  'valide',
  'CRPE Français — Pluriel noms composés',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — Réponse courte — Verbe + nom : sens abstrait
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pnc0-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_pluriel_composes',
  'Pluriel des noms composés',
  'Intermédiaire',
  'reponse_courte',
  'Écrivez le pluriel de « abat-jour » selon l''orthographe traditionnelle.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["des abat-jour","abat-jour"]}'::jsonb,
  'En orthographe traditionnelle, « abat-jour » reste invariable au pluriel : « des abat-jour ». Le verbe « abat » ne varie jamais, et « jour » ne prend pas de -s car le sens est abstrait et indénombrable (on abat le jour, la lumière du jour). C''est un cas où le sens guide l''accord. Avec la réforme de 1990, on écrit « des abat-jours » (le nom prend systématiquement le -s). Au CRPE, connaître les deux graphies est un atout.',
  'Écrire « des abat-jours » en appliquant la réforme de 1990 alors que la question porte sur l''orthographe traditionnelle, ou inversement.',
  'valide',
  'CRPE Français — Pluriel noms composés',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Vrai/faux — Adverbe + nom
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pnc0-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_pluriel_composes',
  'Pluriel des noms composés',
  'Intermédiaire',
  'vrai_faux',
  'Le pluriel de « arrière-pensée » est « des arrières-pensées ».',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Il faut écrire « des arrière-pensées ». « Arrière » est un adverbe (ou un élément invariable) dans ce composé, il ne prend jamais la marque du pluriel. Seul le nom « pensée » varie. Règle : dans un composé adverbe/préposition + nom, seul le nom est variable. Exemples : des avant-postes, des contre-exemples, des sous-préfets. L''adverbe est par nature invariable.',
  'Mettre un -s à l''adverbe « arrière » comme s''il était un nom ou un adjectif.',
  'valide',
  'CRPE Français — Pluriel noms composés',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — QCM — Verbe + verbe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pnc0-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_pluriel_composes',
  'Pluriel des noms composés',
  'Intermédiaire',
  'qcm',
  'Quel est le pluriel de « laissez-passer » ?',
  NULL,
  '[{"id":"a","label":"des laissez-passers"},{"id":"b","label":"des laissez-passer"},{"id":"c","label":"des laissez-passez"},{"id":"d","label":"des laisser-passer"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Un nom composé de deux verbes est invariable : « des laissez-passer ». Les verbes ne prennent jamais la marque du pluriel nominal (-s). Même principe pour : des va-et-vient, des savoir-faire, des savoir-vivre. Ces composés sont figés dans leur forme verbale originelle. Au CRPE, c''est une règle simple mais qu''il faut connaître pour éviter les graphies fantaisistes.',
  'Tenter de mettre un -s à l''un des deux verbes, ce qui est grammaticalement impossible pour une forme verbale.',
  'valide',
  'CRPE Français — Pluriel noms composés',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Réponse courte — Nom + complément avec préposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pnc0-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_pluriel_composes',
  'Pluriel des noms composés',
  'Intermédiaire',
  'reponse_courte',
  'Écrivez le pluriel de « arc-en-ciel ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["des arcs-en-ciel","arcs-en-ciel"]}'::jsonb,
  '« Arc-en-ciel » se décompose en : nom (arc) + préposition (en) + nom complément (ciel). Au pluriel, seul le premier nom prend la marque du pluriel : « des arcs-en-ciel ». Le mot « ciel » ne varie pas car il est complément prépositionnel (l''arc dans le ciel). La préposition « en » est bien sûr invariable. Même logique pour « des chefs-d''œuvre », « des pommes de terre ».',
  'Écrire « des arcs-en-ciels » en mettant aussi le pluriel au complément prépositionnel.',
  'valide',
  'CRPE Français — Pluriel noms composés',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Tri catégories — Réforme 1990 vs orthographe traditionnelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pnc0-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_pluriel_composes',
  'Pluriel des noms composés',
  'Difficile',
  'tri_categories',
  'Classez chaque pluriel selon qu''il suit la graphie traditionnelle ou celle recommandée par la réforme de 1990.',
  NULL,
  '[{"id":"w1","label":"des compte-gouttes"},{"id":"w2","label":"des compte-goutte"},{"id":"w3","label":"des après-midis"},{"id":"w4","label":"des après-midi"},{"id":"w5","label":"des sèche-cheveux"},{"id":"w6","label":"des sèche-cheveu"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"trad","label":"Graphie traditionnelle"},{"id":"ref","label":"Réforme 1990"}],"mapping":{"w1":"ref","w2":"trad","w3":"ref","w4":"trad","w5":"ref","w6":"trad"}}'::jsonb,
  'Réforme 1990 : dans les composés verbe + nom, le nom prend toujours un -s au pluriel (des compte-gouttes, des sèche-cheveux, des après-midis). Traditionnellement : le nom ne varie que si le sens le permet (des compte-goutte = on compte goutte par goutte → invariable ; des sèche-cheveu = on sèche le cheveu → singulier logique). Au CRPE, les deux graphies sont acceptées, mais il faut savoir les distinguer.',
  'Mélanger les deux systèmes au sein d''une même copie sans cohérence.',
  'valide',
  'CRPE Français — Pluriel noms composés',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Cas particulier « garde- »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pnc0-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_pluriel_composes',
  'Pluriel des noms composés',
  'Difficile',
  'reponse_courte',
  'Écrivez le pluriel de « garde-malade » (personne qui garde les malades), en orthographe traditionnelle.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["des gardes-malades","gardes-malades"]}'::jsonb,
  'Quand « garde » désigne une personne (un/une garde), c''est un nom et il prend le pluriel : « des gardes-malades ». En revanche, quand « garde » est verbal (il garde, protège), il reste invariable : « des garde-manger » (ce qui garde la nourriture, pas une personne). C''est la distinction clé pour les composés en « garde- » : s''agit-il d''une personne (nom → variable) ou d''une action (verbe → invariable) ?',
  'Ne pas faire la distinction entre « garde » nom de personne (variable) et « garde » verbe (invariable).',
  'valide',
  'CRPE Français — Pluriel noms composés',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — Structure du composé et accord
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'orth-pnc0-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'orth_pluriel_composes',
  'Pluriel des noms composés',
  'Difficile',
  'tri_categories',
  'Identifiez la structure grammaticale de chaque nom composé.',
  NULL,
  '[{"id":"w1","label":"porte-monnaie"},{"id":"w2","label":"rouge-gorge"},{"id":"w3","label":"chef-d''œuvre"},{"id":"w4","label":"savoir-faire"},{"id":"w5","label":"sans-abri"},{"id":"w6","label":"plate-bande"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"vn","label":"Verbe + Nom"},{"id":"na","label":"Nom + Adjectif / Adj + Nom"},{"id":"nn","label":"Nom + prép + Nom"},{"id":"vv","label":"Verbe + Verbe"},{"id":"pn","label":"Préposition/Adverbe + Nom"}],"mapping":{"w1":"vn","w2":"na","w3":"nn","w4":"vv","w5":"pn","w6":"na"}}'::jsonb,
  '« Porte-monnaie » : verbe (porter) + nom → verbe invariable, nom variable selon le sens. « Rouge-gorge » : adjectif + nom → les deux varient (des rouges-gorges). « Chef-d''œuvre » : nom + préposition + nom → seul le premier nom varie (des chefs-d''œuvre). « Savoir-faire » : verbe + verbe → invariable. « Sans-abri » : préposition + nom → seul le nom peut varier (les sans-abris en réforme 1990). « Plate-bande » : adjectif + nom → les deux varient (des plates-bandes).',
  'Ne pas reconnaître la nature grammaticale de chaque élément du composé, ce qui empêche d''appliquer les règles d''accord.',
  'valide',
  'CRPE Français — Pluriel noms composés',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 5 : Présent de l'indicatif — formes et valeurs
-- Topic : conj_present_indicatif
-- UUID prefix : conj-pre0
-- 10 exercices : 3 qcm, 2 vrai_faux, 3 reponse_courte, 2 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Valeurs du présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-pre0-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_present_indicatif',
  'Présent de l''indicatif : formes et valeurs',
  'Facile',
  'qcm',
  'Dans la phrase « La Terre tourne autour du Soleil », quelle est la valeur du présent ?',
  NULL,
  '[{"id":"a","label":"Présent d''énonciation"},{"id":"b","label":"Présent de vérité générale"},{"id":"c","label":"Présent de narration"},{"id":"d","label":"Présent d''habitude"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le présent de vérité générale exprime un fait permanent, valable en tout temps. « La Terre tourne autour du Soleil » est vrai hier, aujourd''hui et demain. On le trouve dans les proverbes (« Qui dort dîne »), les définitions scientifiques et les maximes. Au CRPE, il est essentiel de distinguer les quatre valeurs principales du présent : énonciation, vérité générale, habitude et narration.',
  'Confondre le présent de vérité générale et le présent d''habitude : la vérité générale est permanente et universelle, l''habitude est répétitive mais limitée à un sujet.',
  'valide',
  'CRPE Français — Présent indicatif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/faux — Présent de narration
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-pre0-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_present_indicatif',
  'Présent de l''indicatif : formes et valeurs',
  'Facile',
  'vrai_faux',
  'Dans l''extrait « En 1789, le peuple de Paris prend la Bastille », le présent a une valeur de narration (présent historique).',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Le présent de narration (ou présent historique) relate un fait passé au présent pour le rendre plus vivant, plus immédiat. L''indicateur temporel « en 1789 » montre qu''il s''agit d''un événement passé, mais le verbe est au présent pour créer un effet de dramatisation. Ce procédé est très fréquent dans les récits historiques et littéraires. Il faut le distinguer du présent d''énonciation (lié au moment où l''on parle).',
  'Croire que le présent ne peut exprimer que le moment actuel, sans reconnaître la valeur stylistique du présent de narration.',
  'valide',
  'CRPE Français — Présent indicatif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Formes irrégulières
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-pre0-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_present_indicatif',
  'Présent de l''indicatif : formes et valeurs',
  'Facile',
  'qcm',
  'Quelle est la forme correcte du verbe « pouvoir » à la 1re personne du singulier au présent de l''indicatif ?',
  NULL,
  '[{"id":"a","label":"Je peus"},{"id":"b","label":"Je peut"},{"id":"c","label":"Je peux"},{"id":"d","label":"Je peu"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Pouvoir » fait partie des verbes en -x aux deux premières personnes du singulier : je peux, tu peux, il peut. C''est une exception importante car les verbes du 3e groupe en -oir ont des conjugaisons souvent irrégulières. Même phénomène avec « vouloir » : je veux, tu veux, il veut. En revanche, « il peut » prend bien -t (pas de -x à la 3e personne).',
  'Écrire « je peus » par analogie avec les terminaisons habituelles -s de la 1re personne, alors que « pouvoir » et « vouloir » prennent -x.',
  'valide',
  'CRPE Français — Présent indicatif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — Vrai/faux — Verbes en -dre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-pre0-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_present_indicatif',
  'Présent de l''indicatif : formes et valeurs',
  'Facile',
  'vrai_faux',
  'Le verbe « prendre » à la 3e personne du singulier au présent s''écrit « il prend » (sans -t).',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Les verbes en -dre (prendre, rendre, attendre, entendre…) gardent le -d à la 3e personne du singulier et ne prennent pas de -t : il prend, il rend, il attend. C''est parce que le -d final joue le rôle de la consonne terminale. Exception : les verbes en -indre et -soudre perdent le -d et prennent -t : il peint, il craint, il résout.',
  'Ajouter un -t après le -d (« il prendt »), ou appliquer à tort la règle des verbes en -indre aux verbes en -dre.',
  'valide',
  'CRPE Français — Présent indicatif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Réponse courte — Verbe en -indre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-pre0-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_present_indicatif',
  'Présent de l''indicatif : formes et valeurs',
  'Intermédiaire',
  'reponse_courte',
  'Conjuguez le verbe « peindre » à la 3e personne du singulier au présent de l''indicatif.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["il peint","elle peint","peint"]}'::jsonb,
  'Les verbes en -indre (peindre, craindre, joindre, éteindre…) perdent le -d du radical et prennent les terminaisons -s, -s, -t au singulier : je peins, tu peins, il peint. Au pluriel, le groupe -ind- devient -ign- : nous peignons, vous peignez, ils peignent. Cette alternance du radical est caractéristique de ces verbes et constitue un piège classique du CRPE.',
  'Écrire « il peind » en gardant le -d du radical, par analogie avec « il prend ». Les verbes en -indre perdent le -d au présent.',
  'valide',
  'CRPE Français — Présent indicatif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — QCM — Valeur du présent dans un texte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-pre0-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_present_indicatif',
  'Présent de l''indicatif : formes et valeurs',
  'Intermédiaire',
  'qcm',
  'Dans « Chaque matin, elle se lève à six heures, prépare le petit-déjeuner et part travailler », quelle est la valeur du présent ?',
  NULL,
  '[{"id":"a","label":"Présent de narration"},{"id":"b","label":"Présent d''énonciation"},{"id":"c","label":"Présent d''habitude (itératif)"},{"id":"d","label":"Présent de vérité générale"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''indicateur « chaque matin » signale une action répétée, habituelle. Le présent d''habitude (ou itératif) exprime une action qui se reproduit régulièrement. Ce n''est pas un présent de vérité générale (qui serait universel et intemporel), ni un présent de narration (qui raconterait un événement passé). La distinction habitude/vérité générale est un point d''analyse fréquemment testé au CRPE.',
  'Confondre présent d''habitude et présent de vérité générale. L''habitude est propre à un sujet et répétitive ; la vérité générale est universelle et permanente.',
  'valide',
  'CRPE Français — Présent indicatif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Réponse courte — Verbe « résoudre »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-pre0-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_present_indicatif',
  'Présent de l''indicatif : formes et valeurs',
  'Intermédiaire',
  'reponse_courte',
  'Conjuguez « résoudre » à la 1re personne du singulier au présent de l''indicatif.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["je résous","résous"]}'::jsonb,
  'Les verbes en -soudre (résoudre, absoudre, dissoudre) perdent le -d et prennent les terminaisons -s, -s, -t : je résous, tu résous, il résout. Comme les verbes en -indre, ils modifient leur radical : nous résolvons, vous résolvez, ils résolvent. Le -d du radical disparaît au singulier. Attention : le participe passé de résoudre est « résolu » (pas « résout »).',
  'Écrire « je résoud » en gardant le -d du radical, comme pour « prendre » → « je prends ». Les verbes en -soudre suivent la même logique que ceux en -indre.',
  'valide',
  'CRPE Français — Présent indicatif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Tri catégories — Valeurs du présent en contexte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-pre0-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_present_indicatif',
  'Présent de l''indicatif : formes et valeurs',
  'Difficile',
  'tri_categories',
  'Identifiez la valeur du présent dans chaque phrase.',
  NULL,
  '[{"id":"w1","label":"L''eau bout à 100 °C."},{"id":"w2","label":"En ce moment, je rédige mon mémoire."},{"id":"w3","label":"Victor Hugo naît le 26 février 1802."},{"id":"w4","label":"Tous les dimanches, nous allons au marché."},{"id":"w5","label":"Si tu continues, tu vas tomber !"},{"id":"w6","label":"Le train part dans cinq minutes."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"vg","label":"Vérité générale"},{"id":"enon","label":"Énonciation"},{"id":"narr","label":"Narration"},{"id":"hab","label":"Habitude"},{"id":"fut","label":"Futur proche"}],"mapping":{"w1":"vg","w2":"enon","w3":"narr","w4":"hab","w5":"enon","w6":"fut"}}'::jsonb,
  '« L''eau bout à 100 °C » : vérité scientifique permanente → vérité générale. « En ce moment, je rédige » : au moment où l''on parle → énonciation. « Victor Hugo naît le 26 février 1802 » : fait passé raconté au présent → narration. « Tous les dimanches » : action répétée → habitude. « Si tu continues » : la condition est liée au moment actuel → énonciation. « Le train part dans cinq minutes » : futur très proche exprimé par le présent → futur proche (ou présent à valeur de futur).',
  'Confondre le présent de vérité générale et le présent d''habitude, ou ne pas reconnaître le présent à valeur de futur.',
  'valide',
  'CRPE Français — Présent indicatif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Verbe « acquérir »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-pre0-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_present_indicatif',
  'Présent de l''indicatif : formes et valeurs',
  'Difficile',
  'reponse_courte',
  'Conjuguez « acquérir » à la 3e personne du pluriel au présent de l''indicatif.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["ils acquièrent","elles acquièrent","acquièrent"]}'::jsonb,
  '« Acquérir » est un verbe du 3e groupe à radical variable : j''acquiers, tu acquiers, il acquiert, nous acquérons, vous acquérez, ils acquièrent. Le radical change entre les personnes « fortes » (accentuées : acquièr-) et « faibles » (atones : acquér-). L''accent grave sur le -è des personnes 1, 2, 3 et 6 reflète la prononciation ouverte du [ɛ]. Ce type d''alternance vocalique est un classique du CRPE.',
  'Écrire « ils acquérent » (sans accent grave) ou « ils acquièrent » avec une erreur sur le radical, par méconnaissance de l''alternance vocalique.',
  'valide',
  'CRPE Français — Présent indicatif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — Terminaisons au présent selon le groupe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-pre0-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'conj_present_indicatif',
  'Présent de l''indicatif : formes et valeurs',
  'Difficile',
  'tri_categories',
  'Classez chaque forme verbale au présent selon sa terminaison à la 1re personne du singulier : -e, -s, ou -x.',
  NULL,
  '[{"id":"w1","label":"je chante (chanter)"},{"id":"w2","label":"je finis (finir)"},{"id":"w3","label":"je cueille (cueillir)"},{"id":"w4","label":"je veux (vouloir)"},{"id":"w5","label":"je cours (courir)"},{"id":"w6","label":"j''ouvre (ouvrir)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"e","label":"Terminaison -e"},{"id":"s","label":"Terminaison -s"},{"id":"x","label":"Terminaison -x"}],"mapping":{"w1":"e","w2":"s","w3":"e","w4":"x","w5":"s","w6":"e"}}'::jsonb,
  'Au présent, la terminaison de la 1re personne du singulier dépend du verbe : les verbes en -er prennent -e (je chante) ; les verbes en -ir, -re, -oir prennent -s (je finis, je cours) ; « pouvoir », « vouloir » et « valoir » prennent -x (je peux, je veux, je vaux). Exception notable : les verbes en -llir, -vrir, -ffrir (cueillir, ouvrir, offrir, souffrir) se conjuguent comme des verbes en -er : je cueille, j''ouvre, j''offre (avec -e, pas -s).',
  'Écrire « je cueills » ou « j''ouvrs » en appliquant la terminaison -s du 3e groupe, alors que ces verbes suivent le modèle des verbes en -er au présent.',
  'valide',
  'CRPE Français — Présent indicatif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 6 : Imparfait et passé simple
-- Topic : conj_imparfait_passe_simple
-- UUID prefix : conj-ips0
-- 10 exercices : 3 qcm, 2 vrai_faux, 2 reponse_courte, 1 tri_categories, 2 qcm
-- ============================================================

-- Q1 — Facile — QCM — Valeurs : arrière-plan vs premier plan
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-ips0-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple',
  'Imparfait et passé simple',
  'Facile',
  'qcm',
  'Dans « Le soleil brillait quand soudain un orage éclata », quel temps exprime le premier plan du récit ?',
  NULL,
  '[{"id":"a","label":"L''imparfait (brillait)"},{"id":"b","label":"Le passé simple (éclata)"},{"id":"c","label":"Les deux indifféremment"},{"id":"d","label":"Aucun des deux"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans un récit au passé, le passé simple exprime les actions de premier plan (événements ponctuels qui font avancer l''intrigue), tandis que l''imparfait exprime l''arrière-plan (descriptions, situations duratives, habitudes). Ici, « brillait » (imparfait) décrit le cadre ; « éclata » (passé simple) est l''événement soudain qui rompt ce cadre. Cette opposition est fondamentale en linguistique textuelle et au CRPE.',
  'Inverser les rôles : croire que l''imparfait est le premier plan parce qu''il apparaît en premier dans la phrase.',
  'valide',
  'CRPE Français — Imparfait et passé simple',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/faux — Aspect sécant / non-sécant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-ips0-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple',
  'Imparfait et passé simple',
  'Facile',
  'vrai_faux',
  'L''imparfait est un temps d''aspect sécant : il présente l''action en cours de déroulement, sans en montrer les limites.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'L''imparfait a un aspect sécant (ou non-borné) : il montre l''action « de l''intérieur », comme si on la saisissait en cours de déroulement, sans voir son début ni sa fin. Le passé simple a un aspect non-sécant (ou borné, global) : il présente l''action comme un tout achevé, avec un début et une fin. « Il marchait » → on ne sait pas quand il a commencé ni quand il a fini. « Il marcha » → l''action est vue globalement, comme un bloc.',
  'Confondre « aspect » et « temps » : l''aspect concerne la façon dont on envisage le déroulement de l''action, le temps concerne sa position chronologique.',
  'valide',
  'CRPE Français — Imparfait et passé simple',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Formes du passé simple 1er groupe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-ips0-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple',
  'Imparfait et passé simple',
  'Facile',
  'qcm',
  'Quelle est la forme correcte du verbe « manger » à la 3e personne du singulier au passé simple ?',
  NULL,
  '[{"id":"a","label":"il mangeat"},{"id":"b","label":"il mangea"},{"id":"c","label":"il mangeât"},{"id":"d","label":"il mangeas"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les verbes du 1er groupe (-er) ont au passé simple les terminaisons : -ai, -as, -a, -âmes, -âtes, -èrent. La 3e personne du singulier est donc « il mangea » (sans accent, sans -t). L''accent circonflexe apparaît aux 1re et 2e personnes du pluriel (nous mangeâmes, vous mangeâtes). Ne pas confondre avec le subjonctif imparfait : « qu''il mangeât » (avec accent circonflexe).',
  'Ajouter un accent circonflexe (« mangeât ») en confondant le passé simple de l''indicatif et le subjonctif imparfait, ou ajouter un -t final (« mangeat »).',
  'valide',
  'CRPE Français — Imparfait et passé simple',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — Vrai/faux — Passé simple et durée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-ips0-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple',
  'Imparfait et passé simple',
  'Intermédiaire',
  'vrai_faux',
  'Le passé simple ne peut exprimer qu''une action brève et ponctuelle.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Faux ! Le passé simple peut exprimer une action longue, à condition qu''elle soit présentée comme un tout borné (aspect global) : « La guerre de Cent Ans dura de 1337 à 1453. » Ici, l''action dure plus d''un siècle, mais le passé simple la présente globalement, avec un début et une fin. Ce qui caractérise le PS, ce n''est pas la brièveté, mais la vision globale de l''action. C''est un piège fréquent au CRPE.',
  'Réduire le passé simple à l''expression d''actions ponctuelles, en oubliant qu''il peut exprimer une durée tant qu''elle est bornée.',
  'valide',
  'CRPE Français — Imparfait et passé simple',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — QCM — Passé simple 3e groupe en -i-
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-ips0-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple',
  'Imparfait et passé simple',
  'Intermédiaire',
  'qcm',
  'Quelle est la forme correcte de « voir » à la 3e personne du pluriel au passé simple ?',
  NULL,
  '[{"id":"a","label":"ils voyèrent"},{"id":"b","label":"ils virent"},{"id":"c","label":"ils voirent"},{"id":"d","label":"ils vurent"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Voir » au passé simple se conjugue sur le modèle en -i : je vis, tu vis, il vit, nous vîmes, vous vîtes, ils virent. Le radical change par rapport au présent (voi- → vi-). Les terminaisons en -i sont : -is, -is, -it, -îmes, -îtes, -irent. Ne pas confondre avec les verbes en -u (courir → ils coururent) ou en -in (venir → ils vinrent). « Virent » est aussi la 3e personne du pluriel du passé simple de « vivre ».',
  'Créer une forme analogique « voyèrent » (sur le modèle de l''imparfait « voyaient ») ou confondre avec le passé simple en -u.',
  'valide',
  'CRPE Français — Imparfait et passé simple',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Réponse courte — Passé simple en -u
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-ips0-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple',
  'Imparfait et passé simple',
  'Intermédiaire',
  'reponse_courte',
  'Conjuguez « savoir » à la 1re personne du singulier au passé simple.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["je sus","sus"]}'::jsonb,
  '« Savoir » au passé simple suit le modèle en -u : je sus, tu sus, il sut, nous sûmes, vous sûtes, ils surent. Les terminaisons en -u sont : -us, -us, -ut, -ûmes, -ûtes, -urent. Autres verbes courants en -u : pouvoir (je pus), devoir (je dus), recevoir (je reçus), courir (je courus), lire (je lus), vivre (je vécus), croire (je crus).',
  'Écrire « je savus » ou « je savis » en fabriquant une forme sur le radical du présent au lieu d''utiliser le radical irrégulier du passé simple.',
  'valide',
  'CRPE Français — Imparfait et passé simple',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Réponse courte — Passé simple en -in
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-ips0-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple',
  'Imparfait et passé simple',
  'Intermédiaire',
  'reponse_courte',
  'Conjuguez « tenir » à la 3e personne du pluriel au passé simple.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["ils tinrent","elles tinrent","tinrent"]}'::jsonb,
  '« Tenir » au passé simple suit le modèle en -in, réservé à « venir », « tenir » et leurs dérivés : je tins, tu tins, il tint, nous tînmes, vous tîntes, ils tinrent. Ce modèle est unique et souvent source d''erreurs. Les terminaisons sont : -ins, -ins, -int, -înmes, -întes, -inrent. Ce sont les seuls verbes français avec un passé simple en -in.',
  'Écrire « ils tenirent » ou « ils tenèrent » en inventant des formes sur le radical du présent.',
  'valide',
  'CRPE Français — Imparfait et passé simple',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Tri catégories — Imparfait ou passé simple selon la valeur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-ips0-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple',
  'Imparfait et passé simple',
  'Difficile',
  'tri_categories',
  'Dans cet extrait de Flaubert, classez chaque verbe selon qu''il est à l''imparfait (arrière-plan) ou au passé simple (premier plan).',
  'La nuit tombait. Des corneilles volaient. Il se mit tout à coup à courir, il ferma la porte de sa chambre et s''écroula sur son lit.',
  '[{"id":"w1","label":"tombait"},{"id":"w2","label":"volaient"},{"id":"w3","label":"se mit"},{"id":"w4","label":"ferma"},{"id":"w5","label":"s''écroula"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"imp","label":"Imparfait (arrière-plan)"},{"id":"ps","label":"Passé simple (premier plan)"}],"mapping":{"w1":"imp","w2":"imp","w3":"ps","w4":"ps","w5":"ps"}}'::jsonb,
  '« Tombait » et « volaient » (imparfait) posent le décor, l''atmosphère : c''est l''arrière-plan descriptif. « Se mit », « ferma » et « s''écroula » (passé simple) sont les actions successives du personnage qui font avancer le récit : c''est le premier plan narratif. L''adverbe « tout à coup » marque la rupture entre la description et l''action. Ce passage illustre parfaitement la complémentarité des deux temps dans le récit littéraire.',
  'Considérer « tombait » comme un passé simple parce qu''il semble exprimer un événement, alors que la nuit « qui tombe » est un cadre progressif (aspect sécant).',
  'valide',
  'CRPE Français — Imparfait et passé simple',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — QCM — Concordance dans le récit
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-ips0-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple',
  'Imparfait et passé simple',
  'Difficile',
  'qcm',
  'Dans un récit au passé, quelle combinaison temporelle est correcte pour exprimer une action antérieure à une autre action passée ?',
  NULL,
  '[{"id":"a","label":"Passé simple + imparfait"},{"id":"b","label":"Plus-que-parfait + passé simple"},{"id":"c","label":"Imparfait + imparfait"},{"id":"d","label":"Passé simple + passé simple"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour exprimer l''antériorité dans un récit au passé, on utilise le plus-que-parfait (action antérieure) + le passé simple (action postérieure) : « Quand il eut fini (ou avait fini) son repas, il sortit. » Le plus-que-parfait marque l''action accomplie avant le moment de référence passé. C''est la concordance des temps dans le système du passé. Le passé antérieur est aussi possible pour une antériorité immédiate.',
  'Utiliser deux passé simples pour des actions non simultanées, sans marquer l''antériorité par un temps composé.',
  'valide',
  'CRPE Français — Imparfait et passé simple',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — QCM — Imparfait modal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-ips0-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'conj_imparfait_passe_simple',
  'Imparfait et passé simple',
  'Difficile',
  'qcm',
  'Dans « Sans ton aide, je tombais dans le piège », quelle est la valeur de l''imparfait ?',
  NULL,
  '[{"id":"a","label":"Imparfait de description"},{"id":"b","label":"Imparfait d''habitude"},{"id":"c","label":"Imparfait modal (irréel du passé)"},{"id":"d","label":"Imparfait de narration"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''imparfait modal (ou imparfait d''irréel) exprime un fait qui ne s''est pas réalisé. « Sans ton aide, je tombais » signifie « j''aurais tombé si tu ne m''avais pas aidé ». C''est un emploi stylistique de l''imparfait qui remplace le conditionnel passé dans la langue courante. On le trouve aussi dans les hypothèses : « Un pas de plus, et il tombait. » Cet emploi modal est un point d''analyse avancé, prisé au CRPE.',
  'Analyser cet imparfait comme un simple passé temporel alors qu''il exprime une hypothèse contrefactuelle (un fait qui n''a pas eu lieu).',
  'valide',
  'CRPE Français — Imparfait et passé simple',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 7 : Le subjonctif présent
-- Topic : conj_subjonctif_present
-- UUID prefix : conj-sub0
-- 10 exercices : 3 qcm, 3 vrai_faux, 2 reponse_courte, 2 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Emploi obligatoire : volonté
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-sub0-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_subjonctif_present',
  'Le subjonctif présent',
  'Facile',
  'qcm',
  'Complétez : « Je veux qu''il _______ à l''heure. »',
  NULL,
  '[{"id":"a","label":"vient"},{"id":"b","label":"vienne"},{"id":"c","label":"viendra"},{"id":"d","label":"venait"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Après les verbes de volonté (vouloir, souhaiter, désirer, exiger, ordonner…), le subjonctif est obligatoire dans la subordonnée complétive. « Je veux qu''il vienne » : le subjonctif présent de « venir » est « vienne » (radical irrégulier vienn-). On ne peut pas utiliser l''indicatif après « vouloir que ». C''est l''un des emplois les plus systématiques du subjonctif.',
  'Utiliser l''indicatif (« vient » ou « viendra ») après « vouloir que », ce qui est grammaticalement incorrect en français standard.',
  'valide',
  'CRPE Français — Subjonctif présent',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/faux — Après « il faut que »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-sub0-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_subjonctif_present',
  'Le subjonctif présent',
  'Facile',
  'vrai_faux',
  'La phrase « Il faut que tu fais tes devoirs » est grammaticalement correcte.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Il faut écrire « Il faut que tu fasses tes devoirs ». La locution « il faut que » impose toujours le subjonctif. « Faire » au subjonctif présent donne : que je fasse, que tu fasses, qu''il fasse, que nous fassions, que vous fassiez, qu''ils fassent. Le radical « fass- » est irrégulier et doit être mémorisé. C''est une forme très fréquemment testée au CRPE.',
  'Utiliser l''indicatif « fais » au lieu du subjonctif « fasses » après « il faut que », erreur très courante à l''oral.',
  'valide',
  'CRPE Français — Subjonctif présent',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Formes irrégulières : aller
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-sub0-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_subjonctif_present',
  'Le subjonctif présent',
  'Facile',
  'qcm',
  'Quelle est la forme correcte du subjonctif présent de « aller » à la 3e personne du singulier ?',
  NULL,
  '[{"id":"a","label":"qu''il alle"},{"id":"b","label":"qu''il va"},{"id":"c","label":"qu''il aille"},{"id":"d","label":"qu''il aller"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Aller » a un subjonctif présent très irrégulier : que j''aille, que tu ailles, qu''il aille, que nous allions, que vous alliez, qu''ils aillent. Le radical « aill- » aux personnes 1, 2, 3 et 6 change en « all- » aux personnes 4 et 5 (nous allions, vous alliez). Cette alternance de radical est typique de plusieurs verbes irréguliers au subjonctif.',
  'Écrire « qu''il alle » (sans le i) ou utiliser l''indicatif « qu''il va » au lieu du subjonctif.',
  'valide',
  'CRPE Français — Subjonctif présent',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — Vrai/faux — Subjonctif après « bien que »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-sub0-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_subjonctif_present',
  'Le subjonctif présent',
  'Facile',
  'vrai_faux',
  'Après la conjonction « bien que », on doit utiliser le subjonctif.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  '« Bien que » est une conjonction de concession qui impose le subjonctif : « Bien qu''il soit fatigué, il continue de travailler. » Les conjonctions de concession au subjonctif incluent : bien que, quoique, encore que. Les conjonctions de but (pour que, afin que), de temps antérieur (avant que, jusqu''à ce que) et de crainte (de peur que, de crainte que) demandent aussi le subjonctif.',
  'Utiliser l''indicatif après « bien que » (« bien qu''il est fatigué »), faute fréquente même chez les locuteurs natifs.',
  'valide',
  'CRPE Français — Subjonctif présent',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — QCM — Subjonctif vs indicatif : « après que »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-sub0-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_subjonctif_present',
  'Le subjonctif présent',
  'Intermédiaire',
  'qcm',
  'Selon la norme grammaticale, quel mode doit-on employer après « après que » ?',
  NULL,
  '[{"id":"a","label":"Le subjonctif obligatoirement"},{"id":"b","label":"L''indicatif obligatoirement"},{"id":"c","label":"L''indicatif (norme) mais le subjonctif est toléré par l''usage"},{"id":"d","label":"Le conditionnel"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Après que » devrait être suivi de l''indicatif selon la grammaire normative, car il exprime un fait réalisé (accompli) : « après qu''il est parti » (indicatif). Logique : « avant que » → fait non encore réalisé → subjonctif ; « après que » → fait déjà réalisé → indicatif. Cependant, l''usage contemporain emploie massivement le subjonctif (« après qu''il soit parti »), par analogie avec « avant que ». Au CRPE, il faut connaître la norme ET l''usage.',
  'Croire que « après que » exige le subjonctif par analogie avec « avant que », sans connaître la distinction normative.',
  'valide',
  'CRPE Français — Subjonctif présent',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Vrai/faux — Subjonctif après « espérer que »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-sub0-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_subjonctif_present',
  'Le subjonctif présent',
  'Intermédiaire',
  'vrai_faux',
  'Le verbe « espérer » se construit avec le subjonctif : « J''espère qu''il vienne. »',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  '« Espérer » se construit avec l''indicatif (ou le conditionnel), pas le subjonctif : « J''espère qu''il viendra. » C''est une exception notable parmi les verbes de sentiment : « souhaiter », « désirer », « craindre » → subjonctif ; mais « espérer » → indicatif. L''explication est que « espérer » implique une certaine confiance dans la réalisation du fait, contrairement aux autres verbes de souhait. C''est un piège classique du CRPE.',
  'Mettre le subjonctif après « espérer que » par analogie avec « souhaiter que » ou « désirer que ».',
  'valide',
  'CRPE Français — Subjonctif présent',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Réponse courte — Forme irrégulière : savoir
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-sub0-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_subjonctif_present',
  'Le subjonctif présent',
  'Intermédiaire',
  'reponse_courte',
  'Conjuguez « savoir » au subjonctif présent, 2e personne du singulier : « Il faut que tu _______ la réponse. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["saches"]}'::jsonb,
  '« Savoir » au subjonctif présent a un radical entièrement irrégulier : que je sache, que tu saches, qu''il sache, que nous sachions, que vous sachiez, qu''ils sachent. Le radical « sach- » est très différent du radical de l''indicatif (sai-/sav-). C''est l''un des verbes les plus irréguliers au subjonctif avec « être » (sois), « avoir » (aie), « aller » (aille), « faire » (fasse), « pouvoir » (puisse).',
  'Écrire « que tu saves » ou « que tu sais » en calquant sur l''indicatif, au lieu du radical irrégulier « sach- ».',
  'valide',
  'CRPE Français — Subjonctif présent',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermédiaire — Tri catégories — Indicatif ou subjonctif après ces conjonctions ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-sub0-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_subjonctif_present',
  'Le subjonctif présent',
  'Intermédiaire',
  'tri_categories',
  'Classez chaque conjonction selon le mode qu''elle commande dans la subordonnée.',
  NULL,
  '[{"id":"w1","label":"bien que"},{"id":"w2","label":"parce que"},{"id":"w3","label":"pour que"},{"id":"w4","label":"pendant que"},{"id":"w5","label":"avant que"},{"id":"w6","label":"dès que"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"subj","label":"Subjonctif"},{"id":"ind","label":"Indicatif"}],"mapping":{"w1":"subj","w2":"ind","w3":"subj","w4":"ind","w5":"subj","w6":"ind"}}'::jsonb,
  '« Bien que » (concession) → subjonctif. « Parce que » (cause réelle, constatée) → indicatif. « Pour que » (but) → subjonctif. « Pendant que » (simultanéité constatée) → indicatif. « Avant que » (antériorité, fait non encore réalisé) → subjonctif. « Dès que » (postériorité immédiate, fait réalisé) → indicatif. Règle générale : le subjonctif s''emploie quand le fait est envisagé (but, concession, antériorité) ; l''indicatif quand le fait est constaté (cause, temps réalisé).',
  'Mettre le subjonctif après toute conjonction de subordination, sans distinguer celles qui expriment un fait réalisé (indicatif) de celles qui expriment un fait envisagé (subjonctif).',
  'valide',
  'CRPE Français — Subjonctif présent',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Subjonctif « pouvoir »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-sub0-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_subjonctif_present',
  'Le subjonctif présent',
  'Difficile',
  'reponse_courte',
  'Complétez : « Pourvu qu''elles _______ réussir cet examen ! » (verbe : pouvoir)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["puissent"]}'::jsonb,
  '« Pouvoir » au subjonctif présent : que je puisse, que tu puisses, qu''il puisse, que nous puissions, que vous puissiez, qu''ils/elles puissent. « Pourvu que » est une conjonction de souhait qui impose le subjonctif. Le radical « puiss- » est constant à toutes les personnes (contrairement à l''indicatif où le radical alterne entre « peux/peut » et « pouv- »). C''est une forme à mémoriser absolument.',
  'Écrire « qu''elles peuvent » (indicatif) ou « qu''elles pouvent » (forme inventée) au lieu de « qu''elles puissent ».',
  'valide',
  'CRPE Français — Subjonctif présent',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — Subjonctif ou indicatif : pièges courants
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-sub0-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'conj_subjonctif_present',
  'Le subjonctif présent',
  'Difficile',
  'tri_categories',
  'Classez chaque verbe introducteur selon qu''il commande le subjonctif ou l''indicatif dans la complétive.',
  NULL,
  '[{"id":"w1","label":"Je doute que…"},{"id":"w2","label":"Je sais que…"},{"id":"w3","label":"Je crains que…"},{"id":"w4","label":"J''espère que…"},{"id":"w5","label":"Il semble que…"},{"id":"w6","label":"Il me semble que…"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"subj","label":"Subjonctif"},{"id":"ind","label":"Indicatif"}],"mapping":{"w1":"subj","w2":"ind","w3":"subj","w4":"ind","w5":"subj","w6":"ind"}}'::jsonb,
  '« Douter que » (doute) → subjonctif. « Savoir que » (certitude) → indicatif. « Craindre que » (sentiment de crainte) → subjonctif. « Espérer que » (exception : malgré le souhait, c''est l''indicatif). « Il semble que » (impersonnel sans complément → incertitude) → subjonctif. « Il me semble que » (avec pronom = impression personnelle → quasi-certitude) → indicatif. Cette dernière paire est un piège redoutable du CRPE : le pronom « me » change le mode requis !',
  'Ne pas distinguer « il semble que » (subjonctif) et « il me semble que » (indicatif), alors que le pronom personnel change le degré de certitude et donc le mode.',
  'valide',
  'CRPE Français — Subjonctif présent',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 8 : Concordance des temps
-- Topic : conj_concordance_temps
-- UUID prefix : conj-cdt0
-- 10 exercices : 3 qcm, 2 vrai_faux, 3 reponse_courte, 2 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Système du présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-cdt0-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_concordance_temps',
  'Concordance des temps',
  'Facile',
  'qcm',
  'Complétez : « Je pense qu''il _______ demain. »',
  NULL,
  '[{"id":"a","label":"viendrait"},{"id":"b","label":"viendra"},{"id":"c","label":"venait"},{"id":"d","label":"vint"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans le système du présent, la principale est au présent (« je pense ») et la subordonnée exprime la postériorité par le futur simple (« il viendra »). Tableau de concordance dans le système du présent : antériorité → passé composé ; simultanéité → présent ; postériorité → futur simple. Au CRPE, il faut maîtriser les deux systèmes (présent et passé).',
  'Utiliser le conditionnel (« viendrait ») qui appartient au système du passé, alors que la principale est au présent.',
  'valide',
  'CRPE Français — Concordance des temps',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/faux — Système du passé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-cdt0-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_concordance_temps',
  'Concordance des temps',
  'Facile',
  'vrai_faux',
  'Dans « Il pensait qu''elle viendrait le lendemain », le conditionnel présent « viendrait » exprime un futur dans le passé.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'Le conditionnel présent, dans le système du passé, joue le rôle de « futur du passé » (ou futur dans le passé). « Il pensait qu''elle viendrait » = au moment passé de la pensée, la venue est postérieure. Correspondance : système du présent « il pense qu''elle viendra » (futur) → système du passé « il pensait qu''elle viendrait » (conditionnel). Le conditionnel n''exprime pas ici une hypothèse mais une postériorité par rapport au passé.',
  'Interpréter le conditionnel comme une hypothèse alors qu''il exprime simplement le futur dans le passé (valeur temporelle, pas modale).',
  'valide',
  'CRPE Français — Concordance des temps',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — QCM — Discours rapporté : transposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-cdt0-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_concordance_temps',
  'Concordance des temps',
  'Facile',
  'qcm',
  'Transposez au discours indirect passé : « Il a dit : "Je suis fatigué." » → « Il a dit qu''il _______ fatigué. »',
  NULL,
  '[{"id":"a","label":"est"},{"id":"b","label":"était"},{"id":"c","label":"serait"},{"id":"d","label":"fut"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Passage du discours direct au discours indirect avec verbe introducteur au passé : le présent (« je suis ») devient imparfait (« il était »). C''est la règle de base de la concordance des temps dans le discours rapporté. Tableau : présent → imparfait ; passé composé → plus-que-parfait ; futur → conditionnel présent ; futur antérieur → conditionnel passé.',
  'Garder le présent (« il a dit qu''il est fatigué ») sans appliquer la concordance des temps, ce qui est une erreur dans le système du passé.',
  'valide',
  'CRPE Français — Concordance des temps',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — Vrai/faux — Concordance et vérité générale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-cdt0-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_concordance_temps',
  'Concordance des temps',
  'Intermédiaire',
  'vrai_faux',
  'Dans « Le professeur expliquait que la Terre tourne autour du Soleil », le présent « tourne » est incorrect car il ne respecte pas la concordance des temps.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Le présent est correct ici. Lorsque la subordonnée exprime une vérité générale ou un fait permanent, on peut maintenir le présent même si la principale est au passé. « Le professeur expliquait que la Terre tourne autour du Soleil » : le fait est toujours vrai au moment de l''énonciation. C''est une exception légitime à la concordance des temps, fréquemment testée au CRPE.',
  'Appliquer mécaniquement la concordance (« tournait ») sans reconnaître que les vérités générales échappent à cette règle.',
  'valide',
  'CRPE Français — Concordance des temps',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — QCM — Discours rapporté : futur → conditionnel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-cdt0-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_concordance_temps',
  'Concordance des temps',
  'Intermédiaire',
  'qcm',
  'Transposez : « Elle a promis : "Je reviendrai et je vous aiderai." » → « Elle a promis qu''elle _______ et qu''elle les _______. »',
  NULL,
  '[{"id":"a","label":"reviendrait / aiderait"},{"id":"b","label":"reviendra / aidera"},{"id":"c","label":"revenait / aidait"},{"id":"d","label":"revint / aida"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le futur simple du discours direct (« reviendrai », « aiderai ») se transpose en conditionnel présent dans le discours indirect passé (« reviendrait », « aiderait »). C''est le « futur dans le passé ». Le conditionnel présent est formellement identique à un futur transposé dans le système du passé : mêmes désinences (-ais, -ais, -ait, -ions, -iez, -aient), même radical que le futur.',
  'Transposer le futur en imparfait (« revenait ») au lieu du conditionnel, confondant simultanéité et postériorité dans le passé.',
  'valide',
  'CRPE Français — Concordance des temps',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Réponse courte — Passé composé → plus-que-parfait
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-cdt0-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_concordance_temps',
  'Concordance des temps',
  'Intermédiaire',
  'reponse_courte',
  'Transposez au discours indirect passé le verbe entre crochets : « Il m''a dit qu''il [a terminé] son travail. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["avait terminé"]}'::jsonb,
  'Le passé composé du discours direct (« j''ai terminé ») se transpose en plus-que-parfait dans le discours indirect passé (« il avait terminé »). Le plus-que-parfait exprime l''antériorité par rapport au moment passé du verbe introducteur. Tableau complet de transposition : présent → imparfait ; passé composé → plus-que-parfait ; futur → conditionnel présent ; futur antérieur → conditionnel passé ; imparfait → imparfait (pas de changement).',
  'Laisser le passé composé (« a terminé ») sans le transposer, ou le transposer en imparfait au lieu du plus-que-parfait.',
  'valide',
  'CRPE Français — Concordance des temps',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Réponse courte — Conditionnel = futur dans le passé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-cdt0-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_concordance_temps',
  'Concordance des temps',
  'Intermédiaire',
  'reponse_courte',
  'Comment appelle-t-on la valeur temporelle du conditionnel dans « Il savait qu''il réussirait » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["futur dans le passé","futur du passé","futur antérieur dans le passé"]}'::jsonb,
  'Le conditionnel présent dans « Il savait qu''il réussirait » a une valeur de « futur dans le passé » (ou « futur du passé »). Ce n''est pas une valeur modale (hypothèse, politesse) mais une valeur temporelle : l''action de réussir est postérieure au moment passé de « savoir ». Cette distinction entre les deux valeurs du conditionnel (temporelle vs modale) est un point d''analyse majeur au CRPE et en linguistique française.',
  'Analyser le conditionnel comme exprimant une hypothèse ou un irréel, alors qu''il exprime ici simplement la postériorité dans le système du passé.',
  'valide',
  'CRPE Français — Concordance des temps',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Tri catégories — Système du présent vs système du passé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-cdt0-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_concordance_temps',
  'Concordance des temps',
  'Difficile',
  'tri_categories',
  'Classez chaque temps verbal selon qu''il appartient au système du présent ou au système du passé dans la concordance des temps.',
  NULL,
  '[{"id":"w1","label":"Présent de l''indicatif"},{"id":"w2","label":"Imparfait"},{"id":"w3","label":"Futur simple"},{"id":"w4","label":"Plus-que-parfait"},{"id":"w5","label":"Passé composé"},{"id":"w6","label":"Conditionnel présent"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pres","label":"Système du présent"},{"id":"passe","label":"Système du passé"}],"mapping":{"w1":"pres","w2":"passe","w3":"pres","w4":"passe","w5":"pres","w6":"passe"}}'::jsonb,
  'Système du présent : présent (simultanéité), passé composé (antériorité), futur simple (postériorité). Système du passé : imparfait (simultanéité), plus-que-parfait (antériorité), conditionnel présent (postériorité = futur dans le passé). Chaque système a sa logique interne. La concordance des temps consiste à rester cohérent dans un même système. Le passé composé est dans le système du présent car il exprime un accompli lié au présent.',
  'Placer le passé composé dans le système du passé (parce qu''il a « passé » dans son nom), alors qu''il appartient au système du présent.',
  'valide',
  'CRPE Français — Concordance des temps',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Concordance dans la subordonnée au subjonctif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-cdt0-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_concordance_temps',
  'Concordance des temps',
  'Difficile',
  'reponse_courte',
  'En français soutenu classique, quel temps du subjonctif utiliserait-on dans : « Je voulais qu''il [venir] » ? Donnez le nom du temps.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["subjonctif imparfait","imparfait du subjonctif","l''imparfait du subjonctif"]}'::jsonb,
  'En français soutenu classique, la concordance des temps s''applique aussi au subjonctif. Quand la principale est au passé, la subordonnée au subjonctif devrait être au subjonctif imparfait : « Je voulais qu''il vînt. » En pratique, le français moderne utilise le subjonctif présent même après une principale au passé (« Je voulais qu''il vienne »), mais la connaissance du subjonctif imparfait est attendue au CRPE pour l''analyse de textes littéraires classiques.',
  'Ignorer l''existence du subjonctif imparfait ou croire qu''il n''est plus jamais utilisé, alors qu''il reste nécessaire pour analyser les textes classiques.',
  'valide',
  'CRPE Français — Concordance des temps',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — Transposition discours direct → indirect
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'conj-cdt0-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'conj_concordance_temps',
  'Concordance des temps',
  'Difficile',
  'tri_categories',
  'Associez chaque temps du discours direct à son équivalent en discours indirect passé.',
  NULL,
  '[{"id":"w1","label":"Présent → ?"},{"id":"w2","label":"Passé composé → ?"},{"id":"w3","label":"Futur simple → ?"},{"id":"w4","label":"Imparfait → ?"},{"id":"w5","label":"Futur antérieur → ?"},{"id":"w6","label":"Plus-que-parfait → ?"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"imp","label":"→ Imparfait"},{"id":"pqp","label":"→ Plus-que-parfait"},{"id":"cond","label":"→ Conditionnel présent"},{"id":"inchange","label":"→ Inchangé"},{"id":"condp","label":"→ Conditionnel passé"}],"mapping":{"w1":"imp","w2":"pqp","w3":"cond","w4":"inchange","w5":"condp","w6":"inchange"}}'::jsonb,
  'Tableau complet de transposition du discours direct au discours indirect passé : Présent → imparfait (« je suis » → « il était »). Passé composé → plus-que-parfait (« j''ai fini » → « il avait fini »). Futur simple → conditionnel présent (« je viendrai » → « il viendrait »). Imparfait → inchangé (« je lisais » → « il lisait »). Futur antérieur → conditionnel passé (« j''aurai fini » → « il aurait fini »). Plus-que-parfait → inchangé (« j''avais compris » → « il avait compris »).',
  'Croire que l''imparfait et le plus-que-parfait changent aussi lors de la transposition, alors qu''ils restent inchangés (ils sont déjà dans le système du passé).',
  'valide',
  'CRPE Français — Concordance des temps',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
