-- ============================================================
-- Migration : 3 séries Mix cross-domaines (30 QCM)
-- Série 1 : Mix — Révision express (10 questions, 7 sous-domaines)
-- Série 2 : Mix — Les pièges classiques du CRPE (10 questions)
-- Série 3 : Mix — Culture générale CRPE (10 questions)
-- Mode : qcm (single_choice)
-- ============================================================

-- ============================================================
-- SÉRIE 1 : Mix — Révision express (1)
-- Topic : mix_revision_express_1
-- UUID prefix : ab010000
-- Mix de TOUS les sous-domaines
-- 3 Facile, 4 Intermédiaire, 3 Avancé
-- ============================================================

-- Q1 — Facile — grammaire (nature/fonction)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab010000-0000-0000-0000-000000000001',
  'Francais',
  'grammaire',
  'mix_revision_express_1',
  'Mix — Révision express (1)',
  'Facile',
  'qcm',
  'Dans la phrase « Les enfants jouent dans la cour », quelle est la fonction du groupe « dans la cour » ?',
  NULL,
  '[{"id":"a","label":"Complément du nom"},{"id":"b","label":"Complément circonstanciel de lieu"},{"id":"c","label":"Complément d''objet indirect"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Dans la cour » est un complément circonstanciel de lieu (CC de lieu). Il indique où se déroule l''action de jouer. On peut le déplacer (« Dans la cour, les enfants jouent ») ou le supprimer sans que la phrase devienne agrammaticale, ce qui est caractéristique des compléments circonstanciels. Selon la terminologie Eduscol 2021, on parle de « complément de phrase » pour désigner les compléments circonstanciels déplaçables et supprimables.',
  'Confondre avec un COI : le COI complète le verbe et est introduit par une préposition imposée par le verbe (« parler de »), tandis que le CC de lieu est un complément de phrase mobile.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — orthographe (accord)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab010000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'mix_revision_express_1',
  'Mix — Révision express (1)',
  'Facile',
  'qcm',
  'Quelle est l''orthographe correcte ? « Les fleurs que j''ai … sont magnifiques. »',
  NULL,
  '[{"id":"a","label":"cueilli"},{"id":"b","label":"cueillis"},{"id":"c","label":"cueillies"},{"id":"d","label":"cueillir"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le participe passé « cueillies » s''accorde avec le COD « que » (mis pour « les fleurs », féminin pluriel) placé avant l''auxiliaire « avoir ». Règle fondamentale : avec l''auxiliaire avoir, le participe passé s''accorde avec le COD si celui-ci est placé avant le verbe. Ici, « les fleurs » est féminin pluriel, donc « cueillies ».',
  'Écrire « cueillis » (masculin pluriel) en oubliant que « fleurs » est féminin. Le genre du COD prime, pas celui du sujet.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — conjugaison (temps)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab010000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'mix_revision_express_1',
  'Mix — Révision express (1)',
  'Facile',
  'qcm',
  'À quel temps est conjugué le verbe « chantait » dans « L''oiseau chantait chaque matin » ?',
  NULL,
  '[{"id":"a","label":"Passé simple"},{"id":"b","label":"Imparfait de l''indicatif"},{"id":"c","label":"Présent du conditionnel"},{"id":"d","label":"Plus-que-parfait"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La forme « chantait » correspond à l''imparfait de l''indicatif (3e personne du singulier). Les terminaisons de l''imparfait sont : -ais, -ais, -ait, -ions, -iez, -aient. L''imparfait exprime ici une action habituelle dans le passé (valeur itérative), renforcée par « chaque matin ».',
  'Confondre avec le conditionnel présent qui se termine aussi par -ait à la 3e personne : « chanterait ». La différence est le radical : chant-ait (imparfait) vs chanter-ait (conditionnel).',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — lexique (sens)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab010000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'mix_revision_express_1',
  'Mix — Révision express (1)',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Il a adopté un ton acerbe pour répondre », quel est le sens de « acerbe » ?',
  NULL,
  '[{"id":"a","label":"Doux et mesuré"},{"id":"b","label":"Agressif et blessant"},{"id":"c","label":"Hésitant et timide"},{"id":"d","label":"Solennel et grave"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Acerbe » signifie « dur, mordant, blessant dans la critique ». Ce mot vient du latin « acerbus » (aigre, âpre). Il s''emploie surtout pour qualifier des paroles, un ton ou une critique. Synonymes : caustique, mordant, incisif. Antonymes : doux, bienveillant, indulgent. À ne pas confondre avec « acerbe » (au sens gustatif : âpre, acide).',
  'Confondre « acerbe » avec « exacerbé » (qui signifie « porté à son paroxysme »). Les deux mots partagent la même racine latine mais ont des sens différents.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — lexique (formation)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab010000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'mix_revision_express_1',
  'Mix — Révision express (1)',
  'Intermediaire',
  'qcm',
  'Quel est le procédé de formation du mot « parapluie » ?',
  NULL,
  '[{"id":"a","label":"Dérivation par suffixation"},{"id":"b","label":"Composition savante"},{"id":"c","label":"Composition populaire"},{"id":"d","label":"Dérivation par préfixation"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Parapluie » est un mot formé par composition populaire : il associe deux éléments du français courant — le verbe « parer » (protéger de) sous la forme « para- » et le nom « pluie ». La composition populaire combine des mots ou radicaux français existants, contrairement à la composition savante qui utilise des racines grecques ou latines (ex. : « télé-phone »). Fait amusant : « parapluie » a été formé sur le modèle de « parasol » (qui protège du soleil).',
  'Confondre avec la dérivation par préfixation : « para- » n''est pas un préfixe ici mais un élément verbal autonome (du verbe « parer »). La composition associe deux mots, la dérivation ajoute un affixe à un radical.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — comprehension_texte (type de texte)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab010000-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'mix_revision_express_1',
  'Mix — Révision express (1)',
  'Intermediaire',
  'qcm',
  'À quel type de texte appartient l''extrait suivant ?',
  'D''abord, il faut rassembler les ingrédients. Ensuite, préchauffez le four à 180°C. Puis, mélangez la farine et le sucre dans un saladier. Enfin, versez la pâte dans le moule et enfournez pendant 30 minutes.',
  '[{"id":"a","label":"Texte narratif"},{"id":"b","label":"Texte descriptif"},{"id":"c","label":"Texte injonctif"},{"id":"d","label":"Texte explicatif"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Cet extrait est un texte injonctif (ou prescriptif). Il donne des instructions à suivre dans un ordre précis, ce qui est typique des recettes de cuisine, modes d''emploi ou règlements. Indices : les verbes à l''impératif (« préchauffez », « mélangez », « versez »), les connecteurs d''ordre chronologique (« d''abord », « ensuite », « puis », « enfin »), et la visée pratique du texte.',
  'Confondre avec un texte explicatif : le texte explicatif répond à une question (« pourquoi ? comment ? ») pour faire comprendre, tandis que le texte injonctif donne des ordres ou conseils pour faire agir.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Avancé — comprehension_texte (inférence)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab010000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'mix_revision_express_1',
  'Mix — Révision express (1)',
  'Avance',
  'qcm',
  'Quelle inférence peut-on tirer de cet extrait ?',
  'Marguerite referma doucement la porte derrière elle. Elle posa son cartable sur la table de la cuisine, se servit un verre de lait et ouvrit son cahier de devoirs. La maison était silencieuse. Sur le réfrigérateur, un mot de sa mère : « Partie chercher ton frère au foot. Goûter dans le placard. »',
  '[{"id":"a","label":"Marguerite est une élève de maternelle"},{"id":"b","label":"Marguerite rentre de l''école avant sa mère et son frère"},{"id":"c","label":"Marguerite n''aime pas faire ses devoirs"},{"id":"d","label":"La mère de Marguerite est partie faire des courses"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''inférence correcte est que Marguerite rentre de l''école avant sa mère et son frère. Les indices textuels sont : le cartable (elle revient de l''école), la maison silencieuse (personne d''autre n''est là), le mot sur le réfrigérateur (la mère est absente, partie chercher le frère). On parle d''inférence logique : le lecteur déduit une information non explicitement écrite en croisant plusieurs indices. Cette compétence est centrale dans les programmes Eduscol 2021 pour la compréhension en lecture.',
  'Choisir une réponse explicitement contredite par le texte (ex. : « partie faire des courses » alors que le mot dit « chercher ton frère au foot ») — l''inférence doit s''appuyer sur le texte, pas sur l''imagination.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermédiaire — analyse_langue (proposition)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab010000-0000-0000-0000-000000000008',
  'Francais',
  'analyse_langue',
  'mix_revision_express_1',
  'Mix — Révision express (1)',
  'Intermediaire',
  'qcm',
  'Dans la phrase « Je pense qu''il viendra demain », quelle est la nature de la proposition « qu''il viendra demain » ?',
  NULL,
  '[{"id":"a","label":"Proposition subordonnée relative"},{"id":"b","label":"Proposition subordonnée conjonctive complétive"},{"id":"c","label":"Proposition subordonnée circonstancielle"},{"id":"d","label":"Proposition indépendante"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Qu''il viendra demain » est une proposition subordonnée conjonctive complétive. Elle est introduite par la conjonction de subordination « que » (et non le pronom relatif « que ») et occupe la fonction de COD du verbe « pense ». On peut la remplacer par un GN : « Je pense cela ». La complétive est essentielle au sens de la phrase, contrairement à la circonstancielle qui est souvent supprimable.',
  'Confondre avec une relative : la relative est introduite par un pronom relatif (qui, que, dont, où...) qui reprend un antécédent nominal. Ici, « que » est une conjonction de subordination (il n''a pas d''antécédent).',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — analyse_langue (manipulation)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab010000-0000-0000-0000-000000000009',
  'Francais',
  'analyse_langue',
  'mix_revision_express_1',
  'Mix — Révision express (1)',
  'Avance',
  'qcm',
  'Quelle manipulation syntaxique permet de prouver que « rapidement » est un complément de phrase (et non un complément de verbe) dans « Rapidement, les élèves ont rangé la classe » ?',
  NULL,
  '[{"id":"a","label":"On peut le pronominaliser"},{"id":"b","label":"On peut le supprimer et le déplacer sans modifier le sens fondamental"},{"id":"c","label":"On peut le mettre au passif"},{"id":"d","label":"On peut l''encadrer par « c''est… que »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le double test de suppression et de déplacement est le critère fondamental pour identifier un complément de phrase (anciennement « complément circonstanciel ») selon la terminologie Eduscol 2021. « Les élèves ont rangé la classe » reste grammaticale (suppression) et « Les élèves ont rangé la classe rapidement » fonctionne aussi (déplacement). Un complément de verbe, lui, ne peut être ni supprimé ni déplacé librement.',
  'Choisir l''encadrement par « c''est… que » : cette manipulation met en relief mais ne prouve pas qu''un élément est complément de phrase — elle fonctionne aussi avec certains compléments de verbe.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — didactique_francais (cycle/programme)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab010000-0000-0000-0000-00000000000a',
  'Francais',
  'didactique_francais',
  'mix_revision_express_1',
  'Mix — Révision express (1)',
  'Avance',
  'qcm',
  'Selon les programmes 2021 (Eduscol), à quel cycle les élèves doivent-ils apprendre à « identifier les constituants de la phrase simple : sujet, prédicat, complément de phrase » ?',
  NULL,
  '[{"id":"a","label":"Cycle 1 (maternelle)"},{"id":"b","label":"Cycle 2 (CP-CE2)"},{"id":"c","label":"Cycle 3 (CM1-6e)"},{"id":"d","label":"Cycle 4 (5e-3e)"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'C''est au cycle 3 (CM1-CM2-6e) que les élèves apprennent à identifier les constituants de la phrase simple selon le modèle sujet / prédicat / complément de phrase. La notion de « prédicat » (ce qu''on dit du sujet) a été introduite dans les programmes 2015 et confirmée en 2021. Au cycle 2, les élèves identifient le verbe et le sujet, mais l''analyse complète des constituants est un attendu de fin de cycle 3.',
  'Penser que l''analyse en constituants commence dès le cycle 2 : au cycle 2, on travaille l''identification du verbe, du sujet et la notion de phrase, mais le modèle sujet/prédicat/complément de phrase est propre au cycle 3.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 2 : Mix — Les pièges classiques du CRPE
