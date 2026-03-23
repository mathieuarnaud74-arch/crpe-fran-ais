-- ============================================================
-- Migration : 2 séries Orthographe (20 exercices)
-- UUID prefix : d201–d202
-- ============================================================

-- ############################################################
-- SÉRIE 1 : orth_accent_grave_aigu — Accent aigu ou accent grave : les règles
-- ############################################################

-- Q1 — Les deux graphies événement/évènement
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20a0000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_accent_grave_aigu',
  'Accent aigu ou accent grave : les règles',
  'Intermediaire',
  'qcm',
  'Quelle est la graphie correcte ?',
  NULL,
  '[{"id":"a","label":"un évènement"},{"id":"b","label":"un événement"},{"id":"c","label":"Les deux graphies sont acceptées"},{"id":"d","label":"Aucune des deux"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Depuis les rectifications orthographiques de 1990, les deux graphies « événement » et « évènement » sont acceptées. La forme traditionnelle porte un accent aigu sur le deuxième e, tandis que la forme rectifiée porte un accent grave, conforme à la prononciation réelle [ɛ]. Au CRPE, les deux orthographes sont admises.',
  'Croire qu''une seule forme est correcte et sanctionner l''autre.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Règle de la syllabe ouverte/fermée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20a0000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_accent_grave_aigu',
  'Accent aigu ou accent grave : les règles',
  'Intermediaire',
  'qcm',
  'Dans le mot « mèche », pourquoi le e porte-t-il un accent grave ?',
  NULL,
  '[{"id":"a","label":"Parce que le e est en début de mot"},{"id":"b","label":"Parce que le e est suivi d''une consonne + e muet (syllabe fermée devant syllabe muette)"},{"id":"c","label":"Parce que le mot vient du latin"},{"id":"d","label":"Parce que le e est en position finale"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « mèche » (mè-che), le e se trouve dans une syllabe fermée par la consonne « ch », suivie d''un e muet final. La règle générale est : devant une syllabe contenant un e muet, le e porte un accent grave (è), car il se prononce [ɛ] ouvert. On retrouve ce schéma dans « règle », « lèvre », « fièvre », « pièce ».',
  'Confondre syllabe ouverte (qui se termine par une voyelle) et syllabe fermée (qui se termine par une consonne).',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Accent aigu en syllabe ouverte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20a0000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_accent_grave_aigu',
  'Accent aigu ou accent grave : les règles',
  'Intermediaire',
  'qcm',
  'Quel mot illustre la règle : « Le e porte un accent aigu (é) lorsqu''il termine une syllabe ouverte et se prononce [e] fermé » ?',
  NULL,
  '[{"id":"a","label":"fièvre"},{"id":"b","label":"mètre"},{"id":"c","label":"médecin"},{"id":"d","label":"problème"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans « médecin » (mé-de-cin), la première syllabe « mé » est ouverte : elle se termine par la voyelle é, sans consonne qui la ferme. Le e se prononce [e] fermé et porte donc un accent aigu. À l''inverse, dans « mètre », « fièvre » et « problème », le e accentué se trouve devant une consonne suivie d''un e muet, ce qui entraîne un accent grave.',
  'Oublier que la notion de syllabe ouverte/fermée détermine le choix de l''accent, et se fier uniquement à l''oreille.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Préfixe dé-
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20a0000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_accent_grave_aigu',
  'Accent aigu ou accent grave : les règles',
  'Intermediaire',
  'qcm',
  'Quel accent porte le e du préfixe dans les mots « défaire », « déplacer », « démontrer » ?',
  NULL,
  '[{"id":"a","label":"Accent grave (è) car le préfixe se prononce [ɛ]"},{"id":"b","label":"Accent aigu (é) car le préfixe dé- est en syllabe ouverte"},{"id":"c","label":"Pas d''accent car le e est suivi d''une consonne"},{"id":"d","label":"Cela dépend du mot qui suit le préfixe"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le préfixe « dé- » porte toujours un accent aigu car la syllabe « dé » est ouverte : elle se termine par la voyelle, sans consonne qui la ferme. Le e se prononce [e] fermé. On retrouve cette régularité dans « dé-faire », « dé-placer », « dé-montrer », « dé-cider ». C''est un repère morphologique fiable pour les élèves.',
  'Écrire « dè- » par analogie avec des mots comme « dès » (préposition), qui est un mot différent du préfixe verbal.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Préfixe pré-
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20a0000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_accent_grave_aigu',
  'Accent aigu ou accent grave : les règles',
  'Intermediaire',
  'qcm',
  'Complétez : « Le préfixe pré- porte un accent … parce que la syllabe est … »',
  NULL,
  '[{"id":"a","label":"grave / fermée"},{"id":"b","label":"aigu / ouverte"},{"id":"c","label":"grave / ouverte"},{"id":"d","label":"aigu / fermée"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le préfixe « pré- » porte un accent aigu (é) car la syllabe « pré » est ouverte : elle finit par une voyelle, sans consonne finale. Le e se prononce [e] fermé. On le retrouve dans « pré-voir », « pré-parer », « pré-cis ». Comme pour « dé- », c''est un marqueur morphologique régulier que les élèves de cycle 3 peuvent mémoriser comme repère.',
  'Confondre « pré- » (préfixe, accent aigu) avec « près » (adverbe, accent grave) qui sont des mots de nature différente.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Accent grave devant e muet final
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20a0000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_accent_grave_aigu',
  'Accent aigu ou accent grave : les règles',
  'Intermediaire',
  'qcm',
  'Parmi ces mots, lequel ne suit PAS la règle « è devant syllabe contenant un e muet » ?',
  NULL,
  '[{"id":"a","label":"fièvre"},{"id":"b","label":"lèvre"},{"id":"c","label":"éléphant"},{"id":"d","label":"règle"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Éléphant » ne suit pas cette règle car aucune de ses syllabes ne contient un e muet final : é-lé-phant. Les deux e portent un accent aigu car ils sont en syllabe ouverte (é et lé se terminent par une voyelle). En revanche, « fièvre », « lèvre » et « règle » ont un è devant une consonne suivie d''un e muet.',
  'Ne pas analyser la structure syllabique et appliquer la règle « è devant e muet » de façon mécanique sans vérifier la présence réelle du e muet.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Cas du e devant consonne double
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20a0000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_accent_grave_aigu',
  'Accent aigu ou accent grave : les règles',
  'Intermediaire',
  'qcm',
  'Pourquoi le e de « belle », « terre », « presse » ne porte-t-il pas d''accent ?',
  NULL,
  '[{"id":"a","label":"Parce que ces mots sont trop courts"},{"id":"b","label":"Parce que la consonne double qui suit le e suffit à indiquer la prononciation [ɛ]"},{"id":"c","label":"Parce que ce sont des exceptions"},{"id":"d","label":"Parce que le e est en syllabe ouverte"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'En français, un e suivi d''une consonne double (ll, rr, ss, tt, etc.) se prononce [ɛ] ouvert sans avoir besoin d''accent. La consonne double ferme la syllabe et signale automatiquement cette prononciation. C''est pourquoi on écrit « belle » et non « bèlle », « terre » et non « tèrre ». Cette régularité grapho-phonologique est un point clé de l''enseignement de l''orthographe au cycle 3.',
  'Ajouter un accent grave devant une consonne double, ce qui constitue une erreur orthographique (« *bèlle »).',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Le e devant x
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20a0000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_accent_grave_aigu',
  'Accent aigu ou accent grave : les règles',
  'Intermediaire',
  'qcm',
  'Quelle affirmation est correcte concernant le e devant la lettre x ?',
  NULL,
  '[{"id":"a","label":"Le e devant x porte toujours un accent aigu"},{"id":"b","label":"Le e devant x porte toujours un accent grave"},{"id":"c","label":"Le e devant x ne porte jamais d''accent car x équivaut à deux consonnes [ks] ou [gz]"},{"id":"d","label":"Le e devant x suit les mêmes règles que devant les autres consonnes"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La lettre x représente phonétiquement deux consonnes : [ks] (dans « texte ») ou [gz] (dans « examen »). Comme pour les consonnes doubles, le e précédant x se trouve en syllabe fermée et se prononce [ɛ] sans nécessiter d''accent. On écrit donc « examen », « exercice », « texte » sans accent sur le e. C''est une régularité graphophonologique importante pour le CRPE.',
  'Vouloir accentuer le e devant x par analogie avec d''autres positions (écrire « *éxamen » par exemple).',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Alternance é/è dans la conjugaison
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20a0000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_accent_grave_aigu',
  'Accent aigu ou accent grave : les règles',
  'Intermediaire',
  'qcm',
  'Le verbe « espérer » donne « j''espère » au présent. Quelle règle explique l''alternance é/è ?',
  NULL,
  '[{"id":"a","label":"C''est une irrégularité propre à ce verbe"},{"id":"b","label":"Le é de l''infinitif devient è devant une syllabe muette (e muet de la désinence)"},{"id":"c","label":"Le è apparaît uniquement au singulier"},{"id":"d","label":"L''accent change selon le registre de langue"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « j''espère », la syllabe « -père » est suivie d''un e muet (désinence du présent). Conformément à la règle, le e porte un accent grave devant une syllabe contenant un e muet. À l''infinitif « espérer », le e est en syllabe ouverte devant « -rer » (prononcé [Re]), d''où l''accent aigu. Cette alternance é/è est régulière pour tous les verbes en -é_er : « répéter/je répète », « céder/je cède », « régler/je règle ».',
  'Garder l''accent aigu à toutes les formes conjuguées (écrire « *j''espére ») en oubliant l''alternance devant syllabe muette.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Synthèse : identifier les erreurs d'accentuation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd20a0000-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'orth_accent_grave_aigu',
  'Accent aigu ou accent grave : les règles',
  'Intermediaire',
  'qcm',
  'Parmi ces quatre graphies, laquelle est INCORRECTE ?',
  NULL,
  '[{"id":"a","label":"une bibliothèque"},{"id":"b","label":"la sécheresse"},{"id":"c","label":"un évenement"},{"id":"d","label":"il protège"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Un évenement » est incorrect : il manque un accent sur le deuxième e. On écrit « un événement » (graphie traditionnelle) ou « un évènement » (graphie rectifiée 1990), mais jamais sans accent sur le deuxième e. Les autres graphies sont correctes : « bibliothèque » (è devant syllabe avec e muet), « sécheresse » (é en syllabe ouverte + e devant consonne double sans accent), « il protège » (è devant e muet de la désinence).',
  'Ne pas repérer l''absence d''accent, surtout quand le premier e du mot porte déjà un accent aigu, ce qui donne une fausse impression de complétude.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;


