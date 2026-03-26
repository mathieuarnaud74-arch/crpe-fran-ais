-- Migration: 10 exercices — Champ lexical et champ sémantique
-- Série : lex_champ_lexical_semantique (Français, lexique)
-- Identifier, construire, distinguer champ lexical / champ sémantique
-- UUID prefix: a7b80000

-- Q1 — QCM — Identifier le champ lexical dominant dans un extrait (lexique de la mer)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a7b80000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_champ_lexical_semantique',
  'Champ lexical et champ sémantique',
  'Standard',
  'qcm',
  'Lisez cet extrait : « Les vagues déferlaient sur les rochers, projetant des embruns salés. Le phare guidait les navires vers le port tandis que les mouettes criaient au-dessus des filets. » Quel est le champ lexical dominant de ce passage ?',
  NULL,
  '[{"id":"a","label":"Le champ lexical de la tempête"},{"id":"b","label":"Le champ lexical de la mer"},{"id":"c","label":"Le champ lexical du voyage"},{"id":"d","label":"Le champ lexical de la nature"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le champ lexical dominant est celui de la mer : « vagues », « rochers », « embruns », « phare », « navires », « port », « mouettes », « filets » forment un réseau de mots qui renvoient tous au même univers thématique, la mer et ses éléments. Le champ lexical regroupe l''ensemble des mots d''un texte qui se rapportent à un même thème, quelle que soit leur classe grammaticale. Bien que « nature » soit plus général, ce niveau de généralité ne correspond pas à la précision attendue dans l''identification d''un champ lexical : on retient le thème le plus spécifique et le plus représentatif. La notion de champ lexical est au cœur des programmes d''Éduscol pour le cycle 3, dans l''axe « étude du lexique en contexte ».',
  'Choisir « la nature » car c''est un thème plus général qui englobe la mer, sans tenir compte de la spécificité des mots employés dans l''extrait.',
  'valide',
  'CRPE Français',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — vrai_faux — Champ lexical vs famille de mots (différence)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a7b80000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_champ_lexical_semantique',
  'Champ lexical et champ sémantique',
  'Standard',
  'vrai_faux',
  'Affirmation : Le champ lexical d''un thème et la famille de mots d''un même radical sont deux notions identiques.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Cette affirmation est fausse. La famille de mots regroupe des mots qui partagent un même radical (morphologique), comme « mer », « marin », « maritime », « amerrir » : ils sont liés par leur forme. Le champ lexical, quant à lui, regroupe des mots appartenant à un même univers thématique, quelle que soit leur origine étymologique : « mer », « vague », « phare », « poisson », « voile » relèvent du champ lexical de la mer sans nécessairement partager le même radical. Un mot peut appartenir à une famille sans appartenir au même champ lexical, et inversement. Distinguer ces deux notions est une exigence du programme CRPE en linguistique.',
  'Confondre les deux notions en pensant que les mots d''une même famille de mots forment automatiquement un champ lexical.',
  'valide',
  'CRPE Français',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — QCM — Quel mot n'appartient pas au champ lexical de "la peur" ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a7b80000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_champ_lexical_semantique',
  'Champ lexical et champ sémantique',
  'Standard',
  'qcm',
  'Parmi les mots suivants, lequel n''appartient PAS au champ lexical de la peur ?',
  NULL,
  '[{"id":"a","label":"frissonner"},{"id":"b","label":"terreur"},{"id":"c","label":"courage"},{"id":"d","label":"panique"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Courage » n''appartient pas au champ lexical de la peur : ce mot désigne au contraire la capacité à surmonter la peur ou le danger, et relève du champ lexical des qualités morales ou de la bravoure. « Frissonner », « terreur » et « panique » appartiennent tous au champ lexical de la peur, car ils évoquent des manifestations physiques (frissonner), des états émotionnels intenses (terreur, panique) liés à cette émotion. Un champ lexical n''est pas borné aux mots de même classe grammaticale : il inclut noms, verbes, adjectifs et adverbes qui renvoient au même thème. Savoir exclure les intrus est un exercice classique au CRPE pour évaluer la maîtrise du champ lexical.',
  'Hésiter entre « courage » et « panique », en pensant que « panique » appartient au champ lexical du danger et non de la peur.',
  'valide',
  'CRPE Français',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — reponse_courte — Quel est le champ lexical d'un passage (thème de la guerre)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a7b80000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_champ_lexical_semantique',
  'Champ lexical et champ sémantique',
  'Standard',
  'reponse_courte',
  'Lisez cet extrait : « Les soldats avançaient en tranchées sous les obus. Les fusils crépitaient, les blessés gémissaient, et l''officier criait des ordres sous les drapeaux en lambeaux. » En un mot, quel est le champ lexical dominant de ce passage ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["guerre","la guerre"]}'::jsonb,
  'Le champ lexical dominant est celui de la guerre : « soldats », « tranchées », « obus », « fusils », « blessés », « officier », « drapeaux » constituent un réseau dense de termes qui renvoient tous au contexte militaire et guerrier. Identifier le champ lexical dominant d''un texte consiste à relever les mots qui se rapportent au même thème et à en déduire l''univers de référence de l''auteur. Cette compétence est liée, dans les programmes Éduscol, à la lecture et à la compréhension des textes littéraires au cycle 3 et au cycle 4. Elle prépare à l''analyse du projet d''écriture de l''auteur.',
  'Répondre « violence » ou « mort » qui sont des thèmes présents mais moins précis que « guerre » pour nommer le champ lexical dominant.',
  'valide',
  'CRPE Français',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — vrai_faux — Un mot peut-il appartenir à plusieurs champs lexicaux ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a7b80000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_champ_lexical_semantique',
  'Champ lexical et champ sémantique',
  'Standard',
  'vrai_faux',
  'Affirmation : Un même mot peut appartenir à plusieurs champs lexicaux différents selon le contexte.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'Cette affirmation est vraie. Un mot peut appartenir à plusieurs champs lexicaux en fonction de son sens dans un contexte donné. Par exemple, le mot « feu » peut appartenir au champ lexical de l''incendie (« flammes », « braises », « pompiers »), de la guerre (« feu de l''ennemi », « cesser le feu »), ou des émotions (« feu de la passion »). C''est le contexte textuel qui détermine l''appartenance d''un mot à un champ lexical particulier. Cette propriété est directement liée à la polysémie des mots en français et s''enseigne dès le cycle 3 selon les préconisations d''Éduscol sur l''étude du lexique.',
  'Croire qu''un mot ne peut appartenir qu''à un seul champ lexical, sans tenir compte de la polysémie et du rôle du contexte.',
  'valide',
  'CRPE Français',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Définir le champ sémantique (les différents sens d'un même mot)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a7b80000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_champ_lexical_semantique',
  'Champ lexical et champ sémantique',
  'Standard',
  'qcm',
  'Quelle définition correspond au champ sémantique d''un mot ?',
  NULL,
  '[{"id":"a","label":"L''ensemble des mots d''un texte qui renvoient au même thème"},{"id":"b","label":"L''ensemble des différents sens qu''un mot peut prendre"},{"id":"c","label":"L''ensemble des mots qui partagent le même radical"},{"id":"d","label":"L''ensemble des synonymes d''un mot dans un dictionnaire"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le champ sémantique d''un mot désigne l''ensemble des sens qu''il peut prendre, c''est-à-dire ses différentes acceptions. C''est une notion propre à un mot pris isolément : elle explore la polysémie. Par exemple, le mot « table » a un champ sémantique qui inclut « meuble », « tableau de données », « table de multiplication » ou « se mettre à table » (argot pour avouer). Cette notion est à distinguer du champ lexical, qui concerne un ensemble de mots dans un texte renvoyant à un même thème. La maîtrise de ces deux notions est attendue au CRPE dans la compétence « analyser le fonctionnement du lexique ».',
  'Confondre le champ sémantique (les sens d''un mot) avec le champ lexical (les mots d''un texte sur un même thème).',
  'valide',
  'CRPE Français',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — reponse_courte — Identifier les différents sens du mot "souris" (champ sémantique)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a7b80000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_champ_lexical_semantique',
  'Champ lexical et champ sémantique',
  'Standard',
  'reponse_courte',
  'Le mot « souris » est polysémique. Quel phénomène lexical cette polysémie illustre-t-elle quand on étudie l''ensemble de ses sens (animal, périphérique informatique, muscle de l''agneau) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["champ sémantique","le champ sémantique","polysémie","la polysémie"]}'::jsonb,
  'La polysémie du mot « souris » illustre la notion de champ sémantique : l''ensemble des acceptions d''un même mot forme son champ sémantique. Le mot « souris » peut désigner un petit rongeur, un périphérique d''ordinateur (sens métaphorique lié à la forme) ou un muscle situé dans le gigot d''agneau (terme de boucherie). Ces sens distincts coexistent pour un même signifiant. En classe, étudier le champ sémantique d''un mot, c''est explorer sa polysémie à travers des contextes variés, conformément aux préconisations des programmes pour le cycle 3 (domaine « étudier le lexique »).',
  'Répondre « champ lexical » en confondant les sens d''un mot (champ sémantique) avec les mots d''un texte sur un thème (champ lexical).',
  'valide',
  'CRPE Français',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Distinguer champ lexical et champ sémantique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a7b80000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_champ_lexical_semantique',
  'Champ lexical et champ sémantique',
  'Standard',
  'qcm',
  'Quelle affirmation distingue correctement le champ lexical du champ sémantique ?',
  NULL,
  '[{"id":"a","label":"Le champ lexical concerne un seul mot ; le champ sémantique concerne un texte entier"},{"id":"b","label":"Le champ lexical regroupe des mots d''un texte autour d''un thème ; le champ sémantique désigne l''ensemble des sens d''un mot"},{"id":"c","label":"Les deux notions sont synonymes et désignent la même réalité linguistique"},{"id":"d","label":"Le champ sémantique ne concerne que les verbes ; le champ lexical ne concerne que les noms"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La distinction fondamentale est la suivante : le champ lexical s''applique à un texte et rassemble les mots qui renvoient à un même thème (par exemple, les mots de la peur dans un roman), alors que le champ sémantique s''applique à un mot et désigne l''ensemble de ses acceptions (tous les sens possibles de ce mot). Le champ lexical est donc une notion textuelle et thématique, tandis que le champ sémantique est une notion lexicale et polysémique. Ces deux concepts sont distincts et complémentaires dans l''enseignement du lexique, tel que défini par les programmes officiels et les documents d''accompagnement Éduscol.',
  'Inverser les deux définitions en attribuant le champ lexical au mot unique et le champ sémantique au texte.',
  'valide',
  'CRPE Français',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — vrai_faux — Les synonymes appartiennent-ils toujours au même champ lexical ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a7b80000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_champ_lexical_semantique',
  'Champ lexical et champ sémantique',
  'Standard',
  'vrai_faux',
  'Affirmation : Deux synonymes appartiennent nécessairement et toujours au même champ lexical.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Cette affirmation est fausse. Si deux synonymes partagent souvent le même champ lexical (« effroi » et « terreur » appartiennent tous deux au champ lexical de la peur), ce n''est pas toujours garanti. Deux synonymes appartiennent au même champ lexical uniquement lorsqu''ils partagent le même sens actif dans un contexte donné. Or, les mots polysémiques peuvent être synonymes dans un sens et appartenir à des champs lexicaux différents dans d''autres contextes. Par exemple, « lourd » et « pénible » peuvent être synonymes dans un sens figuré (une tâche lourde/pénible), mais dans d''autres contextes, ils n''appartiennent pas au même champ lexical. La vigilance sur le contexte est donc essentielle.',
  'Considérer que synonymie et appartenance au même champ lexical sont toujours liées, sans tenir compte du rôle du contexte et de la polysémie.',
  'valide',
  'CRPE Français',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — reponse_courte — Dans un texte descriptif, quel est le champ lexical dominant ?
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'a7b80000-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'lex_champ_lexical_semantique',
  'Champ lexical et champ sémantique',
  'Standard',
  'reponse_courte',
  'Lisez cet extrait : « La forêt était dense et silencieuse. Les chênes centenaires tendaient leurs branches vers le ciel, filtrant la lumière. Les fougères tapissaient le sol humide, et l''odeur de la mousse s''élevait doucement. » Quel est le champ lexical dominant de ce passage descriptif ? (répondez en un ou deux mots)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["forêt","la forêt","végétation","la végétation","nature","la nature"]}'::jsonb,
  'Le champ lexical dominant de ce passage est celui de la forêt (ou de la végétation / de la nature) : « forêt », « chênes centenaires », « branches », « fougères », « sol », « mousse » forment un réseau lexical cohérent centré sur l''environnement forestier. Dans un texte descriptif, le champ lexical dominant révèle le cadre ou l''objet de la description et traduit le projet d''écriture de l''auteur. Identifier le champ lexical dominant est une compétence de lecture littéraire développée au cycle 3, en lien avec la maîtrise du vocabulaire thématique et l''étude de la langue au service de la compréhension des textes, conformément aux programmes Éduscol.',
  'Nommer le champ lexical de façon trop générale (« nature » au lieu de « forêt ») ou trop restrictive (« arbres » seulement), sans prendre en compte l''ensemble des mots relevés.',
  'valide',
  'CRPE Français',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;
