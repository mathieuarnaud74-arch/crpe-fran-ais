-- ============================================================
-- Migration : 20 exercices de type « correction_orthographique »
-- Nouveau type d'exercice : l'élève doit saisir la forme corrigée
-- 2 séries × 10 questions = 20 exercices
-- Domaine : orthographe
-- ============================================================

-- ============================================================
-- SÉRIE 1 : Correction — Accords grammaticaux
-- Topic : correction_accords
-- UUID prefix : f1010000
-- 10 exercices : 3 Facile, 4 Intermédiaire, 3 Avancé
-- ============================================================

-- Q1 — Facile — Accord sujet-verbe simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1010000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'correction_accords',
  'Correction — Accords grammaticaux',
  'Facile',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Les enfants *joue* dans la cour de récréation.',
  NULL,
  '{"mode":"text","acceptableAnswers":["jouent"]}'::jsonb,
  'Le sujet « les enfants » est à la 3e personne du pluriel. Le verbe « jouer » au présent de l''indicatif se conjugue donc « jouent ». Règle fondamentale : le verbe s''accorde toujours en nombre et en personne avec son sujet.',
  'Oublier le -nt de la 3e personne du pluriel, surtout quand le sujet est éloigné du verbe.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Accord de l'adjectif en genre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1010000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'correction_accords',
  'Correction — Accords grammaticaux',
  'Facile',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Cette robe est très *joli* et confortable.',
  NULL,
  '{"mode":"text","acceptableAnswers":["jolie"]}'::jsonb,
  'L''adjectif qualificatif « joli » est attribut du sujet « cette robe », qui est féminin singulier. Il doit donc s''accorder au féminin : « jolie ». En français, la plupart des adjectifs prennent un -e au féminin.',
  'Ne pas accorder l''adjectif attribut avec le sujet, surtout lorsque l''adjectif est séparé du nom par le verbe « être ».',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Accord de l'adjectif en nombre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1010000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'correction_accords',
  'Correction — Accords grammaticaux',
  'Facile',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Mes voisins sont *gentil* avec tout le monde.',
  NULL,
  '{"mode":"text","acceptableAnswers":["gentils"]}'::jsonb,
  'L''adjectif « gentil » est attribut du sujet « mes voisins », masculin pluriel. Il doit prendre la marque du pluriel : « gentils ». L''adjectif attribut, comme l''adjectif épithète, s''accorde en genre et en nombre avec le nom qu''il qualifie.',
  'Laisser l''adjectif au singulier quand le sujet pluriel n''est pas immédiatement à côté.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — PP avec avoir, COD antéposé (féminin pluriel)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1010000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'correction_accords',
  'Correction — Accords grammaticaux',
  'Intermédiaire',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Les lettres que j''ai *écrit* étaient longues.',
  NULL,
  '{"mode":"text","acceptableAnswers":["écrites"]}'::jsonb,
  'Avec l''auxiliaire « avoir », le participe passé s''accorde avec le COD lorsque celui-ci est placé avant le verbe. Ici, le COD est le pronom relatif « que », qui reprend « les lettres » (féminin pluriel). Le participe passé doit donc s''écrire « écrites ». Pour vérifier : on pose la question « J''ai écrit quoi ? » → « les lettres » → féminin pluriel → « écrites ».',
  'Laisser le participe passé invariable en oubliant de chercher le COD placé avant le verbe.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — PP avec avoir, COD antéposé (masculin pluriel)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1010000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'correction_accords',
  'Correction — Accords grammaticaux',
  'Intermédiaire',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Les gâteaux que ma grand-mère a *préparé* sont délicieux.',
  NULL,
  '{"mode":"text","acceptableAnswers":["préparés"]}'::jsonb,
  'Le participe passé « préparé » est employé avec l''auxiliaire « avoir ». Le COD « que » (reprenant « les gâteaux », masculin pluriel) est placé avant le verbe. Le participe passé s''accorde donc au masculin pluriel : « préparés ». Règle : avec « avoir », le PP s''accorde avec le COD antéposé.',
  'Ne pas accorder le participe passé avec le COD « que », ou l''accorder avec le sujet « ma grand-mère » (ce qui donnerait un féminin erroné).',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Sujets coordonnés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1010000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'correction_accords',
  'Correction — Accords grammaticaux',
  'Intermédiaire',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Le chien et le chat *dort* paisiblement au soleil.',
  NULL,
  '{"mode":"text","acceptableAnswers":["dorment"]}'::jsonb,
  'Lorsque deux sujets sont coordonnés par « et », le verbe se met au pluriel car il a deux sujets distincts. « Le chien et le chat » = 3e personne du pluriel → « dorment ». C''est la règle de l''accord avec des sujets coordonnés par addition.',
  'Accorder le verbe avec le sujet le plus proche (« le chat », singulier) au lieu de considérer l''ensemble des sujets coordonnés.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Nom collectif sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1010000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'correction_accords',
  'Correction — Accords grammaticaux',
  'Intermédiaire',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Un groupe d''élèves *travaillent* en silence dans la bibliothèque.',
  NULL,
  '{"mode":"text","acceptableAnswers":["travaille","travaillent"]}'::jsonb,
  'Avec un nom collectif au singulier suivi d''un complément au pluriel (« un groupe d''élèves »), l''accord du verbe dépend du sens. Si l''on considère le groupe comme un ensemble → singulier (« travaille »). Si l''on met l''accent sur les individus → pluriel (« travaillent »). Les deux accords sont acceptés. Au CRPE, il faut savoir justifier ce double accord.',
  'Croire qu''un seul accord est possible. La tolérance grammaticale accepte les deux formes selon le sens voulu par l''auteur.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — PP pronominal (se laver → accord avec le sujet)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1010000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'correction_accords',
  'Correction — Accords grammaticaux',
  'Avancé',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Elles se sont *lavé* les mains avant de passer à table.',
  NULL,
  '{"mode":"text","acceptableAnswers":["lavé"]}'::jsonb,
  'Avec un verbe pronominal conjugué avec « être », le participe passé ne s''accorde pas avec le sujet lorsqu''il y a un COD placé après le verbe. Ici, « les mains » est le COD (elles ont lavé quoi ? les mains). Le COD étant placé après le participe passé, celui-ci reste invariable : « lavé ». Attention : « se sont lavées » (sans COD après) serait correct, mais ici le COD « les mains » empêche l''accord.',
  'Accorder le participe passé avec le sujet « elles » sans vérifier la présence d''un COD placé après le verbe.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — Accord de « tout » adverbe devant adjectif féminin commençant par consonne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1010000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'correction_accords',
  'Correction — Accords grammaticaux',
  'Avancé',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Les filles étaient *tout* surprises par la nouvelle.',
  NULL,
  '{"mode":"text","acceptableAnswers":["toutes"]}'::jsonb,
  'Le mot « tout » placé devant un adjectif est normalement un adverbe (invariable). Cependant, par euphonie, « tout » s''accorde en genre et en nombre devant un adjectif féminin commençant par une consonne ou un h aspiré. « Surprises » est féminin pluriel et commence par une consonne → « toutes surprises ». Exception : devant un adjectif féminin commençant par une voyelle, « tout » reste invariable (« tout étonnées »).',
  'Laisser « tout » invariable en le considérant uniquement comme un adverbe, sans appliquer la règle d''euphonie au féminin devant consonne.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — Accord de « demi » antéposé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1010000-0000-0000-0000-00000000000a',
  'Francais',
  'orthographe',
  'correction_accords',
  'Correction — Accords grammaticaux',
  'Avancé',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Il a couru pendant deux heures et *demi* sous la pluie.',
  NULL,
  '{"mode":"text","acceptableAnswers":["demie"]}'::jsonb,
  'Placé après le nom, « demi » s''accorde en genre avec le nom qu''il qualifie (mais jamais en nombre). « Heures » est féminin → « demie ». En revanche, placé avant le nom et relié par un trait d''union, « demi » est invariable : « une demi-heure ». Cette distinction est un classique du CRPE.',
  'Laisser « demi » invariable après le nom, en appliquant la règle de « demi » antéposé (avant le nom).',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : Correction — Homophones et confusions