-- ############################################################
-- SÉRIE 2 : orth_doubles_consonnes — Les consonnes doubles
-- ############################################################

-- Q1 — Préfixe ap- vs app-
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa120000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_doubles_consonnes',
  'Les consonnes doubles',
  'Intermediaire',
  'reponse_courte',
  'Écrivez correctement le verbe signifiant « rendre propre à un usage » (famille de « application ») à l''infinitif.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["appliquer"]}'::jsonb,
  'On écrit « appliquer » avec deux p. La majorité des verbes commençant par « app- » doublent le p : appeler, apporter, apprendre, apprécier, appartenir, applaudir, appliquer. C''est le cas le plus fréquent en français. Les exceptions avec un seul p sont rares : apaiser, apercevoir, apitoyer, aplanir, aplatir.',
  'Écrire « *apliquer » avec un seul p, par méconnaissance de la régularité du doublement après le préfixe ad- assimilé en ap-.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Préfixe ac- vs acc-
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa120000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_doubles_consonnes',
  'Les consonnes doubles',
  'Intermediaire',
  'reponse_courte',
  'Écrivez correctement le verbe signifiant « recevoir favorablement, aller chercher quelqu''un ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["accueillir"]}'::jsonb,
  'On écrit « accueillir » avec deux c. Le préfixe latin ad- s''est assimilé en ac- devant un c, doublant la consonne. La plupart des mots commençant par « ac- » suivis d''une consonne doublent le c : accueillir, accompagner, accorder, accumuler, accuser. Les exceptions (acajou, académie) sont issues d''emprunts qui n''utilisent pas ce préfixe latin.',
  'Écrire « *acueillir » avec un seul c, ou oublier le « u » dans la graphie complexe -cueil-.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Préfixe af- vs aff-
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa120000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_doubles_consonnes',
  'Les consonnes doubles',
  'Intermediaire',
  'reponse_courte',
  'Écrivez correctement le verbe signifiant « rendre plus fort, consolider » (famille de « ferme »).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["affermir"]}'::jsonb,
  'On écrit « affermir » avec deux f. Comme pour ap-/app- et ac-/acc-, le préfixe latin ad- s''assimile devant f en af-, ce qui produit un doublement : affermir, affirmer, afficher, affronter, affecter. Les mots en af- avec un seul f sont très rares en français (afin, Afrique qui ne comportent pas le préfixe ad-).',
  'Écrire « *afermir » avec un seul f, ou hésiter entre un et deux f par manque de repère étymologique.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Suffixe -tion vs -ssion
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa120000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_doubles_consonnes',
  'Les consonnes doubles',
  'Intermediaire',
  'reponse_courte',
  'Écrivez correctement le nom dérivé du verbe « permettre » (nom féminin en -ion).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["permission","la permission","une permission"]}'::jsonb,
  'On écrit « permission » avec -ss- (et non -t-). Le suffixe -ssion apparaît dans les dérivés de verbes en -mettre : permettre → permission, admettre → admission, émettre → émission. La règle de dérivation est liée au radical latin -miss-. En revanche, les verbes en -er donnent généralement -tion : inviter → invitation, éditer → édition.',
  'Écrire « *permition » en appliquant par erreur le suffixe -tion au lieu de -ssion, ou oublier le doublement du s.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Suffixe -ette (doublement du t)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa120000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_doubles_consonnes',
  'Les consonnes doubles',
  'Intermediaire',
  'reponse_courte',
  'Formez le diminutif féminin de « maison » à l''aide du suffixe -ette/-onnette.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["maisonnette","une maisonnette","la maisonnette"]}'::jsonb,
  'On écrit « maisonnette » avec deux n et deux t. Le suffixe diminutif -ette double toujours le t : fillette, camionnette, maisonnette, statuette. De plus, le n du radical « maison » se double devant le suffixe pour maintenir le son [ɔn] : maison → maisonn-ette. Ce double mécanisme de doublement est un point de vigilance en orthographe lexicale.',
  'Écrire « *maisonette » (un seul n) ou « *maisonète » (un seul t), en oubliant que le suffixe -ette exige systématiquement tt.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Consonne double après voyelle nasale : -omm-
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa120000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_doubles_consonnes',
  'Les consonnes doubles',
  'Intermediaire',
  'reponse_courte',
  'Écrivez correctement le verbe signifiant « débuter, entreprendre » (il se conjugue comme « mencer »).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["commencer"]}'::jsonb,
  'On écrit « commencer » avec deux m. Les mots commençant par « com- » (préfixe latin cum-) doublent généralement le m lorsqu''il est suivi d''une autre consonne du radical : commencer, commander, commémorer, communiquer. Le doublement du m est un héritage du préfixe latin cum- assimilé devant m. Attention, ce doublement ne dénasalise pas la voyelle : on prononce bien [kɔ̃] et non [kɔm].',
  'Écrire « *comencer » avec un seul m.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Exception : apercevoir (un seul p)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa120000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_doubles_consonnes',
  'Les consonnes doubles',
  'Intermediaire',
  'reponse_courte',
  'Écrivez correctement le verbe signifiant « voir brièvement, remarquer » (attention au nombre de p !).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["apercevoir","s''apercevoir"]}'::jsonb,
  '« Apercevoir » s''écrit avec un seul p. C''est l''une des rares exceptions à la règle du doublement après le préfixe ap- (la plupart des verbes en app- doublent le p : appeler, apporter, apprendre). Le moyen mnémotechnique est : « On n''aperçoit qu''un p à apercevoir. » Les autres exceptions courantes sont : apaiser, apitoyer, aplanir, aplatir, apeurer.',
  'Écrire « *appercevoir » avec deux p, par généralisation abusive de la règle du doublement.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Suffixe -ment (pas de doublement)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa120000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_doubles_consonnes',
  'Les consonnes doubles',
  'Intermediaire',
  'reponse_courte',
  'Formez l''adverbe dérivé de l''adjectif « apparent » à l''aide du suffixe -ment.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["apparemment"]}'::jsonb,
  'On écrit « apparemment » avec deux m. La règle de formation des adverbes en -ment à partir des adjectifs en -ent est : -ent → -emment (prononcé [amɑ̃]). Ainsi : apparent → apparemment, évident → évidemment, fréquent → fréquemment. Attention à ne pas confondre avec les adjectifs en -ant qui donnent -amment : brillant → brillamment, suffisant → suffisamment.',
  'Écrire « *apparament » ou « *apparement » en oubliant que -ent produit -emment avec deux m.',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Suffixe -xion (connexion)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa120000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_doubles_consonnes',
  'Les consonnes doubles',
  'Intermediaire',
  'reponse_courte',
  'Écrivez correctement le nom signifiant « liaison, fait d''être relié » (famille de « connecter »).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["connexion","la connexion","une connexion"]}'::jsonb,
  'On écrit « connexion » avec un x (et non -ct-). Ce mot vient du latin connexio et conserve le x étymologique, contrairement à « connecter » qui utilise -ct-. Le suffixe -xion est rare en français : on le trouve dans connexion, annexion, flexion, réflexion, crucifixion. Il ne faut pas le confondre avec le suffixe -ction (correction, direction) ni avec -ssion (permission).',
  'Écrire « *connection » à l''anglaise avec -ct-, erreur très fréquente favorisée par l''influence de l''anglais et par le verbe « connecter ».',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Synthèse : doublement dans les féminins en -elle/-enne
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa120000-0000-0000-0000-000000000010',
  'Francais',
  'orthographe',
  'orth_doubles_consonnes',
  'Les consonnes doubles',
  'Intermediaire',
  'reponse_courte',
  'Écrivez la forme féminine de l''adjectif « professionnel ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["professionnelle"]}'::jsonb,
  'On écrit « professionnelle » avec deux l au féminin. Les adjectifs en -el doublent le l au féminin : naturel → naturelle, professionnel → professionnelle, exceptionnel → exceptionnelle. De même, les adjectifs en -en doublent le n : européen → européenne, ancien → ancienne. Ce doublement au féminin est une régularité morphologique majeure du français que les élèves de cycle 3 doivent maîtriser.',
  'Écrire « *professionele » avec un seul l, ou oublier l''un des deux n du radical (« *profesionelle »).',
  'valide',
  'CRPE Français V4 — Orthographe',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
