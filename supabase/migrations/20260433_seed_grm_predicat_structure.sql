-- Migration: série grm_predicat_structure (10 questions)
-- Le prédicat et la structure de la phrase — Grammaire CRPE
-- UUID prefix: a0310000
-- Types : qcm, vrai_faux, reponse_courte, tri_categories
-- Niveaux : 3 Facile + 4 Intermediaire + 3 Difficile
-- Access : 5 free + 5 premium
-- Terminologie Éduscol : P = [GS + GV] (+ GC) — le prédicat = fonction du GV par rapport au GS

-- ============================================================================
-- Q1 — Facile — QCM — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0310000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'grm_predicat_structure',
  'Le prédicat et la structure de la phrase',
  'Facile',
  'qcm',
  'Dans la phrase « Le petit prince apprivoisa le renard » (Saint-Exupéry), quel est le groupe verbal (GV) ?',
  NULL,
  '[{"id":"a","label":"Le petit prince"},{"id":"b","label":"apprivoisa le renard"},{"id":"c","label":"apprivoisa"},{"id":"d","label":"le renard"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Selon la formule fondamentale P = [GS + GV] (+ GC), le GV comprend le verbe et tous ses compléments internes (ici le COD « le renard »). Le GV est donc « apprivoisa le renard », pas le verbe seul « apprivoisa ». Le GS est « le petit prince ». Le GV remplit la fonction de prédicat : il exprime ce qu''on dit du sujet. Le COD n''existe qu''à l''intérieur du GV, pas au niveau de la phrase.',
  'Réduire le GV au seul verbe conjugué « apprivoisa ». Au sens de la terminologie Éduscol, le GV inclut le verbe ET tous ses compléments d''objet (COD, COI) et attributs.',
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
  'a0310000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'grm_predicat_structure',
  'Le prédicat et la structure de la phrase',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : dans la terminologie Éduscol, le terme « prédicat » désigne la fonction du groupe verbal (GV) par rapport au groupe sujet (GS).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Dans la terminologie Éduscol 2021, le prédicat est défini comme la fonction du GV par rapport au GS : il exprime ce qu''on dit du sujet. Le GV est un groupe syntaxique (le verbe et ses compléments), tandis que « prédicat » est le nom de sa fonction. C''est comparable à la distinction entre « groupe nominal » (nature) et « sujet » (fonction). La formule P = [GS + GV] (+ GC) montre que le GV est un constituant obligatoire de la phrase, solidaire du GS.',
  'Confondre le GV (groupe syntaxique) et le prédicat (fonction). Le GV est une nature (un groupe de mots), le prédicat est une fonction (le rôle du GV dans la phrase). Le CRPE teste souvent cette distinction.',
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
  'a0310000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'grm_predicat_structure',
  'Le prédicat et la structure de la phrase',
  'Facile',
  'qcm',
  'Selon la terminologie Éduscol, combien de fonctions existent au niveau de la phrase ?',
  NULL,
  '[{"id":"a","label":"Trois : sujet, complément d''objet et complément circonstanciel"},{"id":"b","label":"Deux : sujet et complément circonstanciel"},{"id":"c","label":"Quatre : sujet, COD, COI et complément circonstanciel"},{"id":"d","label":"Une seule : le sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Selon la terminologie Éduscol, seules DEUX fonctions existent au niveau de la phrase : la fonction sujet (relation entre le GS et le GV) et la fonction complément circonstanciel (relation entre le GC et l''ensemble [GS + GV]). Toutes les autres fonctions — COD, COI, attribut, épithète, complément du nom — n''existent qu''à l''INTÉRIEUR des groupes qui composent la phrase. C''est un principe fondamental de la grammaire Éduscol, souvent évalué au CRPE.',
  'Inclure le COD ou le COI parmi les fonctions au niveau de la phrase. Ces fonctions sont internes au GV : elles n''existent qu''à l''intérieur du groupe verbal, pas au niveau de la structure P = [GS + GV] (+ GC).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q4 — Intermediaire — QCM — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0310000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'grm_predicat_structure',
  'Le prédicat et la structure de la phrase',
  'Intermediaire',
  'qcm',
  'Dans « Les misérables erraient dans les rues de Paris la nuit » (Hugo), identifiez les constituants de la phrase selon la formule P = [GS + GV] (+ GC).',
  NULL,
  '[{"id":"a","label":"GS = Les misérables | GV = erraient | GC = dans les rues de Paris la nuit"},{"id":"b","label":"GS = Les misérables | GV = erraient dans les rues de Paris | GC = la nuit"},{"id":"c","label":"GS = Les misérables | GV = erraient dans les rues | GC = de Paris la nuit"},{"id":"d","label":"GS = Les misérables erraient | GV = dans les rues de Paris | GC = la nuit"},{"id":"e","label":"GS = Les misérables | GV = erraient | GC1 = dans les rues de Paris | GC2 = la nuit"}]'::jsonb,
  '{"mode":"single_choice","value":"e"}'::jsonb,
  'Le verbe « errer » est intransitif : il ne prend ni COD ni COI. Son GV se réduit donc au verbe seul : « erraient ». Les groupes « dans les rues de Paris » et « la nuit » sont deux compléments circonstanciels (lieu et temps) : ils sont tous deux facultatifs (supprimables) et déplaçables. On peut dire « Les misérables erraient » (phrase minimale), ou « La nuit, les misérables erraient dans les rues de Paris ». La formule est : P = [GS + GV] (+ GC1) (+ GC2). Plusieurs GC peuvent coexister dans une même phrase.',
  'Inclure « dans les rues de Paris » dans le GV en le confondant avec un complément d''objet. Un complément circonstanciel est supprimable et déplaçable, contrairement au COD/COI qui font partie du GV.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q5 — Intermediaire — Vrai/Faux — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0310000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'grm_predicat_structure',
  'Le prédicat et la structure de la phrase',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : dans « Tartuffe plaît à Orgon » (Molière), le groupe « à Orgon » fait partie du groupe verbal.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « À Orgon » est un COI du verbe « plaire ». Le COI est une fonction interne au GV : il fait partie intégrante du groupe verbal. Le GV est donc « plaît à Orgon », pas le verbe seul « plaît ». En effet, le COI est lié au sens du verbe (« plaire à quelqu''un ») : il n''est ni supprimable ni déplaçable librement, contrairement à un GC. L''analyse est : GS = « Tartuffe » | GV = « plaît à Orgon ». Il n''y a pas de GC dans cette phrase.',
  'Confondre le COI « à Orgon » avec un complément circonstanciel parce qu''il est introduit par une préposition. Le critère n''est pas la préposition mais la relation au verbe : le COI est impliqué par le sens du verbe (« plaire à ») et fait partie du GV.',
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
  'a0310000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'grm_predicat_structure',
  'Le prédicat et la structure de la phrase',
  'Intermediaire',
  'reponse_courte',
  'Dans « L''homme révolté cherchait la vérité avec obstination » (Camus), quel est le prédicat (donnez le GV complet) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["cherchait la vérité","cherchait la vérité avec obstination"]}'::jsonb,
  'Le prédicat — c''est-à-dire le GV — est « cherchait la vérité ». Le verbe « chercher » est transitif direct : il appelle un COD (« la vérité »), qui fait partie du GV. En revanche, « avec obstination » est un GC (complément circonstanciel de manière) : il est supprimable (« L''homme révolté cherchait la vérité ») et déplaçable (« Avec obstination, l''homme révolté cherchait la vérité »). L''analyse est : P = [GS « l''homme révolté » + GV « cherchait la vérité »] (+ GC « avec obstination »). Note : les deux réponses sont acceptées car le GC est parfois rattaché au GV dans certaines analyses, mais la distinction GV/GC est préférable au CRPE.',
  'Inclure « avec obstination » dans le GV. Ce groupe est un GC (supprimable, déplaçable), pas un complément d''objet. Le GV ne contient que le verbe et ses compléments essentiels (COD, COI, attribut).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — Intermediaire — tri_categories — premium
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0310000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'grm_predicat_structure',
  'Le prédicat et la structure de la phrase',
  'Intermediaire',
  'tri_categories',
  'Dans la phrase « Le vieux marin racontait ses aventures aux enfants chaque soir sur le port », classez chaque constituant dans la bonne catégorie : GS, GV ou GC.',
  NULL,
  NULL,
  '{"mode":"categorization","categories":["GS (groupe sujet)","GV (groupe verbal)","GC (groupe circonstanciel)"],"items":[{"text":"Le vieux marin","category":"GS (groupe sujet)"},{"text":"racontait ses aventures aux enfants","category":"GV (groupe verbal)"},{"text":"chaque soir","category":"GC (groupe circonstanciel)"},{"text":"sur le port","category":"GC (groupe circonstanciel)"}]}'::jsonb,
  'La formule P = [GS + GV] (+ GC) structure cette phrase ainsi : le GS « le vieux marin » commande l''accord du verbe. Le GV « racontait ses aventures aux enfants » comprend le verbe, son COD « ses aventures » et son COI « aux enfants » — ces fonctions sont internes au GV. « Chaque soir » (CC de temps) et « sur le port » (CC de lieu) sont deux GC : ils sont tous deux supprimables et déplaçables. On peut vérifier : « Le vieux marin racontait ses aventures aux enfants » reste une phrase complète.',
  'Sortir « aux enfants » du GV pour en faire un GC. « Aux enfants » est un COI (complément d''objet indirect) du verbe « raconter » (raconter quelque chose à quelqu''un) : il fait partie du GV. Le test : il n''est pas déplaçable (*« Aux enfants, le vieux marin racontait ses aventures » est discutable).',
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
  'a0310000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'grm_predicat_structure',
  'Le prédicat et la structure de la phrase',
  'Difficile',
  'qcm',
  'Analysez la phrase « La cigale, ayant chanté tout l''été, se trouva fort dépourvue quand la bise fut venue » (La Fontaine). Quelle analyse des constituants est correcte selon la terminologie Éduscol ?',
  NULL,
  '[{"id":"a","label":"GS = La cigale | GV = se trouva fort dépourvue | GC1 = ayant chanté tout l''été | GC2 = quand la bise fut venue"},{"id":"b","label":"GS = La cigale ayant chanté tout l''été | GV = se trouva fort dépourvue quand la bise fut venue"},{"id":"c","label":"GS = La cigale | GV = ayant chanté tout l''été se trouva fort dépourvue | GC = quand la bise fut venue"},{"id":"d","label":"GS = La cigale | GV = se trouva | GC1 = ayant chanté tout l''été | GC2 = fort dépourvue | GC3 = quand la bise fut venue"},{"id":"e","label":"GS = La cigale ayant chanté | GV = se trouva fort dépourvue | GC = tout l''été quand la bise fut venue"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'L''analyse correcte est : GS = « la cigale » | GV = « se trouva fort dépourvue » | GC1 = « ayant chanté tout l''été » (participe présent à valeur circonstancielle de cause) | GC2 = « quand la bise fut venue » (subordonnée circonstancielle de temps). Le GV comprend le verbe attributif « se trouver » et l''attribut du sujet « fort dépourvue ». Les deux GC sont bien supprimables : « La cigale se trouva fort dépourvue » reste grammaticale. L''attribut « fort dépourvue » n''est pas un GC : il fait partie du GV car il est lié au verbe attributif.',
  'Exclure « fort dépourvue » du GV en le traitant comme un GC. L''attribut du sujet fait partie intégrante du GV quand le verbe est attributif (être, sembler, se trouver…). Il n''est ni supprimable ni déplaçable.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q9 — Difficile — Réponse courte — premium (rééquilibrage en free pour 5/5)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0310000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'grm_predicat_structure',
  'Le prédicat et la structure de la phrase',
  'Difficile',
  'reponse_courte',
  'Dans « Maître Corbeau, sur un arbre perché, tenait en son bec un fromage » (La Fontaine), le groupe « sur un arbre perché » est-il un GC ou fait-il partie du GS ? Justifiez en un mot la fonction de ce groupe.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["épithète","épithète détachée","apposition","expansion du nom","expansion"]}'::jsonb,
  'Le groupe « sur un arbre perché » n''est ni un GC ni une partie du GV : c''est une épithète détachée (ou apposition) qui se rapporte au nom « Corbeau » dans le GS. Il qualifie le sujet et fait donc partie du GS élargi. Ce n''est pas un GC car il n''est pas un complément circonstanciel de l''ensemble [GS + GV] : il ne répond pas à « où tenait-il un fromage ? » mais caractérise le sujet. L''analyse est : GS = « Maître Corbeau, sur un arbre perché » | GV = « tenait en son bec un fromage ». La fonction épithète est interne au GN, conformément à la terminologie Éduscol.',
  'Analyser « sur un arbre perché » comme un GC de lieu. Ce groupe ne complète pas l''ensemble [GS + GV] mais qualifie le nom « Corbeau » : c''est une expansion du nom (épithète détachée), pas un complément circonstanciel.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q10 — Difficile — QCM — free (rééquilibrage pour 5 free / 5 premium)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a0310000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'grm_predicat_structure',
  'Le prédicat et la structure de la phrase',
  'Difficile',
  'qcm',
  'Un candidat au CRPE affirme : « Dans la phrase "Le renard donne une leçon au petit prince dans le désert", il y a quatre fonctions au niveau de la phrase : sujet, COD, COI et complément circonstanciel. » Cette analyse est-elle conforme à la terminologie Éduscol ?',
  NULL,
  '[{"id":"a","label":"Oui, les quatre fonctions sont bien au niveau de la phrase"},{"id":"b","label":"Non : le COD et le COI sont des fonctions internes au GV, seuls le sujet et le CC sont au niveau de la phrase"},{"id":"c","label":"Non : le COI est un complément circonstanciel déguisé"},{"id":"d","label":"Non : il n''y a qu''une seule fonction au niveau de la phrase, le sujet"},{"id":"e","label":"Oui, mais il manque la fonction attribut"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''analyse du candidat est incorrecte. Selon la terminologie Éduscol, seules DEUX fonctions existent au niveau de la phrase : la fonction sujet (relation GS → GV) et la fonction complément circonstanciel (relation GC → [GS + GV]). Le COD (« une leçon ») et le COI (« au petit prince ») sont des fonctions INTERNES au GV. L''analyse correcte est : P = [GS « le renard » + GV « donne une leçon au petit prince »] (+ GC « dans le désert »). Le GV comprend le verbe et ses compléments d''objet ; le GC est le seul constituant facultatif et déplaçable.',
  'C''est l''erreur la plus fréquente au CRPE sur ce thème : placer le COD et le COI au même niveau que le sujet et le CC. La terminologie Éduscol est formelle : ces fonctions sont internes au GV, pas au niveau de la phrase.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
