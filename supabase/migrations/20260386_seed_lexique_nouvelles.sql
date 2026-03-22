-- ============================================================
-- Migration : 20260369_seed_lexique_nouvelles.sql
-- Deux nouvelles séries — Lexique (20 exercices)
-- UUID prefix : d401–d402
-- ============================================================

-- ############################################################
-- SÉRIE 1 : lex_synonymie_antonymie — Synonymie, antonymie et nuances de sens
-- ############################################################

-- Q1 — Intermediaire — qcm — Synonyme en registre soutenu
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_synonymie_antonymie',
  'Synonymie, antonymie et nuances de sens',
  'Intermediaire',
  'qcm',
  'Parmi ces mots, lequel est un synonyme de « véhément » dans un registre soutenu ?',
  NULL,
  '[{"id":"a","label":"calme"},{"id":"b","label":"passionné"},{"id":"c","label":"impétueux"},{"id":"d","label":"lent"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Impétueux » est le synonyme le plus proche de « véhément » dans un registre soutenu. Les deux mots partagent l''idée de force et d''ardeur dans l''expression. « Passionné » est un quasi-synonyme mais relève d''un registre plus courant et ne traduit pas la même intensité. Comprendre ces nuances de registre est essentiel pour enseigner la synonymie au cycle 3.',
  'Choisir « passionné » qui est un quasi-synonyme mais d''un registre plus courant et d''une intensité moindre.',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Intermediaire — qcm — Antonymie et négation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_synonymie_antonymie',
  'Synonymie, antonymie et nuances de sens',
  'Intermediaire',
  'qcm',
  'Quel est l''antonyme le plus précis de « prolixe » ?',
  NULL,
  '[{"id":"a","label":"bavard"},{"id":"b","label":"concis"},{"id":"c","label":"silencieux"},{"id":"d","label":"muet"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Concis » est l''antonyme de « prolixe » : le premier désigne quelqu''un qui s''exprime en peu de mots, le second quelqu''un qui utilise trop de mots. « Silencieux » et « muet » ne sont pas des antonymes de « prolixe » car ils renvoient à l''absence de parole, non à la brièveté du discours. L''antonymie porte ici sur la quantité de paroles dans l''expression, pas sur la présence ou l''absence de parole.',
  'Choisir « silencieux » ou « muet » en confondant l''opposition prolixe/concis (quantité de mots) avec l''opposition parler/se taire.',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — qcm — Synonymie imparfaite et connotation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_synonymie_antonymie',
  'Synonymie, antonymie et nuances de sens',
  'Intermediaire',
  'qcm',
  'Les mots « maison », « demeure », « masure » et « villa » sont des synonymes partiels. Quelle affirmation est exacte ?',
  NULL,
  '[{"id":"a","label":"Ils sont interchangeables dans tous les contextes"},{"id":"b","label":"Ils désignent tous un lieu d''habitation mais diffèrent par la connotation et le registre"},{"id":"c","label":"Seuls « maison » et « villa » sont vraiment synonymes"},{"id":"d","label":"« Masure » est l''hyperonyme des trois autres"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ces quatre mots partagent le sème commun « lieu d''habitation » mais se distinguent par leur connotation : « demeure » évoque un registre soutenu et une habitation de prestige, « masure » a une connotation péjorative (habitation délabrée), « villa » renvoie à un type architectural précis. La synonymie parfaite est extrêmement rare en français. Les programmes d''Éduscol insistent sur l''étude des nuances entre synonymes pour enrichir l''expression écrite des élèves.',
  'Considérer que des synonymes sont toujours interchangeables, en ignorant les différences de connotation et de registre.',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Hyperonymie et hyponymie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_synonymie_antonymie',
  'Synonymie, antonymie et nuances de sens',
  'Intermediaire',
  'qcm',
  'Dans la série « véhicule — voiture — berline », quelle relation lexicale unit ces trois mots ?',
  NULL,
  '[{"id":"a","label":"Ce sont des synonymes de registres différents"},{"id":"b","label":"Ce sont des antonymes graduels"},{"id":"c","label":"Ils forment une chaîne d''inclusion du générique au spécifique (hyperonymie)"},{"id":"d","label":"Ce sont des mots de la même famille morphologique"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Véhicule » est l''hyperonyme de « voiture », qui est lui-même l''hyperonyme de « berline ». Chaque terme inclut le suivant dans son extension : toute berline est une voiture, toute voiture est un véhicule, mais l''inverse n''est pas vrai. Cette relation d''inclusion hiérarchique (hyperonymie/hyponymie) est fondamentale pour structurer le lexique. Au cycle 3, les élèves apprennent à classer les mots par catégories génériques et spécifiques.',
  'Confondre la relation d''hyperonymie avec la synonymie. « Véhicule » et « voiture » ne sont pas synonymes : l''un inclut l''autre.',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermediaire — qcm — Antonymie complémentaire vs graduelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_synonymie_antonymie',
  'Synonymie, antonymie et nuances de sens',
  'Intermediaire',
  'qcm',
  'Parmi ces paires, laquelle illustre une antonymie complémentaire (et non graduelle) ?',
  NULL,
  '[{"id":"a","label":"chaud / froid"},{"id":"b","label":"grand / petit"},{"id":"c","label":"vivant / mort"},{"id":"d","label":"riche / pauvre"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''antonymie complémentaire oppose deux termes qui s''excluent mutuellement sans degré intermédiaire : on est vivant ou mort, il n''y a pas de milieu. À l''inverse, « chaud/froid », « grand/petit » et « riche/pauvre » sont des antonymes graduels car ils admettent des degrés intermédiaires (tiède, moyen, aisé). Cette distinction entre types d''antonymie est importante en linguistique et permet aux élèves de mieux comprendre les relations sémantiques entre les mots.',
  'Choisir « chaud/froid » en pensant que toute opposition nette est complémentaire, alors qu''il existe des degrés intermédiaires (tiède, frais).',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — qcm — Synonymie et contexte d''emploi
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_synonymie_antonymie',
  'Synonymie, antonymie et nuances de sens',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Il a commis une faute grave », quel synonyme de « grave » est le plus approprié ?',
  NULL,
  '[{"id":"a","label":"lourd"},{"id":"b","label":"sérieux"},{"id":"c","label":"aigu"},{"id":"d","label":"solennel"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans le contexte d''une faute, « sérieux » est le synonyme le plus approprié de « grave » (une faute sérieuse = une faute importante, aux conséquences notables). « Lourd » pourrait convenir familièrement (une lourde faute) mais relève d''un autre registre. « Aigu » s''emploie pour un son ou une douleur, « solennel » pour un ton ou une cérémonie. Cet exercice illustre que le choix du synonyme dépend du contexte syntaxique et sémantique, principe fondamental de l''enseignement du vocabulaire.',
  'Choisir « lourd » sans percevoir que l''association « faute lourde » relève d''un registre juridique spécifique, différent du contexte courant.',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — qcm — Antonymes formés par préfixation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_synonymie_antonymie',
  'Synonymie, antonymie et nuances de sens',
  'Intermediaire',
  'qcm',
  'Quel procédé morphologique permet de former l''antonyme de « lisible » ?',
  NULL,
  '[{"id":"a","label":"L''ajout du suffixe -ment"},{"id":"b","label":"L''ajout du préfixe il-"},{"id":"c","label":"L''ajout du préfixe in-"},{"id":"d","label":"La dérivation parasynthétique"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''antonyme de « lisible » est « illisible », formé par l''ajout du préfixe négatif in- qui se réalise « il- » devant un « l ». Cependant, le procédé morphologique reste la préfixation par in- (le préfixe de base), dont « il- » est un allomorphe. De nombreux antonymes se forment ainsi par préfixation : in-/im-/il-/ir- (impossible, illégal, irréel), dé-/dés- (défaire), mal- (malheureux). Enseigner ces préfixes négatifs permet aux élèves de comprendre et produire des antonymes de manière systématique.',
  'Répondre « il- » en oubliant que « il- » est un allomorphe du préfixe in- qui s''assimile devant la consonne « l ».',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — qcm — Nuances entre quasi-synonymes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_synonymie_antonymie',
  'Synonymie, antonymie et nuances de sens',
  'Intermediaire',
  'qcm',
  'Quelle nuance distingue « peur », « crainte » et « terreur » ?',
  NULL,
  '[{"id":"a","label":"Ils relèvent de registres de langue différents mais ont exactement le même sens"},{"id":"b","label":"Ils expriment des degrés d''intensité croissante d''un même sentiment"},{"id":"c","label":"Seuls « peur » et « terreur » sont synonymes"},{"id":"d","label":"« Crainte » est l''antonyme de « peur »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Peur », « crainte » et « terreur » forment une série synonymique à gradation d''intensité : la crainte est une peur modérée et souvent anticipée, la peur est le sentiment de base, la terreur est une peur extrême et paralysante. Ces trois mots ne sont pas interchangeables car l''intensité diffère. Ce type de gradation lexicale est un outil précieux pour l''expression écrite : choisir le mot juste, c''est choisir le degré d''intensité approprié.',
  'Considérer que ces mots sont parfaitement interchangeables, en ignorant les différences d''intensité qui les distinguent.',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermediaire — qcm — Polysémie et synonymie contextuelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_synonymie_antonymie',
  'Synonymie, antonymie et nuances de sens',
  'Intermediaire',
  'qcm',
  'Le mot « dur » a plusieurs sens. Dans quelle phrase « dur » est-il synonyme de « sévère » ?',
  NULL,
  '[{"id":"a","label":"Ce pain est dur."},{"id":"b","label":"C''est un exercice dur."},{"id":"c","label":"Le professeur est dur avec ses élèves."},{"id":"d","label":"L''hiver a été dur."}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans « Le professeur est dur avec ses élèves », « dur » signifie « sévère, exigeant » — c''est un emploi figuré appliqué à une personne. Dans les autres phrases, « dur » prend des sens différents : résistant au toucher (pain), difficile (exercice), rigoureux (hiver). Un mot polysémique n''a pas les mêmes synonymes selon le contexte. Ce phénomène illustre que la synonymie est toujours contextuelle, principe fondamental de la sémantique lexicale.',
  'Choisir « C''est un exercice dur » en confondant « difficile » et « sévère », qui sont deux acceptions distinctes de « dur ».',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Intermediaire — qcm — Didactique de la synonymie au cycle 3
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4010000-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'lex_synonymie_antonymie',
  'Synonymie, antonymie et nuances de sens',
  'Intermediaire',
  'qcm',
  'En didactique du lexique au cycle 3, pourquoi est-il recommandé de travailler la synonymie en contexte plutôt que sous forme de listes isolées ?',
  NULL,
  '[{"id":"a","label":"Parce que les élèves retiennent mieux les listes de mots"},{"id":"b","label":"Parce que la substitution en contexte permet de percevoir les nuances sémantiques et de registre entre synonymes"},{"id":"c","label":"Parce que les programmes interdisent l''usage de listes de vocabulaire"},{"id":"d","label":"Parce que les synonymes ont toujours exactement le même sens"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Travailler la synonymie en contexte permet aux élèves de constater par eux-mêmes qu''un synonyme ne se substitue pas toujours à un autre sans changement de sens ou de registre. Par exemple, remplacer « manger » par « dévorer » dans une phrase modifie l''intensité du propos. Les programmes d''Éduscol préconisent des activités de substitution en contexte (remplacement dans des phrases, comparaison d''effets) plutôt que la mémorisation de listes, car c''est l''usage en contexte qui révèle les nuances sémantiques.',
  NULL,
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################
-- SÉRIE 2 : lex_prefixes_latins_grecs — Préfixes d'origine latine et grecque
-- ############################################################

