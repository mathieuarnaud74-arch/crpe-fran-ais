-- Migration: série orth_accents_trema (10 questions)
-- Accents et tréma — règles et exceptions — Orthographe CRPE
-- UUID prefix: a0610000
-- Types : qcm, vrai_faux, reponse_courte, tri_categories
-- Niveaux : 3 Facile + 4 Intermediaire + 3 Difficile
-- Access : 5 free + 5 premium

-- ============================================================================
-- Q1 — Facile — QCM — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0610000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orth_accents_trema',
  'Accents et tréma — règles et exceptions',
  'Facile',
  'qcm',
  'Pourquoi le mot « règle » prend-il un accent grave (è) et non un accent aigu (é) ?',
  NULL,
  '[{"id":"a","label":"Parce que le mot vient du latin « regula »"},{"id":"b","label":"Parce que le e est suivi d''une syllabe contenant un e muet"},{"id":"c","label":"Parce que le e est placé devant deux consonnes"},{"id":"d","label":"Parce que c''est une exception sans explication"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'En français, le e se prononce [ɛ] (ouvert) devant une syllabe contenant un e muet (ou « e caduc »). Dans « règle » [ʁɛgl(ə)], la syllabe finale contient un e muet, ce qui impose l''accent grave. C''est la même règle qui explique « mère » (mè-re), « père » (pè-re), « fièvre » (fiè-vre), « pièce » (piè-ce). À l''inverse, l''accent aigu note un [e] fermé dans une syllabe qui n''est PAS suivie d''une syllabe muette : « été » (é-té), « café » (ca-fé).',
  'Mettre un accent aigu (é) devant une syllabe muette. C''est l''erreur la plus fréquente au CRPE : écrire *« régle » au lieu de « règle », *« pére » au lieu de « père ». La règle est simple : è devant syllabe muette, é ailleurs.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q2 — Facile — Vrai/Faux — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0610000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orth_accents_trema',
  'Accents et tréma — règles et exceptions',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : l''accent grave sur le « a » dans « à » (préposition) a un rôle distinctif qui permet de le différencier de « a » (verbe avoir).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. L''accent grave sur « à » est purement distinctif (ou diacritique) : il ne modifie pas la prononciation du mot, mais permet de distinguer à l''écrit la préposition « à » du verbe « a » (3e personne du singulier du verbe avoir au présent). Le même rôle distinctif s''observe pour « là » (adverbe de lieu) vs « la » (article/pronom), « où » (pronom/adverbe relatif) vs « ou » (conjonction de coordination). Ces accents diacritiques sont des conventions orthographiques essentielles à maîtriser pour le CRPE.',
  'Croire que l''accent grave change la prononciation de « à ». En français, « a » et « à » se prononcent exactement de la même façon : l''accent est uniquement un signe distinctif à l''écrit.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q3 — Facile — QCM — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0610000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orth_accents_trema',
  'Accents et tréma — règles et exceptions',
  'Facile',
  'qcm',
  'Dans quel mot le tréma indique-t-il que deux voyelles consécutives doivent être prononcées séparément ?',
  NULL,
  '[{"id":"a","label":"Maïs"},{"id":"b","label":"Mais"},{"id":"c","label":"Main"},{"id":"d","label":"Mai"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le tréma dans « maïs » indique que le a et le i se prononcent séparément : [ma-is] en deux syllabes, et non *[mɛ] comme dans « mais ». C''est le rôle fondamental du tréma : signaler la diérèse, c''est-à-dire la prononciation distincte de deux voyelles adjacentes qui formeraient autrement un seul son. Autres exemples : « Noël » [no-ɛl] (et non *[nœl]), « naïf » [na-if] (et non *[nɛf]), « Israël » [is-ʁa-ɛl].',
  'Confondre « maïs » (deux syllabes, avec tréma) et « mais » (une syllabe, sans tréma). Le tréma est le signe qui empêche la fusion des deux voyelles en un seul son.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — Intermediaire — tri_categories — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0610000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orth_accents_trema',
  'Accents et tréma — règles et exceptions',
  'Intermediaire',
  'tri_categories',
  'Classez chaque mot selon le type d''accent ou de signe diacritique qu''il porte.',
  NULL,
  NULL,
  '{"mode":"categories","categories":["Accent aigu (é)","Accent grave (è, à, ù)","Accent circonflexe (ê, â, ô…)","Tréma (ë, ï, ü)"],"items":[{"text":"Été","category":"Accent aigu (é)"},{"text":"Mère","category":"Accent grave (è, à, ù)"},{"text":"Forêt","category":"Accent circonflexe (ê, â, ô…)"},{"text":"Naïf","category":"Tréma (ë, ï, ü)"},{"text":"Où","category":"Accent grave (è, à, ù)"},{"text":"Hôpital","category":"Accent circonflexe (ê, â, ô…)"},{"text":"Noël","category":"Tréma (ë, ï, ü)"},{"text":"Café","category":"Accent aigu (é)"}]}'::jsonb,
  'Les quatre signes diacritiques du français ont des fonctions distinctes. L''accent aigu (é) note le [e] fermé : « été », « café ». L''accent grave note le [ɛ] ouvert sur le e (« mère ») et joue un rôle distinctif sur a et u (« à », « où »). L''accent circonflexe a souvent une origine étymologique, trace d''un ancien s disparu : « forêt » (cf. forestier), « hôpital » (cf. hospitalier). Le tréma signale la diérèse : « naïf » [na-if], « Noël » [no-ɛl].',
  'Confondre accent grave et accent circonflexe sur le e. Le è note un son ouvert [ɛ] devant syllabe muette ; le ê a généralement une origine historique (ancien s) ou un rôle distinctif.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — Intermediaire — QCM — premium
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0610000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orth_accents_trema',
  'Accents et tréma — règles et exceptions',
  'Intermediaire',
  'qcm',
  'Pourquoi le mot « examen » ne prend-il jamais d''accent aigu sur le premier e, bien qu''il se prononce [ɛgzamɛ̃] ?',
  NULL,
  '[{"id":"a","label":"Parce que le mot est d''origine latine"},{"id":"b","label":"Parce que le e est placé devant un x, position où l''on ne met jamais d''accent"},{"id":"c","label":"Parce que le e est en début de mot"},{"id":"d","label":"Parce que le mot comporte déjà un accent sur une autre syllabe"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'En français, on ne met jamais d''accent sur un e placé devant la lettre x. Cette règle s''applique sans exception : « examen », « exercice », « exil », « exiger », « exemple », « exécuter ». Le x note à lui seul deux consonnes ([gz] ou [ks]), ce qui rend l''accent superflu du point de vue phonologique. C''est une règle absolue de l''orthographe française : e + x = jamais d''accent, quelle que soit la prononciation effective du e.',
  'Vouloir écrire *« éxamen » ou *« éxercice » par analogie avec d''autres mots commençant par é-. La règle est catégorique : pas d''accent devant x.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — Intermediaire — Réponse courte — premium
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0610000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orth_accents_trema',
  'Accents et tréma — règles et exceptions',
  'Intermediaire',
  'reponse_courte',
  'L''accent circonflexe de « forêt » est la trace d''une lettre disparue au cours de l''histoire de la langue. Quelle est cette lettre ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["s","S","un s","le s"]}'::jsonb,
  'L''accent circonflexe de « forêt » est la trace de l''ancien s qui figurait dans la graphie médiévale « forest ». On retrouve ce s dans le dérivé savant « forestier ». C''est un phénomène très régulier en français : « hôpital » ← hospital (cf. hospitalier), « fête » ← feste (cf. festif), « île » ← isle (cf. insulaire), « côte » ← coste (cf. costal), « pâte » ← paste (cf. pasteur). L''accent circonflexe joue ici un rôle étymologique : il conserve la mémoire d''un s amuï (devenu muet puis disparu) entre le Moyen Âge et l''époque moderne.',
  'Ignorer le lien étymologique entre le circonflexe et le s disparu. Au CRPE, il est essentiel de pouvoir expliquer l''origine historique de l''accent circonflexe et de citer les doublets modernes (forêt/forestier, fête/festif, etc.).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — Intermediaire — Vrai/Faux — premium
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0610000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orth_accents_trema',
  'Accents et tréma — règles et exceptions',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : dans les rectifications orthographiques de 1990, le tréma de « aiguë » a été supprimé pour simplifier l''écriture.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Le tréma n''a pas été supprimé : il a été déplacé sur la voyelle qui est réellement prononcée. La graphie rectifiée est « aigüe » (tréma sur le u) et non *« aigue » (sans tréma). Dans la graphie traditionnelle « aiguë », le tréma était placé sur le e muet, ce qui était phonologiquement illogique puisque c''est le u qui porte la distinction de prononciation [gy] vs [g]. Les rectifications de 1990 ont corrigé cette incohérence : « ambiguë » → « ambigüe », « exiguë » → « exigüe », « contiguë » → « contigüe ».',
  'Croire que les rectifications de 1990 suppriment le tréma. Elles le déplacent sur la voyelle prononcée (le u), ce qui est plus logique d''un point de vue phonologique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q8 — Difficile — QCM — premium
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0610000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orth_accents_trema',
  'Accents et tréma — règles et exceptions',
  'Difficile',
  'qcm',
  'Un candidat au CRPE hésite entre « dû » et « du », « mûr » et « mur », « sûr » et « sur ». Quel est le point commun de ces paires de mots ?',
  NULL,
  '[{"id":"a","label":"L''accent circonflexe signale un ancien s disparu dans les trois cas"},{"id":"b","label":"L''accent circonflexe a un rôle distinctif (diacritique) : il distingue deux homophones de sens différent"},{"id":"c","label":"L''accent circonflexe modifie la prononciation de la voyelle dans les trois cas"},{"id":"d","label":"L''accent circonflexe est facultatif depuis les rectifications de 1990 dans les trois cas"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans ces trois paires, l''accent circonflexe joue un rôle distinctif (ou diacritique) : il permet de différencier deux homophones. « Dû » (participe passé de devoir) ≠ « du » (article contracté). « Mûr » (adjectif, = arrivé à maturité) ≠ « mur » (nom, = paroi). « Sûr » (adjectif, = certain) ≠ « sur » (préposition). Ces accents ne sont PAS d''origine étymologique (pas de s disparu) et ne sont PAS supprimables par les rectifications de 1990, précisément parce qu''ils distinguent des homophones. On y ajoute « jeûne/jeune » et « crû/cru » pour compléter la liste des cinq exceptions majeures.',
  'Confondre le rôle distinctif du circonflexe (dû/du) avec son rôle étymologique (forêt ← forest). Au CRPE, il faut bien distinguer ces deux fonctions et savoir que seul le rôle distinctif empêche la suppression par les rectifications de 1990.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q9 — Difficile — Réponse courte — free (rééquilibrage 5 free)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0610000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orth_accents_trema',
  'Accents et tréma — règles et exceptions',
  'Difficile',
  'reponse_courte',
  'Complétez avec l''accent correct : « Il esp_re que la f_te sera r_ussie. » Écrivez les trois mots correctement accentués, séparés par des virgules.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["espère, fête, réussie","espère,fête,réussie","espère , fête , réussie"]}'::jsonb,
  'Les trois mots sont : « espère » (accent grave), « fête » (accent circonflexe), « réussie » (accent aigu). « Espère » prend un accent grave car le e est suivi d''une syllabe contenant un e muet (es-pè-re) — c''est la règle fondamentale è devant syllabe muette. « Fête » prend un accent circonflexe, trace de l''ancien s (cf. festif, festival). « Réussie » prend un accent aigu car le é n''est pas suivi d''une syllabe muette (ré-u-ssie) et n''est pas devant un x. Ces trois mots illustrent les trois accents principaux du français dans un même contexte.',
  'Écrire *« espére » (accent aigu au lieu de grave) est l''erreur la plus classique. Le e devant une syllabe muette prend TOUJOURS un accent grave, jamais un accent aigu.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q10 — Difficile — tri_categories — premium (rééquilibrage 5 premium, renfort tri)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0610000-0000-0000-0000-00000000000a',
  'Francais',
  'orthographe',
  'orth_accents_trema',
  'Accents et tréma — règles et exceptions',
  'Difficile',
  'tri_categories',
  'Classez chaque mot selon la fonction de son accent circonflexe : trace étymologique d''un ancien « s » disparu, rôle distinctif entre homophones, ou autre origine historique.',
  NULL,
  NULL,
  '{"mode":"categories","categories":["Trace d''un ancien s disparu","Rôle distinctif (homophones)","Autre origine historique"],"items":[{"text":"Forêt (cf. forestier)","category":"Trace d''un ancien s disparu"},{"text":"Dû (≠ du)","category":"Rôle distinctif (homophones)"},{"text":"Hôpital (cf. hospitalier)","category":"Trace d''un ancien s disparu"},{"text":"Sûr (≠ sur)","category":"Rôle distinctif (homophones)"},{"text":"Fête (cf. festif)","category":"Trace d''un ancien s disparu"},{"text":"Âge (cf. ancien « aage »)","category":"Autre origine historique"},{"text":"Jeûne (≠ jeune)","category":"Rôle distinctif (homophones)"},{"text":"Théâtre (cf. ancien « theatre »)","category":"Autre origine historique"}]}'::jsonb,
  'L''accent circonflexe remplit trois fonctions principales. 1) Trace étymologique d''un s disparu : « forêt » (← forest, cf. forestier), « hôpital » (← hospital, cf. hospitalier), « fête » (← feste, cf. festif). 2) Rôle distinctif entre homophones : « dû » ≠ « du », « sûr » ≠ « sur », « jeûne » ≠ « jeune » — ces accents sont maintenus par les rectifications de 1990. 3) Autre origine historique : « âge » provient de l''ancien français « aage » (contraction), « théâtre » vient du latin « theatrum » via une graphie intermédiaire. Au CRPE, distinguer ces trois fonctions est fondamental pour analyser l''orthographe française.',
  'Croire que tous les accents circonflexes sont des traces d''un s disparu. C''est le cas le plus fréquent, mais le circonflexe peut aussi distinguer des homophones ou refléter d''autres évolutions historiques (contraction de voyelles, influence du latin, etc.).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
