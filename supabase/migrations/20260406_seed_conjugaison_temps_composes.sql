-- ============================================================
-- Migration : Série Conjugaison — Les temps composés de l'indicatif (10 exercices)
-- UUID prefix : d3020000
-- topic_key  : conjugaison_temps_composes
-- ============================================================

-- Q1 — Facile — qcm — Identifier le passé composé
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000001',
  'Francais',
  'conjugaison',
  'conjugaison_temps_composes',
  'Les temps composés : formation et valeurs',
  'Facile',
  'qcm',
  'Dans la phrase « Nous avons terminé l''exercice avant la sonnerie », à quel temps est conjugué le verbe « terminer » ?',
  NULL,
  '[{"id":"a","label":"Présent de l''indicatif"},{"id":"b","label":"Imparfait de l''indicatif"},{"id":"c","label":"Passé composé de l''indicatif"},{"id":"d","label":"Plus-que-parfait de l''indicatif"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le passé composé se forme avec l''auxiliaire « avoir » ou « être » conjugué au présent de l''indicatif, suivi du participe passé du verbe. Ici, « avons » est le présent de l''auxiliaire « avoir » et « terminé » est le participe passé de « terminer ». Chaque temps composé correspond à un temps simple de l''auxiliaire : présent → passé composé, imparfait → plus-que-parfait, passé simple → passé antérieur, futur simple → futur antérieur.',
  'Les élèves confondent parfois le passé composé avec le plus-que-parfait. Il faut observer le temps de l''auxiliaire : au présent (passé composé) ou à l''imparfait (plus-que-parfait).',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — vrai_faux — Formation du plus-que-parfait
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000002',
  'Francais',
  'conjugaison',
  'conjugaison_temps_composes',
  'Les temps composés : formation et valeurs',
  'Facile',
  'vrai_faux',
  'Vrai ou faux : le plus-que-parfait se forme avec l''auxiliaire conjugué à l''imparfait suivi du participe passé.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le plus-que-parfait est le temps composé qui correspond à l''imparfait : l''auxiliaire (être ou avoir) est conjugué à l''imparfait, suivi du participe passé. Exemples : « j''avais mangé » (avoir à l''imparfait + participe passé), « elle était partie » (être à l''imparfait + participe passé). Le plus-que-parfait exprime une action antérieure à une autre action passée.',
  'L''erreur fréquente est de confondre le plus-que-parfait avec le passé composé. Le critère distinctif est le temps de l''auxiliaire : imparfait pour le plus-que-parfait, présent pour le passé composé.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — reponse_courte — Nommer le temps composé correspondant au futur simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'conjugaison_temps_composes',
  'Les temps composés : formation et valeurs',
  'Facile',
  'reponse_courte',
  'Quel est le temps composé de l''indicatif qui correspond au futur simple (relation d''antériorité) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["futur antérieur","le futur antérieur","Futur antérieur","Le futur antérieur"]}'::jsonb,
  'Le futur antérieur est le temps composé qui correspond au futur simple. Il se forme avec l''auxiliaire conjugué au futur simple suivi du participe passé : « j''aurai terminé », « elle sera partie ». Il exprime une action future qui sera accomplie avant une autre action future : « Quand tu arriveras, j''aurai déjà fini. » Cette correspondance temps simple / temps composé est fondamentale dans le système verbal français.',
  'Les élèves oublient souvent le futur antérieur, qui est le temps composé le moins fréquent dans l''usage quotidien. Ils confondent parfois sa formation avec celle du conditionnel passé.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Choix de l'auxiliaire être
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000004',
  'Francais',
  'conjugaison',
  'conjugaison_temps_composes',
  'Les temps composés : formation et valeurs',
  'Intermediaire',
  'qcm',
  'Quel verbe se conjugue avec l''auxiliaire « être » aux temps composés ?',
  NULL,
  '[{"id":"a","label":"manger"},{"id":"b","label":"courir"},{"id":"c","label":"partir"},{"id":"d","label":"dormir"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le verbe « partir » se conjugue avec l''auxiliaire « être » aux temps composés : « je suis parti(e) », « j''étais parti(e) ». Les verbes conjugués avec « être » sont principalement des verbes intransitifs exprimant un mouvement ou un changement d''état : aller, venir, partir, arriver, naître, mourir, tomber, rester, devenir, etc. On peut retenir la liste grâce à l''acronyme DR MRS VANDERTRAMP. Les verbes pronominaux utilisent aussi « être ».',
  'Les élèves oublient souvent que « courir » se conjugue avec « avoir » (« j''ai couru ») alors qu''il exprime un mouvement. Seuls certains verbes de déplacement prennent « être ».',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — reponse_courte — Conjuguer au plus-que-parfait
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000005',
  'Francais',
  'conjugaison',
  'conjugaison_temps_composes',
  'Les temps composés : formation et valeurs',
  'Intermediaire',
  'reponse_courte',
  'Conjuguez le verbe « venir » à la 3e personne du singulier du plus-que-parfait de l''indicatif. (Forme masculine.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["il était venu","était venu","Il était venu"]}'::jsonb,
  'Le verbe « venir » se conjugue avec l''auxiliaire « être » aux temps composés. Au plus-que-parfait, l''auxiliaire est à l''imparfait : « il était venu ». Le participe passé « venu » s''accorde avec le sujet quand l''auxiliaire est « être » : « elle était venue », « ils étaient venus ». Cette règle d''accord est essentielle à maîtriser pour le CRPE.',
  'L''erreur classique est d''utiliser l''auxiliaire « avoir » : « il avait venu » au lieu de « il était venu ». Il faut identifier les verbes qui se conjuguent avec « être ».',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — qcm — Valeur du passé antérieur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000006',
  'Francais',
  'conjugaison',
  'conjugaison_temps_composes',
  'Les temps composés : formation et valeurs',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Dès qu''il eut terminé son repas, il sortit », quel est le temps du verbe « terminer » et quelle est sa valeur ?',
  NULL,
  '[{"id":"a","label":"Passé composé — action achevée dans le présent"},{"id":"b","label":"Plus-que-parfait — action antérieure à un fait passé"},{"id":"c","label":"Passé antérieur — action immédiatement antérieure à un fait au passé simple"},{"id":"d","label":"Passé simple — action ponctuelle dans le passé"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le passé antérieur se forme avec l''auxiliaire au passé simple + participe passé : « il eut terminé ». Il s''emploie principalement dans les subordonnées temporelles (après « quand », « dès que », « lorsque », « après que ») pour exprimer une action immédiatement antérieure à une action au passé simple dans la principale. C''est un temps littéraire, rare à l''oral, mais fondamental pour l''analyse des textes au CRPE.',
  'Les élèves confondent le passé antérieur avec le plus-que-parfait. Le critère : le passé antérieur utilise l''auxiliaire au passé simple (« eut », « fut »), le plus-que-parfait utilise l''auxiliaire à l''imparfait (« avait », « était »).',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — reponse_courte — Formation du futur antérieur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000007',
  'Francais',
  'conjugaison',
  'conjugaison_temps_composes',
  'Les temps composés : formation et valeurs',
  'Intermediaire',
  'reponse_courte',
  'Conjuguez le verbe « finir » à la 1re personne du singulier du futur antérieur de l''indicatif.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["j''aurai fini","J''aurai fini","aurai fini"]}'::jsonb,
  'Le futur antérieur se forme avec l''auxiliaire « avoir » ou « être » conjugué au futur simple, suivi du participe passé. Pour « finir » (auxiliaire « avoir ») : « j''aurai fini ». Ce temps exprime une action future qui sera accomplie avant une autre action future : « Quand j''aurai fini mes devoirs, je sortirai. » Il peut aussi exprimer une supposition : « Il aura oublié » (= il a probablement oublié).',
  'Les élèves confondent souvent le futur antérieur (« j''aurai fini ») avec le conditionnel passé (« j''aurais fini »). La différence tient à la forme de l''auxiliaire : « aurai » (futur) vs « aurais » (conditionnel).',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — qcm — Accord du participe passé avec être
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000008',
  'Francais',
  'conjugaison',
  'conjugaison_temps_composes',
  'Les temps composés : formation et valeurs',
  'Avance',
  'qcm',
  'Quelle phrase contient un accord correct du participe passé avec l''auxiliaire « être » ?',
  NULL,
  '[{"id":"a","label":"Elles sont partis avant nous."},{"id":"b","label":"Elles sont parties avant nous."},{"id":"c","label":"Elles sont parti avant nous."},{"id":"d","label":"Elles sont partie avant nous."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Avec l''auxiliaire « être », le participe passé s''accorde en genre et en nombre avec le sujet. Le sujet « elles » est féminin pluriel, donc le participe passé « parti » prend les marques du féminin (-e) et du pluriel (-s) : « parties ». Cette règle est systématique avec « être », contrairement à l''accord avec « avoir » qui dépend de la place du COD. Au CRPE, la maîtrise des règles d''accord du participe passé est incontournable.',
  'L''erreur la plus fréquente est d''accorder uniquement en nombre (« partis ») sans marquer le féminin, ou de ne pas accorder du tout (« parti »).',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — vrai_faux — Verbe avec double auxiliaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-000000000009',
  'Francais',
  'conjugaison',
  'conjugaison_temps_composes',
  'Les temps composés : formation et valeurs',
  'Avance',
  'vrai_faux',
  'Vrai ou faux : certains verbes comme « monter », « descendre » ou « sortir » peuvent se conjuguer avec « être » ou « avoir » aux temps composés selon qu''ils sont employés avec ou sans complément d''objet direct.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Certains verbes admettent les deux auxiliaires selon leur construction syntaxique. Employés intransitivement (sans COD), ils prennent « être » : « Il est monté au grenier. » Employés transitivement (avec COD), ils prennent « avoir » : « Il a monté les valises. » Cette alternance concerne notamment : monter, descendre, sortir, rentrer, retourner, passer. Le choix de l''auxiliaire modifie alors les règles d''accord du participe passé.',
  'Les élèves apprennent souvent une liste figée de verbes conjugués avec « être » sans comprendre que le choix de l''auxiliaire dépend de la construction syntaxique (transitive ou intransitive) du verbe.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — reponse_courte — Identifier le temps composé dans un texte littéraire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd3020000-0000-0000-0000-00000000000a',
  'Francais',
  'conjugaison',
  'conjugaison_temps_composes',
  'Les temps composés : formation et valeurs',
  'Avance',
  'reponse_courte',
  'Dans la phrase « Lorsqu''il eut franchi la porte, il aperçut le jardin », identifiez le temps composé utilisé.',
  'Lorsqu''il eut franchi la porte, il aperçut le jardin.',
  NULL,
  '{"mode":"text","acceptableAnswers":["passé antérieur","le passé antérieur","Passé antérieur","Le passé antérieur"]}'::jsonb,
  'La forme « eut franchi » est un passé antérieur : l''auxiliaire « avoir » est conjugué au passé simple (« eut ») suivi du participe passé « franchi ». Le passé antérieur s''emploie dans les subordonnées temporelles pour marquer l''antériorité immédiate par rapport au passé simple de la principale (« aperçut »). C''est un temps du récit littéraire, rare à l''oral mais essentiel à reconnaître pour l''analyse de textes au CRPE.',
  'Les candidats confondent fréquemment « il eut franchi » (passé antérieur) avec « il avait franchi » (plus-que-parfait). La clé : « eut » est le passé simple de « avoir », « avait » est l''imparfait.',
  'valide',
  'CRPE Français — Conjugaison',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
