-- ============================================================
-- Migration : 2 séries Orthographe (20 exercices)
-- UUID prefix : c601–c602
-- ============================================================

-- ############################################################
-- SÉRIE 1 : orth_homophones_grammaticaux — Les homophones grammaticaux
-- ############################################################

-- Q1 — Facile — qcm — Distinguer a/à par substitution
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_homophones_grammaticaux',
  'Les homophones grammaticaux',
  'Facile',
  'qcm',
  'Complétez la phrase suivante : « Il ___ mangé ___ la cantine. » Quelle série est correcte ?',
  NULL,
  '[{"id":"a","label":"a / à"},{"id":"b","label":"à / a"},{"id":"c","label":"a / a"},{"id":"d","label":"à / à"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La procédure de substitution permet de trancher : on remplace par « avait » pour tester la forme verbale. « Il avait mangé » fonctionne → c''est le verbe avoir, donc « a » sans accent. « avait la cantine » ne fonctionne pas → c''est la préposition, donc « à » avec accent. Cette procédure de substitution est au cœur de l''enseignement des homophones grammaticaux préconisé par Éduscol pour le cycle 3. Elle développe la réflexion métalinguistique des élèves.',
  'L''erreur la plus fréquente est de placer l''accent sur le verbe « a ». Il faut systématiquement appliquer le test de substitution par « avait » avant de choisir.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — vrai_faux — Test de substitution on/ont
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_homophones_grammaticaux',
  'Les homophones grammaticaux',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Pour distinguer « on » et « ont », on peut remplacer par « avaient » : si la phrase reste correcte, il faut écrire « ont ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Ont » est la forme conjuguée du verbe avoir à la 3e personne du pluriel. En le remplaçant par « avaient » (imparfait), la phrase reste grammaticalement correcte : « Ils avaient faim » fonctionne comme « Ils ont faim ». En revanche, « on » est un pronom indéfini sujet, et « avaient » ne peut pas le remplacer. Cette procédure de commutation est recommandée par les programmes d''Éduscol comme outil de résolution des homophones au cycle 3.',
  'Certains candidats confondent cette procédure avec celle de « a/à ». Pour « on/ont », on teste avec « avaient » (pluriel), tandis que pour « a/à », on teste avec « avait » (singulier).',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — reponse_courte — Compléter avec et/est
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_homophones_grammaticaux',
  'Les homophones grammaticaux',
  'Facile',
  'reponse_courte',
  'Complétez : « Le chat ___ noir ___ blanc. » Écrivez les deux mots manquants séparés par une virgule et un espace.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["est, et","est,et","est , et"]}'::jsonb,
  'Il faut écrire « Le chat est noir et blanc. » Le premier mot manquant est le verbe être conjugué au présent (3e personne du singulier) : on peut le remplacer par « était ». Le second est la conjonction de coordination « et » qui relie deux adjectifs : on peut la remplacer par « et aussi ». La procédure de substitution par « était » pour « est » et par « et puis » ou « et aussi » pour « et » est préconisée par Éduscol au cycle 2 et consolidée au cycle 3.',
  'L''inversion des deux formes est fréquente. Le test « était » ne fonctionne que pour le verbe être, pas pour la conjonction de coordination.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Distinguer ce/se
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_homophones_grammaticaux',
  'Les homophones grammaticaux',
  'Intermediaire',
  'qcm',
  'Quelle procédure de substitution permet de distinguer « ce » (déterminant démonstratif) de « se » (pronom réfléchi) ?',
  NULL,
  '[{"id":"a","label":"Remplacer par « un » ou « le » : si cela fonctionne, c''est « ce »"},{"id":"b","label":"Remplacer par « il » : si cela fonctionne, c''est « se »"},{"id":"c","label":"Mettre la phrase au futur : « se » disparaît"},{"id":"d","label":"Remplacer par « ça » : si cela fonctionne, c''est « se »"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La procédure correcte consiste à remplacer « ce » par un autre déterminant comme « un » ou « le ». Si la phrase reste correcte (« ce livre » → « un livre »), alors il s''agit bien du déterminant démonstratif « ce ». En revanche, « se » est un pronom personnel réfléchi qui précède un verbe pronominal (« se laver »). On peut le vérifier en conjuguant à une autre personne : « il se lave » → « je me lave ». Cette distinction est un attendu de fin de cycle 3 selon les repères Éduscol.',
  'La substitution par « ça » (réponse d) est un piège : « ça » remplace « cela » et fonctionne avec « ce » en position de pronom démonstratif, pas avec « se ». Cela ne constitue pas une procédure fiable.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — qcm — Homophones ces/ses/c'est/s'est
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_homophones_grammaticaux',
  'Les homophones grammaticaux',
  'Intermediaire',
  'qcm',
  'Complétez : « ___ enfants ___ perdus dans le parc et l''un d''eux ___ mis à pleurer. » Quelle série est correcte ?',
  NULL,
  '[{"id":"a","label":"Ses / se sont / s''est"},{"id":"b","label":"Ces / se sont / s''est"},{"id":"c","label":"Ces / ce sont / c''est"},{"id":"d","label":"Ses / ce sont / s''est"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase correcte est : « Ces enfants se sont perdus dans le parc et l''un d''eux s''est mis à pleurer. » « Ces » est le déterminant démonstratif pluriel (on montre les enfants, on peut substituer par « les »). « Se sont perdus » est la forme conjuguée du verbe pronominal « se perdre » au passé composé, 3e personne du pluriel. « S''est mis » est le même verbe pronominal « se mettre » au passé composé, 3e personne du singulier. La série ces/ses/c''est/s''est constitue l''un des ensembles d''homophones les plus travaillés au cycle 3.',
  'Confondre « ces » (démonstratif, on désigne) et « ses » (possessif, quelqu''un possède) est l''erreur la plus courante. Le test : « ces » → « ces … -là » fonctionne ; « ses » → « les siens » fonctionne.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — vrai_faux — Homophone ou/où
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_homophones_grammaticaux',
  'Les homophones grammaticaux',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Le village ou je suis né est magnifique », le mot « ou » est correctement orthographié.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Il faut écrire « où » avec un accent grave, car il s''agit du pronom relatif indiquant le lieu. La procédure de substitution consiste à remplacer par « ou bien » : « Le village ou bien je suis né » n''a pas de sens, donc il ne s''agit pas de la conjonction de coordination « ou » (qui exprime un choix). C''est le pronom relatif « où » qui reprend un complément de lieu ou de temps. Cette distinction est un attendu explicite des programmes du cycle 3 selon les repères Éduscol.',
  'L''oubli de l''accent grave sur « où » est très fréquent. Le test par « ou bien » est simple et efficace : s''il ne fonctionne pas, c''est « où » avec accent.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — qcm — Homophones la/là/l'a/l'as
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_homophones_grammaticaux',
  'Les homophones grammaticaux',
  'Difficile',
  'qcm',
  'Complétez : « Cette lettre, tu ___ lue et tu ___ rangée ___ où il faut. » Quelle série est correcte ?',
  NULL,
  '[{"id":"a","label":"l''as / l''as / là"},{"id":"b","label":"la / l''a / là"},{"id":"c","label":"l''as / l''as / la"},{"id":"d","label":"la / la / l''a"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La phrase correcte est : « Cette lettre, tu l''as lue et tu l''as rangée là où il faut. » Les deux premiers blancs sont « l''as » : le pronom COD « l'' » (reprenant « cette lettre ») suivi de l''auxiliaire avoir conjugué à la 2e personne du singulier « as ». On peut vérifier en remplaçant par « l''avais ». Le troisième blanc est « là » (adverbe de lieu avec accent grave), qui s''oppose à « la » (article ou pronom). Le quadruplet la/là/l''a/l''as est considéré comme l''un des plus exigeants au cycle 3.',
  'La confusion entre « l''as » (tu + avoir) et « la » (article/pronom) est fréquente car l''apostrophe et la soudure sont difficiles à percevoir à l''oral. Il faut systématiquement identifier le sujet et tester la substitution par « l''avais » ou « l''avait ».',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — reponse_courte — Homophones leur/leurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_homophones_grammaticaux',
  'Les homophones grammaticaux',
  'Difficile',
  'reponse_courte',
  'Dans la phrase « Je ___ ai donné ___ cahiers », écrivez les deux formes correctes séparées par une virgule et un espace (leur ou leurs).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["leur, leurs","leur,leurs","leur , leurs"]}'::jsonb,
  'Il faut écrire « Je leur ai donné leurs cahiers. » Le premier « leur » est un pronom personnel COI (complément d''objet indirect), invariable, placé devant le verbe : on peut le remplacer par « lui » au singulier. Le second « leurs » est un déterminant possessif au pluriel qui s''accorde avec le nom « cahiers » : on peut le remplacer par « ses » au singulier. La distinction pronom invariable / déterminant variable est fondamentale et figure dans les attendus de fin de cycle 3 selon Éduscol.',
  'L''erreur classique est d''ajouter un « s » au pronom « leur » devant le verbe en pensant qu''il renvoie à plusieurs personnes. Or, « leur » pronom personnel est toujours invariable.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — vrai_faux — Homophones quand/quant/qu'en
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_homophones_grammaticaux',
  'Les homophones grammaticaux',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Quant à moi, je ne sais qu''en penser », « quant » s''écrit avec un « t » parce qu''il est toujours suivi de « à », « au » ou « aux ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Quant » est une locution prépositionnelle qui s''emploie exclusivement devant « à », « au » ou « aux » et signifie « en ce qui concerne ». C''est un critère de reconnaissance fiable : si on peut dire « en ce qui concerne moi », alors c''est « quant à ». Par opposition, « quand » exprime le temps (on peut le remplacer par « lorsque ») et « qu''en » est la contraction de « que en » (on peut développer : « que … en »). Ces trois homophones constituent un piège fréquent au CRPE et sont étudiés en cycle 3.',
  'L''erreur est de confondre « quant à » avec « quand à », en oubliant que « quand » n''est jamais directement suivi de la préposition « à ».',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire — reponse_courte — Homophones tout/tous
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa0d0000-0000-0000-0000-00000000000a',
  'Francais',
  'orthographe',
  'orth_homophones_grammaticaux',
  'Les homophones grammaticaux',
  'Intermediaire',
  'reponse_courte',
  'Complétez la phrase avec « tout » ou « tous » : « Ils sont ___ venus et ___ le monde était content. »',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["tous, tout","tous,tout","tous , tout"]}'::jsonb,
  'Il faut écrire « Ils sont tous venus et tout le monde était content. » Dans « tous venus », « tous » est un pronom indéfini qui reprend « ils » (masculin pluriel) et s''accorde en genre et en nombre. Dans « tout le monde », « tout » est un déterminant indéfini singulier qui accompagne le nom « monde » (masculin singulier). La distinction repose sur l''identification de la classe grammaticale : pronom pluriel (tous/toutes) vs déterminant singulier (tout/toute). Ce point est régulièrement évalué au CRPE.',
  'L''erreur fréquente consiste à écrire « tout venus » en considérant « tout » comme un adverbe invariable. Or, devant un participe passé au masculin pluriel avec « être », « tous » est un pronom qui s''accorde.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################