-- Q1 — Avance — qcm — Préfixe anti- (grec)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_prefixes_latins_grecs',
  'Préfixes d''origine latine et grecque',
  'Avance',
  'qcm',
  'Le préfixe « anti- » vient du grec anti (contre). Dans lequel de ces mots « anti- » n''a-t-il PAS le sens de « contre » ?',
  NULL,
  '[{"id":"a","label":"antibiotique"},{"id":"b","label":"antidote"},{"id":"c","label":"antichambre"},{"id":"d","label":"antisocial"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans « antichambre », le préfixe « anti- » (du latin ante) signifie « avant, devant » : l''antichambre est la pièce qui précède la chambre principale. C''est un faux ami morphologique : il ne s''agit pas du préfixe grec anti- (contre) mais du préfixe latin ante- (avant). Dans « antibiotique » (contre la vie [des bactéries]), « antidote » (donné contre [le poison]) et « antisocial » (contre la société), le préfixe a bien le sens d''opposition. Cette homonymie de préfixes est un piège classique en étymologie.',
  'Ne pas repérer que « antichambre » contient le préfixe latin ante- (avant) et non le préfixe grec anti- (contre).',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Avance — qcm — Préfixes hyper- et hypo- (grec)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_prefixes_latins_grecs',
  'Préfixes d''origine latine et grecque',
  'Avance',
  'qcm',
  'Les préfixes grecs « hyper- » et « hypo- » sont des antonymes. Quelle paire illustre correctement cette opposition ?',
  NULL,
  '[{"id":"a","label":"hyperactif (trop actif) / hypoactif (pas assez actif)"},{"id":"b","label":"hypermarché (grand marché) / hypomarché (petit marché)"},{"id":"c","label":"hypertension (tension basse) / hypotension (tension haute)"},{"id":"d","label":"hyperonyme (mot spécifique) / hyponyme (mot général)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Hyper- » (du grec huper, au-dessus, en excès) et « hypo- » (du grec hupo, en dessous, en insuffisance) forment une paire de préfixes antonymes. « Hyperactif » désigne une activité excessive, « hypoactif » une activité insuffisante. La réponse C inverse les définitions. La réponse D inverse aussi : l''hyperonyme est le terme générique (animal) et l''hyponyme le terme spécifique (chat). Maîtriser ces préfixes permet de déduire le sens de mots scientifiques ou médicaux inconnus.',
  'Inverser le sens de hyper- et hypo-, ou confondre hyperonyme (terme générique) avec un mot spécifique.',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Avance — qcm — Préfixes poly- et mono- (grec)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_prefixes_latins_grecs',
  'Préfixes d''origine latine et grecque',
  'Avance',
  'qcm',
  'Le mot « polysémique » signifie « qui a plusieurs sens ». Quels sont les deux éléments grecs qui le composent ?',
  NULL,
  '[{"id":"a","label":"poly- (plusieurs) + sêma (signe, sens)"},{"id":"b","label":"poly- (ville) + sêma (sang)"},{"id":"c","label":"poly- (plusieurs) + sêma (corps)"},{"id":"d","label":"poli- (poli) + sémique (semaine)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Polysémique » se décompose en poly- (du grec polus, « nombreux, plusieurs ») et -sémique (du grec sêma, « signe, sens »). Un mot polysémique possède donc plusieurs significations. Le préfixe poly- se retrouve dans polygone (plusieurs angles), polyglotte (plusieurs langues), polychrome (plusieurs couleurs). À l''opposé, mono- (du grec monos, « seul, unique ») donne monosémique (un seul sens), monologue (parole seule), monochrome. Ce couple poly-/mono- est très productif en français.',
  'Confondre les racines grecques homophones : poly- (plusieurs) n''a aucun rapport avec polis (ville) que l''on trouve dans « politique » ou « métropole ».',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Avance — qcm — Préfixes bi-/di- (latin/grec)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_prefixes_latins_grecs',
  'Préfixes d''origine latine et grecque',
  'Avance',
  'qcm',
  'Les préfixes « bi- » (latin) et « di- » (grec) signifient tous deux « deux ». Lequel de ces mots contient le préfixe grec « di- » ?',
  NULL,
  '[{"id":"a","label":"bicyclette"},{"id":"b","label":"dilemme"},{"id":"c","label":"bilingue"},{"id":"d","label":"direction"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Dilemme » vient du grec di- (deux) et lêmma (proposition) : c''est un choix entre deux propositions. « Bicyclette » et « bilingue » contiennent le préfixe latin bi- (deux). Attention : dans « direction », le di- n''est pas un préfixe signifiant « deux » mais fait partie de la racine latine dirigere (diriger). Il est crucial de ne pas découper mécaniquement les mots sans vérifier l''étymologie réelle. Cette vigilance est essentielle dans l''enseignement de la morphologie lexicale au cycle 3.',
  'Choisir « direction » en identifiant faussement un préfixe di- là où il n''y en a pas : le di- de « direction » appartient à la racine latine dirigere.',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Avance — qcm — Préfixe trans- (latin)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_prefixes_latins_grecs',
  'Préfixes d''origine latine et grecque',
  'Avance',
  'qcm',
  'Le préfixe latin « trans- » signifie « à travers, au-delà ». Dans lequel de ces mots ce préfixe est-il présent avec ce sens ?',
  NULL,
  '[{"id":"a","label":"travail"},{"id":"b","label":"transparent"},{"id":"c","label":"tranquille"},{"id":"d","label":"tragédie"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Transparent » se décompose en trans- (à travers) et -parent (du latin parere, « apparaître ») : ce qui est transparent laisse apparaître à travers. On retrouve trans- dans transatlantique (à travers l''Atlantique), transmettre (envoyer au-delà), transformer (changer de forme au-delà de l''état initial). Les mots « travail », « tranquille » et « tragédie » ne contiennent pas le préfixe trans- malgré une ressemblance graphique apparente. Cette distinction entre vrai préfixe et faux découpage est un point d''enseignement important.',
  'Identifier un préfixe trans- dans « tranquille » alors que ce mot vient du latin tranquillus (calme) sans rapport avec le préfixe trans-.',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Avance — qcm — Préfixes circum-/péri- (latin/grec)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_prefixes_latins_grecs',
  'Préfixes d''origine latine et grecque',
  'Avance',
  'qcm',
  'Les préfixes « circum- » (latin) et « péri- » (grec) partagent le même sens. Lequel ?',
  NULL,
  '[{"id":"a","label":"contre"},{"id":"b","label":"autour"},{"id":"c","label":"à travers"},{"id":"d","label":"en dessous"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Circum- » (latin, souvent réduit à « circon- » en français) et « péri- » (grec) signifient tous deux « autour ». On trouve circum- dans : circonférence (ce qui est porté autour), circonscrire (écrire autour, délimiter), circumnavigation (navigation autour). On trouve péri- dans : périmètre (mesure autour), périphérie (ce qui est porté autour), péristyle (colonnes autour). Ces doublets latin/grec de même sens sont fréquents en français et enrichissent considérablement le vocabulaire savant.',
  'Confondre « péri- » (autour) avec le verbe « périr ». Le préfixe péri- n''a aucun lien avec la mort.',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Avance — qcm — Préfixes ante-/pré- et post- (latin)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_prefixes_latins_grecs',
  'Préfixes d''origine latine et grecque',
  'Avance',
  'qcm',
  'Un enseignant demande à ses élèves de trouver l''antonyme de « postérieur » en utilisant un préfixe latin de sens contraire. Quelle réponse est correcte ?',
  NULL,
  '[{"id":"a","label":"supérieur"},{"id":"b","label":"antérieur"},{"id":"c","label":"extérieur"},{"id":"d","label":"inférieur"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Postérieur » (du latin post-, après) s''oppose à « antérieur » (du latin ante-, avant). Le préfixe post- indique ce qui vient après dans le temps ou l''espace, tandis que ante-/anté- indique ce qui vient avant. On retrouve cette opposition dans : antédiluvien (avant le déluge) / postdiluvien, anténatal / postnatal, antécédent (qui précède) / conséquent. Le préfixe pré- (du latin prae-) est un synonyme de ante- : préhistoire, prédire, prématuré.',
  'Confondre les préfixes spatiaux (supérieur/inférieur, extérieur/intérieur) avec les préfixes temporels (antérieur/postérieur).',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avance — qcm — Préfixes sub-/hypo- et super-/sur- (latin/grec)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_prefixes_latins_grecs',
  'Préfixes d''origine latine et grecque',
  'Avance',
  'qcm',
  'Quel rapprochement est exact entre un préfixe latin et son équivalent grec ?',
  NULL,
  '[{"id":"a","label":"sub- (latin, sous) = hypo- (grec, sous)"},{"id":"b","label":"sub- (latin, sous) = hyper- (grec, au-dessus)"},{"id":"c","label":"super- (latin, au-dessus) = hypo- (grec, sous)"},{"id":"d","label":"sub- (latin, sous) = péri- (grec, autour)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le préfixe latin sub- (sous, en dessous) correspond au préfixe grec hypo- (sous, en dessous). On les retrouve dans des doublets sémantiques : sous-marin / hypothermie (température en dessous de la normale), subdiviser / hypothèse (ce qui est posé en dessous, à la base du raisonnement). Inversement, super- (latin) correspond à hyper- (grec) pour exprimer « au-dessus, en excès ». Ces correspondances latin/grec sont systématiques et constituent un outil puissant pour la compréhension du vocabulaire savant.',
  'Confondre hypo- (sous) et hyper- (au-dessus), erreur fréquente car les deux préfixes se ressemblent phonétiquement.',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avance — qcm — Distinguer vrais et faux préfixes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_prefixes_latins_grecs',
  'Préfixes d''origine latine et grecque',
  'Avance',
  'qcm',
  'Dans lequel de ces mots le segment initial ne constitue PAS un véritable préfixe d''origine latine ou grecque ?',
  NULL,
  '[{"id":"a","label":"prédire (pré- = avant)"},{"id":"b","label":"automobile (auto- = soi-même)"},{"id":"c","label":"premier (pre- = avant)"},{"id":"d","label":"polygone (poly- = plusieurs)"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans « premier », le segment « pre- » n''est pas un préfixe ajouté à une base autonome : le mot vient directement du latin primarius (de primus, « premier »), sans découpage préfixe + radical productif en français. En revanche, « prédire » se décompose en pré- (avant) + dire, « automobile » en auto- (soi-même) + mobile, « polygone » en poly- (plusieurs) + gone (angle). Savoir distinguer un vrai préfixe d''un faux découpage est une compétence essentielle pour enseigner la morphologie lexicale sans induire les élèves en erreur.',
  'Considérer que tout segment initial ressemblant à un préfixe connu en est nécessairement un, sans vérifier si le mot est réellement décomposable.',
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avance — qcm — Didactique des préfixes au cycle 3
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'd4020000-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'lex_prefixes_latins_grecs',
  'Préfixes d''origine latine et grecque',
  'Avance',
  'qcm',
  'En didactique du lexique, quel est l''intérêt principal d''enseigner les préfixes d''origine latine et grecque au cycle 3 ?',
  NULL,
  '[{"id":"a","label":"Cela permet aux élèves de parler couramment latin et grec"},{"id":"b","label":"Cela développe une stratégie de compréhension autonome des mots inconnus par analyse morphologique"},{"id":"c","label":"Cela sert uniquement à préparer l''enseignement du latin au collège"},{"id":"d","label":"Cela remplace l''usage du dictionnaire"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''enseignement des préfixes d''origine latine et grecque donne aux élèves un outil d''analyse morphologique pour inférer le sens de mots inconnus. Face à un mot comme « hypothermie », un élève qui connaît hypo- (sous, en dessous) et -thermie (chaleur) peut en déduire qu''il s''agit d''une température anormalement basse. Cette compétence d''analyse favorise l''autonomie face aux textes et l''enrichissement du vocabulaire. Les programmes d''Éduscol préconisent explicitement l''observation de la formation des mots (préfixe, radical, suffixe) comme stratégie de compréhension lexicale.',
  NULL,
  'valide',
  'CRPE Français V4 — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
