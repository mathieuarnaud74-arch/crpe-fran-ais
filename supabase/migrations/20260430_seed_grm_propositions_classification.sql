-- Migration: série grm_propositions_classification (10 questions)
-- Propositions indépendantes, principales et subordonnées — Grammaire CRPE
-- UUID prefix: t0410000
-- Types : qcm, vrai_faux, reponse_courte, tri_categories, surlignage_propositions
-- Niveaux : 3 Facile + 4 Intermediaire + 3 Difficile
-- Access : 5 free + 5 premium
-- Terminologie Éduscol : phrase simple = 1 proposition, phrase complexe = plusieurs propositions
-- Trois modes de construction : subordination, coordination, juxtaposition

-- ============================================================================
-- Q1 — Facile — QCM — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0410000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'grm_propositions_classification',
  'Propositions indépendantes, principales et subordonnées',
  'Facile',
  'qcm',
  'Dans la phrase « Le renard flatte le corbeau et il obtient le fromage » (La Fontaine), combien de propositions y a-t-il et de quelle nature sont-elles ?',
  NULL,
  '[{"id":"a","label":"Deux propositions indépendantes coordonnées par « et »"},{"id":"b","label":"Une proposition principale et une proposition subordonnée"},{"id":"c","label":"Une seule proposition (phrase simple)"},{"id":"d","label":"Deux propositions principales"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Cette phrase contient deux verbes conjugués (« flatte » et « obtient »), donc deux propositions : c''est une phrase complexe. Les deux propositions sont reliées par la conjonction de coordination « et » : elles sont sur le même plan, aucune n''est incluse dans l''autre. Ce sont donc deux propositions indépendantes coordonnées. Une proposition indépendante ne dépend d''aucune autre et aucune autre ne dépend d''elle. On ne peut pas parler de « proposition principale » ici, car il n''y a aucune subordonnée.',
  'Qualifier ces propositions de « principales ». Selon la terminologie Éduscol, une proposition n''est « principale » que si elle contient (inclut) une subordonnée. En l''absence de subordination, on parle de propositions indépendantes.',
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
  't0410000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'grm_propositions_classification',
  'Propositions indépendantes, principales et subordonnées',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : dans « Je pense, donc je suis » (Descartes), les deux propositions sont juxtaposées.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Attention au piège : dans la terminologie Éduscol officielle, « donc » n''est PAS une conjonction de coordination mais un adverbe. Cependant, les deux propositions « je pense » et « je suis » restent bien des propositions indépendantes. Elles ne sont pas juxtaposées (la juxtaposition se fait par une virgule, un point-virgule ou des deux-points), mais reliées par l''adverbe « donc ». La liste officielle des conjonctions de coordination est : mais, ou, et, or, ni, car. Les propositions sont ici indépendantes reliées par un adverbe de liaison.',
  'Considérer « donc » comme une conjonction de coordination. La terminologie Éduscol est formelle : « donc » est un adverbe, tout comme « pourtant » et « cependant ». Seuls « mais, ou, et, or, ni, car » sont des conjonctions de coordination.',
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
  't0410000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'grm_propositions_classification',
  'Propositions indépendantes, principales et subordonnées',
  'Facile',
  'qcm',
  'Parmi ces phrases, laquelle est une phrase complexe ?',
  NULL,
  '[{"id":"a","label":"Le petit prince habitait une planète minuscule."},{"id":"b","label":"Il regardait les couchers de soleil avec mélancolie."},{"id":"c","label":"Le petit prince demanda au renard qu''il l''apprivoise."},{"id":"d","label":"La rose était belle et capricieuse."}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Seule la phrase (c) est complexe : elle contient deux verbes conjugués (« demanda » et « apprivoise ») et donc deux propositions. « Le petit prince demanda au renard » est la proposition principale, et « qu''il l''apprivoise » est une proposition subordonnée complétive conjonctive introduite par « que ». Les phrases (a), (b) et (d) sont des phrases simples : elles ne contiennent qu''un seul verbe conjugué, donc une seule proposition. Dans (d), « belle et capricieuse » sont deux adjectifs coordonnés attributs du sujet, mais il n''y a qu''un verbe conjugué (« était »).',
  'Confondre phrase complexe et phrase longue. Une phrase peut être longue et rester simple (un seul verbe conjugué), ou être courte et complexe (deux verbes conjugués). Le critère est le nombre de verbes conjugués = nombre de propositions.',
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
  't0410000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'grm_propositions_classification',
  'Propositions indépendantes, principales et subordonnées',
  'Intermediaire',
  'tri_categories',
  'Classez chaque proposition dans la catégorie correcte : indépendante, principale ou subordonnée.',
  NULL,
  NULL,
  '{"mode":"categories","categories":["Proposition indépendante","Proposition principale","Proposition subordonnée"],"items":[{"text":"Le soleil se couche (dans : Le soleil se couche ; la nuit tombe.)","category":"Proposition indépendante"},{"text":"la nuit tombe (dans : Le soleil se couche ; la nuit tombe.)","category":"Proposition indépendante"},{"text":"Je sais (dans : Je sais que tu viendras.)","category":"Proposition principale"},{"text":"que tu viendras (dans : Je sais que tu viendras.)","category":"Proposition subordonnée"},{"text":"L''homme qui rit effraie les enfants (dans : L''homme qui rit effraie les enfants.)","category":"Proposition principale"},{"text":"qui rit (dans : L''homme qui rit effraie les enfants.)","category":"Proposition subordonnée"}]}'::jsonb,
  'Dans « Le soleil se couche ; la nuit tombe », les deux propositions sont juxtaposées (reliées par un point-virgule) : elles sont indépendantes car aucune n''est incluse dans l''autre. Dans « Je sais que tu viendras », « je sais » est la principale car elle contient la subordonnée « que tu viendras » (complétive conjonctive, COD de « sais »). Dans « L''homme qui rit effraie les enfants », « qui rit » est une subordonnée relative incluse dans la principale. Attention : la principale est bien « l''homme qui rit effraie les enfants » dans son ensemble (elle inclut la subordonnée).',
  'Croire qu''une proposition principale exclut la subordonnée qu''elle contient. En réalité, selon la terminologie Éduscol, la principale CONTIENT la subordonnée : « L''homme qui rit effraie les enfants » est la principale dans sa totalité.',
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
  't0410000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'grm_propositions_classification',
  'Propositions indépendantes, principales et subordonnées',
  'Intermediaire',
  'qcm',
  'Dans « La cigale, ayant chanté tout l''été, se trouva fort dépourvue quand la bise fut venue » (La Fontaine), quelle est la nature de « quand la bise fut venue » ?',
  NULL,
  '[{"id":"a","label":"Proposition subordonnée relative"},{"id":"b","label":"Proposition subordonnée complétive conjonctive"},{"id":"c","label":"Proposition subordonnée circonstancielle de temps"},{"id":"d","label":"Proposition indépendante juxtaposée"},{"id":"e","label":"Proposition principale"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La proposition « quand la bise fut venue » est une subordonnée circonstancielle de temps. Elle est introduite par la conjonction de subordination « quand », qui fait partie de la liste officielle des conjonctions de subordination de temps (quand, lorsque, dès que, avant que, après que, pendant que, tandis que). Cette subordonnée a la fonction de complément circonstanciel de temps : elle est supprimable (« La cigale se trouva fort dépourvue ») et déplaçable (« Quand la bise fut venue, la cigale se trouva fort dépourvue »). Elle est incluse dans la proposition principale « La cigale se trouva fort dépourvue ».',
  'Confondre la conjonction de subordination « quand » avec un simple adverbe interrogatif. Ici, « quand » introduit une subordonnée circonstancielle (et non une interrogative indirecte). Le contexte syntaxique détermine la nature du mot.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q6 — Intermediaire — reponse_courte — premium
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0410000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'grm_propositions_classification',
  'Propositions indépendantes, principales et subordonnées',
  'Intermediaire',
  'reponse_courte',
  'Dans « Heureux qui, comme Ulysse, a fait un beau voyage » (Du Bellay), quelle est la fonction grammaticale de la proposition subordonnée relative « qui, comme Ulysse, a fait un beau voyage » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["sujet","fonction sujet","GS","groupe sujet"]}'::jsonb,
  'La subordonnée relative « qui, comme Ulysse, a fait un beau voyage » est une relative substantive (elle n''a pas d''antécédent nominal explicite). Elle occupe la fonction de sujet du verbe sous-entendu « est » (« Heureux [est] qui a fait un beau voyage »). C''est un cas particulier de relative substantive, catégorie reconnue par la terminologie Éduscol. Contrairement aux relatives adjectives qui sont des expansions du nom (fonction épithète ou apposée), la relative substantive fonctionne comme un GN et peut occuper les fonctions de sujet, COD ou COI.',
  'Analyser cette relative comme une épithète parce qu''elle est introduite par un pronom relatif. Ici, il n''y a pas d''antécédent nominal : « qui » est une relative substantive à fonction sujet, pas une relative adjective à fonction épithète.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — Intermediaire — surlignage_propositions — premium
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0410000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'grm_propositions_classification',
  'Propositions indépendantes, principales et subordonnées',
  'Intermediaire',
  'qcm',
  'Dans « Je veux que vous sachiez que cette affaire est sérieuse » (Molière), combien de propositions subordonnées complétives cette phrase contient-elle ?',
  NULL,
  '[{"id":"a","label":"Une seule : « que vous sachiez que cette affaire est sérieuse »"},{"id":"b","label":"Deux : « que vous sachiez » et « que cette affaire est sérieuse »"},{"id":"c","label":"Aucune : ce sont des propositions indépendantes"},{"id":"d","label":"Trois : « que vous sachiez », « que cette affaire » et « est sérieuse »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Cette phrase contient deux subordonnées complétives conjonctives, toutes deux introduites par la conjonction de subordination « que ». La première, « que vous sachiez que cette affaire est sérieuse », est COD du verbe « veux ». La seconde, « que cette affaire est sérieuse », est enchâssée dans la première : elle est COD du verbe « sachiez ». C''est un cas de subordination enchâssée (une subordonnée dans une subordonnée). La proposition principale est « je veux ». On distingue bien trois propositions au total et deux subordonnées complétives.',
  'Ne repérer qu''une seule subordonnée en « que ». Il faut compter les verbes conjugués : « veux », « sachiez », « est » = trois propositions. Chaque « que » introduit une complétive distincte. La seconde est enchâssée dans la première : c''est un piège classique du CRPE.',
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
  't0410000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'grm_propositions_classification',
  'Propositions indépendantes, principales et subordonnées',
  'Difficile',
  'qcm',
  'Dans « L''homme que vous voyez qui passe est celui dont je vous parlais » (Molière), identifiez la nature et la fonction de « que vous voyez ».',
  NULL,
  '[{"id":"a","label":"Subordonnée relative adjective, fonction épithète de « l''homme » ; « que » est pronom relatif COD de « voyez »"},{"id":"b","label":"Subordonnée complétive conjonctive, fonction COD de « voyez » ; « que » est conjonction de subordination"},{"id":"c","label":"Subordonnée circonstancielle de cause ; « que » est conjonction de subordination"},{"id":"d","label":"Proposition indépendante intercalée ; « que » est pronom interrogatif"},{"id":"e","label":"Subordonnée relative substantive, fonction sujet ; « que » est pronom relatif sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La proposition « que vous voyez » est une subordonnée relative adjective. Elle est introduite par le pronom relatif « que », qui reprend l''antécédent « l''homme » et a la fonction de COD du verbe « voyez » (vous voyez « que » = l''homme). La subordonnée relative elle-même a la fonction d''épithète du nom « homme » : c''est une expansion du nom au sein du GN. C''est la distinction fondamentale Éduscol : « que » pronom relatif (qui a un antécédent) vs « que » conjonction de subordination (qui introduit une complétive). Ici, on peut remplacer par « lequel » : « l''homme lequel vous voyez ».',
  'Confondre « que » pronom relatif et « que » conjonction de subordination. Le test : si « que » a un antécédent nominal et peut être remplacé par « lequel/laquelle », c''est un pronom relatif (subordonnée relative). Si « que » n''a pas d''antécédent et introduit un fait (« je sais que... »), c''est une conjonction de subordination (subordonnée complétive).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q9 — Difficile — reponse_courte — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0410000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'grm_propositions_classification',
  'Propositions indépendantes, principales et subordonnées',
  'Difficile',
  'reponse_courte',
  'Dans « Il faut que je parte avant qu''il ne soit trop tard » (Racine), combien de propositions cette phrase contient-elle ? Répondez par un chiffre.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["3","trois"]}'::jsonb,
  'Cette phrase contient trois propositions, correspondant aux trois verbes conjugués : « faut », « parte » et « soit ». La proposition principale est « il faut » (verbe impersonnel). La première subordonnée « que je parte avant qu''il ne soit trop tard » est une complétive conjonctive, sujet réel du verbe impersonnel « faut ». La seconde subordonnée « qu''il ne soit trop tard » est une circonstancielle de temps introduite par « avant que », enchâssée dans la première subordonnée. On a donc une structure à trois niveaux : principale > complétive > circonstancielle.',
  'Ne compter que deux propositions en ne repérant pas le verbe « soit » dans « avant qu''il ne soit trop tard ». Le « ne » explétif après « avant que » peut masquer le verbe conjugué. Il faut systématiquement repérer tous les verbes conjugués pour identifier toutes les propositions.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q10 — Difficile — vrai_faux — premium (rééquilibrage pour 5 free / 5 premium)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0410000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'grm_propositions_classification',
  'Propositions indépendantes, principales et subordonnées',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : dans « Les enfants qui travaillent bien réussissent car ils sont motivés » (Voltaire), la proposition « qui travaillent bien » est une subordonnée complétive.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. La proposition « qui travaillent bien » est une subordonnée relative adjective, et non une complétive. Elle est introduite par le pronom relatif « qui », qui reprend l''antécédent « les enfants ». Sa fonction est épithète du nom « enfants » : c''est une expansion du nom qui restreint le sens (relative déterminative). Une complétive serait introduite par « que » conjonction de subordination, sans antécédent (ex. : « Je crois que les enfants réussissent »). Par ailleurs, cette phrase contient aussi deux propositions indépendantes coordonnées par « car » : « les enfants qui travaillent bien réussissent » et « ils sont motivés ».',
  'Confondre subordonnée relative et subordonnée complétive. Le critère Éduscol est clair : la relative a un antécédent nominal (ici « enfants ») et le pronom relatif (« qui ») a une fonction dans la subordonnée (ici sujet de « travaillent »). La complétive n''a pas d''antécédent : elle complète un verbe (« je sais que... »).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
