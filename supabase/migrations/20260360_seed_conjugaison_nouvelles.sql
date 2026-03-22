-- ============================================================
-- Migration : 3 séries Conjugaison (30 exercices)
-- UUID prefix : a601–a603
-- ============================================================

-- ============================================================
-- SÉRIE 1 : Temps simples et temps composés
-- topic_key  : conj_temps_simples_composes
-- topic_label: Temps simples et temps composés
-- ============================================================

-- Q1 — Facile — qcm — Identifier un temps composé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6010000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_temps_simples_composes',
  'Temps simples et temps composés',
  'Facile',
  'qcm',
  'Parmi les formes verbales suivantes, laquelle est conjuguée à un temps composé ?',
  NULL,
  '[{"id":"a","label":"il chantait"},{"id":"b","label":"il a chanté"},{"id":"c","label":"il chanta"},{"id":"d","label":"il chantera"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Un temps composé se forme avec un auxiliaire (être ou avoir) conjugué à un temps simple, suivi du participe passé du verbe. « Il a chanté » est au passé composé : l''auxiliaire « avoir » est conjugué au présent de l''indicatif, suivi du participe passé « chanté ». Les trois autres formes sont des temps simples : imparfait, passé simple et futur simple.',
  'Les élèves confondent souvent passé simple et passé composé. Il faut rappeler que le passé composé comporte toujours deux éléments : un auxiliaire et un participe passé.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — vrai_faux — Auxiliaire être ou avoir
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6010000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_temps_simples_composes',
  'Temps simples et temps composés',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : le passé composé se forme toujours avec l''auxiliaire « avoir ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Le passé composé peut se former avec l''auxiliaire « avoir » (j''ai mangé) ou l''auxiliaire « être » (je suis parti). Les verbes pronominaux (se laver → je me suis lavé) et certains verbes intransitifs de mouvement ou de changement d''état (aller, venir, naître, mourir, tomber, etc.) se conjuguent avec « être ». Le choix de l''auxiliaire détermine les règles d''accord du participe passé.',
  'Beaucoup d''élèves généralisent l''emploi de l''auxiliaire « avoir » car il est statistiquement plus fréquent, oubliant les verbes qui exigent « être ».',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — reponse_courte — Nommer le temps composé correspondant au présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6010000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_temps_simples_composes',
  'Temps simples et temps composés',
  'Facile',
  'reponse_courte',
  'Quel est le temps composé qui correspond au présent de l''indicatif (relation d''antériorité) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["passé composé","le passé composé","Passé composé","Le passé composé"]}'::jsonb,
  'Le passé composé est le temps composé qui entretient une relation d''antériorité avec le présent de l''indicatif. Il se forme avec l''auxiliaire être ou avoir conjugué au présent, suivi du participe passé. Quand on dit « j''ai fini mon travail » (passé composé), l''action est antérieure au moment présent. Cette correspondance temps simple / temps composé est systématique dans le système verbal français.',
  'Les élèves confondent parfois le passé composé avec l''imparfait, car les deux expriment le passé. Or l''imparfait est un temps simple, pas un temps composé.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Relation d'antériorité imparfait / plus-que-parfait
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6010000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_temps_simples_composes',
  'Temps simples et temps composés',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Quand il avait terminé ses devoirs, il jouait dehors », quel rapport temporel le plus-que-parfait exprime-t-il par rapport à l''imparfait ?',
  NULL,
  '[{"id":"a","label":"La simultanéité"},{"id":"b","label":"L''antériorité"},{"id":"c","label":"La postériorité"},{"id":"d","label":"La répétition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le plus-que-parfait (« avait terminé ») exprime l''antériorité par rapport à l''imparfait (« jouait »). C''est la relation fondamentale entre un temps composé et le temps simple auquel il est associé : le temps composé marque l''aspect accompli et l''antériorité. L''action de terminer les devoirs est achevée avant que commence l''action de jouer. Cette correspondance imparfait / plus-que-parfait est parallèle à celle du présent / passé composé.',
  'Certains élèves interprètent le plus-que-parfait comme un simple « passé lointain » sans percevoir la relation d''antériorité qu''il entretient avec l''imparfait.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — qcm — Aspect accompli vs inaccompli
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6010000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_temps_simples_composes',
  'Temps simples et temps composés',
  'Intermediaire',
  'qcm',
  'Dans la terminologie grammaticale officielle, quel terme désigne l''aspect d''un procès présenté comme achevé, typiquement exprimé par un temps composé ?',
  NULL,
  '[{"id":"a","label":"Aspect sécant"},{"id":"b","label":"Aspect inaccompli"},{"id":"c","label":"Aspect accompli"},{"id":"d","label":"Aspect itératif"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''aspect accompli désigne un procès envisagé au-delà de son terme, c''est-à-dire comme achevé. Les temps composés (passé composé, plus-que-parfait, futur antérieur, passé antérieur) expriment typiquement cet aspect. À l''inverse, les temps simples expriment l''aspect inaccompli : le procès est envisagé en cours de déroulement. Cette distinction accompli/inaccompli est fondamentale dans l''analyse du système verbal français telle que décrite dans la Terminologie grammaticale de référence (Éduscol, 2020).',
  'L''aspect accompli est souvent confondu avec l''aspect perfectif (borné). L''aspect accompli se rapporte à l''achèvement du procès, tandis que l''aspect perfectif concerne la présence de bornes inhérentes au procès.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — vrai_faux — Futur antérieur et antériorité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6010000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_temps_simples_composes',
  'Temps simples et temps composés',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : le futur antérieur exprime une action future achevée avant une autre action future exprimée au futur simple.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le futur antérieur est le temps composé associé au futur simple. Il exprime l''aspect accompli dans le futur : l''action sera achevée avant le repère temporel futur. Par exemple : « Quand j''aurai terminé (futur antérieur), je partirai (futur simple). » L''action de terminer est antérieure à l''action de partir, bien que les deux soient situées dans l''avenir. Cette relation d''antériorité est identique à celle qui lie le passé composé au présent ou le plus-que-parfait à l''imparfait.',
  'Les élèves peinent à conceptualiser une antériorité dans le futur. Ils associent spontanément l''antériorité au passé, sans comprendre que le système des temps composés fonctionne de manière symétrique pour tous les temps simples.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — reponse_courte — Nommer le temps composé du passé simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6010000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_temps_simples_composes',
  'Temps simples et temps composés',
  'Intermediaire',
  'reponse_courte',
  'Quel temps composé de l''indicatif exprime l''antériorité par rapport au passé simple ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["passé antérieur","le passé antérieur","Passé antérieur","Le passé antérieur"]}'::jsonb,
  'Le passé antérieur est le temps composé qui correspond au passé simple dans le système des temps de l''indicatif. Il se forme avec l''auxiliaire être ou avoir conjugué au passé simple, suivi du participe passé (ex. : « il eut chanté », « elle fut partie »). Il exprime une action achevée immédiatement avant une action au passé simple. On le rencontre principalement dans les subordonnées temporelles introduites par « quand », « lorsque », « dès que », « après que ».',
  'Le passé antérieur est souvent confondu avec le plus-que-parfait. La différence tient à l''auxiliaire : conjugué au passé simple pour le passé antérieur, à l''imparfait pour le plus-que-parfait.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — qcm — Valeur modale du futur antérieur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6010000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_temps_simples_composes',
  'Temps simples et temps composés',
  'Difficile',
  'qcm',
  'Dans la phrase « Il aura encore oublié ses clés », quelle valeur le futur antérieur exprime-t-il ?',
  NULL,
  '[{"id":"a","label":"L''antériorité dans le futur"},{"id":"b","label":"Une hypothèse ou conjecture portant sur le passé"},{"id":"c","label":"Un ordre atténué"},{"id":"d","label":"Un fait habituel dans le passé"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ici, le futur antérieur n''exprime pas une action future achevée avant une autre, mais une conjecture, une supposition portant sur un fait passé. C''est sa valeur modale : le locuteur suppose que l''oubli des clés a eu lieu, sans en avoir la certitude. Cette valeur est parallèle au futur simple de conjecture (« il sera malade ») mais porte sur un fait accompli. La Terminologie grammaticale de référence distingue la valeur temporelle des temps (situation dans le temps) de leur valeur modale (attitude du locuteur).',
  'La valeur modale de conjecture du futur antérieur est souvent méconnue. Les élèves et candidats au CRPE l''interprètent systématiquement comme un futur temporel, sans percevoir le décalage entre la forme future et le sens passé.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — vrai_faux — Temps surcomposés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6010000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_temps_simples_composes',
  'Temps simples et temps composés',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « Quand il a eu terminé, il est parti », la forme « a eu terminé » est un passé surcomposé, qui exprime l''antériorité par rapport au passé composé.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le passé surcomposé (« a eu terminé ») se forme avec l''auxiliaire au passé composé + le participe passé. Il marque l''antériorité par rapport au passé composé, exactement comme le passé antérieur le fait par rapport au passé simple. Les temps surcomposés sont rares à l''écrit standard mais vivants à l''oral et dans certaines variétés régionales du français. La Terminologie grammaticale de référence les mentionne dans le système des temps composés comme une extension logique du principe de composition.',
  'Les temps surcomposés sont souvent perçus comme des erreurs ou des formes populaires. En réalité, ils font partie du système verbal français et suivent la même logique de composition que les temps composés ordinaires.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — reponse_courte — Formation du plus-que-parfait du subjonctif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6010000-0000-0000-0000-00000000000a',
  'Francais',
  'conjugaison',
  'conj_temps_simples_composes',
  'Temps simples et temps composés',
  'Difficile',
  'reponse_courte',
  'Comment se forme le plus-que-parfait du subjonctif ? Conjuguez « finir » à la 3e personne du singulier au plus-que-parfait du subjonctif.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["qu''il eût fini","qu''elle eût fini","il eût fini","elle eût fini","eût fini"]}'::jsonb,
  'Le plus-que-parfait du subjonctif se forme avec l''auxiliaire être ou avoir conjugué à l''imparfait du subjonctif, suivi du participe passé. Pour « finir » à la 3e personne du singulier : « qu''il eût fini ». L''auxiliaire « avoir » à l''imparfait du subjonctif donne « eût » (avec accent circonflexe). Ce temps composé correspond à l''imparfait du subjonctif, comme le plus-que-parfait de l''indicatif correspond à l''imparfait de l''indicatif.',
  'L''accent circonflexe sur « eût » est fréquemment oublié. Il ne faut pas confondre « eût » (subjonctif imparfait) avec « eut » (passé simple de l''indicatif), qui n''a pas d''accent.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 2 : Verbes irréguliers du 3e groupe
