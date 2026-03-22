-- ============================================================
-- Migration : 10 exercices — Homophones grammaticaux en contexte littéraire
-- Série : Homophones grammaticaux en contexte littéraire
-- Sous-domaine : orthographe
-- topic_key : orthographe_homophones_contexte
-- UUID prefix : e2060000
-- 4 tri_categories, 3 surlignage_propositions, 3 qcm
-- Niveaux : 3 Facile, 4 Intermediaire, 3 Avancé
-- ============================================================

-- Q1 — Facile — tri_categories — a/à chez La Fontaine
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2060000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'orthographe_homophones_contexte',
  'Homophones grammaticaux en contexte littéraire',
  'Facile',
  'tri_categories',
  'Dans cet extrait, classez chaque mot surligné selon sa nature grammaticale : verbe avoir ou préposition.',
  'D''après La Fontaine, « Le Loup et l''Agneau » : « La raison du plus fort est toujours la meilleure. Un Agneau se désaltérait dans le courant d''une onde pure. Un Loup survient *à* jeun, qui cherchait aventure, et que la faim en ces lieux *a* attiré. »',
  '[{"id":"tc15q1w1","label":"à (à jeun)"},{"id":"tc15q1w2","label":"a (a attiré)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"prep","label":"Préposition « à »"},{"id":"verbe","label":"Verbe avoir « a »"}],"mapping":{"tc15q1w1":"prep","tc15q1w2":"verbe"}}'::jsonb,
  'Dans « à jeun », « à » est une préposition qui introduit un état (locution adverbiale). On ne peut pas le remplacer par « avait ». Dans « a attiré », « a » est l''auxiliaire avoir au présent (3e personne du singulier) dans un passé composé. On peut le remplacer par « avait » : « la faim avait attiré ». La substitution par « avait » est le test de discrimination le plus fiable.',
  'Au CRPE, les candidats oublient parfois que « à jeun » est une locution figée où « à » est préposition. Le test de substitution par « avait » doit être systématique.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — tri_categories — ou/où chez Perrault
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2060000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'orthographe_homophones_contexte',
  'Homophones grammaticaux en contexte littéraire',
  'Facile',
  'tri_categories',
  'Dans cet extrait, classez chaque mot surligné selon sa nature : conjonction de coordination « ou » ou pronom/adverbe relatif « où ».',
  'D''après Perrault, « Le Petit Chaperon rouge » : « Il était une fois une petite fille de village, la plus jolie qu''on eût su voir. Un jour, sa mère lui dit : "Va voir ta grand-mère et porte-lui une galette. Prends le chemin *où* tu trouveras des noisettes, *ou* celui qui passe par le moulin." La petite fille partit vers le bois *où* demeurait sa grand-mère. »',
  '[{"id":"tc15q2w1","label":"où (le chemin où tu trouveras)"},{"id":"tc15q2w2","label":"ou (ou celui qui passe)"},{"id":"tc15q2w3","label":"où (le bois où demeurait)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"relatif","label":"Pronom relatif « où » (lieu/temps)"},{"id":"conj","label":"Conjonction « ou » (choix/alternative)"}],"mapping":{"tc15q2w1":"relatif","tc15q2w2":"conj","tc15q2w3":"relatif"}}'::jsonb,
  '« le chemin où tu trouveras » : « où » est pronom relatif, il reprend l''antécédent « chemin » et introduit une subordonnée relative à valeur locative. « ou celui qui passe » : « ou » est conjonction de coordination exprimant un choix entre deux chemins — on peut le remplacer par « ou bien ». « le bois où demeurait » : « où » est pronom relatif reprenant « bois » (valeur locative).',
  'Au CRPE, le critère clé : « ou » (sans accent) peut être remplacé par « ou bien ». Si la substitution ne fonctionne pas, c''est « où » (avec accent), pronom relatif ou adverbe interrogatif indiquant le lieu ou le temps.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — tri_categories — ce/se chez Maupassant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2060000-0000-0000-0000-000000000003',
  'Francais',
  'orthographe',
  'orthographe_homophones_contexte',
  'Homophones grammaticaux en contexte littéraire',
  'Intermediaire',
  'tri_categories',
  'Dans cet extrait, classez chaque mot surligné selon sa nature : déterminant/pronom démonstratif « ce » ou pronom réfléchi « se ».',
  'D''après Maupassant, « Boule de Suif » : « La neige tombait toujours. *Ce* spectacle glaçait les cœurs. Les voyageurs *se* regardaient sans parler, chacun *se* demandant si *ce* voyage aurait une fin. »',
  '[{"id":"tc15q3w1","label":"Ce (Ce spectacle)"},{"id":"tc15q3w2","label":"se (se regardaient)"},{"id":"tc15q3w3","label":"se (se demandant)"},{"id":"tc15q3w4","label":"ce (ce voyage)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"dem","label":"Déterminant démonstratif « ce »"},{"id":"refl","label":"Pronom réfléchi « se »"}],"mapping":{"tc15q3w1":"dem","tc15q3w2":"refl","tc15q3w3":"refl","tc15q3w4":"dem"}}'::jsonb,
  '« Ce spectacle » et « ce voyage » : « ce » est déterminant démonstratif, il précède et détermine un nom. On peut le remplacer par « cet » devant une voyelle ou « cette » au féminin. « se regardaient » et « se demandant » : « se » est pronom personnel réfléchi, partie intégrante de verbes pronominaux. On peut conjuguer : « je me regarde, tu te regardes, il se regarde ».',
  'Au CRPE, le test le plus fiable : si on peut conjuguer le verbe à la 1re personne et que « se » devient « me », c''est le pronom réfléchi. Si le mot est suivi d''un nom, c''est le déterminant démonstratif.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Avancé — tri_categories — leur/leurs chez Daudet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2060000-0000-0000-0000-000000000004',
  'Francais',
  'orthographe',
  'orthographe_homophones_contexte',
  'Homophones grammaticaux en contexte littéraire',
  'Avancé',
  'tri_categories',
  'Dans cet extrait, classez chaque mot surligné selon sa nature grammaticale précise.',
  'D''après Daudet, « La Chèvre de Monsieur Seguin » : « Ah ! la jolie petite chèvre de M. Seguin ! Il *leur* avait donné toute la tendresse qu''il avait. Les chèvres ennuyées demandaient *leurs* prés, *leurs* fleurs. Il *leur* ouvrait la porte et elles s''en allaient dans la montagne. »',
  '[{"id":"tc15q4w1","label":"leur (Il leur avait donné)"},{"id":"tc15q4w2","label":"leurs (leurs prés)"},{"id":"tc15q4w3","label":"leurs (leurs fleurs)"},{"id":"tc15q4w4","label":"leur (Il leur ouvrait)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pronom","label":"Pronom personnel COI « leur » (invariable)"},{"id":"det","label":"Déterminant possessif « leurs » (variable)"}],"mapping":{"tc15q4w1":"pronom","tc15q4w2":"det","tc15q4w3":"det","tc15q4w4":"pronom"}}'::jsonb,
  '« Il leur avait donné » et « Il leur ouvrait » : « leur » est pronom personnel complément d''objet indirect (= à elles), invariable. On peut le remplacer par « lui » au singulier. « leurs prés » et « leurs fleurs » : « leurs » est déterminant possessif pluriel, il s''accorde avec le nom qu''il détermine. On peut le remplacer par « ses » au singulier.',
  'Au CRPE, c''est l''un des homophones les plus discriminants. Le critère : si « leur » est devant un verbe, c''est un pronom (invariable, jamais de -s). S''il est devant un nom, c''est un déterminant possessif (variable : leur/leurs selon le nombre du nom).',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — surlignage_propositions — Identifier les homophones a/à dans un texte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2060000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'orthographe_homophones_contexte',
  'Homophones grammaticaux en contexte littéraire',
  'Facile',
  'surlignage_propositions',
  'Dans cet extrait de Colette, surlignez chaque homophone selon qu''il s''agit du verbe avoir (bleu) ou de la préposition (ambre).',
  'D''après Colette, « La Maison de Claudine » : « Ma mère a toujours eu un jardin. Elle allait à la grille du jardin, regardait à droite, à gauche, et revenait. Le chat a bondi du mur. »',
  '[{"id":"s1","label":"a (a toujours eu)"},{"id":"s2","label":"à (à la grille)"},{"id":"s3","label":"à (à droite)"},{"id":"s4","label":"à (à gauche)"},{"id":"s5","label":"a (a bondi)"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"verbe","label":"Verbe avoir « a »","color":"blue"},{"id":"prep","label":"Préposition « à »","color":"amber"}],"mapping":{"s1":"verbe","s2":"prep","s3":"prep","s4":"prep","s5":"verbe"}}'::jsonb,
  '« a toujours eu » et « a bondi » : l''auxiliaire avoir est conjugué au passé composé (3e personne du singulier). On peut le remplacer par « avait ». « à la grille », « à droite », « à gauche » : la préposition « à » introduit un complément circonstanciel de lieu. Le remplacement par « avait » ne fonctionne pas.',
  'Au CRPE, attention aux cas où « a » est suivi d''un adverbe (« a toujours eu ») : l''adverbe intercalé entre l''auxiliaire et le participe passé peut déstabiliser les candidats.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — surlignage_propositions — et/est chez Hugo
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2060000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'orthographe_homophones_contexte',
  'Homophones grammaticaux en contexte littéraire',
  'Intermediaire',
  'surlignage_propositions',
  'Dans cet extrait inspiré de Victor Hugo, surlignez chaque homophone selon qu''il s''agit du verbe être (bleu) ou de la conjonction de coordination (ambre).',
  'D''après Hugo, « Les Misérables » : « Cosette est encore petite et fragile. Elle porte un seau lourd et marche dans la nuit. Le chemin est sombre et glacial. Sa robe est déchirée et ses pieds sont nus. »',
  '[{"id":"s1","label":"est (Cosette est encore)"},{"id":"s2","label":"et (petite et fragile)"},{"id":"s3","label":"et (lourd et marche)"},{"id":"s4","label":"est (Le chemin est sombre)"},{"id":"s5","label":"et (sombre et glacial)"},{"id":"s6","label":"est (Sa robe est déchirée)"},{"id":"s7","label":"et (déchirée et ses pieds)"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"verbe","label":"Verbe être « est »","color":"blue"},{"id":"conj","label":"Conjonction « et »","color":"amber"}],"mapping":{"s1":"verbe","s2":"conj","s3":"conj","s4":"verbe","s5":"conj","s6":"verbe","s7":"conj"}}'::jsonb,
  '« est » apparaît 3 fois comme verbe être conjugué (3e personne du singulier du présent) : « Cosette est petite », « Le chemin est sombre », « Sa robe est déchirée ». On peut le remplacer par « était ». « et » apparaît 4 fois comme conjonction de coordination reliant deux éléments de même fonction. On peut le remplacer par « et puis » ou « et aussi ».',
  'Au CRPE, le piège classique est « lourd et marche » où « et » coordonne non pas deux adjectifs mais un adjectif et un verbe (ou plutôt deux propositions). La conjonction de coordination peut relier des éléments de natures différentes si leurs fonctions syntaxiques sont compatibles.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermediaire — surlignage_propositions — on/ont chez Saint-Exupéry
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2060000-0000-0000-0000-000000000007',
  'Francais',
  'orthographe',
  'orthographe_homophones_contexte',
  'Homophones grammaticaux en contexte littéraire',
  'Intermediaire',
  'surlignage_propositions',
  'Dans cet extrait inspiré de Saint-Exupéry, surlignez chaque homophone selon qu''il s''agit du pronom indéfini « on » (bleu) ou du verbe avoir « ont » (ambre).',
  'D''après Saint-Exupéry, « Le Petit Prince » : « Les grandes personnes ont oublié qu''elles ont été enfants. On ne voit bien qu''avec le cœur. Elles ont des chiffres plein la tête. On dirait qu''elles ont perdu leur imagination. »',
  '[{"id":"s1","label":"ont (ont oublié)"},{"id":"s2","label":"ont (ont été)"},{"id":"s3","label":"On (On ne voit)"},{"id":"s4","label":"ont (ont des chiffres)"},{"id":"s5","label":"On (On dirait)"},{"id":"s6","label":"ont (ont perdu)"}]'::jsonb,
  '{"mode":"highlight_groups","groups":[{"id":"pronom","label":"Pronom indéfini « on »","color":"blue"},{"id":"verbe","label":"Verbe avoir « ont »","color":"amber"}],"mapping":{"s1":"verbe","s2":"verbe","s3":"pronom","s4":"verbe","s5":"pronom","s6":"verbe"}}'::jsonb,
  '« ont oublié », « ont été », « ont des chiffres », « ont perdu » : « ont » est le verbe avoir à la 3e personne du pluriel. On peut le remplacer par « avaient ». « On ne voit » et « On dirait » : « on » est pronom personnel indéfini, sujet du verbe. On peut le remplacer par « il » ou « quelqu''un ».',
  'Au CRPE, le critère infaillible : « ont » (verbe) peut être remplacé par « avaient » ; « on » (pronom) peut être remplacé par « il » ou « l''on ». « On » est toujours sujet et toujours suivi d''un verbe à la 3e personne du singulier.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — qcm — Pourquoi « leur » sans -s chez Daudet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2060000-0000-0000-0000-000000000008',
  'Francais',
  'orthographe',
  'orthographe_homophones_contexte',
  'Homophones grammaticaux en contexte littéraire',
  'Intermediaire',
  'qcm',
  'Dans cet extrait, pourquoi écrit-on « leur » sans -s dans « il leur racontait » ?',
  'D''après Daudet, « Les Lettres de mon moulin » : « Le soir, à la veillée, les vieux du village venaient s''asseoir autour du feu. Le berger leur racontait des histoires de loups et de fées. Les enfants écoutaient, leurs yeux grands ouverts. »',
  '[{"id":"a","label":"Parce que « leur » est un déterminant possessif singulier (un seul objet possédé)"},{"id":"b","label":"Parce que « leur » est un pronom personnel COI, toujours invariable"},{"id":"c","label":"Parce que « leur » s''accorde avec le verbe qui est au singulier"},{"id":"d","label":"Parce que « leur » se rapporte à une seule personne (le berger)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « leur racontait », « leur » est pronom personnel complément d''objet indirect (= à eux, aux vieux du village). En tant que pronom personnel, il est toujours invariable : il ne prend jamais de -s, quel que soit le nombre de personnes désignées. En revanche, dans « leurs yeux », « leurs » est déterminant possessif et s''accorde avec le nom « yeux » (pluriel).',
  'Au CRPE, les candidats justifient souvent l''absence de -s par l''accord avec le verbe ou avec le sujet. C''est faux : « leur » pronom est invariable par nature (comme « lui », « me », « te »). C''est une propriété morphologique, pas une règle d''accord.',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — qcm — Pourquoi « ces » et non « ses » chez Flaubert
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2060000-0000-0000-0000-000000000009',
  'Francais',
  'orthographe',
  'orthographe_homophones_contexte',
  'Homophones grammaticaux en contexte littéraire',
  'Avancé',
  'qcm',
  'Dans cet extrait, pourquoi écrit-on « ces » et non « ses » dans « ces longues soirées » ?',
  'D''après Flaubert, « Madame Bovary » : « Emma s''ennuyait. Elle regardait par la fenêtre la pluie tomber sur les toits. Ces longues soirées d''hiver lui paraissaient interminables. Elle rêvait de bals, de voyages, de passions extraordinaires. »',
  '[{"id":"a","label":"Parce que « ces » est un déterminant démonstratif : il désigne des soirées que le lecteur peut se représenter dans le contexte"},{"id":"b","label":"Parce que « ses » ne peut pas s''employer devant un adjectif"},{"id":"c","label":"Parce que les soirées n''appartiennent pas à Emma"},{"id":"d","label":"Parce que « ces » est toujours utilisé au pluriel alors que « ses » est pour le singulier"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Ces longues soirées » utilise le déterminant démonstratif « ces » : le narrateur pointe des soirées situées dans le contexte narratif, que le lecteur peut identifier grâce à la description précédente. Le démonstratif a ici une valeur anaphorique (il renvoie à la situation décrite). « Ses soirées » (possessif) aurait un autre sens : il insisterait sur l''appartenance à Emma, ce qui serait moins naturel dans ce contexte narratif.',
  'Au CRPE, la distinction ces/ses est souvent mal analysée. Le critère : « ces » (démonstratif) montre, désigne, pointe. « Ses » (possessif) marque l''appartenance. On peut remplacer « ces » par « ces... -là » et « ses » par « les siens/siennes ».',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — qcm — Pourquoi « s'est » et non « c'est » chez Zola
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'e2060000-0000-0000-0000-00000000000a',
  'Francais',
  'orthographe',
  'orthographe_homophones_contexte',
  'Homophones grammaticaux en contexte littéraire',
  'Avancé',
  'qcm',
  'Dans cet extrait, pourquoi écrit-on « s''est » et non « c''est » dans « s''est levé » ?',
  'D''après Zola, « Germinal » : « Le soleil s''est levé lentement sur le terril noir. C''est un matin froid de février. Les mineurs marchent en silence vers le puits. On n''entend que le bruit de leurs pas sur le pavé gelé. »',
  '[{"id":"a","label":"Parce que « s''est » est la forme élidée de « se est » dans un verbe pronominal (se lever) au passé composé"},{"id":"b","label":"Parce que « s''est » est une contraction de « cela est » devant une voyelle"},{"id":"c","label":"Parce que « c''est » ne peut pas être suivi d''un participe passé"},{"id":"d","label":"Parce que le sujet « le soleil » impose la forme « s''est » par accord"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Le soleil s''est levé » : « s''est » est la forme élidée de « se est ». Le verbe pronominal « se lever » se conjugue au passé composé avec l''auxiliaire être : « il se lève → il s''est levé ». Le pronom réfléchi « se » (élidé en « s'' ») indique que le sujet fait l''action sur lui-même. « C''est » (= cela est) est une présentative, comme dans « C''est un matin froid » juste après, où elle introduit une identification.',
  'Au CRPE, les candidats confondent « s''est » et « c''est » car ils se prononcent de façon très proche. Le critère : si on peut conjuguer à la 1re personne (« je me suis levé »), c''est un verbe pronominal → « s''est ». Si on peut remplacer par « cela est », c''est le présentatif → « c''est ».',
  'valide',
  'CRPE Français — Orthographe interactive',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