-- Topic : correction_homophones
-- UUID prefix : f1020000
-- 10 exercices : 3 Facile, 4 Intermédiaire, 3 Avancé
-- ============================================================

-- Q1 — Facile — a / à
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1020000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'correction_homophones',
  'Correction — Homophones et confusions',
  'Facile',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Mon frère *a* réussi à aller *a* Paris pour les vacances.',
  NULL,
  '{"mode":"text","acceptableAnswers":["à"]}'::jsonb,
  'Le second « a » doit prendre un accent grave : « à ». Il s''agit de la préposition « à » (indiquant le lieu), et non du verbe « avoir » conjugué au présent. Test de substitution : on remplace par « avait ». « Mon frère avait réussi… » fonctionne pour le premier « a » (verbe), mais « aller avait Paris » n''a pas de sens pour le second → c''est la préposition « à ».',
  'Ne pas distinguer le verbe « avoir » (a) de la préposition « à ». Le test de substitution par « avait » permet de lever l''ambiguïté.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — ou / où
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1020000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'correction_homophones',
  'Correction — Homophones et confusions',
  'Facile',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'La ville *ou* je suis né se trouve dans le sud de la France.',
  NULL,
  '{"mode":"text","acceptableAnswers":["où"]}'::jsonb,
  'Ici, « ou » doit s''écrire « où » (avec accent grave) car il s''agit du pronom relatif indiquant le lieu (ou le temps), et non de la conjonction de coordination « ou » (qui exprime un choix). Test de substitution : « ou » peut être remplacé par « ou bien » quand c''est la conjonction de coordination. « La ville ou bien je suis né » n''a pas de sens → c''est le pronom relatif « où ».',
  'Confondre la conjonction de coordination « ou » (= ou bien) avec le pronom relatif « où » (lieu/temps). Le test « ou bien » permet de distinguer les deux.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — et / est
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1020000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'correction_homophones',
  'Correction — Homophones et confusions',
  'Facile',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Ce film *et* vraiment intéressant et captivant.',
  NULL,
  '{"mode":"text","acceptableAnswers":["est"]}'::jsonb,
  'Le premier « et » doit s''écrire « est » : il s''agit du verbe « être » conjugué au présent de l''indicatif (3e personne du singulier). Test de substitution : on remplace par « était ». « Ce film était vraiment intéressant » fonctionne → c''est le verbe « être ». La conjonction de coordination « et » (= et puis) relie deux éléments de même nature, comme dans « intéressant et captivant ».',
  'Confondre « et » (conjonction de coordination, remplaçable par « et puis ») avec « est » (verbe être, remplaçable par « était »).',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — ce / se
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1020000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'correction_homophones',
  'Correction — Homophones et confusions',
  'Intermédiaire',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Les élèves *ce* sont bien comportés pendant la sortie scolaire.',
  NULL,
  '{"mode":"text","acceptableAnswers":["se"]}'::jsonb,
  'Ici, il faut écrire « se » (pronom personnel réfléchi) et non « ce » (déterminant démonstratif). « Se comporter » est un verbe pronominal : le pronom « se » fait partie de la conjugaison du verbe. Test : on peut conjuguer à une autre personne → « je me suis bien comporté », « tu t''es bien comporté ». Si on peut remplacer par « me » ou « te », c''est « se ». « Ce » s''emploie devant un nom (« ce livre ») ou dans « c''est ».',
  'Confondre « ce » (déterminant démonstratif, devant un nom) et « se » (pronom réfléchi, devant un verbe pronominal).',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — leur / leurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1020000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'correction_homophones',
  'Correction — Homophones et confusions',
  'Intermédiaire',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Les parents *leurs* ont donné la permission de sortir.',
  NULL,
  '{"mode":"text","acceptableAnswers":["leur"]}'::jsonb,
  'Devant un verbe, « leur » est un pronom personnel COI (= à eux, à elles) et reste invariable : il ne prend jamais de -s. « Leurs » avec un -s est un déterminant possessif qui se place devant un nom pluriel (« leurs enfants »). Ici, « leur » est placé devant le verbe « ont donné » → pronom personnel → invariable → « leur ».',
  'Ajouter un -s à « leur » pronom personnel en le confondant avec « leurs » déterminant possessif. Astuce : devant un verbe, « leur » est toujours invariable.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — on / ont
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1020000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'correction_homophones',
  'Correction — Homophones et confusions',
  'Intermédiaire',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Mes amis *on* préparé une fête surprise pour mon anniversaire.',
  NULL,
  '{"mode":"text","acceptableAnswers":["ont"]}'::jsonb,
  'Ici, il s''agit du verbe « avoir » conjugué au présent à la 3e personne du pluriel : « ont ». Le sujet est « mes amis » (3e personne du pluriel). Test de substitution : on remplace par « avaient ». « Mes amis avaient préparé une fête… » fonctionne → c''est le verbe « avoir ». Le pronom indéfini « on » (= quelqu''un, les gens) est toujours sujet et se conjugue à la 3e personne du singulier.',
  'Confondre « on » (pronom indéfini sujet, 3e personne du singulier) et « ont » (verbe avoir, 3e personne du pluriel). Le test par « avaient » lève l''ambiguïté.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — quand / quant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1020000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'correction_homophones',
  'Correction — Homophones et confusions',
  'Intermédiaire',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  '*Quand* à moi, je préfère rester à la maison ce week-end.',
  NULL,
  '{"mode":"text","acceptableAnswers":["Quant"]}'::jsonb,
  'L''expression correcte est « quant à » (= en ce qui concerne). « Quant » s''écrit avec un -t final lorsqu''il est suivi de « à », « au » ou « aux ». « Quand » (avec un -d) est une conjonction de subordination ou un adverbe interrogatif exprimant le temps (= lorsque, à quel moment). Test : si on peut remplacer par « en ce qui concerne », c''est « quant à ».',
  'Écrire « quand à » au lieu de « quant à ». Retenir : « quant à » = en ce qui concerne ; « quand » = lorsque / à quel moment.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — quelque / quel que
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1020000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'correction_homophones',
  'Correction — Homophones et confusions',
  'Avancé',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  '*Quelque* soit votre décision, nous la respecterons.',
  NULL,
  '{"mode":"text","acceptableAnswers":["Quelle que"]}'::jsonb,
  'Devant le verbe « être » au subjonctif, on écrit « quel(le)(s) que » en deux mots. « Quel » s''accorde en genre et en nombre avec le sujet du verbe « être ». Ici, le sujet est « votre décision » (féminin singulier) → « quelle que ». « Quelque » en un seul mot est un déterminant indéfini (« quelques livres ») ou un adverbe (« quelque cent personnes »).',
  'Écrire « quelque soit » en un seul mot au lieu de « quel(le) que soit ». Règle : devant « soit/soient » (subjonctif de « être »), toujours en deux mots, accordé avec le sujet.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — quoique / quoi que
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1020000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'correction_homophones',
  'Correction — Homophones et confusions',
  'Avancé',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  '*Quoique* vous fassiez, faites-le avec passion et détermination.',
  NULL,
  '{"mode":"text","acceptableAnswers":["Quoi que"]}'::jsonb,
  'Il faut écrire « quoi que » en deux mots (= quelle que soit la chose que). « Quoi que vous fassiez » signifie « peu importe ce que vous fassiez ». En revanche, « quoique » en un seul mot est une conjonction de subordination synonyme de « bien que » : « Quoiqu''il soit fatigué, il continue » (= bien qu''il soit fatigué). Test : si on peut remplacer par « bien que », c''est « quoique » en un mot. Sinon, c''est « quoi que » en deux mots.',
  'Confondre « quoique » (= bien que) et « quoi que » (= quelle que soit la chose que). Le test de substitution par « bien que » permet de trancher.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — davantage / d'avantage(s)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'f1020000-0000-0000-0000-00000000000a',
  'Francais',
  'orthographe',
  'correction_homophones',
  'Correction — Homophones et confusions',
  'Avancé',
  'correction_orthographique',
  'Corrigez le mot en gras (entre astérisques) dans la phrase suivante.',
  'Je souhaiterais en apprendre *d''avantage* sur ce sujet passionnant.',
  NULL,
  '{"mode":"text","acceptableAnswers":["davantage"]}'::jsonb,
  'Ici, il faut écrire « davantage » en un seul mot (adverbe signifiant « plus »). « D''avantage(s) » en deux mots signifie « de profit(s), de bénéfice(s) » : « Cette offre présente d''avantages fiscaux ». Test de substitution : si on peut remplacer par « plus », c''est « davantage » en un mot. « En apprendre plus sur ce sujet » fonctionne → « davantage ».',
  'Écrire « d''avantage » (= de profit) au lieu de « davantage » (= plus). Astuce : remplacer par « plus » pour vérifier.',
  'valide',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