-- SÉRIE 2 : orth_participe_passe_etre — L'accord du participe passé avec être et les pronominaux
-- ############################################################

-- Q1 — Facile — qcm — Règle de base PP avec être
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6020000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_participe_passe_etre',
  'L''accord du participe passé avec être et les pronominaux',
  'Facile',
  'qcm',
  'Quelle est la règle d''accord du participe passé employé avec l''auxiliaire être ?',
  NULL,
  '[{"id":"a","label":"Il s''accorde avec le sujet en genre et en nombre"},{"id":"b","label":"Il s''accorde avec le complément d''objet direct"},{"id":"c","label":"Il reste toujours invariable"},{"id":"d","label":"Il s''accorde avec le complément d''objet indirect"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le participe passé employé avec l''auxiliaire être s''accorde en genre et en nombre avec le sujet du verbe. Par exemple : « Les filles sont parties » (féminin pluriel), « Le chat est tombé » (masculin singulier). C''est la règle de base, enseignée dès le cycle 3 selon les programmes Éduscol. Elle s''oppose à la règle du participe passé avec avoir, qui nécessite de chercher le COD antéposé. Cette distinction auxiliaire être / auxiliaire avoir est structurante pour tout l''enseignement de l''orthographe grammaticale.',
  'L''erreur classique est de confondre avec la règle de l''auxiliaire avoir et de chercher un COD au lieu de simplement accorder avec le sujet.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — vrai_faux — PP avec être et sujet féminin pluriel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6020000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_participe_passe_etre',
  'L''accord du participe passé avec être et les pronominaux',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Les élèves sont arrivées en retard », le participe passé est correctement accordé si l''on parle exclusivement de filles.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le participe passé « arrivées » est employé avec l''auxiliaire être et s''accorde donc avec le sujet « les élèves ». Si ce groupe désigne exclusivement des filles, l''accord se fait au féminin pluriel, d''où la marque « -ées ». En revanche, si le groupe comprenait au moins un garçon, l''accord se ferait au masculin pluriel : « arrivés ». Cette règle d''accord avec le sujet est un attendu fondamental de fin de cycle 3 dans les programmes Éduscol 2021.',
  'L''erreur serait de laisser le participe au masculin pluriel « arrivés » en oubliant d''identifier le genre du sujet. Au CRPE, il faut toujours vérifier la composition du groupe nominal sujet.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — reponse_courte — Accorder un PP avec être
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6020000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_participe_passe_etre',
  'L''accord du participe passé avec être et les pronominaux',
  'Facile',
  'reponse_courte',
  'Accordez le participe passé : « Les deux sœurs sont (partir) très tôt ce matin. » Écrivez uniquement la forme correcte du participe passé.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["parties"]}'::jsonb,
  'Il faut écrire « parties ». Le participe passé du verbe « partir » est « parti ». Employé avec l''auxiliaire être, il s''accorde avec le sujet « les deux sœurs », qui est féminin pluriel. On ajoute donc la marque du féminin « -e » et la marque du pluriel « -s » : « parties ». La chaîne d''accord sujet → auxiliaire être → participe passé est la procédure à enseigner aux élèves de cycle 3 selon les repères Éduscol.',
  'Oublier le « e » du féminin est fréquent : « partis » au lieu de « parties ». Il faut toujours identifier le genre du sujet avant d''accorder.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — PP pronominal réfléchi avec COD antéposé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6020000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_participe_passe_etre',
  'L''accord du participe passé avec être et les pronominaux',
  'Intermediaire',
  'qcm',
  'Quelle forme est correcte ? « Elle s''est … les mains. »',
  NULL,
  '[{"id":"a","label":"lavée"},{"id":"b","label":"lavé"},{"id":"c","label":"lavées"},{"id":"d","label":"lavés"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La forme correcte est « Elle s''est lavé les mains. » Ici, le verbe pronominal « se laver » a un COD postposé : « les mains ». Le pronom « se » est COI (elle a lavé les mains à elle-même). Lorsque le COD est placé après le participe passé d''un verbe pronominal, il n''y a pas d''accord. C''est la même logique que pour l''auxiliaire avoir : on accorde avec le COD seulement s''il est antéposé. Comparer : « Les mains qu''elle s''est lavées » (COD « que » antéposé → accord). Ce cas est un classique du CRPE.',
  'L''erreur consiste à accorder systématiquement avec le sujet « elle » en écrivant « lavée ». Il faut analyser si « se » est COD ou COI en cherchant un autre COD dans la phrase.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — qcm — PP pronominal essentiellement pronominal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6020000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_participe_passe_etre',
  'L''accord du participe passé avec être et les pronominaux',
  'Intermediaire',
  'qcm',
  'Quelle est la règle d''accord du participe passé des verbes essentiellement pronominaux comme « s''enfuir », « s''évanouir » ou « se souvenir » ?',
  NULL,
  '[{"id":"a","label":"Le PP s''accorde toujours avec le sujet"},{"id":"b","label":"Le PP reste toujours invariable"},{"id":"c","label":"Le PP s''accorde avec le COD s''il est antéposé"},{"id":"d","label":"Le PP s''accorde avec le COI"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le participe passé des verbes essentiellement pronominaux (qui n''existent pas sans le pronom réfléchi ou qui changent de sens) s''accorde toujours avec le sujet. On écrit : « Elles se sont enfuies », « Elle s''est évanouie », « Ils se sont souvenus ». Ces verbes n''ayant pas de forme non pronominale (on ne dit pas *« enfuir quelqu''un »), le pronom « se » ne peut pas être analysé comme COD ou COI. L''accord se fait donc directement avec le sujet, comme pour un participe passé conjugué avec être. Ce point est explicitement traité dans les ressources Éduscol pour le cycle 3.',
  'Le piège est d''appliquer la règle des verbes pronominaux réfléchis (chercher le COD) aux verbes essentiellement pronominaux. Pour ces derniers, l''accord avec le sujet est systématique.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — vrai_faux — PP pronominal à sens passif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6020000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_participe_passe_etre',
  'L''accord du participe passé avec être et les pronominaux',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Ces livres se sont bien vendus », le participe passé « vendus » s''accorde avec le sujet car il s''agit d''un verbe pronominal à sens passif.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Se vendre » est ici un verbe pronominal à sens passif : « Ces livres se sont bien vendus » équivaut à « Ces livres ont été bien vendus ». Le participe passé des verbes pronominaux à sens passif s''accorde avec le sujet, comme s''il était conjugué avec l''auxiliaire être dans une construction passive classique. Le sujet « ces livres » est masculin pluriel, d''où « vendus ». Les grammaires de référence utilisées au CRPE (Riegel, Pellat, Rioul) classent ce cas parmi les accords systématiques avec le sujet.',
  'L''erreur serait de chercher un COD antéposé comme pour un verbe pronominal réfléchi. Pour les pronominaux à sens passif, l''accord avec le sujet est automatique.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — reponse_courte — PP de « se plaire » invariable
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6020000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_participe_passe_etre',
  'L''accord du participe passé avec être et les pronominaux',
  'Difficile',
  'reponse_courte',
  'Accordez le participe passé : « Elles se sont (plaire) à imaginer cette histoire. » Écrivez uniquement la forme correcte du participe passé.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["plu"]}'::jsonb,
  'Il faut écrire « plu », invariable. Le verbe « se plaire » fait partie des verbes pronominaux dont le participe passé est toujours invariable, comme « se complaire », « se rire » et « se succéder ». La raison est que dans « se plaire », le pronom « se » est COI (on plaît à quelqu''un, jamais *on plaît quelqu''un). Puisqu''il n''y a jamais de COD antéposé, le participe passé ne peut pas s''accorder. On écrit donc : « Elles se sont plu », sans marque de féminin ni de pluriel. C''est un cas fréquemment évalué au CRPE.',
  'L''erreur très fréquente est d''écrire « plues » en accordant avec le sujet. Il faut se rappeler que « plaire » est un verbe à construction indirecte (plaire à), donc « se » est COI et bloque l''accord.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — qcm — PP pronominal réciproque avec COD antéposé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6020000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_participe_passe_etre',
  'L''accord du participe passé avec être et les pronominaux',
  'Difficile',
  'qcm',
  'Quelle phrase est correctement orthographiée ?',
  NULL,
  '[{"id":"a","label":"Les lettres qu''ils se sont écrites étaient émouvantes."},{"id":"b","label":"Les lettres qu''ils se sont écrit étaient émouvantes."},{"id":"c","label":"Les lettres qu''ils se sont écrits étaient émouvantes."},{"id":"d","label":"Les lettres qu''ils se sont écrite étaient émouvantes."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La phrase correcte est : « Les lettres qu''ils se sont écrites étaient émouvantes. » Ici, « s''écrire » est un verbe pronominal réciproque. Le pronom « se » est COI (on écrit à quelqu''un). Cependant, le pronom relatif « que » (reprenant « les lettres », féminin pluriel) est COD antéposé du participe passé. On applique donc la règle d''accord du COD antéposé : « écrites » s''accorde avec « que » mis pour « les lettres ». Comparer : « Ils se sont écrit des lettres » (COD « des lettres » postposé → pas d''accord).',
  'Le piège est de croire que « se » bloque l''accord. Or, « se » est COI ici (écrire à), et c''est « que » (COD antéposé) qui déclenche l''accord. Il faut toujours chercher s''il y a un COD antéposé distinct de « se ».',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — vrai_faux — PP de « se succéder » invariable
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6020000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_participe_passe_etre',
  'L''accord du participe passé avec être et les pronominaux',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? La phrase « Les reines qui se sont succédées sur le trône » est correctement orthographiée.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Il faut écrire « succédé » sans accord. Le verbe « succéder » est un verbe à construction indirecte : on succède à quelqu''un (et non *on succède quelqu''un). Dans « se sont succédé », le pronom « se » est donc COI. Comme il n''y a aucun COD (ni antéposé ni postposé), le participe passé reste invariable. Il en va de même pour « se plaire », « se complaire », « se rire », « se nuire », « se sourire », « se mentir ». Ces verbes forment une liste que les candidats au CRPE doivent mémoriser.',
  'L''erreur est très répandue, même dans les médias. On accorde à tort « succédées » en pensant que le PP des verbes pronominaux s''accorde toujours avec le sujet. Il faut vérifier si « se » est COD ou COI.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire — reponse_courte — PP pronominal réfléchi accord avec sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'c6020000-0000-0000-0000-00000000000a',
  'Francais',
  'orthographe',
  'orth_participe_passe_etre',
  'L''accord du participe passé avec être et les pronominaux',
  'Intermediaire',
  'reponse_courte',
  'Accordez le participe passé : « Les enfants se sont (regarder) dans le miroir. » Écrivez uniquement la forme correcte du participe passé.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["regardés"]}'::jsonb,
  'Il faut écrire « regardés ». Le verbe « se regarder » est un verbe pronominal réfléchi. Le pronom « se » est COD (ils ont regardé eux-mêmes). Comme le COD « se » est placé avant le participe passé, l''accord se fait avec ce COD qui renvoie au sujet « les enfants » (masculin pluriel). La procédure est : 1) identifier la construction du verbe (regarder quelqu''un = COD), 2) en déduire que « se » est COD, 3) constater qu''il est antéposé, 4) accorder avec lui. Cette analyse est au cœur des épreuves du CRPE.',
  'L''erreur serait de laisser le participe invariable en pensant que les verbes pronominaux ne s''accordent jamais. Il faut analyser la fonction de « se » : s''il est COD antéposé, l''accord est obligatoire.',
  'valide',
  'CRPE Français — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
