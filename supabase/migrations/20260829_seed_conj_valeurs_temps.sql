-- Migration: 10 exercices — Valeurs des temps verbaux
-- Série : conj_valeurs_temps (Français, conjugaison)
-- Imparfait descriptif/narratif, passé simple, présent de narration, plus-que-parfait, futur
-- Terminologie Éduscol 2021 stricte
-- UUID prefix: e9290000

-- Q1 — QCM — Valeur de l'imparfait
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9290000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_valeurs_temps',
  'Valeurs des temps — imparfait, passé simple, présent de narration',
  'Standard',
  'qcm',
  'Dans « Le ciel était gris, les oiseaux chantaient doucement, une brume légère enveloppait la campagne », quelle est la valeur de l''imparfait ?',
  NULL,
  '[{"id":"a","label":"Imparfait de description (arrière-plan)"},{"id":"b","label":"Imparfait d''habitude (itératif)"},{"id":"c","label":"Imparfait de narration (rupture)"},{"id":"d","label":"Imparfait d''atténuation (politesse)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Cet imparfait a une valeur descriptive : il pose le décor, l''arrière-plan du récit. On décrit un état stable (le ciel, les oiseaux, la brume) sans bornes temporelles précises. C''est la valeur la plus fréquente de l''imparfait dans le récit au passé. L''imparfait de description s''oppose au passé simple qui, lui, présente les actions de premier plan (événements ponctuels qui font avancer l''intrigue). Dans le couple imparfait/passé simple, l''imparfait = arrière-plan, le passé simple = premier plan.',
  'Confondre imparfait de description et imparfait d''habitude. L''imparfait d''habitude implique la répétition (« Chaque matin, il se levait à six heures »), tandis que l''imparfait de description pose un tableau statique à un moment donné.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  1
) ON CONFLICT (id) DO NOTHING;

-- Q2 — QCM — Valeur du passé simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9290000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_valeurs_temps',
  'Valeurs des temps — imparfait, passé simple, présent de narration',
  'Standard',
  'qcm',
  'Dans « Soudain, un éclair déchira le ciel et la foudre s''abattit sur le vieux chêne », quelle est la valeur du passé simple ?',
  NULL,
  '[{"id":"a","label":"Action de premier plan, ponctuelle et bornée"},{"id":"b","label":"Action habituelle dans le passé"},{"id":"c","label":"Description d''un état durable"},{"id":"d","label":"Antériorité par rapport à une autre action passée"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le passé simple exprime ici des actions de premier plan : elles sont ponctuelles (on peut les situer à un moment précis), bornées (elles ont un début et une fin) et elles font avancer le récit. Les marqueurs « soudain » et la coordination « et » renforcent le caractère événementiel. Le passé simple est le temps du premier plan dans le récit au passé : il présente les faits qui constituent la trame narrative, par opposition à l''imparfait qui fournit l''arrière-plan (descriptions, états, habitudes).',
  'Croire que le passé simple exprime un passé « plus ancien » que l''imparfait. Les deux temps renvoient à la même époque passée ; c''est leur aspect qui diffère : le passé simple est perfectif (action vue comme achevée, bornée), l''imparfait est imperfectif (action vue dans son déroulement).',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  2
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Vrai/Faux — Présent de narration
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9290000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_valeurs_temps',
  'Valeurs des temps — imparfait, passé simple, présent de narration',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans « En 1789, le peuple de Paris prend la Bastille », le présent est utilisé comme présent de narration (ou présent historique).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le présent de narration (aussi appelé présent historique) est employé pour raconter des événements passés au présent, afin de les rendre plus vivants et de créer un effet de proximité avec le lecteur. Ici, l''événement (la prise de la Bastille) est un fait historique révolu, mais le narrateur choisit le présent pour donner une impression d''immédiateté. Le présent de narration se reconnaît au contexte : un indicateur temporel passé (« en 1789 ») combiné avec un verbe au présent. C''est un procédé stylistique courant dans les récits historiques et littéraires.',
  'Croire que le présent dans un récit est toujours une erreur de concordance. Le présent de narration est un choix stylistique délibéré, reconnu par la grammaire officielle.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  3
) ON CONFLICT (id) DO NOTHING;

