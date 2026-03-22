-- ============================================================
-- Migration : Série Conjugaison — Tri des formes verbales : temps, mode et voix (10 exercices)
-- UUID prefix : e3040000
-- topic_key  : conjugaison_tri_formes
-- ============================================================

-- Q1 — Facile — tri_categories — Trier par temps (indicatif)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3040000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conjugaison_tri_formes',
  'Tri des formes verbales : temps, mode et voix',
  'Facile',
  'tri_categories',
  'Lisez ce court texte puis classez les formes verbales surlignées selon leur temps de conjugaison.',
  '« Hier, les enfants jouaient dans la cour. Ce matin, ils ont rangé leurs cartables. Maintenant, la maîtresse explique la leçon et les élèves écoutent attentivement. »',
  '[{"id":"tc17q1w1","label":"jouaient"},{"id":"tc17q1w2","label":"ont rangé"},{"id":"tc17q1w3","label":"explique"},{"id":"tc17q1w4","label":"écoutent"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"imp","label":"Imparfait"},{"id":"pc","label":"Passé composé"},{"id":"pres","label":"Présent"}],"mapping":{"tc17q1w1":"imp","tc17q1w2":"pc","tc17q1w3":"pres","tc17q1w4":"pres"}}'::jsonb,
  '« Jouaient » est à l''imparfait de l''indicatif (radical « jou- » + terminaison « -aient »), associé à l''adverbe « hier ». « Ont rangé » est au passé composé (auxiliaire « avoir » au présent + participe passé), associé à « ce matin ». « Explique » et « écoutent » sont au présent de l''indicatif, associés à « maintenant ». Les indicateurs temporels aident à identifier les temps.',
  'Confondre le passé composé (« ont rangé » = auxiliaire au présent + participe passé) avec le présent. C''est un temps composé qui exprime une action achevée dans le passé.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — tri_categories — Trier par temps (3 temps du passé)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3040000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conjugaison_tri_formes',
  'Tri des formes verbales : temps, mode et voix',
  'Facile',
  'tri_categories',
  'Dans ce récit, classez les formes verbales selon qu''elles sont au passé simple, à l''imparfait ou au passé composé.',
  '« Le vieux marin racontait ses voyages. Il avait navigué sur toutes les mers. Un jour, il découvrit une île inconnue. "J''ai vu des choses extraordinaires", répéta-t-il souvent. Le soleil se couchait derrière les collines. »',
  '[{"id":"tc17q2w1","label":"racontait"},{"id":"tc17q2w2","label":"avait navigué"},{"id":"tc17q2w3","label":"découvrit"},{"id":"tc17q2w4","label":"ai vu"},{"id":"tc17q2w5","label":"répéta"},{"id":"tc17q2w6","label":"se couchait"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"imp","label":"Imparfait"},{"id":"ps","label":"Passé simple"},{"id":"pqp","label":"Plus-que-parfait"},{"id":"pc","label":"Passé composé"}],"mapping":{"tc17q2w1":"imp","tc17q2w2":"pqp","tc17q2w3":"ps","tc17q2w4":"pc","tc17q2w5":"ps","tc17q2w6":"imp"}}'::jsonb,
  '« Racontait » et « se couchait » sont à l''imparfait (arrière-plan). « Avait navigué » est au plus-que-parfait (antériorité). « Découvrit » et « répéta » sont au passé simple (premier plan). « Ai vu » est au passé composé, dans le discours direct du personnage (registre oral). Chaque temps a une fonction narrative distincte.',
  'Confondre le plus-que-parfait (« avait navigué ») avec le passé composé. Le plus-que-parfait utilise l''auxiliaire à l''imparfait (« avait »), pas au présent (« a »).',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — surlignage_propositions — Repérer les temps dans un texte simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3040000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conjugaison_tri_formes',
  'Tri des formes verbales : temps, mode et voix',
  'Facile',
  'surlignage_propositions',
  'Dans cette consigne de classe, identifiez les verbes et classez-les selon leur mode : indicatif ou impératif.',
  '« Les élèves travaillent en silence. Rangez vos affaires. Vous sortirez à midi. Ouvrez votre cahier à la page 12. La cloche sonne dans cinq minutes. »',
  '[{"id":"s1","label":"travaillent"},{"id":"s2","label":"Rangez"},{"id":"s3","label":"sortirez"},{"id":"s4","label":"Ouvrez"},{"id":"s5","label":"sonne"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"grp1","label":"Indicatif","color":"blue"},{"id":"grp2","label":"Impératif","color":"amber"}],"mapping":{"s1":"grp1","s2":"grp2","s3":"grp1","s4":"grp2","s5":"grp1"}}'::jsonb,
  '« Travaillent », « sortirez » et « sonne » sont à l''indicatif : ils décrivent des faits ou des prévisions. « Rangez » et « Ouvrez » sont à l''impératif : ils expriment un ordre. L''impératif se reconnaît à l''absence de pronom sujet et à sa valeur injonctive. Attention : « Rangez » (impératif) et « vous rangez » (indicatif) ont la même forme, mais le mode diffère selon la présence ou l''absence du pronom sujet.',
  'Confondre l''impératif présent et l''indicatif présent à la 2e personne du pluriel : « Rangez » (impératif, sans pronom) vs « Vous rangez » (indicatif, avec pronom). La forme est identique, seul le contexte syntaxique permet de trancher.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — tri_categories — Trier par mode (indicatif, subjonctif, impératif, infinitif)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3040000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conjugaison_tri_formes',
  'Tri des formes verbales : temps, mode et voix',
  'Intermediaire',
  'tri_categories',
  'Lisez ce texte et classez chaque forme verbale selon son mode de conjugaison.',
  '« Le directeur souhaite que les élèves finissent leur travail avant la récréation. Il faut ranger les cahiers et sortir en silence. Fermez la porte derrière vous. Les enseignants corrigeront les copies ce soir. »',
  '[{"id":"tc17q4w1","label":"souhaite"},{"id":"tc17q4w2","label":"finissent"},{"id":"tc17q4w3","label":"ranger"},{"id":"tc17q4w4","label":"sortir"},{"id":"tc17q4w5","label":"Fermez"},{"id":"tc17q4w6","label":"corrigeront"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"ind","label":"Indicatif"},{"id":"subj","label":"Subjonctif"},{"id":"inf","label":"Infinitif"},{"id":"imp","label":"Impératif"}],"mapping":{"tc17q4w1":"ind","tc17q4w2":"subj","tc17q4w3":"inf","tc17q4w4":"inf","tc17q4w5":"imp","tc17q4w6":"ind"}}'::jsonb,
  '« Souhaite » est à l''indicatif présent (le directeur souhaite = fait constaté). « Finissent » est au subjonctif présent, introduit par « que » après un verbe de souhait (« souhaite que »). « Ranger » et « sortir » sont à l''infinitif, mode non personnel (après « il faut »). « Fermez » est à l''impératif (ordre direct sans pronom sujet). « Corrigeront » est à l''indicatif futur simple. Le mode dépend de la fonction du verbe dans la phrase.',
  'Confondre « finissent » (subjonctif après « souhaite que ») avec un indicatif. La forme est identique au présent de l''indicatif pour ce verbe, mais le contexte syntaxique (après « que » + verbe de souhait) impose le subjonctif.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — tri_categories — Trier par voix (active, passive, pronominale)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3040000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conjugaison_tri_formes',
  'Tri des formes verbales : temps, mode et voix',
  'Intermediaire',
  'tri_categories',
  'Dans ce fait divers, classez les formes verbales selon qu''elles sont à la voix active, passive ou pronominale.',
  '« La bibliothèque a été inaugurée par le maire. Les habitants se sont réjouis de cette nouvelle. Les enfants empruntent déjà des livres. Les travaux avaient été réalisés par une entreprise locale. Le bâtiment se dresse fièrement sur la place du village. »',
  '[{"id":"tc17q5w1","label":"a été inaugurée"},{"id":"tc17q5w2","label":"se sont réjouis"},{"id":"tc17q5w3","label":"empruntent"},{"id":"tc17q5w4","label":"avaient été réalisés"},{"id":"tc17q5w5","label":"se dresse"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"active","label":"Voix active"},{"id":"passive","label":"Voix passive"},{"id":"pronom","label":"Voix pronominale"}],"mapping":{"tc17q5w1":"passive","tc17q5w2":"pronom","tc17q5w3":"active","tc17q5w4":"passive","tc17q5w5":"pronom"}}'::jsonb,
  'La voix passive se reconnaît à la structure « être + participe passé » avec un complément d''agent possible (« par le maire », « par une entreprise »). « A été inaugurée » (passé composé passif) et « avaient été réalisés » (plus-que-parfait passif) sont à la voix passive. La voix pronominale utilise un pronom réfléchi (« se ») : « se sont réjouis », « se dresse ». La voix active (« empruntent ») est la forme de base où le sujet fait l''action.',
  'Confondre voix passive et passé composé actif : « a été inaugurée » (passif) vs « a inauguré » (actif). La présence de l''auxiliaire « être » ne suffit pas — il faut vérifier si le sujet subit l''action.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — surlignage_propositions — Modes dans un dialogue littéraire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3040000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conjugaison_tri_formes',
  'Tri des formes verbales : temps, mode et voix',
  'Intermediaire',
  'surlignage_propositions',
  'Dans ce dialogue entre un enseignant et ses élèves, classez les verbes selon leur mode : indicatif, impératif ou subjonctif.',
  '« — Sortez vos cahiers et écrivez la date. Je veux que vous soyez attentifs. La dictée commencera dans deux minutes. Il est important que chacun relise son travail avant de rendre sa copie. Posez vos stylos. »',
  '[{"id":"s1","label":"Sortez"},{"id":"s2","label":"écrivez"},{"id":"s3","label":"veux"},{"id":"s4","label":"soyez"},{"id":"s5","label":"commencera"},{"id":"s6","label":"relise"},{"id":"s7","label":"Posez"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"grp1","label":"Indicatif","color":"blue"},{"id":"grp2","label":"Impératif","color":"amber"},{"id":"grp3","label":"Subjonctif","color":"green"}],"mapping":{"s1":"grp2","s2":"grp2","s3":"grp1","s4":"grp3","s5":"grp1","s6":"grp3","s7":"grp2"}}'::jsonb,
  '« Sortez », « écrivez » et « Posez » sont à l''impératif : ordres directs sans pronom sujet. « Veux » et « commencera » sont à l''indicatif : faits constatés ou annoncés. « Soyez » et « relise » sont au subjonctif : « soyez » après « je veux que » (volonté), « relise » après « il est important que » (nécessité). Les verbes de volonté, de nécessité et de jugement appellent le subjonctif dans la subordonnée.',
  'Confondre « écrivez » impératif (sans pronom, ordre) et « vous écrivez » indicatif. Même forme verbale, mais le mode est déterminé par la construction syntaxique.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — surlignage_propositions — Voix active et passive dans un texte documentaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3040000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conjugaison_tri_formes',
  'Tri des formes verbales : temps, mode et voix',
  'Intermediaire',
  'surlignage_propositions',
  'Dans cet extrait d''article de journal, classez les formes verbales selon qu''elles sont à la voix active ou à la voix passive.',
  '« Le nouveau gymnase a été construit en six mois. Les ouvriers ont travaillé jour et nuit. La structure sera inaugurée par la ministre la semaine prochaine. Les riverains attendent cet événement avec impatience. Les dernières finitions sont réalisées par des artisans locaux. »',
  '[{"id":"s1","label":"a été construit"},{"id":"s2","label":"ont travaillé"},{"id":"s3","label":"sera inaugurée"},{"id":"s4","label":"attendent"},{"id":"s5","label":"sont réalisées"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"grp1","label":"Voix active","color":"blue"},{"id":"grp2","label":"Voix passive","color":"amber"}],"mapping":{"s1":"grp2","s2":"grp1","s3":"grp2","s4":"grp1","s5":"grp2"}}'::jsonb,
  'Trois formes sont à la voix passive : « a été construit » (passé composé passif), « sera inaugurée » (futur simple passif), « sont réalisées » (présent passif). Le sujet subit l''action dans chaque cas, et un complément d''agent (« par la ministre », « par des artisans ») est présent ou sous-entendu. « Ont travaillé » et « attendent » sont à la voix active : le sujet accomplit l''action. La voix passive se forme toujours avec « être + participe passé ».',
  'Confondre « sont réalisées » (voix passive au présent) avec un simple temps composé. Pour distinguer passif et temps composé avec « être », vérifier si le sujet subit l''action (passif) ou s''il est l''agent (temps composé actif : « elles sont parties »).',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — tri_categories — Tri croisé temps + mode dans un texte complexe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3040000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conjugaison_tri_formes',
  'Tri des formes verbales : temps, mode et voix',
  'Avance',
  'tri_categories',
  'Dans cet extrait de programme scolaire, identifiez le mode de chaque forme verbale : indicatif, subjonctif, conditionnel ou infinitif.',
  '« L''enseignant veillera à ce que les élèves puissent s''exprimer librement. Il conviendrait de diversifier les supports de lecture. Les élèves doivent apprendre à rédiger des textes variés. Il est souhaitable que chaque enfant lise au moins un roman par trimestre. »',
  '[{"id":"tc17q8w1","label":"veillera"},{"id":"tc17q8w2","label":"puissent"},{"id":"tc17q8w3","label":"s''exprimer"},{"id":"tc17q8w4","label":"conviendrait"},{"id":"tc17q8w5","label":"diversifier"},{"id":"tc17q8w6","label":"doivent"},{"id":"tc17q8w7","label":"apprendre"},{"id":"tc17q8w8","label":"lise"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"ind","label":"Indicatif"},{"id":"subj","label":"Subjonctif"},{"id":"cond","label":"Conditionnel"},{"id":"inf","label":"Infinitif"}],"mapping":{"tc17q8w1":"ind","tc17q8w2":"subj","tc17q8w3":"inf","tc17q8w4":"cond","tc17q8w5":"inf","tc17q8w6":"ind","tc17q8w7":"inf","tc17q8w8":"subj"}}'::jsonb,
  '« Veillera » et « doivent » sont à l''indicatif (faits présentés comme certains). « Puissent » et « lise » sont au subjonctif, introduits par « à ce que » et « il est souhaitable que » (nécessité, souhait). « Conviendrait » est au conditionnel présent (recommandation atténuée). « S''exprimer », « diversifier » et « apprendre » sont à l''infinitif (mode non personnel). Note : la grammaire scolaire actuelle (2020) classe le conditionnel comme un mode à part, distinct de l''indicatif.',
  'Le statut du conditionnel divise les grammairiens : certains le classent comme temps de l''indicatif, d''autres comme mode autonome. Les programmes Éduscol (2020) le traitent comme un mode distinct. Au CRPE, suivre la position des programmes officiels.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — qcm — Identifier la voix dans une phrase ambiguë
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3040000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conjugaison_tri_formes',
  'Tri des formes verbales : temps, mode et voix',
  'Avance',
  'qcm',
  'Lisez ces deux phrases. Dans laquelle le verbe « être + participe passé » est-il à la voix passive ?',
  '« Phrase A : Les hirondelles sont parties avant l''hiver. Phrase B : Les lettres sont distribuées par le facteur chaque matin. »',
  '[{"id":"a","label":"Phrase A uniquement : « sont parties » est une forme passive."},{"id":"b","label":"Phrase B uniquement : « sont distribuées » est une forme passive (le sujet subit l''action). Phrase A est un passé composé actif (auxiliaire être + verbe de mouvement)."},{"id":"c","label":"Les deux phrases sont à la voix passive."},{"id":"d","label":"Aucune des deux n''est à la voix passive : « être + participe passé » est toujours un temps composé."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Seule la phrase B est à la voix passive. « Les lettres sont distribuées par le facteur » : le sujet (« les lettres ») subit l''action, et le complément d''agent (« par le facteur ») identifie celui qui agit. Dans la phrase A, « Les hirondelles sont parties » est un passé composé actif : les verbes de mouvement (partir, arriver, venir, etc.) se conjuguent avec l''auxiliaire « être » aux temps composés. Le critère décisif est : le sujet fait-il l''action (actif) ou la subit-il (passif) ?',
  'C''est l''un des pièges classiques du CRPE : confondre le passé composé avec auxiliaire « être » (« elles sont parties ») et la voix passive (« elles sont distribuées »). Le test : peut-on ajouter « par quelqu''un » ? « Parties par quelqu''un » est impossible → voix active.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — qcm — Analyse croisée temps/mode/voix
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3040000-0000-0000-0000-00000000000a',
  'Francais',
  'conjugaison',
  'conjugaison_tri_formes',
  'Tri des formes verbales : temps, mode et voix',
  'Avance',
  'qcm',
  'Analysez la forme verbale « aurait été convoqué » dans cette phrase. Quel est son temps, son mode et sa voix ?',
  '« Si l''élève avait été absent un jour de plus, il aurait été convoqué par le directeur pour un entretien avec ses parents. »',
  '[{"id":"a","label":"Plus-que-parfait de l''indicatif, voix passive."},{"id":"b","label":"Conditionnel passé, voix passive."},{"id":"c","label":"Conditionnel passé, voix active."},{"id":"d","label":"Passé composé du conditionnel, voix pronominale."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Aurait été convoqué » se décompose ainsi : « aurait » (conditionnel présent de « avoir ») + « été » (participe passé de « être ») + « convoqué » (participe passé de « convoquer »). C''est un conditionnel passé à la voix passive. Le mode est le conditionnel (hypothèse irréelle liée à « si + plus-que-parfait »). La voix est passive car le sujet (« il ») subit l''action de convoquer, avec complément d''agent « par le directeur ». L''analyse des formes verbales composées exige de décomposer méthodiquement auxiliaire, temps et voix.',
  'L''accumulation de participes passés (« aurait été convoqué ») rend l''analyse difficile. Les candidats confondent souvent cette forme avec un plus-que-parfait passif (« avait été convoqué »). La clé est l''auxiliaire : « aurait » = conditionnel, « avait » = imparfait.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
