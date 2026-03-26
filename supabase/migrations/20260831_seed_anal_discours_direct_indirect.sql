-- Migration: 10 exercices — Discours direct, indirect, indirect libre
-- Série : anal_discours_direct_indirect (Français, analyse_langue)
-- Terminologie Éduscol 2021 stricte
-- UUID prefix: e9310000

-- Q1 — QCM — Identifier le type de discours
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9310000-0000-0000-0000-000000000001',
  'Francais',
  'analyse_langue',
  'anal_discours_direct_indirect',
  'Discours direct, indirect et indirect libre',
  'Standard',
  'qcm',
  'À quel type de discours rapporté appartient le passage en gras dans : « Marie s''arrêta. Elle n''en pouvait plus. Pourquoi personne ne venait-il l''aider ? » ?',
  'Le passage « Pourquoi personne ne venait-il l''aider ? » est en gras.',
  '[{"id":"a","label":"Discours direct"},{"id":"b","label":"Discours indirect"},{"id":"c","label":"Discours indirect libre"},{"id":"d","label":"Discours narrativisé"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'C''est du discours indirect libre. Il se caractérise par l''absence de verbe introducteur et de conjonction de subordination (pas de « elle se demanda pourquoi… »), tout en conservant les marques du discours indirect (3e personne, temps du récit : imparfait « venait »). La phrase interrogative traduit la pensée intérieure du personnage, fondue dans la narration. Le discours indirect libre mêle la voix du narrateur et celle du personnage : c''est un procédé fondamental en littérature, particulièrement étudié au CRPE. Il se distingue du discours direct (guillemets, verbe introducteur) et du discours indirect (subordonnée conjonctive complétive).',
  'Confondre le discours indirect libre avec le discours direct (pas de guillemets ici) ou avec une simple narration (la question traduit bien la pensée du personnage, pas celle du narrateur).',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Vrai/Faux — Caractéristiques du discours direct
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9310000-0000-0000-0000-000000000002',
  'Francais',
  'analyse_langue',
  'anal_discours_direct_indirect',
  'Discours direct, indirect et indirect libre',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : le discours direct se caractérise obligatoirement par la présence de guillemets et d''un verbe de parole introducteur.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! Le discours direct se caractérise par la reproduction fidèle des paroles telles qu''elles ont été prononcées. Les guillemets sont un marqueur typographique fréquent mais non obligatoire : dans certains textes littéraires, le discours direct est signalé par un tiret (« — Je viendrai demain. ») ou même par aucun signe typographique (style moderne). De même, le verbe introducteur peut être absent, surtout dans les dialogues rapides. Le critère essentiel est le système d''énonciation : le discours direct conserve les pronoms (je/tu), les temps et les marqueurs spatiaux/temporels de la situation d''énonciation d''origine.',
  'Croire que sans guillemets, il ne peut pas y avoir de discours direct. Les tirets de dialogue sont une autre convention typographique du discours direct.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Transposition direct → indirect
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9310000-0000-0000-0000-000000000003',
  'Francais',
  'analyse_langue',
  'anal_discours_direct_indirect',
  'Discours direct, indirect et indirect libre',
  'Standard',
  'qcm',
  'Transposez au discours indirect : « L''élève dit : "Je finirai mon exercice demain." »',
  NULL,
  '[{"id":"a","label":"L''élève dit qu''il finira son exercice le lendemain."},{"id":"b","label":"L''élève dit qu''il finirait son exercice le lendemain."},{"id":"c","label":"L''élève dit qu''il finira son exercice demain."},{"id":"d","label":"L''élève a dit qu''il finira son exercice demain."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La bonne transposition est (a). Le verbe introducteur « dit » est au présent, donc il n''y a PAS de changement de temps dans la subordonnée (le futur simple reste futur simple : « finirai » → « finira »). La concordance des temps n''opère que lorsque le verbe introducteur est au passé. En revanche, les transformations obligatoires sont : (1) pronoms : « je » → « il » ; (2) déterminants : « mon » → « son » ; (3) adverbes de temps : « demain » → « le lendemain » SEULEMENT si le verbe introducteur est au passé. Ici, « dit » est au présent, mais « demain » reste acceptable en (c) aussi — toutefois (a) est la transposition la plus rigoureuse.',
  'Appliquer la concordance des temps alors que le verbe introducteur est au présent. Quand le verbe introducteur est au présent, les temps ne changent PAS.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Tri catégories — Classer les indices
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9310000-0000-0000-0000-000000000004',
  'Francais',
  'analyse_langue',
  'anal_discours_direct_indirect',
  'Discours direct, indirect et indirect libre',
  'Standard',
  'tri_categories',
  'Classez chaque caractéristique selon qu''elle appartient au discours direct, au discours indirect ou au discours indirect libre.',
  NULL,
  NULL,
  '{"mode":"categorization","categories":["Discours direct","Discours indirect","Discours indirect libre"],"items":[{"text":"Présence de guillemets ou de tirets","category":"Discours direct"},{"text":"Verbe de parole + subordonnée conjonctive complétive (« que »)","category":"Discours indirect"},{"text":"Aucun verbe introducteur, pensée fondue dans le récit","category":"Discours indirect libre"},{"text":"Pronoms et temps de la situation d''énonciation (je, ici, maintenant)","category":"Discours direct"},{"text":"3ᵉ personne + temps du récit + modalités expressives","category":"Discours indirect libre"},{"text":"Transformation des pronoms, des temps et des repères spatio-temporels","category":"Discours indirect"}]}'::jsonb,
  'Le discours direct reproduit les paroles telles quelles (guillemets, pronoms d''origine, temps d''origine). Le discours indirect intègre les paroles dans une subordonnée conjonctive complétive avec un verbe introducteur (« il dit que… ») et transforme pronoms, temps et repères. Le discours indirect libre emprunte au direct les modalités expressives (exclamations, interrogations) et à l''indirect la 3ᵉ personne et les temps du récit, mais sans verbe introducteur ni conjonction de subordination.',
  'Attribuer les guillemets au discours indirect. Les guillemets sont le marqueur typographique du discours direct uniquement.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — QCM — Concordance des temps (passé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9310000-0000-0000-0000-000000000005',
  'Francais',
  'analyse_langue',
  'anal_discours_direct_indirect',
  'Discours direct, indirect et indirect libre',
  'Standard',
  'qcm',
  'Transposez au discours indirect : « L''enseignante déclara : "Les élèves réussiront cet examen." »',
  NULL,
  '[{"id":"a","label":"L''enseignante déclara que les élèves réussiraient cet examen."},{"id":"b","label":"L''enseignante déclara que les élèves réussiront cet examen."},{"id":"c","label":"L''enseignante déclara que les élèves ont réussi cet examen."},{"id":"d","label":"L''enseignante déclara que les élèves réussissaient cet examen."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le verbe introducteur « déclara » est au passé simple → la concordance des temps s''applique. Le futur simple (« réussiront ») devient conditionnel présent (« réussiraient ») — c''est le futur dans le passé. Tableau de concordance quand le verbe introducteur est au passé : présent → imparfait, passé composé → plus-que-parfait, futur simple → conditionnel présent, futur antérieur → conditionnel passé. Ce mécanisme est fondamental pour le CRPE.',
  'Garder le futur simple (« réussiront ») après un verbe introducteur au passé. La concordance des temps est obligatoire au discours indirect quand le verbe introducteur est au passé.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Réponse courte — Identifier le discours
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9310000-0000-0000-0000-000000000006',
  'Francais',
  'analyse_langue',
  'anal_discours_direct_indirect',
  'Discours direct, indirect et indirect libre',
  'Standard',
  'reponse_courte',
  'Dans « Il lui demanda s''il viendrait le lendemain », quel est le type de discours rapporté ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["discours indirect","indirect"]}'::jsonb,
  'C''est du discours indirect. Les indices sont : (1) un verbe introducteur (« demanda ») suivi d''une subordonnée, (2) la conjonction « si » (interrogation indirecte totale), (3) le conditionnel présent « viendrait » (futur dans le passé — concordance avec « demanda » au passé simple), (4) l''adverbe « le lendemain » (transposition de « demain »), (5) la 3ᵉ personne « il ». L''interrogation directe correspondante serait : « Viendras-tu demain ? » Au discours indirect, l''interrogation directe totale (réponse oui/non) est introduite par « si ».',
  'Confondre avec le discours indirect libre. Le discours indirect a un verbe introducteur et une subordonnée ; le discours indirect libre n''en a pas.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — QCM — Transposition interrogation directe → indirecte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9310000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'anal_discours_direct_indirect',
  'Discours direct, indirect et indirect libre',
  'Standard',
  'qcm',
  'Transposez au discours indirect : « Le maître demanda : "Qu''avez-vous compris ?" »',
  NULL,
  '[{"id":"a","label":"Le maître demanda ce qu''ils avaient compris."},{"id":"b","label":"Le maître demanda qu''est-ce qu''ils avaient compris."},{"id":"c","label":"Le maître demanda qu''avaient-ils compris."},{"id":"d","label":"Le maître demanda ce qu''ils ont compris."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La transposition correcte est (a). Règles appliquées : (1) l''interrogation partielle directe « qu''avez-vous compris ? » (pronom interrogatif « que ») devient « ce qu''ils avaient compris » au discours indirect — « que » → « ce que ». (2) L''inversion sujet-verbe disparaît au discours indirect (« avez-vous » → « ils avaient »). (3) Concordance des temps : « avez compris » (passé composé) → « avaient compris » (plus-que-parfait) car « demanda » est au passé. (4) Pronoms : « vous » → « ils ». ATTENTION : on ne garde JAMAIS « est-ce que » au discours indirect.',
  'Garder « qu''est-ce que » ou l''inversion du sujet au discours indirect. Au discours indirect, l''interrogation suit l''ordre sujet-verbe et « qu''est-ce que » devient « ce que ».',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Vrai/Faux — Discours narrativisé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9310000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'anal_discours_direct_indirect',
  'Discours direct, indirect et indirect libre',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans « Le directeur salua l''assemblée et la remercia chaleureusement », les paroles sont rapportées au discours narrativisé (ou discours raconté).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le discours narrativisé (ou discours raconté) résume les paroles sans les reproduire. Il les intègre complètement dans la narration sous forme d''actions : « salua » et « remercia » sont des verbes de parole utilisés comme verbes d''action. On ne connaît pas les mots exacts prononcés. Le discours narrativisé est le degré le plus éloigné de la parole rapportée : direct > indirect > indirect libre > narrativisé. C''est un concept important pour l''analyse littéraire au CRPE : il permet de mesurer la distance entre le narrateur et le personnage.',
  'Confondre le discours narrativisé avec le discours indirect. Le discours indirect conserve le contenu des paroles (« il dit que… »), le discours narrativisé le résume en un verbe d''action.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — QCM — Identifier le discours indirect libre (littéraire)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9310000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'anal_discours_direct_indirect',
  'Discours direct, indirect et indirect libre',
  'Standard',
  'qcm',
  'Dans l''extrait de Flaubert : « Charles, en rentrant, la trouva debout. Elle était guérie ! Quelle bonne nouvelle ! », quel type de discours rapporté est utilisé dans les deux phrases exclamatives ?',
  NULL,
  '[{"id":"a","label":"Discours direct (les mots exacts de Charles)"},{"id":"b","label":"Discours indirect (subordonnée)"},{"id":"c","label":"Discours indirect libre (pensée de Charles fondue dans le récit)"},{"id":"d","label":"Narration pure (point de vue du narrateur)"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'C''est du discours indirect libre. Les deux phrases exclamatives (« Elle était guérie ! Quelle bonne nouvelle ! ») expriment la joie de Charles, mais sans guillemets, sans verbe introducteur et à la 3ᵉ personne (« elle » au lieu de « tu es guérie ! »). L''imparfait (« était ») est le temps du récit, pas celui de l''énonciation. Les exclamations traduisent l''émotion du personnage — c''est la marque du discours indirect libre. Flaubert est le maître de ce procédé, qui crée une ambiguïté fascinante entre voix du narrateur et voix du personnage.',
  'Croire que c''est de la narration simple. Les exclamations et le contenu subjectif (« bonne nouvelle ») trahissent la pensée d''un personnage, pas le commentaire neutre du narrateur.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Tri catégories — Exemples de discours rapportés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9310000-0000-0000-0000-000000000010',
  'Francais',
  'analyse_langue',
  'anal_discours_direct_indirect',
  'Discours direct, indirect et indirect libre',
  'Standard',
  'tri_categories',
  'Classez chaque extrait selon le type de discours rapporté utilisé.',
  NULL,
  NULL,
  '{"mode":"categorization","categories":["Discours direct","Discours indirect","Discours indirect libre"],"items":[{"text":"— Je reviendrai demain, promit-il.","category":"Discours direct"},{"text":"Il annonça qu''il reviendrait le lendemain.","category":"Discours indirect"},{"text":"Il partit en souriant. Il reviendrait demain, c''était certain !","category":"Discours indirect libre"},{"text":"« Où sont mes clés ? » s''écria-t-elle.","category":"Discours direct"},{"text":"Elle se demanda où étaient ses clés.","category":"Discours indirect"},{"text":"Elle fouilla partout. Où étaient donc ses clés ? Impossible de mettre la main dessus !","category":"Discours indirect libre"}]}'::jsonb,
  'Discours direct : guillemets ou tiret + verbe introducteur + marques d''énonciation d''origine (je, demain). Discours indirect : verbe introducteur + subordonnée (que/si/où) + transpositions (il, le lendemain, conditionnel). Discours indirect libre : pas de verbe introducteur, pas de subordonnée, mais 3ᵉ personne + temps du récit + expressivité du personnage (exclamations, interrogations). Dans le 3ᵉ exemple, « il reviendrait demain » mêle le conditionnel (temps du récit) et l''exclamation (pensée du personnage). Dans le 6ᵉ, l''interrogation et l''exclamation traduisent la frustration du personnage sans verbe introducteur.',
  'Confondre le discours indirect libre et la narration. La clé : le discours indirect libre contient des marques de subjectivité (exclamations, interrogations, lexique émotionnel) qui ne peuvent pas venir du narrateur.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;