-- topic_key  : conj_verbes_irreguliers
-- topic_label: Verbes irréguliers du 3e groupe
-- ============================================================

-- Q1 — Facile — qcm — Conjugaison de « prendre » au présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6020000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_verbes_irreguliers',
  'Verbes irréguliers du 3e groupe',
  'Facile',
  'qcm',
  'Quelle est la forme correcte du verbe « prendre » à la 3e personne du pluriel du présent de l''indicatif ?',
  NULL,
  '[{"id":"a","label":"ils prennent"},{"id":"b","label":"ils prenent"},{"id":"c","label":"ils prendrent"},{"id":"d","label":"ils prendent"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La forme correcte est « ils prennent » avec le doublement du « n ». Le verbe « prendre » présente une alternance du radical : « prend- » au singulier (je prends, tu prends, il prend), « pren- » aux deux premières personnes du pluriel (nous prenons, vous prenez) et « prenn- » à la 3e personne du pluriel (ils prennent). Cette alternance se retrouve dans tous les composés de « prendre » : comprendre, apprendre, surprendre, etc.',
  'L''erreur la plus fréquente est d''écrire « ils prenent » avec un seul « n », par analogie avec « nous prenons ». Le doublement de la consonne à la 3e personne du pluriel est une caractéristique spécifique de ce verbe.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — vrai_faux — Verbe « peindre » au présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6020000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_verbes_irreguliers',
  'Verbes irréguliers du 3e groupe',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : le verbe « peindre » conserve le « d » de son radical à toutes les personnes du présent de l''indicatif.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Les verbes en -indre (peindre, craindre, joindre) perdent le « d » de leur radical au présent de l''indicatif. Au singulier, le radical se réduit : « je peins, tu peins, il peint ». Au pluriel, le groupe -nd- se transforme en -gn- : « nous peignons, vous peignez, ils peignent ». Le « d » ne réapparaît qu''au futur simple et au conditionnel présent (« je peindrai, je peindrais »), qui se construisent sur l''infinitif.',
  'Les élèves appliquent souvent le modèle des verbes en -dre comme « vendre » (je vends, il vend) aux verbes en -indre, écrivant fautivement « il peind ». Or les verbes en -indre et -soudre constituent des exceptions à la règle des verbes en -dre.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — reponse_courte — Conjuguer « pouvoir » au présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6020000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_verbes_irreguliers',
  'Verbes irréguliers du 3e groupe',
  'Facile',
  'reponse_courte',
  'Conjuguez le verbe « pouvoir » à la 1re personne du singulier du présent de l''indicatif.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["je peux","Je peux","je puis","Je puis"]}'::jsonb,
  'La forme standard est « je peux ». La forme « je puis » est une variante plus soutenue, obligatoire dans l''interrogation avec inversion (« puis-je ? » et non « *peux-je ? »). Le verbe « pouvoir » est un verbe en -oir du 3e groupe qui présente une forte irrégularité avec trois radicaux : « peu-/peux » (singulier), « pouv- » (pluriel), « puiss- » (subjonctif). C''est l''un des verbes les plus irréguliers du français.',
  'La forme interrogative « *peux-je » est une erreur fréquente. Seule la forme « puis-je » est correcte dans l''interrogation avec inversion du sujet.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Passé simple de « courir »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6020000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_verbes_irreguliers',
  'Verbes irréguliers du 3e groupe',
  'Intermediaire',
  'qcm',
  'Quelle est la forme correcte du verbe « courir » à la 3e personne du singulier du passé simple ?',
  NULL,
  '[{"id":"a","label":"il coura"},{"id":"b","label":"il courra"},{"id":"c","label":"il courut"},{"id":"d","label":"il courit"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La forme correcte est « il courut », avec les terminaisons en -us du passé simple. Le verbe « courir » appartient au 3e groupe (verbes en -ir à participe présent en -ant, et non en -issant). Son passé simple suit le modèle en -us, -us, -ut, -ûmes, -ûtes, -urent. Il ne faut pas confondre avec le futur simple « il courra » qui prend deux « r ». Les formes en -us au passé simple concernent de nombreux verbes du 3e groupe : courir, mourir, valoir, vouloir, pouvoir, etc.',
  'L''erreur « il courit » provient d''une fausse analogie avec les verbes du 2e groupe (il finit). Le piège « il courra » est un futur simple, non un passé simple.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — qcm — Passé simple de « résoudre »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6020000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_verbes_irreguliers',
  'Verbes irréguliers du 3e groupe',
  'Intermediaire',
  'qcm',
  'Quelle est la forme correcte du verbe « résoudre » à la 1re personne du singulier du passé simple ?',
  NULL,
  '[{"id":"a","label":"je résoludai"},{"id":"b","label":"je résolus"},{"id":"c","label":"je résoudis"},{"id":"d","label":"je résolvai"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La forme correcte est « je résolus ». Le verbe « résoudre » fait partie des verbes en -soudre (absoudre, dissoudre, résoudre) qui perdent le « d » au présent de l''indicatif (je résous, il résout). Au passé simple, il adopte les terminaisons en -us : je résolus, tu résolus, il résolut, nous résolûmes, vous résolûtes, ils résolurent. Son participe passé est « résolu » (avec un second participe rare « résous » pour le sens chimique).',
  'Les formes fantaisistes « résoudis » ou « résolvai » montrent une méconnaissance du radical du verbe au passé simple. Il faut mémoriser que « résoudre » suit le modèle en -us au passé simple, comme « mourir » (je mourus).',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — vrai_faux — Le verbe « acquérir » au futur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6020000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_verbes_irreguliers',
  'Verbes irréguliers du 3e groupe',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : au futur simple, le verbe « acquérir » se conjugue « j''acquerrai » avec deux « r ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le verbe « acquérir » forme son futur simple sur un radical irrégulier « acquerr- » : j''acquerrai, tu acquerras, il acquerra, etc. Le doublement du « r » est une caractéristique partagée avec d''autres verbes du 3e groupe comme « courir » (je courrai), « mourir » (je mourrai) et « envoyer » (j''enverrai). Ce phénomène s''explique historiquement par la chute d''une voyelle entre deux syllabes, rapprochant les deux « r ».',
  'L''erreur « j''acquérirai » (sans doublement du « r » et avec maintien du radical du présent) est très fréquente. Elle résulte d''une régularisation abusive sur le modèle de l''infinitif.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — reponse_courte — Passé simple de « venir »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6020000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_verbes_irreguliers',
  'Verbes irréguliers du 3e groupe',
  'Intermediaire',
  'reponse_courte',
  'Conjuguez le verbe « venir » à la 3e personne du pluriel du passé simple.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["ils vinrent","elles vinrent","vinrent"]}'::jsonb,
  'La forme correcte est « ils vinrent ». Le verbe « venir » et ses composés (devenir, revenir, parvenir, etc.) ont un passé simple en -ins, unique en français. Les terminaisons sont : je vins, tu vins, il vint, nous vînmes, vous vîntes, ils vinrent. C''est le seul modèle de passé simple en -ins du français, partagé avec « tenir » et leurs composés. Ce passé simple en -ins constitue le quatrième type de terminaisons du passé simple, à côté des types en -ai, -is et -us.',
  'Les erreurs « ils venirent » ou « ils venirent » résultent d''une tentative de régularisation. Le radical « vin- » au passé simple est très différent du radical de l''infinitif « ven- ».',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — qcm — Le verbe défectif « choir »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6020000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_verbes_irreguliers',
  'Verbes irréguliers du 3e groupe',
  'Difficile',
  'qcm',
  'Parmi les affirmations suivantes concernant le verbe « choir », laquelle est correcte ?',
  NULL,
  '[{"id":"a","label":"C''est un verbe défectif qui ne se conjugue qu''à certaines formes"},{"id":"b","label":"Il se conjugue régulièrement à tous les temps comme un verbe du 1er groupe"},{"id":"c","label":"Son participe passé est « choisi »"},{"id":"d","label":"Il n''existe qu''à l''infinitif"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le verbe « choir » est un verbe défectif, c''est-à-dire qu''il ne possède pas toutes les formes de conjugaison. Un verbe défectif est un verbe dont le paradigme de conjugaison est incomplet : certaines formes sont inusitées ou n''existent pas. « Choir » possède un participe passé (« chu »), un passé simple (« il chut »), mais n''est plus guère employé qu''à l''infinitif et au participe passé dans la langue contemporaine. D''autres verbes défectifs classiques sont « faillir », « seoir », « gésir » (il gît), « braire », « clore ».',
  'L''option « il n''existe qu''à l''infinitif » est trop restrictive. Les verbes défectifs possèdent certaines formes conjuguées, même si leur paradigme est lacunaire. « Choir » a notamment le participe passé « chu » et le passé simple « il chut ».',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — vrai_faux — Participe passé de « mourir »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6020000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_verbes_irreguliers',
  'Verbes irréguliers du 3e groupe',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : le verbe « mourir » se conjugue avec l''auxiliaire « avoir » aux temps composés.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Le verbe « mourir » se conjugue avec l''auxiliaire « être » aux temps composés : « il est mort », « elle était morte », « ils seront morts ». « Mourir » fait partie des verbes intransitifs exprimant un changement d''état qui se conjuguent avec « être ». Le participe passé « mort » s''accorde donc en genre et en nombre avec le sujet. Il ne faut pas confondre avec « courir » qui, lui, se conjugue avec « avoir » (il a couru). La liste des verbes se conjuguant avec « être » est un point de difficulté récurrent au CRPE.',
  'La confusion entre « mourir » (auxiliaire être) et « courir » (auxiliaire avoir) est fréquente car les deux verbes se ressemblent morphologiquement. Moyen mnémotechnique : les verbes de la « maison d''être » (naître, mourir, aller, venir, etc.) expriment un déplacement ou un changement d''état.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — reponse_courte — Subjonctif présent de « savoir »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6020000-0000-0000-0000-00000000000a',
  'Francais',
  'conjugaison',
  'conj_verbes_irreguliers',
  'Verbes irréguliers du 3e groupe',
  'Difficile',
  'reponse_courte',
  'Conjuguez le verbe « savoir » à la 1re personne du singulier du subjonctif présent.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["que je sache","je sache","sache"]}'::jsonb,
  'La forme correcte est « que je sache ». Le verbe « savoir » a un subjonctif présent totalement irrégulier, formé sur le radical « sach- » : que je sache, que tu saches, qu''il sache, que nous sachions, que vous sachiez, qu''ils sachent. Ce radical n''apparaît nulle part ailleurs dans la conjugaison de « savoir » (sauf à l''impératif : « sache ! »). Avec « être », « avoir », « aller », « faire », « pouvoir », « vouloir » et « valoir », « savoir » fait partie des verbes ayant un subjonctif présent irrégulier.',
  'L''erreur « que je save » ou « que je saive » provient d''une tentative de régularisation à partir du radical du présent de l''indicatif. Le radical « sach- » du subjonctif est à mémoriser.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 3 : Participe présent et adjectif verbal
