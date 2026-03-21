-- ============================================================
-- Swipe Vrai/Faux extended: 5 × 10 short statements (50 questions)
-- Series: Conjugaison, Lexique, Compréhension, Analyse langue, Didactique
-- ============================================================

-- ── Swipe : Conjugaison — Vrai ou Faux ? ───────────────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('c1030000-0000-0000-0000-000000000001', 'Francais', 'conjugaison', 'swipe_conjugaison_vf', 'Swipe — Conjugaison Vrai/Faux', 'Facile', 'vrai_faux',
 'Le passé composé se forme toujours avec l''auxiliaire « avoir ».',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Le passé composé se forme avec « avoir » ou « être » selon le verbe (ex. : « je suis parti », « j''ai mangé »).', 'valide', 'free', true),

('c1030000-0000-0000-0000-000000000002', 'Francais', 'conjugaison', 'swipe_conjugaison_vf', 'Swipe — Conjugaison Vrai/Faux', 'Facile', 'vrai_faux',
 'À l''imparfait, tous les verbes ont les mêmes terminaisons.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Les terminaisons de l''imparfait sont identiques pour tous les groupes : -ais, -ais, -ait, -ions, -iez, -aient.', 'valide', 'free', true),

('c1030000-0000-0000-0000-000000000003', 'Francais', 'conjugaison', 'swipe_conjugaison_vf', 'Swipe — Conjugaison Vrai/Faux', 'Facile', 'vrai_faux',
 'Le futur simple des verbes du 1er groupe se forme sur l''infinitif.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. On ajoute les terminaisons (-ai, -as, -a, -ons, -ez, -ont) directement à l''infinitif : chanter → je chanterai.', 'valide', 'free', true),

('c1030000-0000-0000-0000-000000000004', 'Francais', 'conjugaison', 'swipe_conjugaison_vf', 'Swipe — Conjugaison Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Le subjonctif présent et l''indicatif présent ont toujours des formes différentes.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Pour de nombreux verbes du 1er groupe, les formes sont identiques aux trois personnes du singulier (ex. : « je chante » = indicatif ou subjonctif).', 'valide', 'free', true),

('c1030000-0000-0000-0000-000000000005', 'Francais', 'conjugaison', 'swipe_conjugaison_vf', 'Swipe — Conjugaison Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Le verbe « aller » appartient au premier groupe.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Malgré sa terminaison en -er, « aller » est un verbe du 3e groupe en raison de son irrégularité (je vais, j''irai, que j''aille).', 'valide', 'free', true),

('c1030000-0000-0000-0000-000000000006', 'Francais', 'conjugaison', 'swipe_conjugaison_vf', 'Swipe — Conjugaison Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Le conditionnel présent utilise le radical du futur et les terminaisons de l''imparfait.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Le conditionnel présent = radical du futur + terminaisons de l''imparfait (ex. : je chanterais, il finirait).', 'valide', 'free', true),

('c1030000-0000-0000-0000-000000000007', 'Francais', 'conjugaison', 'swipe_conjugaison_vf', 'Swipe — Conjugaison Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Le participe passé employé avec « être » s''accorde toujours avec le sujet.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Avec l''auxiliaire « être », le participe passé s''accorde en genre et en nombre avec le sujet (ex. : « Elles sont parties »).', 'valide', 'free', true),

('c1030000-0000-0000-0000-000000000008', 'Francais', 'conjugaison', 'swipe_conjugaison_vf', 'Swipe — Conjugaison Vrai/Faux', 'Avance', 'vrai_faux',
 'L''impératif présent possède trois personnes de conjugaison.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. L''impératif présent se conjugue à trois personnes : 2e personne du singulier, 1re et 2e personnes du pluriel (chante, chantons, chantez).', 'valide', 'free', true),

('c1030000-0000-0000-0000-000000000009', 'Francais', 'conjugaison', 'swipe_conjugaison_vf', 'Swipe — Conjugaison Vrai/Faux', 'Avance', 'vrai_faux',
 'Le passé simple est un temps du discours oral courant.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Le passé simple est un temps de l''écrit littéraire et du récit. À l''oral, on utilise le passé composé.', 'valide', 'free', true),

('c1030000-0000-0000-0000-00000000000a', 'Francais', 'conjugaison', 'swipe_conjugaison_vf', 'Swipe — Conjugaison Vrai/Faux', 'Avance', 'vrai_faux',
 'Le plus-que-parfait exprime une action antérieure à une autre action passée.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Le plus-que-parfait marque l''antériorité dans le passé (ex. : « Il avait mangé quand je suis arrivé »).', 'valide', 'free', true);

-- ── Swipe : Lexique — Vrai ou Faux ? ───────────────────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('c1040000-0000-0000-0000-000000000001', 'Francais', 'lexique', 'swipe_lexique_vf', 'Swipe — Lexique Vrai/Faux', 'Facile', 'vrai_faux',
 'Un synonyme est un mot de sens contraire.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Un synonyme est un mot de sens voisin. Un mot de sens contraire est un antonyme.', 'valide', 'free', true),

('c1040000-0000-0000-0000-000000000002', 'Francais', 'lexique', 'swipe_lexique_vf', 'Swipe — Lexique Vrai/Faux', 'Facile', 'vrai_faux',
 'Le préfixe se place avant le radical d''un mot.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Le préfixe se place avant le radical pour modifier le sens du mot (ex. : « re- » dans « refaire »).', 'valide', 'free', true),

('c1040000-0000-0000-0000-000000000003', 'Francais', 'lexique', 'swipe_lexique_vf', 'Swipe — Lexique Vrai/Faux', 'Facile', 'vrai_faux',
 'Un mot peut avoir plusieurs sens selon le contexte.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. C''est la polysémie : « glace » peut désigner de l''eau gelée, un dessert ou un miroir selon le contexte.', 'valide', 'free', true),

('c1040000-0000-0000-0000-000000000004', 'Francais', 'lexique', 'swipe_lexique_vf', 'Swipe — Lexique Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Le registre soutenu est celui utilisé dans les conversations familières.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Le registre soutenu est utilisé à l''écrit littéraire ou dans les situations formelles. Les conversations familières relèvent du registre familier.', 'valide', 'free', true),

('c1040000-0000-0000-0000-000000000005', 'Francais', 'lexique', 'swipe_lexique_vf', 'Swipe — Lexique Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Une métaphore est une comparaison sans outil de comparaison.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. La métaphore rapproche deux éléments sans mot-outil (comme, tel, ainsi que…), contrairement à la comparaison.', 'valide', 'free', true),

('c1040000-0000-0000-0000-000000000006', 'Francais', 'lexique', 'swipe_lexique_vf', 'Swipe — Lexique Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Les mots « dentiste » et « dent » appartiennent à la même famille de mots.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Ils partagent le même radical « dent- » et un lien de sens. Une famille de mots regroupe les mots formés sur le même radical.', 'valide', 'free', true),

('c1040000-0000-0000-0000-000000000007', 'Francais', 'lexique', 'swipe_lexique_vf', 'Swipe — Lexique Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Un homonyme est un mot qui s''écrit et se prononce exactement comme un autre.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Un homonyme peut être homophone (même prononciation : ver/verre) ou homographe (même graphie : avocat). Il n''est pas nécessairement les deux à la fois.', 'valide', 'free', true),

('c1040000-0000-0000-0000-000000000008', 'Francais', 'lexique', 'swipe_lexique_vf', 'Swipe — Lexique Vrai/Faux', 'Avance', 'vrai_faux',
 'L''euphémisme consiste à atténuer une réalité jugée déplaisante.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. L''euphémisme adoucit l''expression d''une idée (ex. : « il nous a quittés » pour « il est mort »).', 'valide', 'free', true),

('c1040000-0000-0000-0000-000000000009', 'Francais', 'lexique', 'swipe_lexique_vf', 'Swipe — Lexique Vrai/Faux', 'Avance', 'vrai_faux',
 'Un néologisme est un mot tombé en désuétude.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Un néologisme est un mot nouvellement créé ou récemment emprunté. Un mot tombé en désuétude est un archaïsme.', 'valide', 'free', true),

('c1040000-0000-0000-0000-00000000000a', 'Francais', 'lexique', 'swipe_lexique_vf', 'Swipe — Lexique Vrai/Faux', 'Avance', 'vrai_faux',
 'La dérivation et la composition sont deux procédés de formation des mots.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. La dérivation ajoute un affixe (préfixe/suffixe) au radical, la composition combine deux mots ou radicaux (ex. : porte-monnaie, audiovisuel).', 'valide', 'free', true);

-- ── Swipe : Compréhension — Vrai ou Faux ? ─────────────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('c1050000-0000-0000-0000-000000000001', 'Francais', 'comprehension_texte', 'swipe_comprehension_vf', 'Swipe — Compréhension Vrai/Faux', 'Facile', 'vrai_faux',
 'Un texte narratif raconte une histoire avec des personnages et des événements.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Le texte narratif a pour fonction de raconter une histoire, réelle ou fictive, avec des personnages, un cadre et une intrigue.', 'valide', 'free', true),

('c1050000-0000-0000-0000-000000000002', 'Francais', 'comprehension_texte', 'swipe_comprehension_vf', 'Swipe — Compréhension Vrai/Faux', 'Facile', 'vrai_faux',
 'Un texte documentaire a pour but principal de divertir le lecteur.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Un texte documentaire a pour but d''informer et de transmettre des connaissances, pas de divertir.', 'valide', 'free', true),

('c1050000-0000-0000-0000-000000000003', 'Francais', 'comprehension_texte', 'swipe_comprehension_vf', 'Swipe — Compréhension Vrai/Faux', 'Facile', 'vrai_faux',
 'Le narrateur et l''auteur d''un récit sont toujours la même personne.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Le narrateur est une instance fictive qui raconte l''histoire. L''auteur est la personne réelle qui écrit le texte. Ils peuvent être distincts.', 'valide', 'free', true),

('c1050000-0000-0000-0000-000000000004', 'Francais', 'comprehension_texte', 'swipe_comprehension_vf', 'Swipe — Compréhension Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Inférer, c''est comprendre une information qui n''est pas écrite explicitement dans le texte.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. L''inférence consiste à déduire une information implicite à partir d''indices présents dans le texte et de ses connaissances.', 'valide', 'free', true),

('c1050000-0000-0000-0000-000000000005', 'Francais', 'comprehension_texte', 'swipe_comprehension_vf', 'Swipe — Compréhension Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Un texte argumentatif cherche à convaincre le lecteur d''une thèse.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Le texte argumentatif défend une thèse à l''aide d''arguments et d''exemples pour persuader ou convaincre le lecteur.', 'valide', 'free', true),

('c1050000-0000-0000-0000-000000000006', 'Francais', 'comprehension_texte', 'swipe_comprehension_vf', 'Swipe — Compréhension Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Le point de vue omniscient signifie que le narrateur ne sait rien des personnages.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Le narrateur omniscient sait tout : pensées, sentiments et passé de tous les personnages. C''est le point de vue le plus large.', 'valide', 'free', true),

('c1050000-0000-0000-0000-000000000007', 'Francais', 'comprehension_texte', 'swipe_comprehension_vf', 'Swipe — Compréhension Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Les connecteurs logiques permettent d''organiser et de structurer un texte.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Les connecteurs logiques (donc, cependant, en effet…) relient les idées et structurent le raisonnement dans un texte.', 'valide', 'free', true),

('c1050000-0000-0000-0000-000000000008', 'Francais', 'comprehension_texte', 'swipe_comprehension_vf', 'Swipe — Compréhension Vrai/Faux', 'Avance', 'vrai_faux',
 'La focalisation interne limite le récit à la perception d''un seul personnage.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. En focalisation interne, le lecteur n''accède qu''aux pensées et perceptions d''un seul personnage, comme à travers ses yeux.', 'valide', 'free', true),

('c1050000-0000-0000-0000-000000000009', 'Francais', 'comprehension_texte', 'swipe_comprehension_vf', 'Swipe — Compréhension Vrai/Faux', 'Avance', 'vrai_faux',
 'Un texte prescriptif donne des ordres ou des instructions à suivre.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Le texte prescriptif (recette, règlement, mode d''emploi) donne des consignes ou des instructions que le lecteur doit suivre.', 'valide', 'free', true),

('c1050000-0000-0000-0000-00000000000a', 'Francais', 'comprehension_texte', 'swipe_comprehension_vf', 'Swipe — Compréhension Vrai/Faux', 'Avance', 'vrai_faux',
 'L''implicite d''un texte est ce qui est dit directement par l''auteur.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. L''implicite désigne ce qui n''est pas dit directement mais peut être déduit. Ce qui est dit directement relève de l''explicite.', 'valide', 'free', true);

-- ── Swipe : Analyse de la langue — Vrai ou Faux ? ──────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('c1060000-0000-0000-0000-000000000001', 'Francais', 'analyse_langue', 'swipe_analyse_vf', 'Swipe — Analyse Vrai/Faux', 'Facile', 'vrai_faux',
 'Une phrase simple contient un seul verbe conjugué.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Une phrase simple ne comporte qu''une seule proposition, donc un seul verbe conjugué (noyau verbal).', 'valide', 'free', true),

('c1060000-0000-0000-0000-000000000002', 'Francais', 'analyse_langue', 'swipe_analyse_vf', 'Swipe — Analyse Vrai/Faux', 'Facile', 'vrai_faux',
 'Le complément du nom complète le verbe.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Le complément du nom complète un nom, pas un verbe (ex. : « le livre de Marie » — « de Marie » complète « livre »).', 'valide', 'free', true),

('c1060000-0000-0000-0000-000000000003', 'Francais', 'analyse_langue', 'swipe_analyse_vf', 'Swipe — Analyse Vrai/Faux', 'Facile', 'vrai_faux',
 'L''attribut du sujet se construit avec un verbe d''état.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. L''attribut du sujet est relié au sujet par un verbe d''état (être, sembler, devenir, paraître…) : « Elle est heureuse ».', 'valide', 'free', true),

('c1060000-0000-0000-0000-000000000004', 'Francais', 'analyse_langue', 'swipe_analyse_vf', 'Swipe — Analyse Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Une proposition subordonnée relative est introduite par une conjonction de subordination.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. La proposition subordonnée relative est introduite par un pronom relatif (qui, que, dont, où…), non par une conjonction de subordination.', 'valide', 'free', true),

('c1060000-0000-0000-0000-000000000005', 'Francais', 'analyse_langue', 'swipe_analyse_vf', 'Swipe — Analyse Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'Le complément circonstanciel peut être déplacé ou supprimé dans la phrase.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Le complément circonstanciel est un complément de phrase : il est déplaçable et supprimable, contrairement aux compléments essentiels.', 'valide', 'free', true),

('c1060000-0000-0000-0000-000000000006', 'Francais', 'analyse_langue', 'swipe_analyse_vf', 'Swipe — Analyse Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'La voix passive transforme le COD de la phrase active en sujet.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. À la voix passive, le COD de la phrase active devient le sujet (ex. : « Le chat mange la souris » → « La souris est mangée par le chat »).', 'valide', 'free', true),

('c1060000-0000-0000-0000-000000000007', 'Francais', 'analyse_langue', 'swipe_analyse_vf', 'Swipe — Analyse Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'La juxtaposition relie deux propositions par un mot de liaison.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. La juxtaposition relie deux propositions par un signe de ponctuation (virgule, point-virgule), sans mot de liaison. C''est la coordination qui utilise une conjonction.', 'valide', 'free', true),

('c1060000-0000-0000-0000-000000000008', 'Francais', 'analyse_langue', 'swipe_analyse_vf', 'Swipe — Analyse Vrai/Faux', 'Avance', 'vrai_faux',
 'Une phrase non verbale ne contient aucun verbe conjugué.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Une phrase non verbale (ou phrase nominale) ne comporte pas de verbe conjugué (ex. : « Quelle belle journée ! », « Entrée interdite »).', 'valide', 'free', true),

('c1060000-0000-0000-0000-000000000009', 'Francais', 'analyse_langue', 'swipe_analyse_vf', 'Swipe — Analyse Vrai/Faux', 'Avance', 'vrai_faux',
 'Le COD peut être remplacé par les pronoms « le », « la » ou « les ».',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. La pronominalisation par « le / la / les » est un test fiable pour identifier le COD (ex. : « Je mange la pomme » → « Je la mange »).', 'valide', 'free', true),

('c1060000-0000-0000-0000-00000000000a', 'Francais', 'analyse_langue', 'swipe_analyse_vf', 'Swipe — Analyse Vrai/Faux', 'Avance', 'vrai_faux',
 'Une proposition subordonnée complétive a toujours la fonction de COD.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. La complétive peut aussi être sujet (« Qu''il vienne me surprend »), attribut ou complément de l''adjectif, pas seulement COD.', 'valide', 'free', true);

-- ── Swipe : Didactique du français — Vrai ou Faux ? ────────

INSERT INTO public.exercises (id, subject, subdomain, topic_key, topic_label, level, exercise_type, instruction, choices, expected_answer, detailed_explanation, validation_status, access_tier, is_published) VALUES
('c1070000-0000-0000-0000-000000000001', 'Francais', 'didactique_francais', 'swipe_didactique_vf', 'Swipe — Didactique Vrai/Faux', 'Facile', 'vrai_faux',
 'La conscience phonologique est la capacité à percevoir et manipuler les sons de la langue.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. La conscience phonologique permet d''identifier et de manipuler les unités sonores (syllabes, rimes, phonèmes) indépendamment du sens.', 'valide', 'free', true),

('c1070000-0000-0000-0000-000000000002', 'Francais', 'didactique_francais', 'swipe_didactique_vf', 'Swipe — Didactique Vrai/Faux', 'Facile', 'vrai_faux',
 'L''apprentissage de la lecture commence au cycle 3.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. L''apprentissage systématique de la lecture commence au cycle 2 (CP). Le cycle 1 prépare cet apprentissage et le cycle 3 le consolide.', 'valide', 'free', true),

('c1070000-0000-0000-0000-000000000003', 'Francais', 'didactique_francais', 'swipe_didactique_vf', 'Swipe — Didactique Vrai/Faux', 'Facile', 'vrai_faux',
 'Le principe alphabétique est la correspondance entre les lettres et les sons.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Le principe alphabétique est la compréhension du fait que les lettres (graphèmes) codent des sons (phonèmes). C''est un prérequis à la lecture.', 'valide', 'free', true),

('c1070000-0000-0000-0000-000000000004', 'Francais', 'didactique_francais', 'swipe_didactique_vf', 'Swipe — Didactique Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'La méthode globale enseigne la lecture uniquement par la reconnaissance de mots entiers.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. La méthode globale (ou idéo-visuelle) part de la reconnaissance de mots entiers, sans décodage graphophonologique systématique.', 'valide', 'free', true),

('c1070000-0000-0000-0000-000000000005', 'Francais', 'didactique_francais', 'swipe_didactique_vf', 'Swipe — Didactique Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'La dictée est le seul moyen d''enseigner l''orthographe à l''école.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. L''orthographe s''enseigne aussi par la dictée négociée, les ateliers de tri, la copie active, les exercices de transformation et la production d''écrits.', 'valide', 'free', true),

('c1070000-0000-0000-0000-000000000006', 'Francais', 'didactique_francais', 'swipe_didactique_vf', 'Swipe — Didactique Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'La fluence en lecture se mesure par le nombre de mots correctement lus par minute.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. La fluence (MCLM : mots correctement lus par minute) évalue la vitesse et la précision de lecture, indicateurs de l''automatisation du décodage.', 'valide', 'free', true),

('c1070000-0000-0000-0000-000000000007', 'Francais', 'didactique_francais', 'swipe_didactique_vf', 'Swipe — Didactique Vrai/Faux', 'Intermediaire', 'vrai_faux',
 'L''écriture inventée est une pratique interdite dans les programmes de l''école maternelle.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. L''écriture inventée (ou essais d''écriture) est recommandée en maternelle par les programmes. Elle permet aux élèves d''explorer le principe alphabétique.', 'valide', 'free', true),

('c1070000-0000-0000-0000-000000000008', 'Francais', 'didactique_francais', 'swipe_didactique_vf', 'Swipe — Didactique Vrai/Faux', 'Avance', 'vrai_faux',
 'La différenciation pédagogique consiste à donner le même travail à tous les élèves.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. La différenciation consiste à adapter les contenus, processus ou productions aux besoins de chaque élève pour viser les mêmes objectifs.', 'valide', 'free', true),

('c1070000-0000-0000-0000-000000000009', 'Francais', 'didactique_francais', 'swipe_didactique_vf', 'Swipe — Didactique Vrai/Faux', 'Avance', 'vrai_faux',
 'Le socle commun définit les compétences que chaque élève doit maîtriser en fin de scolarité obligatoire.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":true}'::jsonb,
 'Vrai. Le socle commun de connaissances, de compétences et de culture fixe les acquis fondamentaux attendus à la fin de la scolarité obligatoire (16 ans).', 'valide', 'free', true),

('c1070000-0000-0000-0000-00000000000a', 'Francais', 'didactique_francais', 'swipe_didactique_vf', 'Swipe — Didactique Vrai/Faux', 'Avance', 'vrai_faux',
 'L''étude de la langue doit toujours être menée de manière décontextualisée, sans lien avec les textes lus.',
 '[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
 '{"mode":"boolean","value":false}'::jsonb,
 'Faux. Les programmes recommandent d''articuler l''étude de la langue avec la lecture et l''écriture, en alternant séances décrochées et contextualisées.', 'valide', 'free', true);
