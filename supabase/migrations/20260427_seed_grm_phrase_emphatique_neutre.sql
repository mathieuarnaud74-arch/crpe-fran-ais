-- Migration: série grm_phrase_emphatique_neutre (10 questions)
-- Phrase emphatique et phrase neutre — Grammaire CRPE
-- UUID prefix: t0110000
-- Types : qcm, vrai_faux, reponse_courte
-- Niveaux : 3 Facile + 4 Intermediaire + 3 Difficile
-- Access : 5 free + 5 premium
-- Terminologie Éduscol : forme emphatique = clivage (c'est… qui/que) ou détachement (dislocation + reprise pronominale)

-- ============================================================================
-- Q1 — Facile — QCM — free
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0110000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'grm_phrase_emphatique_neutre',
  'Phrase emphatique et phrase neutre',
  'Facile',
  'qcm',
  'Parmi les phrases suivantes, laquelle est une phrase emphatique ?',
  NULL,
  '[{"id":"a","label":"Le petit prince apprivoisa le renard."},{"id":"b","label":"C''est le petit prince qui apprivoisa le renard."},{"id":"c","label":"Le petit prince n''apprivoisa pas le renard."},{"id":"d","label":"Le petit prince apprivoisa-t-il le renard ?"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La phrase emphatique est une forme de phrase qui met en relief un de ses constituants par un procédé syntaxique. Ici, « C''est le petit prince qui apprivoisa le renard » utilise l''extraction (tournure « c''est… qui ») pour focaliser le GS « le petit prince ». Les autres phrases sont respectivement : neutre (forme de base), négative, et interrogative. Selon la terminologie Éduscol, la phrase de base est positive, active et non emphatique.',
  'Confondre phrase emphatique et phrase exclamative. L''emphase est un procédé syntaxique de mise en relief, pas une question d''intonation ou de ponctuation.',
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
  't0110000-0000-0000-0000-000000000002',
  'Francais',
  'grammaire',
  'grm_phrase_emphatique_neutre',
  'Phrase emphatique et phrase neutre',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : « Ce livre, je l''ai lu avec passion » est une phrase emphatique.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette phrase est bien emphatique. Le constituant « ce livre » (COD) est détaché en tête de phrase et repris par le pronom clitique « l'' » dans la proposition principale. Ce procédé de dislocation à gauche avec reprise pronominale est l''un des deux grands mécanismes de la forme emphatique identifiés par la terminologie Éduscol, aux côtés de l''extraction (« c''est… qui/que »). La phrase neutre correspondante serait : « J''ai lu ce livre avec passion ».',
  'Ne pas repérer la dislocation parce que le complément détaché est en tête de phrase. Le critère décisif est la présence du pronom de reprise (ici « l'' »).',
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
  't0110000-0000-0000-0000-000000000003',
  'Francais',
  'grammaire',
  'grm_phrase_emphatique_neutre',
  'Phrase emphatique et phrase neutre',
  'Facile',
  'qcm',
  'Quel procédé de mise en relief est utilisé dans « C''est à l''aube que le Petit Prince rencontra le renard » (Saint-Exupéry) ?',
  NULL,
  '[{"id":"a","label":"Détachement avec reprise pronominale"},{"id":"b","label":"Extraction avec « c''est… que »"},{"id":"c","label":"Phrase pseudo-clivée"},{"id":"d","label":"Antéposition du complément circonstanciel"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La tournure « c''est… que » est le procédé d''extraction (ou clivage). Le GC « à l''aube » est encadré par « c''est » et « que », ce qui le met en relief. La phrase neutre correspondante serait : « Le Petit Prince rencontra le renard à l''aube ». Selon la terminologie Éduscol, l''extraction est l''un des deux procédés de la forme emphatique, avec le détachement.',
  'Confondre extraction et simple antéposition. L''antéposition (« À l''aube, le Petit Prince rencontra le renard ») déplace le GC sans encadrement « c''est… que » : ce n''est pas une forme emphatique.',
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
  't0110000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'grm_phrase_emphatique_neutre',
  'Phrase emphatique et phrase neutre',
  'Intermediaire',
  'qcm',
  'Dans « La liberté, Camus la défendait avec ardeur », quel constituant est mis en relief et par quel procédé ?',
  NULL,
  '[{"id":"a","label":"Le GS « Camus » — extraction"},{"id":"b","label":"Le COD « la liberté » — détachement avec reprise pronominale « la »"},{"id":"c","label":"Le GC « avec ardeur » — antéposition"},{"id":"d","label":"Le GV « défendait » — focalisation verbale"},{"id":"e","label":"Le COD « la liberté » — extraction avec « c''est… que »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le constituant « la liberté » est le COD du verbe « défendait ». Il est détaché en tête de phrase (dislocation à gauche) et repris par le pronom clitique « la » à l''intérieur du GV. Ce procédé de détachement avec reprise pronominale constitue la forme emphatique par dislocation, selon la terminologie Éduscol. La phrase neutre serait : « Camus défendait la liberté avec ardeur » (P = GS + GV + GC).',
  'Confondre détachement et extraction. L''extraction utilise « c''est… qui/que » ; le détachement sépare un constituant et le reprend par un pronom. Ici, pas de « c''est… que », donc il s''agit bien d''un détachement.',
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
  't0110000-0000-0000-0000-000000000005',
  'Francais',
  'grammaire',
  'grm_phrase_emphatique_neutre',
  'Phrase emphatique et phrase neutre',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : « Comme cette rose est belle ! » est une phrase emphatique.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Cette phrase n''est pas emphatique : elle est exclamative. La forme exclamative et la forme emphatique sont deux formes de phrase distinctes dans la terminologie Éduscol. L''exclamation exprime un sentiment ou une émotion (ici l''admiration) par une intonation et une ponctuation spécifiques (« Comme… ! »). La forme emphatique, elle, met en relief un constituant par un procédé syntaxique : extraction (« c''est… qui/que ») ou détachement avec reprise pronominale. « Comme cette rose est belle ! » ne présente ni l''un ni l''autre de ces procédés.',
  'C''est le piège classique du CRPE : confondre emphase et exclamation. L''emphase est syntaxique (mise en relief d''un constituant), l''exclamation est énonciative (expression d''un sentiment).',
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
  't0110000-0000-0000-0000-000000000006',
  'Francais',
  'grammaire',
  'grm_phrase_emphatique_neutre',
  'Phrase emphatique et phrase neutre',
  'Intermediaire',
  'reponse_courte',
  'Dans « C''est la misère qui pousse les hommes à l''action » (Hugo), quel procédé emphatique est utilisé ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["extraction","clivage","c''est qui","c''est... qui","phrase clivée","clivée"]}'::jsonb,
  'La tournure « C''est… qui » est le procédé d''extraction (aussi appelé clivage). Le GS « la misère » est encadré par « c''est » et « qui », ce qui le focalise comme l''information principale de la phrase. La phrase neutre correspondante serait : « La misère pousse les hommes à l''action ». L''extraction est, avec le détachement, l''un des deux procédés de la forme emphatique définis par la grammaire officielle Éduscol.',
  'Répondre « mise en relief » sans préciser le procédé. Au CRPE, il faut distinguer extraction (clivage) et détachement (dislocation).',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q7 — Intermediaire — QCM — premium
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0110000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'grm_phrase_emphatique_neutre',
  'Phrase emphatique et phrase neutre',
  'Intermediaire',
  'qcm',
  'Quelle est la phrase neutre correspondant à « Ce que je déteste, c''est le mensonge » (Molière) ?',
  NULL,
  '[{"id":"a","label":"C''est le mensonge que je déteste."},{"id":"b","label":"Le mensonge, je le déteste."},{"id":"c","label":"Je déteste le mensonge."},{"id":"d","label":"Moi, je déteste le mensonge."},{"id":"e","label":"Le mensonge est détesté par moi."}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La phrase « Ce que je déteste, c''est le mensonge » est une phrase pseudo-clivée : elle met en relief le COD « le mensonge » en le plaçant après « c''est », précédé d''une relative substantive « ce que je déteste ». La phrase neutre, sans aucune mise en relief, suit l''ordre canonique P = GS + GV : « Je déteste le mensonge ». Les propositions (a), (b) et (d) sont toutes des formes emphatiques utilisant respectivement l''extraction, le détachement et la dislocation du sujet.',
  'Choisir une autre forme emphatique en croyant qu''elle est neutre. La phrase neutre est celle qui suit strictement l''ordre GS + GV sans aucun procédé de mise en relief.',
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
  't0110000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'grm_phrase_emphatique_neutre',
  'Phrase emphatique et phrase neutre',
  'Difficile',
  'qcm',
  'Analysez les phrases suivantes. Combien d''entre elles sont des phrases emphatiques au sens strict de la terminologie Éduscol ?\n\n1. « L''homme, cet inconnu, avance dans la nuit. »\n2. « C''est en forgeant qu''on devient forgeron. »\n3. « Quelle belle journée ! »\n4. « La mer, elle est immense. »\n5. « Hier, il a plu toute la journée. »',
  NULL,
  '[{"id":"a","label":"1 phrase"},{"id":"b","label":"2 phrases"},{"id":"c","label":"3 phrases"},{"id":"d","label":"4 phrases"},{"id":"e","label":"5 phrases"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Seules les phrases 2 et 4 sont emphatiques au sens Éduscol. La phrase 2 (« C''est en forgeant qu''on devient forgeron ») utilise l''extraction avec « c''est… que » pour mettre en relief le GC « en forgeant ». La phrase 4 (« La mer, elle est immense ») utilise le détachement à gauche du GS « la mer » avec reprise pronominale « elle ». La phrase 1 comporte une apposition (« cet inconnu »), qui n''est pas un procédé emphatique. La phrase 3 est exclamative, pas emphatique. La phrase 5 présente un simple déplacement du GC « hier » sans reprise pronominale : ce n''est pas une dislocation.',
  'Confondre apposition et détachement emphatique. L''apposition (« cet inconnu ») apporte une information supplémentaire sur le nom, sans pronom de reprise — ce n''est pas de l''emphase. De même, l''antéposition d''un GC (« Hier, … ») sans reprise pronominale n''est pas une dislocation.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q9 — Difficile — Réponse courte — premium (devenu free pour équilibre : non, on garde premium)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0110000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'grm_phrase_emphatique_neutre',
  'Phrase emphatique et phrase neutre',
  'Difficile',
  'reponse_courte',
  'Transformez la phrase neutre « Les enfants adorent les histoires de La Fontaine » en phrase emphatique par extraction du COD.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["C''est les histoires de La Fontaine que les enfants adorent","Ce sont les histoires de La Fontaine que les enfants adorent","C''est les histoires de La Fontaine qu''adorent les enfants","Ce sont les histoires de La Fontaine qu''adorent les enfants"]}'::jsonb,
  'L''extraction (ou clivage) du COD consiste à encadrer le constituant mis en relief par « c''est… que » (ou « ce sont… que » au pluriel, forme soutenue). Le COD « les histoires de La Fontaine » est extrait de sa position canonique dans le GV et focalisé en début de phrase. La phrase neutre suit l''ordre P = GS + GV : sujet « les enfants » + verbe « adorent » + COD « les histoires de La Fontaine ». L''extraction modifie la structure informationnelle sans changer le contenu propositionnel.',
  'Oublier d''utiliser « que » (et non « qui ») pour l''extraction du COD. « Qui » s''emploie pour l''extraction du GS, « que » pour celle du COD ou du GC.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================================
-- Q10 — Difficile — QCM — free (rééquilibrage : on passe celui-ci en free pour avoir 5/5)
-- ============================================================================
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  't0110000-0000-0000-0000-00000000000a',
  'Francais',
  'grammaire',
  'grm_phrase_emphatique_neutre',
  'Phrase emphatique et phrase neutre',
  'Difficile',
  'qcm',
  'Un élève de CM2 écrit : « Le loup, c''est lui qui fait peur aux enfants. » Quelle analyse grammaticale est correcte selon la terminologie Éduscol ?',
  NULL,
  '[{"id":"a","label":"La phrase cumule deux procédés emphatiques : détachement du GS « le loup » et extraction avec « c''est… qui »"},{"id":"b","label":"La phrase est exclamative car elle exprime un sentiment fort"},{"id":"c","label":"La phrase est neutre avec un simple déplacement du sujet"},{"id":"d","label":"La phrase est emphatique par extraction uniquement, « le loup » étant le sujet de « c''est »"},{"id":"e","label":"La phrase est passive car le sujet subit l''action"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Cette phrase présente un double procédé emphatique, ce qui la rend particulièrement intéressante pour l''analyse au CRPE. D''abord, le GS « le loup » est détaché en tête de phrase (dislocation à gauche) et repris par le pronom disjoint « lui ». Ensuite, la tournure « c''est… qui » constitue une extraction. On a donc une combinaison de détachement et d''extraction, ce qui renforce la mise en relief du sujet. La phrase neutre correspondante serait : « Le loup fait peur aux enfants » (P = GS + GV). Ce type de cumul de procédés emphatiques est fréquent à l''oral et dans les écrits d''élèves.',
  'Analyser la phrase comme une simple extraction en ignorant le détachement initial de « le loup ». Au CRPE, il faut identifier tous les procédés emphatiques présents, y compris quand ils se cumulent.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