-- Topic : mix_piege_du_jour
-- UUID prefix : ab020000
-- Questions pièges de tous les domaines
-- 0 Facile, 5 Intermédiaire, 5 Avancé
-- ============================================================

-- Q1 — Intermédiaire — Homophone quoique / quoi que
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab020000-0000-0000-0000-000000000001',
  'Francais',
  'orthographe',
  'mix_piege_du_jour',
  'Mix — Les pièges classiques du CRPE',
  'Intermediaire',
  'qcm',
  'Complétez : « … il fasse, il ne parvient jamais à la satisfaire. »',
  NULL,
  '[{"id":"a","label":"Quoiqu''"},{"id":"b","label":"Quoi qu''"},{"id":"c","label":"Quoi que"},{"id":"d","label":"Quoique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Quoi qu'' » (en deux mots, avec élision) est la forme correcte ici. « Quoi que » (en deux mots) est un pronom relatif indéfini signifiant « quelle que soit la chose que ». On peut le remplacer par « quelle que soit la chose que ». En revanche, « quoique » (en un mot) est une conjonction de subordination synonyme de « bien que ». Test : si on peut remplacer par « bien que », c''est « quoique » ; sinon, c''est « quoi que ».',
  'Écrire « quoiqu'' » (en un seul mot) par confusion avec la conjonction de concession « quoique » (= bien que). Ici, le sens est « quelle que soit la chose qu''il fasse », donc deux mots.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Avancé — PP avec "en"
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab020000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'mix_piege_du_jour',
  'Mix — Les pièges classiques du CRPE',
  'Avance',
  'qcm',
  'Quelle est l''orthographe correcte ? « Des erreurs, j''en ai … beaucoup. »',
  NULL,
  '[{"id":"a","label":"commis"},{"id":"b","label":"commises"},{"id":"c","label":"commise"},{"id":"d","label":"commit"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le participe passé reste invariable (« commis ») car le pronom « en » n''est pas considéré comme un véritable COD par la grammaire traditionnelle. La règle est la suivante : quand « en » est le seul complément placé avant le verbe, le participe passé employé avec « avoir » reste généralement invariable. Cette règle est un grand classique des pièges du CRPE ! Notez que Grevisse admet toutefois l''accord dans certains cas littéraires.',
  'Accorder avec « erreurs » (féminin pluriel) en écrivant « commises » : c''est le piège. Le pronom « en » bloque l''accord du participe passé.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Avancé — Subjonctif vs indicatif après "après que"
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab020000-0000-0000-0000-000000000003',
  'Francais',
  'conjugaison',
  'mix_piege_du_jour',
  'Mix — Les pièges classiques du CRPE',
  'Avance',
  'qcm',
  'Quel mode verbal doit-on utiliser après « après que » selon la norme grammaticale ?',
  NULL,
  '[{"id":"a","label":"Le subjonctif, car il exprime une incertitude"},{"id":"b","label":"L''indicatif, car le fait est réalisé"},{"id":"c","label":"Le conditionnel, car l''action est hypothétique"},{"id":"d","label":"L''infinitif, si le sujet est le même"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Selon la norme grammaticale, « après que » se construit avec l''indicatif, car l''action introduite est réalisée et certaine (« Après qu''il est parti... »). C''est l''inverse de « avant que » qui exige le subjonctif car l''action n''est pas encore accomplie. Pourtant, l''usage courant emploie massivement le subjonctif après « après que » par analogie avec « avant que ». L''Académie française rappelle régulièrement que l''indicatif est la seule forme correcte. Ce piège tombe très régulièrement au CRPE !',
  'Choisir le subjonctif par réflexe : l''usage oral courant (« après qu''il soit parti ») est fautif selon la norme. Au CRPE, on attend la règle normative.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — Nature vs fonction (confusion classique)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab020000-0000-0000-0000-000000000004',
  'Francais',
  'grammaire',
  'mix_piege_du_jour',
  'Mix — Les pièges classiques du CRPE',
  'Intermediaire',
  'qcm',
  'Parmi ces propositions, laquelle désigne une NATURE (classe grammaticale) et non une FONCTION ?',
  NULL,
  '[{"id":"a","label":"Complément d''objet direct"},{"id":"b","label":"Épithète"},{"id":"c","label":"Déterminant"},{"id":"d","label":"Attribut du sujet"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Déterminant » est une nature (classe grammaticale) : c''est ce qu''un mot EST, indépendamment de la phrase. Les trois autres (COD, épithète, attribut du sujet) sont des fonctions : elles décrivent le RÔLE d''un mot dans une phrase particulière. Astuce : la nature d''un mot ne change pas d''une phrase à l''autre, tandis que sa fonction varie selon le contexte. Eduscol 2021 distingue clairement ces deux notions : classes de mots (nature) et fonctions syntaxiques.',
  'Confondre « épithète » avec une nature : « épithète » est la fonction d''un adjectif placé directement à côté du nom qu''il qualifie. C''est un rôle, pas une catégorie de mot.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Piège lexical : paronymes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab020000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'mix_piege_du_jour',
  'Mix — Les pièges classiques du CRPE',
  'Intermediaire',
  'qcm',
  'Complétez la phrase correctement : « Le professeur a fait preuve d''une grande … envers ses élèves en difficulté. »',
  NULL,
  '[{"id":"a","label":"bienveillance"},{"id":"b","label":"bienfaisance"},{"id":"c","label":"bienséance"},{"id":"d","label":"bienfacture"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Bienveillance » (disposition à vouloir du bien) est le mot juste. Attention aux paronymes (mots proches par la forme mais différents par le sens) : « bienfaisance » = action de faire du bien concrètement (œuvres de bienfaisance) ; « bienséance » = respect des convenances sociales ; « bienfacture » = qualité de fabrication d''un objet. Ces paronymes sont un piège classique : ils partagent le préfixe « bien- » mais ont des sens très différents.',
  'Choisir « bienfaisance » par confusion : la bienfaisance implique des actes concrets de générosité (donner de l''argent, aider matériellement), tandis que la bienveillance est une disposition d''esprit, une attitude positive.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Avancé — Accord du PP avec verbe pronominal
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab020000-0000-0000-0000-000000000006',
  'Francais',
  'orthographe',
  'mix_piege_du_jour',
  'Mix — Les pièges classiques du CRPE',
  'Avance',
  'qcm',
  'Quelle est l''orthographe correcte ? « Elles se sont … les mains. »',
  NULL,
  '[{"id":"a","label":"lavé"},{"id":"b","label":"lavées"},{"id":"c","label":"lavés"},{"id":"d","label":"lavée"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Elles se sont lavé les mains » : le participe passé reste invariable. Avec un verbe pronominal, si le pronom « se » est COI (= à elles-mêmes) et que le COD (« les mains ») est placé après le verbe, il n''y a pas d''accord. On lave quelque chose (les mains = COD après le PP) à quelqu''un (se = COI). En revanche, « Elles se sont lavées » (sans COD après) s''accorderait car « se » serait alors COD. Subtilité redoutable du CRPE !',
  'Écrire « lavées » en accordant avec le sujet : c''est le piège. Avec un verbe pronominal + COD placé après, le PP reste invariable.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Piège de l'analyse : complément essentiel vs circonstanciel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab020000-0000-0000-0000-000000000007',
  'Francais',
  'analyse_langue',
  'mix_piege_du_jour',
  'Mix — Les pièges classiques du CRPE',
  'Intermediaire',
  'qcm',
  'Dans « Paul habite à Lyon », le groupe « à Lyon » est-il un complément de verbe ou un complément de phrase ?',
  NULL,
  '[{"id":"a","label":"Complément de phrase, car il indique un lieu"},{"id":"b","label":"Complément de verbe, car il est essentiel au sens"},{"id":"c","label":"Complément du nom, car il précise « Paul »"},{"id":"d","label":"Attribut du sujet, car il caractérise Paul"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« À Lyon » est un complément de verbe (et non un complément de phrase), car il ne peut être ni supprimé (*« Paul habite » est incomplet) ni déplacé en tête de phrase de façon naturelle (*« À Lyon habite Paul » est très marqué). Le verbe « habiter » exige un complément de lieu pour être complet : c''est un complément essentiel. Le piège est de classer tout complément de lieu comme « circonstanciel ». Selon Eduscol 2021, le critère n''est pas le sens (lieu, temps…) mais la possibilité de suppression/déplacement.',
  'Classer tout complément de lieu comme circonstanciel : c''est l''erreur classique. Le critère n''est pas sémantique (lieu/temps) mais syntaxique (suppressible et déplaçable = complément de phrase).',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — Didactique : confusion cycle 2 / cycle 3
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab020000-0000-0000-0000-000000000008',
  'Francais',
  'didactique_francais',
  'mix_piege_du_jour',
  'Mix — Les pièges classiques du CRPE',
  'Avance',
  'qcm',
  'Selon les programmes 2021, lequel de ces apprentissages est un attendu de fin de cycle 2 (et non de cycle 3) ?',
  NULL,
  '[{"id":"a","label":"Distinguer les compléments de verbe et les compléments de phrase"},{"id":"b","label":"Identifier la phrase comme un ensemble de mots ordonnés ayant un sens, commençant par une majuscule et se terminant par un point"},{"id":"c","label":"Identifier les propositions subordonnées relatives"},{"id":"d","label":"Utiliser le passé simple à la 3e personne dans les écrits"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''identification de la phrase (majuscule, point, sens) est un attendu de fin de cycle 2. Les trois autres relèvent du cycle 3. Au cycle 2, les élèves apprennent à identifier et construire des phrases, repérer le verbe et le sujet, mais pas encore à distinguer types de compléments ou propositions subordonnées. Le piège est fréquent au CRPE : les candidats attribuent au cycle 2 des compétences grammaticales qui relèvent du cycle 3.',
  'Choisir « le passé simple à la 3e personne » : c''est un attendu de cycle 3. Au cycle 2, les élèves découvrent l''imparfait et le passé composé, mais le passé simple n''est étudié qu''au cycle 3.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermédiaire — Piège compréhension : narrateur vs auteur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab020000-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'mix_piege_du_jour',
  'Mix — Les pièges classiques du CRPE',
  'Intermediaire',
  'qcm',
  'Dans un récit à la première personne, quelle affirmation est FAUSSE ?',
  NULL,
  '[{"id":"a","label":"Le narrateur est un personnage de l''histoire"},{"id":"b","label":"Le narrateur et l''auteur sont nécessairement la même personne"},{"id":"c","label":"Le narrateur utilise « je » pour raconter"},{"id":"d","label":"Le point de vue adopté est le point de vue interne"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''affirmation fausse est « Le narrateur et l''auteur sont nécessairement la même personne ». Le narrateur est une instance fictive créée par l''auteur pour raconter l''histoire — ce n''est pas forcément l''auteur lui-même. Par exemple, dans « L''Étranger » de Camus, le narrateur est Meursault (personnage fictif), pas Camus. Cette distinction narrateur/auteur est fondamentale en didactique de la lecture littéraire et revient fréquemment au CRPE.',
  'Identifier narrateur et auteur : dans une autobiographie, les deux peuvent coïncider, mais dans la fiction, le narrateur est toujours une construction textuelle distincte de l''auteur réel.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — Piège conjugaison : verbe défectif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab020000-0000-0000-0000-00000000000a',
  'Francais',
  'conjugaison',
  'mix_piege_du_jour',
  'Mix — Les pièges classiques du CRPE',
  'Avance',
  'qcm',
  'Parmi ces verbes, lequel est un verbe défectif (qui ne se conjugue pas à toutes les formes) ?',
  NULL,
  '[{"id":"a","label":"Courir"},{"id":"b","label":"Falloir"},{"id":"c","label":"Venir"},{"id":"d","label":"Prendre"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Falloir » est un verbe défectif : il ne se conjugue qu''à la 3e personne du singulier avec le pronom impersonnel « il » (il faut, il fallait, il faudra…). Un verbe défectif est un verbe dont la conjugaison est incomplète — il ne possède pas toutes les formes de la conjugaison. Autres exemples : « pleuvoir » (impersonnel), « seoir » (convenir), « choir » (tomber, archaïque). Les trois autres verbes proposés ont une conjugaison complète à toutes les personnes et tous les temps.',
  'Hésiter avec « venir » en pensant à des formes irrégulières : un verbe irrégulier n''est pas défectif. Irrégulier = formes inhabituelles, défectif = formes manquantes.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;