-- topic_key  : conj_participe_adjectif_verbal
-- topic_label: Participe présent et adjectif verbal
-- ============================================================

-- Q1 — Facile — qcm — Distinguer participe présent et adjectif verbal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6030000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conj_participe_adjectif_verbal',
  'Participe présent et adjectif verbal',
  'Facile',
  'qcm',
  'Dans la phrase « Les enfants, obéissant à leurs parents, sont rentrés sagement », quel est le statut du mot « obéissant » ?',
  NULL,
  '[{"id":"a","label":"Un adjectif verbal, variable en genre et en nombre"},{"id":"b","label":"Un participe présent, invariable"},{"id":"c","label":"Un gérondif"},{"id":"d","label":"Un adverbe"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ici, « obéissant » est un participe présent, donc invariable. Il conserve une valeur verbale car il introduit un complément d''objet indirect (« à leurs parents ») et exprime une action en cours. Le participe présent est une forme verbale en -ant, toujours invariable, qui peut régir des compléments comme un verbe. L''adjectif verbal, en revanche, exprime une qualité permanente et s''accorde en genre et en nombre avec le nom qu''il qualifie (« des enfants obéissants »).',
  'La confusion entre participe présent (invariable, valeur d''action) et adjectif verbal (variable, valeur de qualité) est l''un des pièges classiques du CRPE. La présence d''un complément verbal est un indice fort du participe présent.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — vrai_faux — Invariabilité du participe présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6030000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conj_participe_adjectif_verbal',
  'Participe présent et adjectif verbal',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : le participe présent est toujours invariable en français.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Depuis l''arrêté du 3 juin 1679 de l''Académie française, le participe présent est invariable en français. Il ne s''accorde ni en genre ni en nombre, quelle que soit la nature du sujet ou du nom auquel il se rapporte. On écrit donc : « les filles chantant une chanson » (et non « chantantes »). Cette invariabilité est ce qui le distingue fondamentalement de l''adjectif verbal, qui lui s''accorde : « des voix chantantes ». Avant 1679, le participe présent pouvait s''accorder.',
  'Les élèves accordent parfois le participe présent comme un adjectif, surtout quand il est placé après le nom. Il faut vérifier si le mot en -ant a une valeur verbale (action, complément) ou adjectivale (qualité) pour déterminer s''il s''accorde.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — reponse_courte — Définition du gérondif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6030000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conj_participe_adjectif_verbal',
  'Participe présent et adjectif verbal',
  'Facile',
  'reponse_courte',
  'Comment se forme le gérondif en français ? Donnez la formule de construction.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["en + participe présent","en + participe present","En + participe présent","en + V-ant","en + verbe au participe présent"]}'::jsonb,
  'Le gérondif se forme avec la préposition « en » suivie du participe présent : « en chantant », « en marchant », « en écrivant ». Le gérondif est invariable, comme le participe présent dont il est dérivé. Il fonctionne comme un complément circonstanciel et peut exprimer la simultanéité (« il travaille en écoutant de la musique »), la manière (« il a répondu en souriant »), la cause (« en tombant, il s''est blessé ») ou la condition (« en travaillant davantage, tu réussirais »). Son sujet est obligatoirement le même que celui du verbe principal.',
  'Certains élèves oublient que le gérondif exige la coréférence des sujets. La phrase « *En arrivant à la gare, le train était parti » est incorrecte car le sujet du gérondif (la personne qui arrive) n''est pas le même que le sujet du verbe principal (le train).',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Différence orthographique fatiguant/fatigant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6030000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conj_participe_adjectif_verbal',
  'Participe présent et adjectif verbal',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Cette marche fatigant les randonneurs, ils décidèrent de s''arrêter », pourquoi « fatigant » s''écrit-il avec un « u » (fatiguant) ou sans ?',
  NULL,
  '[{"id":"a","label":"Il s''écrit « fatigant » sans « u » car c''est un adjectif verbal"},{"id":"b","label":"Il s''écrit « fatiguant » avec « u » car c''est un participe présent (forme verbale)"},{"id":"c","label":"Les deux orthographes sont toujours acceptées"},{"id":"d","label":"Il s''écrit « fatigant » car le « u » n''existe jamais dans ce mot"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ici, « fatiguant » est un participe présent (forme verbale invariable), car il exprime une action et régit un complément d''objet direct (« les randonneurs »). Le participe présent conserve le « u » du radical de « fatiguer » : « fatiguant ». L''adjectif verbal, en revanche, perd le « u » : « une marche fatigante ». Cette distinction orthographique entre participe présent et adjectif verbal concerne plusieurs verbes : fatiguer/fatiguant vs fatigant, naviguer/naviguant vs navigant, communiquer/communiquant vs communicant.',
  'La confusion entre « fatiguant » (participe présent, avec « u ») et « fatigant » (adjectif verbal, sans « u ») est un piège classique de l''orthographe grammaticale au CRPE.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — qcm — Convainquant vs convaincant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6030000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conj_participe_adjectif_verbal',
  'Participe présent et adjectif verbal',
  'Intermediaire',
  'qcm',
  'Complétez la phrase avec la forme correcte : « Ses arguments ______, le jury changea d''avis. »',
  NULL,
  '[{"id":"a","label":"convaincants"},{"id":"b","label":"convainquant"},{"id":"c","label":"convaincant"},{"id":"d","label":"convainquants"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La forme correcte est « convainquant » (participe présent, invariable). Ici, le mot en -ant a une valeur verbale : il exprime l''action de convaincre et est en position de proposition participiale (« ses arguments convainquant le jury » = « comme ses arguments convainquaient le jury »). Le participe présent de « convaincre » est « convainquant » (avec « qu »). L''adjectif verbal est « convaincant » (avec « c ») et s''accorderait : « des arguments convaincants ». Cette alternance qu/c est un cas célèbre de différence orthographique entre participe présent et adjectif verbal.',
  'Beaucoup de candidats confondent les deux formes. Le critère décisif est la valeur verbale (action, complément) vs adjectivale (qualité). Si le mot peut être remplacé par une relative (« qui convainquaient »), c''est un participe présent.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — vrai_faux — Accord de l'adjectif verbal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6030000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conj_participe_adjectif_verbal',
  'Participe présent et adjectif verbal',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « des couleurs chatoyantes », le mot « chatoyantes » est un adjectif verbal qui s''accorde en genre et en nombre avec le nom qu''il qualifie.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Chatoyantes » est un adjectif verbal : il exprime une qualité permanente des couleurs (et non une action en cours) et il s''accorde en genre (féminin) et en nombre (pluriel) avec « couleurs ». L''adjectif verbal a la même forme que le participe présent mais il fonctionne comme un adjectif qualificatif. On peut le reconnaître car il peut être mis au féminin, modifié par un adverbe d''intensité (« très chatoyantes ») et il ne régit pas de complément d''objet.',
  'Certains élèves croient que tous les mots en -ant sont des participes présents invariables. L''adjectif verbal, bien qu''il ait la même terminaison, est une classe grammaticale différente et suit les règles d''accord des adjectifs.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — reponse_courte — Orthographe de l'adjectif verbal de « précéder »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6030000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conj_participe_adjectif_verbal',
  'Participe présent et adjectif verbal',
  'Intermediaire',
  'reponse_courte',
  'Quelle est l''orthographe de l''adjectif verbal issu du verbe « précéder » ? (au masculin singulier)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["précédent","Précédent"]}'::jsonb,
  'L''adjectif verbal de « précéder » est « précédent » (avec un « e »), tandis que le participe présent est « précédant » (avec un « a »). Cette distinction orthographique -ant/-ent est l''une des plus classiques en français. Elle concerne plusieurs verbes : précéder (précédant / précédent), différer (différant / différent), exceller (excellant / excellent), négliger (négligeant / négligent), influer (influant / influent). Le nom « précédent » (un précédent) a la même orthographe que l''adjectif verbal.',
  'La confusion entre « précédant » (participe présent) et « précédent » (adjectif verbal) est un piège récurrent aux concours. Il faut identifier la nature du mot pour choisir la bonne orthographe.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — qcm — Analyse grammaticale fine du participe présent
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6030000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conj_participe_adjectif_verbal',
  'Participe présent et adjectif verbal',
  'Difficile',
  'qcm',
  'Dans la phrase « Les élèves négligeant leur travail seront sanctionnés », le mot « négligeant » est :',
  NULL,
  '[{"id":"a","label":"Un adjectif verbal qui s''écrit « négligent »"},{"id":"b","label":"Un participe présent, invariable, qui s''écrit « négligeant »"},{"id":"c","label":"Un gérondif"},{"id":"d","label":"Un nom commun"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ici, « négligeant » est un participe présent (invariable), car il a une valeur verbale : il régit un complément d''objet direct (« leur travail ») et exprime une action (le fait de négliger). Le participe présent s''écrit « négligeant » (avec « ea »). L''adjectif verbal de « négliger » s''écrit « négligent » (avec « e ») et exprimerait une qualité permanente : « des élèves négligents ». Pour distinguer les deux, on peut essayer de remplacer par une relative : « les élèves qui négligent leur travail » confirme la valeur verbale.',
  'Le piège ici est double : il faut à la fois identifier la nature (participe vs adjectif) et en déduire l''orthographe correcte. La présence du COD « leur travail » est l''indice clé de la valeur verbale.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — vrai_faux — Gérondif et coréférence des sujets
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6030000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conj_participe_adjectif_verbal',
  'Participe présent et adjectif verbal',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux : dans la phrase « En arrivant au sommet, la vue était magnifique », l''emploi du gérondif est grammaticalement correct.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Le gérondif exige la coréférence des sujets : le sujet du gérondif doit être le même que le sujet du verbe principal. Ici, le sujet implicite du gérondif « en arrivant » est une personne (celui qui arrive), tandis que le sujet du verbe principal est « la vue ». La phrase est donc agrammaticale — c''est ce qu''on appelle un « participe » ou « gérondif mal rattaché ». La correction serait : « En arrivant au sommet, nous avons découvert une vue magnifique » ou « Quand nous sommes arrivés au sommet, la vue était magnifique ».',
  'Cette erreur syntaxique (gérondif sans coréférence du sujet) est très fréquente dans les copies et constitue un point d''évaluation classique au CRPE. Il faut systématiquement vérifier que le sujet implicite du gérondif coïncide avec le sujet de la principale.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — reponse_courte — Participe présent composé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'a6030000-0000-0000-0000-00000000000a',
  'Francais',
  'conjugaison',
  'conj_participe_adjectif_verbal',
  'Participe présent et adjectif verbal',
  'Difficile',
  'reponse_courte',
  'Formez le participe présent composé (ou participe passé composé) du verbe « terminer ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["ayant terminé","Ayant terminé"]}'::jsonb,
  'Le participe présent composé (aussi appelé participe passé composé dans la Terminologie grammaticale de référence) du verbe « terminer » est « ayant terminé ». Il se forme avec l''auxiliaire être ou avoir au participe présent, suivi du participe passé. Comme « terminer » se conjugue avec « avoir », on obtient « ayant terminé ». Pour un verbe conjugué avec « être » (ex. « partir »), on obtiendrait « étant parti ». Le participe présent composé exprime l''antériorité par rapport au verbe principal : « Ayant terminé son travail, il sortit » (= après avoir terminé).',
  'Les élèves oublient souvent l''existence de cette forme composée du participe. Elle est pourtant essentielle pour exprimer l''antériorité dans les propositions participiales. L''erreur « *ayant terminant » montre une confusion entre participe passé et participe présent.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