-- Q4 — QCM — Imparfait d'habitude
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9290000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_valeurs_temps',
  'Valeurs des temps — imparfait, passé simple, présent de narration',
  'Standard',
  'qcm',
  'Dans « Chaque dimanche, ma grand-mère préparait une tarte aux pommes et nous la dégustions ensemble », quelle est la valeur de l''imparfait ?',
  NULL,
  '[{"id":"a","label":"Imparfait de description"},{"id":"b","label":"Imparfait d''habitude (itératif)"},{"id":"c","label":"Imparfait de narration"},{"id":"d","label":"Imparfait hypocoristique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''imparfait a ici une valeur d''habitude (ou valeur itérative) : il exprime une action qui se répétait régulièrement. Le marqueur « chaque dimanche » indique la répétition. Les verbes « préparait » et « dégustions » désignent des actions qui revenaient de façon habituelle. L''imparfait d''habitude se distingue de l''imparfait de description (qui pose un décor statique) et de l''imparfait de narration (qui remplace un passé simple pour créer un effet de ralenti ou de rupture).',
  'Confondre l''imparfait d''habitude avec l''imparfait de description. Le critère distinctif est la répétition : s''il y a un marqueur de fréquence (chaque, toujours, tous les jours…), c''est un imparfait d''habitude.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  4
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Réponse courte — Identifier le temps et sa valeur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9290000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_valeurs_temps',
  'Valeurs des temps — imparfait, passé simple, présent de narration',
  'Standard',
  'reponse_courte',
  'Dans « La Terre tourne autour du Soleil », quelle est la valeur du présent ? Répondez en deux ou trois mots.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["présent de vérité générale","vérité générale","présent de vérité","présent gnomique"]}'::jsonb,
  'Le présent a ici une valeur de vérité générale (aussi appelé présent gnomique) : il exprime un fait scientifique toujours vrai, indépendant du moment de l''énonciation. Ce présent se retrouve dans les définitions, les proverbes (« Qui sème le vent récolte la tempête »), les lois scientifiques et les vérités universelles. Il s''oppose au présent d''énonciation (ancré dans le moment où l''on parle) et au présent de narration (qui raconte un événement passé).',
  'Confondre le présent de vérité générale avec le présent d''énonciation. Le présent d''énonciation est ancré dans la situation de communication (« Je te parle »), alors que le présent gnomique est intemporel.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  5
) ON CONFLICT (id) DO NOTHING;

-- Q6 — QCM — Plus-que-parfait (antériorité)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9290000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_valeurs_temps',
  'Valeurs des temps — imparfait, passé simple, présent de narration',
  'Standard',
  'qcm',
  'Dans « Quand les secours arrivèrent, l''incendie avait déjà ravagé tout le quartier », quelle est la valeur du plus-que-parfait « avait ravagé » ?',
  NULL,
  '[{"id":"a","label":"Action antérieure à une autre action passée"},{"id":"b","label":"Action simultanée à une autre action passée"},{"id":"c","label":"Action habituelle dans le passé"},{"id":"d","label":"Action hypothétique irréelle"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le plus-que-parfait « avait ravagé » exprime l''antériorité : l''incendie a ravagé le quartier AVANT l''arrivée des secours. Le plus-que-parfait est le temps composé qui correspond à l''imparfait ; il situe une action dans un passé antérieur à un autre fait passé (exprimé ici au passé simple « arrivèrent »). On dit que le plus-que-parfait marque l''aspect accompli dans le passé. L''adverbe « déjà » renforce cette valeur d''antériorité.',
  'Confondre antériorité et simultanéité. Le plus-que-parfait est toujours antérieur au passé simple ou à l''imparfait avec lequel il est en relation. C''est le « passé du passé ».',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  6
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Vrai/Faux — Imparfait de narration (rupture)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9290000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_valeurs_temps',
  'Valeurs des temps — imparfait, passé simple, présent de narration',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans « Il courut de toutes ses forces. Cinq minutes plus tard, il franchissait la ligne d''arrivée », l''imparfait « franchissait » est un imparfait de description.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux ! C''est un imparfait de narration (aussi appelé imparfait de rupture ou imparfait pittoresque). Cet imparfait remplace un passé simple attendu pour créer un effet de ralenti cinématographique. Il est reconnaissable à deux indices : (1) il suit un passé simple et (2) il est accompagné d''un complément circonstanciel de temps précis (« cinq minutes plus tard »). L''imparfait de narration exprime une action de premier plan (ponctuelle, bornée) — ce qui est normalement le rôle du passé simple. C''est un effet stylistique, un « écart » par rapport à la norme.',
  'Croire que l''imparfait exprime toujours l''arrière-plan. L''imparfait de narration est l''exception : il prend la place du passé simple pour ralentir le rythme et mettre en valeur un moment clé.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  7
) ON CONFLICT (id) DO NOTHING;