-- ============================================================
-- SÉRIE 3 : Mix — Culture générale CRPE
-- Topic : mix_culture_crpe
-- UUID prefix : ab030000
-- Questions culture linguistique + CRPE
-- 4 Facile, 3 Intermédiaire, 3 Avancé
-- ============================================================

-- Q1 — Facile — Étymologie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab030000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'mix_culture_crpe',
  'Mix — Culture générale CRPE',
  'Facile',
  'qcm',
  'D''où vient le mot « école » ?',
  NULL,
  '[{"id":"a","label":"Du latin « schola », lui-même du grec « scholè » (loisir)"},{"id":"b","label":"Du germanique « skul » (savoir)"},{"id":"c","label":"Du latin « scala » (échelle)"},{"id":"d","label":"De l''arabe « al-qalam » (la plume)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le mot « école » vient du latin « schola », emprunté au grec ancien « scholè » (σχολή) qui signifiait… « loisir, repos » ! Pour les Grecs, le temps libre était consacré à l''étude et à la philosophie — l''école était donc le lieu du loisir studieux, par opposition au travail manuel. Ironique quand on sait comment les élèves perçoivent l''école aujourd''hui ! Ce glissement sémantique illustre parfaitement l''évolution du sens des mots au fil des siècles.',
  'Choisir « scala » (échelle) par proximité phonétique : c''est un piège par paronymie. « Scala » a donné « escalier », pas « école ».',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Histoire de la langue : réforme orthographique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab030000-0000-0000-0000-000000000002',
  'Francais',
  'orthographe',
  'mix_culture_crpe',
  'Mix — Culture générale CRPE',
  'Facile',
  'qcm',
  'En quelle année les rectifications orthographiques (dites « nouvelle orthographe ») ont-elles été publiées au Journal officiel ?',
  NULL,
  '[{"id":"a","label":"1975"},{"id":"b","label":"1990"},{"id":"c","label":"2005"},{"id":"d","label":"2016"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les rectifications orthographiques ont été publiées au Journal officiel le 6 décembre 1990, sur proposition du Conseil supérieur de la langue française. Elles concernent environ 2 400 mots et simplifient notamment : l''accent circonflexe sur i et u (« coût » → « cout »), les traits d''union dans les numéraux (« vingt-et-un »), le pluriel des mots composés (« des après-midis »), et la francisation de mots empruntés (« nénufar »). Depuis 2016, elles sont la référence dans les programmes scolaires.',
  'Choisir 2016 : c''est l''année où les manuels scolaires ont commencé à appliquer les rectifications, mais celles-ci datent bien de 1990.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Référence littéraire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab030000-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'mix_culture_crpe',
  'Mix — Culture générale CRPE',
  'Facile',
  'qcm',
  'Quel auteur a écrit « Le Petit Prince », œuvre fréquemment étudiée à l''école primaire ?',
  NULL,
  '[{"id":"a","label":"Jules Verne"},{"id":"b","label":"Antoine de Saint-Exupéry"},{"id":"c","label":"Albert Camus"},{"id":"d","label":"Marcel Pagnol"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Antoine de Saint-Exupéry a écrit « Le Petit Prince » en 1943, pendant son exil aux États-Unis. C''est l''ouvrage en langue française le plus traduit au monde (plus de 300 langues et dialectes !). Il fait partie de la liste de référence Eduscol pour le cycle 3 et permet de travailler l''interprétation, l''implicite et la symbolique en lecture littéraire. Saint-Exupéry était aussi aviateur — son expérience du désert a directement inspiré l''histoire.',
  'Confondre avec Marcel Pagnol, dont les œuvres sont aussi étudiées à l''école primaire (« La Gloire de mon père », « Le Château de ma mère »).',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — Didactique : méthode de lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab030000-0000-0000-0000-000000000004',
  'Francais',
  'didactique_francais',
  'mix_culture_crpe',
  'Mix — Culture générale CRPE',
  'Intermediaire',
  'qcm',
  'Qu''appelle-t-on la « conscience phonologique » dans l''apprentissage de la lecture ?',
  NULL,
  '[{"id":"a","label":"La capacité à lire à voix haute avec fluidité"},{"id":"b","label":"La capacité à identifier et manipuler les unités sonores de la langue (syllabes, phonèmes)"},{"id":"c","label":"La connaissance du nom des lettres de l''alphabet"},{"id":"d","label":"La compréhension du sens des mots lus"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La conscience phonologique est la capacité à identifier et manipuler les unités sonores de la langue orale : syllabes, rimes et phonèmes. C''est un prédicteur majeur de la réussite en lecture. Elle se travaille dès la maternelle (cycle 1) par des jeux oraux : frapper les syllabes, trouver des rimes, supprimer un son… La recherche (notamment les travaux de Stanislas Dehaene) montre qu''elle est indispensable pour accéder au principe alphabétique. Au CRPE, c''est une notion incontournable en didactique du français.',
  'Confondre avec la fluence de lecture : la fluence concerne la lecture à voix haute rapide et précise, tandis que la conscience phonologique est une compétence orale prélectrice.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — Pluriel irrégulier curiosité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab030000-0000-0000-0000-000000000005',
  'Francais',
  'orthographe',
  'mix_culture_crpe',
  'Mix — Culture générale CRPE',
  'Facile',
  'qcm',
  'Quel est le pluriel correct du mot « œil » ?',
  NULL,
  '[{"id":"a","label":"Des œils"},{"id":"b","label":"Des yeux"},{"id":"c","label":"Des œilles"},{"id":"d","label":"Des oyeux"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le pluriel de « œil » est « yeux » — c''est l''un des pluriels les plus irréguliers du français ! Cette irrégularité s''explique par l''histoire : « œil » vient du latin « oculus » (singulier), tandis que « yeux » vient du latin « oculos » (accusatif pluriel), transformé par l''évolution phonétique du français. Curiosité : on dit « des yeux » pour les yeux du visage, mais « des œils-de-bœuf » (fenêtres rondes) et « des œils-de-perdrix » (cors au pied) gardent le pluriel régulier !',
  'Penser que le pluriel régulier « œils » existe toujours : il ne subsiste que dans des mots composés figés (œils-de-bœuf, œils-de-chat en joaillerie).',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Étymologie et formation savante
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab030000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'mix_culture_crpe',
  'Mix — Culture générale CRPE',
  'Intermediaire',
  'qcm',
  'Que signifie le suffixe « -graphie » que l''on retrouve dans « orthographe », « géographie », « calligraphie » ?',
  NULL,
  '[{"id":"a","label":"L''étude de"},{"id":"b","label":"L''action d''écrire ou de décrire"},{"id":"c","label":"La mesure de"},{"id":"d","label":"La peur de"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le suffixe « -graphie » vient du grec « graphein » (écrire). On le retrouve dans : « ortho-graphe » (écriture correcte), « géo-graphie » (description de la Terre), « calli-graphie » (belle écriture), « bio-graphie » (écriture d''une vie). À distinguer de « -logie » (étude de, du grec « logos ») et « -métrie » (mesure de, du grec « metron »). Connaître ces éléments grecs et latins de formation savante aide les élèves à déduire le sens de mots nouveaux — c''est un objectif du cycle 3 en vocabulaire.',
  'Confondre avec « -logie » (l''étude de) : « géologie » = étude de la Terre, « géographie » = description (écriture) de la Terre. La nuance est subtile mais réelle.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Histoire de la langue : ordonnance de Villers-Cotterêts
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab030000-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'mix_culture_crpe',
  'Mix — Culture générale CRPE',
  'Intermediaire',
  'qcm',
  'Quel texte fondateur a imposé l''usage du français (au lieu du latin) dans les actes administratifs et juridiques en France ?',
  NULL,
  '[{"id":"a","label":"L''édit de Nantes (1598)"},{"id":"b","label":"L''ordonnance de Villers-Cotterêts (1539)"},{"id":"c","label":"La Déclaration des droits de l''homme (1789)"},{"id":"d","label":"Les lois Jules Ferry (1881-1882)"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''ordonnance de Villers-Cotterêts, signée par François Ier en août 1539, impose le français comme langue officielle des actes administratifs et juridiques, remplaçant le latin. C''est un texte fondateur de la politique linguistique française. Les articles 110 et 111 stipulent que tous les actes doivent être rédigés en « langage maternel françois ». Fait remarquable : c''est le plus ancien texte législatif encore partiellement en vigueur en France ! Il est souvent cité dans les épreuves de culture générale du CRPE.',
  'Confondre avec les lois Jules Ferry (1881-1882) qui ont rendu l''école gratuite, laïque et obligatoire, mais ne concernent pas la langue officielle.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Avancé — Grammaire : le prédicat (débat terminologique)
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab030000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'mix_culture_crpe',
  'Mix — Culture générale CRPE',
  'Avance',
  'qcm',
  'Dans la terminologie grammaticale Eduscol 2021, qu''est-ce que le « prédicat » ?',
  NULL,
  '[{"id":"a","label":"Un synonyme de « verbe conjugué »"},{"id":"b","label":"Le groupe verbal et ses compléments, c''est-à-dire ce qu''on dit du sujet"},{"id":"c","label":"L''ensemble des compléments circonstanciels de la phrase"},{"id":"d","label":"Le sujet et le verbe réunis"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le prédicat désigne ce qu''on dit du sujet : il comprend le verbe et ses compléments essentiels (compléments de verbe). Dans « Le chat mange la souris », le prédicat est « mange la souris ». Cette notion, issue de la linguistique, a été introduite dans les programmes de 2015 pour simplifier l''analyse de la phrase en trois constituants : sujet / prédicat / complément de phrase. Le terme a suscité un vif débat chez les enseignants et les grammairiens — il reste dans les programmes 2021 mais n''est plus aussi central.',
  'Réduire le prédicat au seul verbe conjugué : le prédicat inclut aussi les compléments de verbe (COD, COI, attribut). « Mange » seul n''est pas le prédicat complet.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Avancé — Didactique : Stanislas Dehaene et la lecture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab030000-0000-0000-0000-000000000009',
  'Francais',
  'didactique_francais',
  'mix_culture_crpe',
  'Mix — Culture générale CRPE',
  'Avance',
  'qcm',
  'Selon les travaux de Stanislas Dehaene sur la lecture, qu''appelle-t-on le « recyclage neuronal » ?',
  NULL,
  '[{"id":"a","label":"La perte de neurones lors de l''apprentissage de la lecture"},{"id":"b","label":"La réutilisation de circuits cérébraux (initialement dédiés à la reconnaissance visuelle) pour la lecture"},{"id":"c","label":"La capacité du cerveau à oublier les mots mal orthographiés"},{"id":"d","label":"Le remplacement des méthodes globales par les méthodes syllabiques"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le « recyclage neuronal » est un concept clé de Stanislas Dehaene (neuroscientifique, professeur au Collège de France). Il désigne le fait que l''apprentissage de la lecture « recycle » des circuits cérébraux initialement dédiés à la reconnaissance visuelle des formes et des visages, pour les spécialiser dans la reconnaissance des lettres et des mots. Le cerveau n''a pas évolué pour lire (l''écriture n''a que 5 000 ans), il réutilise des structures préexistantes. Cette théorie a influencé les recommandations pédagogiques en faveur de l''enseignement explicite du code alphabétique.',
  'Interpréter « recyclage » au sens courant : il ne s''agit pas de « jeter et remplacer » des neurones, mais de réaffecter des circuits existants à une nouvelle fonction.',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — Analyse langue : figures de style
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, access_tier, is_published
) VALUES (
  'ab030000-0000-0000-0000-00000000000a',
  'Francais',
  'analyse_langue',
  'mix_culture_crpe',
  'Mix — Culture générale CRPE',
  'Avance',
  'qcm',
  'Dans le vers de Victor Hugo « Je suis veuf, je suis seul, et sur moi le soir tombe », quelle figure de style est utilisée dans « le soir tombe » ?',
  NULL,
  '[{"id":"a","label":"Une comparaison"},{"id":"b","label":"Une métaphore"},{"id":"c","label":"Une personnification"},{"id":"d","label":"Une hyperbole"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Le soir tombe » est une métaphore : le soir (abstrait, moment de la journée) est assimilé à un objet qui tombe, sans mot de comparaison (« comme »). On pourrait aussi y voir une personnification (attribuer une action humaine au soir). Mais la lecture la plus juste est métaphorique : le soir qui « tombe » évoque aussi le poids du deuil et de la solitude (Hugo écrit après la mort de sa fille Léopoldine). Ce vers, tiré des « Contemplations » (1856), est un chef-d''œuvre de polysémie — le soir est à la fois concret (crépuscule) et symbolique (fin de vie, tristesse). Victor Hugo est l''auteur le plus cité dans les épreuves du CRPE.',
  'Choisir « comparaison » : la comparaison nécessite un outil de comparaison (comme, tel, semblable à…). Ici, il n''y en a pas, c''est donc une métaphore (comparaison implicite).',
  'valide', 'free', true
) ON CONFLICT (id) DO NOTHING;
