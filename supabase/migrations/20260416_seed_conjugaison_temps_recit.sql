-- ============================================================
-- Migration : Série Conjugaison — Les temps du récit dans des extraits littéraires (10 exercices)
-- UUID prefix : e3030000
-- topic_key  : conjugaison_temps_recit
-- ============================================================

-- Q1 — Facile — surlignage_propositions — Le Petit Prince (Saint-Exupéry)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3030000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conjugaison_temps_recit',
  'Valeurs des temps dans le récit littéraire',
  'Facile',
  'surlignage_propositions',
  'Dans cet extrait du Petit Prince, classez les verbes surlignés selon qu''ils expriment une action de premier plan (passé simple) ou un élément d''arrière-plan (imparfait).',
  '« Le petit prince s''assit sur une pierre et leva les yeux vers le ciel. Les étoiles brillaient doucement. Le désert était silencieux et froid. Il murmura : "Les étoiles sont belles, à cause d''une fleur que l''on ne voit pas." »',
  '[{"id":"s1","label":"s''assit"},{"id":"s2","label":"leva"},{"id":"s3","label":"brillaient"},{"id":"s4","label":"était"},{"id":"s5","label":"murmura"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"grp1","label":"Premier plan (passé simple)","color":"blue"},{"id":"grp2","label":"Arrière-plan (imparfait)","color":"amber"}],"mapping":{"s1":"grp1","s2":"grp1","s3":"grp2","s4":"grp2","s5":"grp1"}}'::jsonb,
  'Saint-Exupéry utilise le passé simple (« s''assit », « leva », « murmura ») pour les actions ponctuelles qui font avancer le récit : ce sont les événements de premier plan. L''imparfait (« brillaient », « était ») installe le décor, l''atmosphère nocturne du désert : c''est l''arrière-plan descriptif. Cette alternance passé simple / imparfait est la structure narrative fondamentale du récit littéraire.',
  'Confondre la valeur descriptive de l''imparfait avec une action prolongée. « Brillaient » n''est pas au passé simple même si l''action dure : l''imparfait marque ici le cadre, pas la durée.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — surlignage_propositions — Les Misérables (Hugo)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3030000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conjugaison_temps_recit',
  'Valeurs des temps dans le récit littéraire',
  'Facile',
  'surlignage_propositions',
  'Dans cet extrait des Misérables, distinguez les verbes de premier plan (passé simple) des verbes d''arrière-plan (imparfait).',
  '« Cosette portait un grand seau qui semblait lourd. Elle marchait péniblement dans l''obscurité. Soudain, une main saisit l''anse du seau et le souleva. L''enfant leva la tête. Une grande forme noire se tenait debout près d''elle. »',
  '[{"id":"s1","label":"portait"},{"id":"s2","label":"semblait"},{"id":"s3","label":"marchait"},{"id":"s4","label":"saisit"},{"id":"s5","label":"souleva"},{"id":"s6","label":"leva"},{"id":"s7","label":"se tenait"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"grp1","label":"Premier plan (passé simple)","color":"blue"},{"id":"grp2","label":"Arrière-plan (imparfait)","color":"amber"}],"mapping":{"s1":"grp2","s2":"grp2","s3":"grp2","s4":"grp1","s5":"grp1","s6":"grp1","s7":"grp2"}}'::jsonb,
  'Hugo installe d''abord le décor à l''imparfait (« portait », « semblait », « marchait ») : Cosette dans sa misère quotidienne. L''irruption de Jean Valjean est marquée par le passé simple (« saisit », « souleva », « leva ») : ces actions ponctuelles créent une rupture narrative. « Se tenait » revient à l''imparfait car il décrit un état, non une action. L''alternance des temps crée un effet de surprise dramatique.',
  'Le verbe « se tenait » piège souvent les candidats : bien qu''il décrive Jean Valjean (un personnage actif dans la scène), il est à l''imparfait car il exprime un état constaté, pas une action de premier plan.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — surlignage_propositions — La Gloire de mon père (Pagnol)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3030000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conjugaison_temps_recit',
  'Valeurs des temps dans le récit littéraire',
  'Facile',
  'surlignage_propositions',
  'Dans cet extrait de La Gloire de mon père, classez les verbes selon qu''ils appartiennent au premier plan ou à l''arrière-plan du récit.',
  '« Mon père marchait devant nous. Il portait sur son épaule un fusil brillant. Le soleil chauffait nos nuques. Tout à coup, il s''arrêta net et épaula. Un coup de feu retentit. Les échos roulaient encore dans les collines. »',
  '[{"id":"s1","label":"marchait"},{"id":"s2","label":"portait"},{"id":"s3","label":"chauffait"},{"id":"s4","label":"s''arrêta"},{"id":"s5","label":"épaula"},{"id":"s6","label":"retentit"},{"id":"s7","label":"roulaient"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"grp1","label":"Premier plan (passé simple)","color":"blue"},{"id":"grp2","label":"Arrière-plan (imparfait)","color":"amber"}],"mapping":{"s1":"grp2","s2":"grp2","s3":"grp2","s4":"grp1","s5":"grp1","s6":"grp1","s7":"grp2"}}'::jsonb,
  'Pagnol décrit la promenade à l''imparfait (« marchait », « portait », « chauffait ») : c''est le cadre habituel, la scène en cours. L''expression « tout à coup » signale la bascule vers le premier plan au passé simple (« s''arrêta », « épaula », « retentit ») : des actions soudaines qui rompent la continuité. « Roulaient » revient à l''imparfait car les échos constituent un phénomène duratif qui fait partie du décor sonore.',
  'Les candidats classent souvent « roulaient » au premier plan car il suit le coup de feu. Or l''imparfait marque ici la conséquence durable (les échos qui se prolongent), pas un événement ponctuel.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — surlignage_propositions — Le Grand Meaulnes (Alain-Fournier)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3030000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conjugaison_temps_recit',
  'Valeurs des temps dans le récit littéraire',
  'Intermediaire',
  'surlignage_propositions',
  'Classez les verbes de cet extrait du Grand Meaulnes selon leur valeur narrative : premier plan (passé simple), arrière-plan descriptif (imparfait) ou antériorité (plus-que-parfait).',
  '« La nuit était tombée. Un vent glacé soufflait dans les couloirs. Meaulnes poussa une porte et découvrit une grande salle illuminée. Des guirlandes pendaient du plafond. Quelqu''un avait disposé des bougies sur chaque table. Il s''avança, le cœur battant. »',
  '[{"id":"s1","label":"était tombée"},{"id":"s2","label":"soufflait"},{"id":"s3","label":"poussa"},{"id":"s4","label":"découvrit"},{"id":"s5","label":"pendaient"},{"id":"s6","label":"avait disposé"},{"id":"s7","label":"s''avança"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"grp1","label":"Premier plan (passé simple)","color":"blue"},{"id":"grp2","label":"Arrière-plan (imparfait)","color":"amber"},{"id":"grp3","label":"Antériorité (plus-que-parfait)","color":"green"}],"mapping":{"s1":"grp3","s2":"grp2","s3":"grp1","s4":"grp1","s5":"grp2","s6":"grp3","s7":"grp1"}}'::jsonb,
  'Trois plans temporels coexistent dans cet extrait. Le passé simple (« poussa », « découvrit », « s''avança ») porte les actions de premier plan qui font avancer l''intrigue. L''imparfait (« soufflait », « pendaient ») peint le décor. Le plus-que-parfait (« était tombée », « avait disposé ») exprime l''antériorité : ces événements se sont produits avant le moment du récit. Alain-Fournier crée ainsi une atmosphère de mystère en superposant ces trois couches temporelles.',
  '« Était tombée » est souvent confondu avec un imparfait à cause de l''auxiliaire « était ». C''est en réalité un plus-que-parfait (auxiliaire à l''imparfait + participe passé) qui marque un fait accompli antérieur à la scène.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — qcm — Vendredi ou la vie sauvage (Tournier)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3030000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conjugaison_temps_recit',
  'Valeurs des temps dans le récit littéraire',
  'Intermediaire',
  'qcm',
  'Lisez cet extrait de Vendredi ou la vie sauvage. Pourquoi Michel Tournier utilise-t-il le passé simple pour « se dressa » et l''imparfait pour « léchait » ?',
  '« Robinson dormait sur un lit de fougères. La chèvre léchait tranquillement les pierres couvertes de sel. Soudain, Vendredi se dressa d''un bond et scruta l''horizon. Un panache de fumée s''élevait au-dessus des arbres. »',
  '[{"id":"a","label":"Le passé simple marque une action brève et l''imparfait une action longue : c''est une question de durée."},{"id":"b","label":"Le passé simple signale une action de premier plan qui fait irruption dans le récit, tandis que l''imparfait peint l''arrière-plan (scène habituelle, décor)."},{"id":"c","label":"Le passé simple est réservé aux personnages principaux et l''imparfait aux animaux."},{"id":"d","label":"Tournier alterne les temps pour éviter les répétitions, c''est un choix purement stylistique sans valeur narrative."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La réponse correcte est B. Le passé simple (« se dressa ») marque une action de premier plan : un événement soudain qui rompt l''équilibre de la scène. L''imparfait (« léchait ») décrit l''arrière-plan, le cadre paisible dans lequel survient l''événement. Ce n''est pas une question de durée (A est un piège fréquent) mais de plan narratif. L''alternance des temps structure le récit en distinguant ce qui fait avancer l''histoire (premier plan) de ce qui en constitue le décor (arrière-plan).',
  'L''erreur la plus répandue au CRPE est de réduire l''opposition passé simple/imparfait à une opposition durée brève/durée longue. La grammaire scolaire (Éduscol) insiste sur la distinction premier plan / arrière-plan, qui est une notion aspectuelle, non temporelle.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — qcm — Le Petit Nicolas (Sempé/Goscinny)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3030000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conjugaison_temps_recit',
  'Valeurs des temps dans le récit littéraire',
  'Intermediaire',
  'qcm',
  'Dans cet extrait du Petit Nicolas, quelle est la valeur de l''imparfait dans les verbes « criait » et « tirait » ?',
  '« Pendant la récréation, c''était formidable. Agnan criait, Rufus tirait les cheveux de Clotaire, Eudes donnait des coups de poing et Alceste mangeait son quatrième croissant. La maîtresse a sifflé la fin de la récréation. »',
  '[{"id":"a","label":"Imparfait de description : il décrit le décor de la scène."},{"id":"b","label":"Imparfait d''habitude (itératif) : il exprime des actions répétitives, typiques de la récréation."},{"id":"c","label":"Imparfait de politesse : il atténue les actions des personnages."},{"id":"d","label":"Imparfait de narration : il remplace un passé simple pour créer un effet de ralenti."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''imparfait a ici une valeur itérative (d''habitude). Goscinny ne raconte pas une scène unique : il dépeint le déroulement typique d''une récréation. Les actions d''Agnan, Rufus, Eudes et Alceste sont présentées comme récurrentes, habituelles — c''est « ce qui se passait toujours ». Le passé composé « a sifflé » marque en revanche un événement ponctuel qui met fin à cette scène habituelle. L''imparfait itératif est distinct de l''imparfait descriptif (qui peint un décor) et de l''imparfait de narration (qui crée un effet stylistique de ralenti).',
  'Confondre l''imparfait itératif (habitude) et l''imparfait descriptif (décor). Ici, les verbes « criait », « tirait », « donnait », « mangeait » expriment des actions répétées, pas un simple cadre statique.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — qcm — L''Étranger (Camus)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3030000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conjugaison_temps_recit',
  'Valeurs des temps dans le récit littéraire',
  'Intermediaire',
  'qcm',
  'Dans cet extrait inspiré d''un récit littéraire, pourquoi le passé composé remplace-t-il le passé simple comme temps du premier plan ?',
  '« Aujourd''hui, maman est morte. Ou peut-être hier, je ne sais pas. J''ai reçu un télégramme de l''asile : "Mère décédée. Enterrement demain." Cela ne veut rien dire. C''était peut-être hier. »',
  '[{"id":"a","label":"Le passé composé est une erreur : l''auteur aurait dû utiliser le passé simple."},{"id":"b","label":"Le passé composé crée un effet de proximité avec le présent : le narrateur raconte des événements encore liés à son vécu actuel, dans un registre oral."},{"id":"c","label":"Le passé composé est utilisé car l''action est antérieure au moment du récit, c''est une valeur d''antériorité."},{"id":"d","label":"Le passé composé sert uniquement à marquer que l''action est terminée (valeur accomplie), sans autre effet stylistique."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le passé composé, contrairement au passé simple, conserve un lien avec le présent d''énonciation. En choisissant ce temps, Camus installe un registre de langue courant, presque oral, et crée un effet de proximité immédiate : le lecteur a l''impression que le narrateur parle au présent de ce qui vient de se passer. Le passé simple aurait créé une distance narrative classique. C''est un choix stylistique majeur qui définit tout le ton du roman.',
  'Croire que le passé composé et le passé simple sont interchangeables. Ils partagent la valeur de premier plan (action ponctuelle, accomplie), mais le passé composé maintient un ancrage dans le présent que le passé simple n''a pas.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — reponse_courte — Les Misérables (Hugo)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3030000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conjugaison_temps_recit',
  'Valeurs des temps dans le récit littéraire',
  'Avance',
  'reponse_courte',
  'À quel temps est conjugué le verbe « avait compris » dans cet extrait ? Nommez ce temps et expliquez sa valeur dans le récit en un ou deux mots.',
  '« Jean Valjean regarda Cosette. Il avait compris. La petite ne voulait pas retourner chez les Thénardier. Il prit sa main et ils marchèrent en silence dans la nuit froide. »',
  NULL,
  '{"mode":"text","acceptableAnswers":["plus-que-parfait","plus-que-parfait, antériorité","plus-que-parfait antériorité","Plus-que-parfait","plus que parfait"]}'::jsonb,
  'Le verbe « avait compris » est au plus-que-parfait de l''indicatif (auxiliaire « avoir » à l''imparfait + participe passé « compris »). Sa valeur dans ce récit est l''antériorité : la compréhension de Jean Valjean est antérieure aux actions au passé simple (« prit », « marchèrent »). Le plus-que-parfait exprime un fait accompli avant le moment de référence du récit. Hugo l''utilise pour montrer que la décision de Valjean était déjà prise intérieurement avant qu''il n''agisse.',
  'Les candidats confondent souvent le plus-que-parfait avec le passé composé. « Avait compris » (plus-que-parfait) marque l''antériorité par rapport au passé simple, tandis que « a compris » (passé composé) marquerait l''antériorité par rapport au présent.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — reponse_courte — Le Petit Prince (Saint-Exupéry)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3030000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conjugaison_temps_recit',
  'Valeurs des temps dans le récit littéraire',
  'Avance',
  'reponse_courte',
  'Dans cet extrait, le verbe « regardait » est à l''imparfait. Quelle est sa valeur précise dans ce contexte narratif ? (Répondez par le nom de la valeur.)',
  '« Le petit prince regardait le coucher de soleil. Ce jour-là, il l''avait vu quarante-quatre fois. Il dit avec mélancolie : "Tu sais, quand on est tellement triste, on aime les couchers de soleil." »',
  NULL,
  '{"mode":"text","acceptableAnswers":["description","arrière-plan","imparfait de description","arrière-plan descriptif","descriptive","valeur descriptive"]}'::jsonb,
  'Le verbe « regardait » est à l''imparfait de description (ou arrière-plan descriptif). Il ne s''agit pas ici d''une habitude (valeur itérative) ni d''une action de premier plan. L''imparfait peint une scène contemplative : le petit prince en train de regarder le coucher de soleil. Cette valeur aspectuelle sécante (on voit l''action en cours, sans bornes) crée un tableau que viennent interrompre les actions ponctuelles au passé simple (« dit ») et au plus-que-parfait (« avait vu »). Saint-Exupéry utilise cette pause descriptive pour installer la mélancolie du personnage.',
  'Confondre la valeur descriptive et la valeur itérative de l''imparfait. « Regardait » décrit une scène unique en cours, pas une habitude répétée.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — reponse_courte — Le Grand Meaulnes (Alain-Fournier)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e3030000-0000-0000-0000-00000000000a',
  'Francais',
  'conjugaison',
  'conjugaison_temps_recit',
  'Valeurs des temps dans le récit littéraire',
  'Avance',
  'reponse_courte',
  'Dans cet extrait, le verbe « marchait » est à l''imparfait alors qu''il raconte une action unique dans un récit au passé simple. Comment appelle-t-on cette valeur particulière de l''imparfait ?',
  '« Le lendemain matin, on retrouva Meaulnes sur la route de Vierzon. Il marchait, un bâton à la main, vers la fête mystérieuse. Il arriva au domaine à la nuit tombée et poussa la grille rouillée. »',
  NULL,
  '{"mode":"text","acceptableAnswers":["imparfait de narration","imparfait narratif","narration","narratif","imparfait de rupture","rupture"]}'::jsonb,
  'Le verbe « marchait » illustre l''imparfait de narration (aussi appelé imparfait de rupture ou imparfait pittoresque). Normalement, une action de premier plan dans un récit au passé simple serait au passé simple (« il marcha »). En utilisant l''imparfait, l''auteur crée un effet de ralenti cinématographique : l''action semble se dérouler au présent sous les yeux du lecteur. C''est un procédé stylistique qui confère à la scène une dimension visuelle et poétique. L''imparfait de narration est à distinguer de l''imparfait descriptif (décor) et de l''imparfait itératif (habitude).',
  'L''imparfait de narration est la valeur la plus difficile à identifier car elle contredit l''usage attendu : une action ponctuelle au passé simple. Les candidats le classent souvent comme simple imparfait descriptif.',
  'valide',
  'CRPE Français — Conjugaison interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