-- Q8 — QCM — Valeur du futur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9290000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_valeurs_temps',
  'Valeurs des temps — imparfait, passé simple, présent de narration',
  'Standard',
  'qcm',
  'Dans « Tu rangeras ta chambre avant de sortir ! », quelle est la valeur du futur simple ?',
  NULL,
  '[{"id":"a","label":"Futur de prédiction (fait probable)"},{"id":"b","label":"Futur d''ordre (injonction)"},{"id":"c","label":"Futur de promesse"},{"id":"d","label":"Futur de conjecture (supposition)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le futur simple a ici une valeur d''ordre (ou valeur jussive) : il remplace un impératif pour exprimer une injonction catégorique. Le point d''exclamation renforce cette valeur injonctive. Le futur d''ordre est fréquent dans les consignes, les règlements (« Les élèves ne courront pas dans les couloirs ») et les situations où un locuteur impose sa volonté. Il est perçu comme plus autoritaire que l''impératif. Le futur peut aussi avoir une valeur de prédiction (« Il pleuvra demain »), de promesse (« Je t''aiderai ») ou de conjecture (« Ce sera sans doute lui »).',
  'Croire que le futur exprime toujours une action à venir. Le futur d''ordre n''est pas une prédiction mais un commandement déguisé. C''est un piège fréquent au CRPE.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Réponse courte — Conditionnel valeur modale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9290000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_valeurs_temps',
  'Valeurs des temps — imparfait, passé simple, présent de narration',
  'Standard',
  'reponse_courte',
  'Dans « Si j''avais des ailes, je volerais par-dessus les montagnes », quelle valeur a le conditionnel « volerais » ? Répondez en deux ou trois mots.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["irréel du présent","valeur d''irréel","conditionnel d''irréel","hypothèse irréelle","irréel"]}'::jsonb,
  'Le conditionnel « volerais » exprime l''irréel du présent : la condition (avoir des ailes) est contraire à la réalité actuelle. Le système hypothétique est « si + imparfait → conditionnel présent ». Selon la terminologie Éduscol, le conditionnel est un mode (et non un temps de l''indicatif, comme le soutenait l''ancienne grammaire). Il peut avoir une valeur modale d''irréel (ici), de potentiel (« Si tu venais, on irait au cinéma ») ou d''atténuation/politesse (« Je voudrais un café »). La distinction irréel/potentiel dépend du contexte : l''irréel contredit la réalité, le potentiel reste envisageable.',
  'Confondre le conditionnel mode (valeur modale : irréel, potentiel, atténuation) et le conditionnel dit « temporel » (futur dans le passé : « Il dit qu''il viendrait »). Le futur dans le passé est une valeur temporelle du conditionnel, pas une valeur modale.',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  9
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Vrai/Faux — Couple imparfait / passé simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published, series_order
) VALUES (
  'e9290000-0000-0000-0000-000000000010',
  'Francais',
  'conjugaison',
  'conj_valeurs_temps',
  'Valeurs des temps — imparfait, passé simple, présent de narration',
  'Standard',
  'vrai_faux',
  'Vrai ou faux : dans le système du récit au passé, l''imparfait exprime l''aspect imperfectif (action vue dans son déroulement, sans bornes) et le passé simple l''aspect perfectif (action vue comme achevée, bornée).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. L''opposition aspectuelle est le critère fondamental qui distingue l''imparfait du passé simple dans le récit au passé. L''imparfait est imperfectif : il montre l''action en cours, sans marquer ni son début ni sa fin (« Il marchait » = on le voit en train de marcher). Le passé simple est perfectif : il présente l''action comme un tout achevé, avec des bornes (« Il marcha trois heures » = action vue globalement, de son début à sa fin). Cette opposition aspectuelle explique la répartition arrière-plan (imparfait) / premier plan (passé simple) dans le récit. C''est un concept central au CRPE.',
  'Croire que l''imparfait désigne un passé plus ancien que le passé simple, ou que le passé simple est un passé « plus court ». Ce n''est pas la durée qui les distingue mais l''aspect : la façon dont l''énonciateur présente l''action (en cours vs achevée).',
  'valide',
  'CRPE Français — Terminologie Éduscol',
  'free',
  true,
  10
) ON CONFLICT (id) DO NOTHING;