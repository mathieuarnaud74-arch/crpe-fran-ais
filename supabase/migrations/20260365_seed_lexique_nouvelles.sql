-- ============================================================
-- Migration : 4 séries Lexique (40 exercices)
-- UUID prefix : b601–b604
-- ============================================================

-- ############################################################
-- SÉRIE 1 : lex_etymologie_familles — Étymologie et familles de mots
-- ############################################################

-- Q1 — Facile — qcm — Identifier la racine latine d''un mot courant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6010000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_etymologie_familles',
  'Étymologie et familles de mots',
  'Facile',
  'qcm',
  'Quelle est la racine latine du mot « aquarium » ?',
  NULL,
  '[{"id":"a","label":"aqua (eau)"},{"id":"b","label":"aer (air)"},{"id":"c","label":"ager (champ)"},{"id":"d","label":"anima (âme)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le mot « aquarium » est formé sur la racine latine aqua, qui signifie « eau ». Cette racine se retrouve dans de nombreux mots français : aquatique, aqueduc, aquarelle. La connaissance des racines latines permet de comprendre le sens de mots inconnus et de les relier à leur famille étymologique. En cycle 3, les programmes d''Éduscol insistent sur l''observation des familles de mots pour enrichir le vocabulaire.',
  'Certains élèves confondent les racines latines proches. Ici, « aer » (air) pourrait être choisi à tort car les deux racines commencent par « a ».',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — qcm — Reconnaître un préfixe d''origine grecque
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6010000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_etymologie_familles',
  'Étymologie et familles de mots',
  'Facile',
  'qcm',
  'Dans les mots « biographie », « biologie » et « biopsie », le préfixe « bio- » signifie :',
  NULL,
  '[{"id":"a","label":"deux"},{"id":"b","label":"vie"},{"id":"c","label":"livre"},{"id":"d","label":"terre"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le préfixe « bio- » provient du grec bios, qui signifie « vie ». On le retrouve dans biographie (récit de vie), biologie (science du vivant), biopsie (examen de tissu vivant). Il ne faut pas le confondre avec le préfixe latin « bi- » qui signifie « deux » (bicyclette, bilatéral). Cette distinction entre préfixes grecs et latins est fondamentale dans l''enseignement du lexique au cycle 3.',
  'La confusion la plus fréquente est avec « bi- » (deux), car les deux préfixes se ressemblent graphiquement. Il faut bien distinguer « bio- » (grec, vie) de « bi- » (latin, deux).',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — qcm — Doublets étymologiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6010000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_etymologie_familles',
  'Étymologie et familles de mots',
  'Intermediaire',
  'qcm',
  'Les mots « hôpital » et « hôtel » sont des doublets étymologiques. Cela signifie que :',
  NULL,
  '[{"id":"a","label":"Ils ont la même racine latine (hospitale) mais ont évolué différemment"},{"id":"b","label":"Ils sont synonymes dans la langue actuelle"},{"id":"c","label":"Ils appartiennent à des langues d''origine différentes"},{"id":"d","label":"Ils ont été empruntés à l''anglais à la même époque"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Les doublets étymologiques sont des paires de mots issus d''un même étymon latin qui ont suivi deux voies d''évolution différentes : la voie populaire (transformation phonétique progressive) et la voie savante (emprunt tardif au latin). « Hôpital » et « hôtel » proviennent tous deux du latin hospitale. « Hôtel » est la forme populaire, « hôpital » la forme savante réintroduite plus tard. Ce phénomène illustre la double filiation du lexique français.',
  'L''erreur courante est de croire que deux mots qui se ressemblent sont forcément synonymes. Les doublets ont divergé de sens tout en partageant la même origine.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Formation savante en sciences
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6010000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_etymologie_familles',
  'Étymologie et familles de mots',
  'Intermediaire',
  'qcm',
  'Le mot « thermomètre » est composé de deux racines grecques. Lesquelles ?',
  NULL,
  '[{"id":"a","label":"thermos (chaud) et metron (mesure)"},{"id":"b","label":"theos (dieu) et metros (mère)"},{"id":"c","label":"thermos (chaud) et morphê (forme)"},{"id":"d","label":"chronos (temps) et metron (mesure)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le mot « thermomètre » est un composé savant formé de deux racines grecques : thermos (chaud, chaleur) et metron (mesure). Ce procédé de composition savante, très productif dans le vocabulaire scientifique, permet de créer des mots transparents pour qui connaît les racines. On retrouve thermos dans thermique, thermostat, et metron dans chronomètre, baromètre. L''enseignement de la morphologie lexicale au cycle 3 s''appuie sur ces régularités.',
  'La confusion avec « chronos » (temps) est fréquente car « chronomètre » existe aussi. Il faut bien identifier chaque racine séparément.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — vrai_faux — Radical d''une famille de mots
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6010000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_etymologie_familles',
  'Étymologie et familles de mots',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Les mots « terre », « terrain », « terrasse » et « terrible » appartiennent tous à la même famille de mots.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. « Terre », « terrain » et « terrasse » appartiennent bien à la même famille, formée sur le radical terr- issu du latin terra (terre, sol). En revanche, « terrible » vient du latin terrere (effrayer), qui a donné aussi « terreur » et « terroriser ». Malgré la ressemblance graphique, le radical n''est pas le même. Cette distinction illustre l''importance de vérifier l''étymologie et non la simple apparence graphique pour constituer des familles de mots.',
  'L''erreur fréquente consiste à regrouper des mots sur la seule base de leur ressemblance graphique (faux amis morphologiques), sans vérifier la parenté étymologique réelle.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — vrai_faux — Étymologie populaire vs savante
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6010000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_etymologie_familles',
  'Étymologie et familles de mots',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le mot « écouter » (du latin auscultare) et le mot « ausculter » sont des doublets étymologiques.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Écouter » et « ausculter » proviennent tous deux du verbe latin auscultare (écouter attentivement). « Écouter » est la forme issue de l''évolution phonétique populaire (auscultare → ascoltare → escouter → écouter), tandis qu''« ausculter » est un emprunt savant tardif au latin, réintroduit au XIXe siècle dans le vocabulaire médical. Ce couple illustre parfaitement le phénomène des doublets étymologiques dans l''histoire du français.',
  'On pourrait croire qu''« ausculter » a un lien avec « oreille » (auris) plutôt qu''avec « écouter », mais c''est bien le même étymon latin auscultare.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — vrai_faux — Préfixe et sens
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6010000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_etymologie_familles',
  'Étymologie et familles de mots',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Dans les mots « compagnon » et « copain », le radical est lié au latin panis (pain).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Compagnon » vient du latin populaire *companio, formé de cum (avec) et panis (pain) : littéralement « celui avec qui on partage le pain ». « Copain » en est une variante phonétique populaire (compain → copain). Ces deux mots illustrent comment la morphologie étymologique éclaire le sens profond du vocabulaire. Cette approche est recommandée par Éduscol pour donner aux élèves des stratégies de compréhension lexicale en contexte.',
  'L''erreur serait de penser que « compagnon » est lié à « campagne » (campus, champ). La parenté avec panis (pain) est moins intuitive mais historiquement attestée.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — reponse_courte — Identifier un suffixe
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6010000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_etymologie_familles',
  'Étymologie et familles de mots',
  'Intermediaire',
  'reponse_courte',
  'Quel est le radical commun aux mots « porter », « transport », « importation » et « portable » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["port","porter","port-"]}'::jsonb,
  'Le radical commun est « port- », issu du latin portare (porter, transporter). On le retrouve dans : porter (radical seul), transport (préfixe trans- + port), importation (préfixe im- + port + suffixe -ation), portable (port + suffixe -able). L''identification du radical permet de comprendre le lien sémantique entre tous les membres de la famille. Cette compétence est au cœur de l''enseignement du lexique au cycle 3 selon les programmes Éduscol.',
  'Certains élèves proposent « por- » ou « porte » comme radical, oubliant que le radical doit être la partie commune invariable à tous les mots de la famille.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — reponse_courte — Racine grecque
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6010000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_etymologie_familles',
  'Étymologie et familles de mots',
  'Difficile',
  'reponse_courte',
  'La racine grecque « graphein » signifie « écrire ». Donnez un mot français contenant l''élément « -graphe » ou « -graphie » qui désigne la science ou l''art de l''écriture belle et soignée.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["calligraphie","la calligraphie"]}'::jsonb,
  'Le mot attendu est « calligraphie », formé de kallos (beauté) et graphein (écrire). La calligraphie est littéralement l''art de la belle écriture. Cet exemple illustre la productivité des racines grecques dans le lexique français : -graphe/-graphie apparaît dans orthographe, géographie, photographie, typographie, etc. La décomposition morphologique de ces mots savants est une compétence essentielle pour les enseignants du premier degré.',
  'Les élèves proposent parfois « orthographe » ou « géographie », qui contiennent bien la racine graphein mais ne désignent pas spécifiquement l''art de la belle écriture.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — reponse_courte — Doublet étymologique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6010000-0000-0000-0000-00000000000a',
  'Francais',
  'lexique',
  'lex_etymologie_familles',
  'Étymologie et familles de mots',
  'Difficile',
  'reponse_courte',
  'Le mot « frêle » est la forme populaire issue du latin fragilis. Quel est le doublet savant de « frêle », directement emprunté au latin ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["fragile","Fragile"]}'::jsonb,
  'Le doublet savant de « frêle » est « fragile ». Les deux mots proviennent du latin fragilis (qui peut se briser). « Frêle » est la forme populaire ayant subi l''évolution phonétique normale du français (fragilis → fraile → frêle), tandis que « fragile » a été réemprunté directement au latin au XVe siècle. Ce phénomène de doublets est caractéristique de l''histoire du lexique français, qui puise à deux sources : l''héritage oral et l''emprunt savant.',
  'L''erreur serait de proposer « fracture » ou « fraction » qui, bien qu''issus de la même famille latine (frangere, briser), ne sont pas des doublets de « frêle ».',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################
-- SÉRIE 2 : lex_figures_de_style — Les figures de style
-- ############################################################

-- Q1 — Facile — qcm — Distinguer comparaison et métaphore
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6020000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_figures_de_style',
  'Les figures de style',
  'Facile',
  'qcm',
  'Dans la phrase « Ses yeux sont des étoiles », quelle figure de style est employée ?',
  NULL,
  '[{"id":"a","label":"Une comparaison"},{"id":"b","label":"Une métaphore"},{"id":"c","label":"Une personnification"},{"id":"d","label":"Une hyperbole"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Il s''agit d''une métaphore. La métaphore établit une relation d''analogie entre deux éléments (les yeux et les étoiles) sans utiliser d''outil de comparaison (comme, tel que, pareil à, semblable à). Si la phrase avait été « Ses yeux brillent comme des étoiles », il se serait agi d''une comparaison. La distinction entre ces deux figures est un apprentissage fondamental au cycle 3, inscrit dans les programmes Éduscol pour l''étude de la langue.',
  'L''erreur la plus fréquente est de confondre métaphore et comparaison. Le critère distinctif est la présence ou l''absence d''un outil de comparaison explicite.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — qcm — Identifier une personnification
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6020000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_figures_de_style',
  'Les figures de style',
  'Facile',
  'qcm',
  'Quelle figure de style est utilisée dans « Le vent hurle à travers les arbres » ?',
  NULL,
  '[{"id":"a","label":"Une métonymie"},{"id":"b","label":"Une antithèse"},{"id":"c","label":"Une personnification"},{"id":"d","label":"Une litote"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Il s''agit d''une personnification. Cette figure consiste à attribuer des caractéristiques humaines (ici, le verbe « hurler ») à un élément non humain (le vent). La personnification est une figure d''analogie très présente dans la littérature de jeunesse. Elle permet aux élèves de cycle 3 de percevoir les effets expressifs du langage figuré et de développer leur sensibilité littéraire, comme le recommandent les programmes Éduscol.',
  'On pourrait confondre avec la métaphore, mais la personnification est un cas particulier où le comparant est toujours humain (action, sentiment, attitude humaine attribuée à un non-humain).',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — qcm — Identifier une litote
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6020000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_figures_de_style',
  'Les figures de style',
  'Intermediaire',
  'qcm',
  'Dans la célèbre réplique de Chimène « Va, je ne te hais point » (Le Cid, Corneille), quelle figure de style est employée ?',
  NULL,
  '[{"id":"a","label":"Un euphémisme"},{"id":"b","label":"Une litote"},{"id":"c","label":"Une antithèse"},{"id":"d","label":"Une hyperbole"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Il s''agit d''une litote. La litote consiste à dire moins pour signifier plus : « je ne te hais point » signifie en réalité « je t''aime passionnément ». La litote atténue l''expression pour en renforcer le sens. Il ne faut pas la confondre avec l''euphémisme, qui atténue une réalité désagréable pour en adoucir l''impact. La litote dit le contraire de ce qu''elle veut exprimer par la négation, tandis que l''euphémisme remplace un mot par un terme plus doux.',
  'La confusion entre litote et euphémisme est très courante. L''euphémisme atténue pour adoucir (« il nous a quittés » pour « il est mort »), la litote atténue pour intensifier.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Identifier un oxymore
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6020000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_figures_de_style',
  'Les figures de style',
  'Intermediaire',
  'qcm',
  'Dans l''expression « Cette obscure clarté qui tombe des étoiles » (Le Cid, Corneille), quelle figure de style repose sur l''association de « obscure » et « clarté » ?',
  NULL,
  '[{"id":"a","label":"Une antithèse"},{"id":"b","label":"Un oxymore"},{"id":"c","label":"Un paradoxe"},{"id":"d","label":"Une gradation"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Il s''agit d''un oxymore. L''oxymore réunit dans un même groupe syntaxique deux termes de sens contraire (« obscure » + « clarté »). Il se distingue de l''antithèse, qui oppose deux termes dans la même phrase mais sans les relier syntaxiquement dans le même groupe nominal. L''oxymore crée un effet de surprise et de tension sémantique qui invite le lecteur à dépasser la contradiction apparente. C''est une figure d''opposition particulièrement étudiée au collège et utile pour le CRPE.',
  'L''antithèse est souvent confondue avec l''oxymore. La différence clé : l''oxymore unit les contraires dans le même syntagme (adjectif + nom), l''antithèse les oppose à distance dans la phrase.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — vrai_faux — Comparaison et outil de comparaison
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6020000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_figures_de_style',
  'Les figures de style',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Une comparaison comporte toujours un outil de comparaison (comme, tel, pareil à, semblable à, etc.).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. La comparaison se définit par la présence de trois éléments : un comparé, un comparant et un outil de comparaison (aussi appelé mot-outil ou terme comparatif). Sans cet outil explicite, on parle de métaphore. Les outils de comparaison courants sont : comme, tel que, pareil à, semblable à, ressembler à, on dirait, ainsi que. Ce critère formel est essentiel pour distinguer comparaison et métaphore, distinction fondamentale dans les programmes Éduscol du cycle 3.',
  'Certains pensent que la comparaison peut se passer d''outil de comparaison, mais dans ce cas il s''agit d''une métaphore, qui est une comparaison implicite.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — vrai_faux — Métonymie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6020000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_figures_de_style',
  'Les figures de style',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Boire un verre », le mot « verre » est une métonymie car il désigne le contenu (la boisson) par le contenant (le verre).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. La métonymie est une figure qui consiste à désigner un élément par un autre qui lui est logiquement lié. Ici, le contenant (le verre) désigne le contenu (la boisson). Les relations métonymiques courantes sont : contenant/contenu (« boire un verre »), lieu/institution (« l''Élysée a déclaré »), auteur/œuvre (« lire un Molière »), matière/objet (« croiser le fer »). La métonymie est omniprésente dans la langue courante et fait partie des figures à maîtriser pour le CRPE.',
  'On confond parfois métonymie et synecdoque. La synecdoque est un cas particulier de métonymie où la relation est celle de la partie pour le tout (ou inversement).',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — vrai_faux — Anaphore et répétition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6020000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_figures_de_style',
  'Les figures de style',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? L''anaphore est une figure de style qui consiste à répéter un même mot ou groupe de mots à la fin de phrases ou propositions successives.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. L''anaphore consiste à répéter un même mot ou groupe de mots au début (et non à la fin) de phrases, vers ou propositions successives. Exemple célèbre : « Moi, président de la République, je… ». La figure qui consiste à répéter un mot en fin de phrase s''appelle l''épiphore. L''anaphore produit un effet d''insistance et de rythme, très utilisé en poésie et en rhétorique. Ne pas confondre l''anaphore rhétorique avec l''anaphore grammaticale (reprise pronominale).',
  'La confusion entre anaphore (répétition en début) et épiphore (répétition en fin) est classique. Le préfixe « ana- » (en grec : en haut, en avant) aide à retenir qu''il s''agit du début.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — reponse_courte — Identifier une figure d''atténuation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6020000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_figures_de_style',
  'Les figures de style',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on la figure de style qui consiste à atténuer une réalité désagréable, brutale ou choquante par une expression adoucie ? Exemple : « Il nous a quittés » pour « Il est mort ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["euphémisme","un euphémisme","l''euphémisme","euphemisme"]}'::jsonb,
  'La figure recherchée est l''euphémisme. L''euphémisme consiste à remplacer une expression crue, déplaisante ou tabou par une formulation plus douce ou détournée. On dit « il nous a quittés » au lieu de « il est mort », « les personnes à mobilité réduite » au lieu de « les handicapés ». L''euphémisme relève des figures d''atténuation, au même titre que la litote. Cependant, la litote dit moins pour signifier plus, tandis que l''euphémisme adoucit la réalité pour ménager l''interlocuteur.',
  'La confusion avec la litote est très fréquente. La litote atténue pour renforcer le sens (dire moins pour dire plus), l''euphémisme atténue pour adoucir une réalité pénible.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermediaire — reponse_courte — Gradation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6020000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_figures_de_style',
  'Les figures de style',
  'Intermediaire',
  'reponse_courte',
  'Comment appelle-t-on la figure de style qui consiste à énumérer des termes selon une progression croissante ou décroissante d''intensité ? Exemple : « Je me meurs, je suis mort, je suis enterré » (Molière).',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["gradation","une gradation","la gradation"]}'::jsonb,
  'La figure recherchée est la gradation. Elle consiste à ordonner les termes d''une énumération selon une progression d''intensité, qu''elle soit ascendante (du plus faible au plus fort) ou descendante (du plus fort au plus faible). Dans l''exemple de Molière (L''Avare), la gradation est ascendante : « je me meurs » → « je suis mort » → « je suis enterré ». La gradation est une figure d''amplification qui renforce l''expressivité du discours et se distingue de la simple énumération par cette idée de progression.',
  'L''erreur courante est de confondre gradation et simple énumération. L''énumération liste des éléments sans ordre d''intensité particulier, tandis que la gradation implique une progression.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — reponse_courte — Synecdoque
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6020000-0000-0000-0000-00000000000a',
  'Francais',
  'lexique',
  'lex_figures_de_style',
  'Les figures de style',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on la figure de style qui consiste à désigner le tout par la partie (ou la partie par le tout) ? Exemple : « Les voiles au loin » pour désigner les bateaux.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["synecdoque","une synecdoque","la synecdoque"]}'::jsonb,
  'La figure recherchée est la synecdoque. Elle consiste à désigner un élément par une partie de celui-ci (la partie pour le tout) ou inversement. Dans « les voiles au loin », « voiles » (partie du bateau) désigne les bateaux entiers. La synecdoque est un cas particulier de métonymie : alors que la métonymie repose sur un rapport de contiguïté quelconque (contenant/contenu, cause/effet), la synecdoque repose spécifiquement sur le rapport d''inclusion (partie/tout, genre/espèce).',
  'La confusion entre synecdoque et métonymie est fréquente. La synecdoque est un type spécifique de métonymie fondé sur le rapport partie/tout, tandis que la métonymie couvre des relations de contiguïté plus variées.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################
-- SÉRIE 3 : lex_sens_propre_figure — Sens propre et sens figuré
-- ############################################################

-- Q1 — Facile — qcm — Identifier le sens propre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6030000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_sens_propre_figure',
  'Sens propre et sens figuré',
  'Facile',
  'qcm',
  'Dans quelle phrase le mot « dévorer » est-il employé au sens propre ?',
  NULL,
  '[{"id":"a","label":"Il dévore les livres de la bibliothèque."},{"id":"b","label":"La jalousie le dévore."},{"id":"c","label":"Le loup dévore sa proie."},{"id":"d","label":"Les flammes dévorent la forêt."}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le sens propre de « dévorer » est « manger avidement, avec voracité ». Seule la phrase « Le loup dévore sa proie » utilise le mot dans son sens concret, premier. Dans les autres phrases, « dévorer » est employé au sens figuré : lire avec passion (les livres), ronger moralement (la jalousie), consumer/détruire (les flammes). Le sens propre est le sens premier, concret et littéral d''un mot. Le sens figuré en est une extension abstraite ou imagée, souvent issue d''une métaphore lexicalisée.',
  'Les élèves hésitent souvent avec « les flammes dévorent la forêt » car la destruction est physique, mais c''est bien un emploi figuré (les flammes ne « mangent » pas au sens propre).',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — qcm — Sens figuré en contexte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6030000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_sens_propre_figure',
  'Sens propre et sens figuré',
  'Facile',
  'qcm',
  'Dans la phrase « Il a un cœur de pierre », le mot « cœur » est employé :',
  NULL,
  '[{"id":"a","label":"Au sens propre (l''organe)"},{"id":"b","label":"Au sens figuré (les sentiments)"},{"id":"c","label":"Au sens propre et figuré à la fois"},{"id":"d","label":"Ni au sens propre ni au sens figuré"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « avoir un cœur de pierre », le mot « cœur » est employé au sens figuré : il désigne les sentiments, la capacité d''empathie, et non l''organe physique. L''expression signifie « être insensible, sans compassion ». C''est une métaphore lexicalisée, c''est-à-dire une image devenue si courante qu''elle s''est figée dans la langue. Au cycle 3, les programmes Éduscol demandent aux élèves de distinguer sens propre et sens figuré et de repérer les expressions figurées courantes.',
  'L''erreur serait de choisir « au sens propre et figuré à la fois ». Dans cette expression figée, seul le sens figuré est actif : personne ne pense à l''organe cardiaque en entendant « cœur de pierre ».',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — qcm — Polysémie et contexte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6030000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_sens_propre_figure',
  'Sens propre et sens figuré',
  'Intermediaire',
  'qcm',
  'Le mot « feuille » est polysémique. Dans laquelle de ces phrases est-il employé dans un sens figuré issu d''une métaphore ?',
  NULL,
  '[{"id":"a","label":"La feuille de l''arbre est tombée."},{"id":"b","label":"Prends une feuille de papier."},{"id":"c","label":"Il tremble comme une feuille."},{"id":"d","label":"La feuille d''impôt est arrivée."}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Dans « trembler comme une feuille », le mot « feuille » garde son sens propre (feuille d''arbre) mais est utilisé dans une comparaison figurée qui évoque la fragilité et le tremblement. Cependant, parmi les options, c''est l''emploi le plus figuré car il sert d''image. « Feuille de papier » et « feuille d''impôt » sont des extensions de sens par analogie de forme (objet plat et mince), devenues des sens courants du mot. La polysémie se développe souvent par métaphore : la ressemblance de forme entre la feuille végétale et le papier a produit un nouveau sens.',
  'Beaucoup considèrent « feuille de papier » comme un emploi figuré, mais ce sens est aujourd''hui si courant qu''il est perçu comme un sens propre secondaire (catachrèse).',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Expression figée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6030000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_sens_propre_figure',
  'Sens propre et sens figuré',
  'Intermediaire',
  'qcm',
  'Que signifie l''expression figurée « avoir la tête dans les nuages » ?',
  NULL,
  '[{"id":"a","label":"Être très grand de taille"},{"id":"b","label":"Être distrait, rêveur, inattentif"},{"id":"c","label":"Avoir le vertige en altitude"},{"id":"d","label":"Être intelligent et visionnaire"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''expression « avoir la tête dans les nuages » signifie être distrait, rêveur, déconnecté de la réalité. C''est une expression figée (ou locution) dont le sens global ne peut pas être déduit de la simple addition du sens de chaque mot. Les expressions figées sont des métaphores lexicalisées qui ont perdu leur transparence imagée pour certains locuteurs. L''enseignement des expressions figurées fait partie du programme de lexique au cycle 3 : les élèves doivent apprendre à interpréter ces formules en contexte.',
  'Les élèves non francophones ou les jeunes enfants tentent parfois d''interpréter l''expression littéralement, ce qui illustre la difficulté des expressions figées pour les apprenants.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — vrai_faux — Sens propre = sens concret
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6030000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_sens_propre_figure',
  'Sens propre et sens figuré',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Le sens propre d''un mot est son sens premier, concret et littéral.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le sens propre (ou sens littéral) d''un mot est son sens premier, le plus courant et le plus concret. Il renvoie généralement à une réalité matérielle, perceptible par les sens. Par exemple, le sens propre de « brillant » est « qui émet ou reflète la lumière ». Le sens figuré est une extension abstraite ou imagée du sens propre : « un élève brillant » (qui se distingue par ses qualités intellectuelles). Cette distinction est une notion fondamentale du lexique enseignée dès le cycle 2 et approfondie au cycle 3.',
  'Certains élèves pensent que le sens propre est le sens « correct » et le sens figuré un emploi « incorrect », ce qui est faux : les deux emplois sont tout aussi légitimes.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — vrai_faux — Catachrèse
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6030000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_sens_propre_figure',
  'Sens propre et sens figuré',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans l''expression « les pieds de la table », le mot « pieds » est un exemple de catachrèse, c''est-à-dire une métaphore devenue si courante qu''on ne la perçoit plus comme figurée.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. La catachrèse est une métaphore lexicalisée, tellement intégrée dans l''usage courant qu''elle n''est plus perçue comme une figure de style. « Les pieds de la table » est une catachrèse : le mot « pied » a été étendu par analogie de forme et de fonction (support à la base) du corps humain au mobilier. D''autres exemples : les bras d''un fauteuil, la tête d''un clou, le dos d''une cuillère. La catachrèse illustre comment le sens figuré peut devenir un nouveau sens propre au fil du temps.',
  'L''erreur est de considérer « les pieds de la table » comme un sens propre ordinaire. C''est bien un emploi figuré historiquement, même si l''usage l''a banalisé au point qu''il n''existe pas d''autre mot courant pour désigner cette partie de la table.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — vrai_faux — Dérive sémantique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6030000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_sens_propre_figure',
  'Sens propre et sens figuré',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? Le mot « formidable », qui signifiait autrefois « qui inspire la crainte » (du latin formido, la peur), a subi un glissement de sens vers une valeur méliorative (« remarquable, extraordinaire »).',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. Le mot « formidable » illustre un glissement de sens (ou dérive sémantique) majeur. Issu du latin formido (crainte, épouvante), il signifiait « qui inspire la peur, redoutable ». Au fil des siècles, son sens s''est déplacé vers « impressionnant » puis vers « remarquable, extraordinaire » dans un sens positif. Ce phénomène d''amélioration sémantique (passage d''un sens négatif à un sens positif) est un des processus fondamentaux de l''évolution lexicale, étudié en linguistique diachronique.',
  'On pourrait penser que « formidable » est lié à « forme » (forma), mais son étymon est bien formido (la peur). La ressemblance avec « forme » est trompeuse.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — reponse_courte — Expression figée et sens figuré
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6030000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_sens_propre_figure',
  'Sens propre et sens figuré',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on un mot qui possède plusieurs sens distincts mais apparentés, liés par une origine commune ? Par exemple, le mot « glace » peut désigner de l''eau gelée, un dessert glacé ou un miroir.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["polysémique","un mot polysémique","polysemique","la polysémie","polysémie","polysemie"]}'::jsonb,
  'On parle de polysémie (du grec polus, « plusieurs », et sêma, « signe, sens »). Un mot polysémique possède plusieurs significations liées entre elles par un lien sémantique historique. Il ne faut pas confondre polysémie et homonymie : les homonymes sont des mots de forme identique mais d''origines et de sens totalement différents (ex. : « avocat » le fruit et « avocat » le juriste). La polysémie est un phénomène central du lexique français et son enseignement est explicitement mentionné dans les programmes Éduscol du cycle 3.',
  'La confusion entre polysémie et homonymie est fréquente. Le critère distinctif est le lien sémantique : les différents sens d''un mot polysémique sont apparentés, ceux des homonymes ne le sont pas.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermediaire — reponse_courte — Désambiguïsation par le contexte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6030000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_sens_propre_figure',
  'Sens propre et sens figuré',
  'Intermediaire',
  'reponse_courte',
  'Dans l''expression « mettre la main à la pâte », quel est le sens figuré ? Répondez en quelques mots.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["participer activement","participer","aider","s''impliquer","se mettre au travail","travailler","aider activement"]}'::jsonb,
  'L''expression « mettre la main à la pâte » signifie au sens figuré « participer activement à un travail, s''impliquer concrètement dans une tâche ». Le sens propre renvoie au geste du boulanger qui pétrit la pâte. Par extension métaphorique, l''expression s''est appliquée à toute forme de travail concret. C''est une locution verbale figée dont le sens global dépasse le sens littéral de chaque mot. La capacité à interpréter ces expressions en contexte est une compétence lexicale visée au cycle 3.',
  'Les élèves peuvent donner une interprétation trop littérale (« cuisiner ») ou trop vague (« faire quelque chose »). La notion d''implication active et concrète est essentielle.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — reponse_courte — Métaphore lexicalisée
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6030000-0000-0000-0000-00000000000a',
  'Francais',
  'lexique',
  'lex_sens_propre_figure',
  'Sens propre et sens figuré',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on le procédé par lequel un mot change de sens au fil du temps, passant par exemple d''un sens concret à un sens abstrait ? Ce phénomène explique l''évolution des significations dans l''histoire de la langue.',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["glissement de sens","dérive sémantique","évolution sémantique","le glissement de sens","la dérive sémantique","derive semantique","glissement semantique"]}'::jsonb,
  'On parle de glissement de sens (ou dérive sémantique). Ce phénomène linguistique décrit le processus par lequel le sens d''un mot se transforme progressivement au fil du temps. Les principaux types de glissement sont : l''extension de sens (le sens s''élargit), la restriction de sens (le sens se rétrécit), l''amélioration sémantique (sens négatif → positif) et la dégradation sémantique (sens positif → négatif). Par exemple, « vilain » désignait un paysan avant de prendre son sens actuel péjoratif.',
  'Certains confondent le glissement de sens (phénomène diachronique, dans le temps) avec la polysémie (coexistence synchronique de plusieurs sens à un moment donné).',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ############################################################
-- SÉRIE 4 : lex_neologie_emprunts — Néologie et emprunts linguistiques
-- ############################################################

-- Q1 — Facile — qcm — Procédé de néologie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6040000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_neologie_emprunts',
  'Néologie et emprunts linguistiques',
  'Facile',
  'qcm',
  'Le mot « courriel » (pour « courrier électronique ») est un exemple de :',
  NULL,
  '[{"id":"a","label":"Mot-valise"},{"id":"b","label":"Emprunt à l''anglais"},{"id":"c","label":"Troncation"},{"id":"d","label":"Siglaison"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Courriel » est un mot-valise, formé par la fusion de « courrier » et « électronique » (courri- + -el). Le mot-valise est un procédé de néologie qui consiste à combiner des fragments de deux mots existants pour en créer un nouveau. Ce terme a été recommandé par la Commission d''enrichissement de la langue française comme équivalent français de « e-mail ». D''autres exemples de mots-valises : « franglais » (français + anglais), « informatique » (information + automatique).',
  'Certains pensent que « courriel » est un sigle ou un acronyme, mais c''est bien un mot-valise puisqu''il fusionne des fragments de mots, et non des initiales.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — qcm — Identifier un emprunt
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6040000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_neologie_emprunts',
  'Néologie et emprunts linguistiques',
  'Facile',
  'qcm',
  'Parmi les mots suivants, lequel est un emprunt à l''arabe ?',
  NULL,
  '[{"id":"a","label":"Piano"},{"id":"b","label":"Algèbre"},{"id":"c","label":"Ballet"},{"id":"d","label":"Bivouac"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Algèbre » est un emprunt à l''arabe al-jabr (الجبر), qui signifie « la remise en place, la réduction ». Le mot est arrivé en français via le latin médiéval. De nombreux mots français proviennent de l''arabe, notamment dans les domaines des mathématiques (algorithme, chiffre, zéro), de la chimie (alchimie, alcool, élixir), de l''astronomie (azimut, zénith) et de la vie quotidienne (magasin, coton, café). « Piano » vient de l''italien, « ballet » aussi, et « bivouac » de l''allemand.',
  'On oublie souvent l''importance des emprunts à l''arabe dans le lexique français. Le préfixe « al- » est un bon indice d''origine arabe (alcool, algèbre, almanach).',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — qcm — Siglaison et acronyme
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6040000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_neologie_emprunts',
  'Néologie et emprunts linguistiques',
  'Intermediaire',
  'qcm',
  'Quelle est la différence entre un sigle et un acronyme ?',
  NULL,
  '[{"id":"a","label":"Le sigle se prononce lettre par lettre (SNCF), l''acronyme se prononce comme un mot (ONU)"},{"id":"b","label":"Le sigle est écrit en majuscules, l''acronyme en minuscules"},{"id":"c","label":"Le sigle est français, l''acronyme est anglais"},{"id":"d","label":"Il n''y a aucune différence, ce sont des synonymes"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La distinction entre sigle et acronyme repose sur la prononciation. Un sigle se prononce lettre par lettre : SNCF [ɛs.ɛn.se.ɛf], HLM [aʃ.ɛl.ɛm]. Un acronyme se prononce comme un mot ordinaire : ONU [ony], OTAN [otɑ̃], sida [sida]. Certains acronymes sont tellement lexicalisés qu''ils s''écrivent en minuscules et ne sont plus perçus comme des abréviations (sida, laser, radar). La siglaison et l''acronymie sont des procédés de néologie très productifs dans le français contemporain.',
  'L''erreur courante est de croire que tous les mots en majuscules sont des sigles. L''acronyme est aussi écrit en majuscules mais se prononce comme un mot.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermediaire — qcm — Troncation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6040000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_neologie_emprunts',
  'Néologie et emprunts linguistiques',
  'Intermediaire',
  'qcm',
  'Les mots « prof », « métro » et « ciné » sont formés par quel procédé de néologie ?',
  NULL,
  '[{"id":"a","label":"Dérivation par suffixation"},{"id":"b","label":"Composition"},{"id":"c","label":"Troncation (abrègement)"},{"id":"d","label":"Emprunt"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Ces mots sont formés par troncation (ou abrègement). La troncation consiste à supprimer une ou plusieurs syllabes d''un mot, généralement à la fin (apocope) : professeur → prof, métropolitain → métro, cinéma → ciné. Plus rarement, la troncation se fait au début (aphérèse) : autobus → bus. La troncation est un procédé de néologie très courant dans la langue familière. Les mots tronqués peuvent finir par remplacer le mot complet dans l''usage courant (« métro » est plus fréquent que « métropolitain »).',
  'On confond parfois troncation et sigle. La troncation conserve le début (ou la fin) du mot, tandis que le sigle ne prend que les initiales de plusieurs mots.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — vrai_faux — Anglicisme
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6040000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_neologie_emprunts',
  'Néologie et emprunts linguistiques',
  'Facile',
  'vrai_faux',
  'Vrai ou faux ? Le mot « parking » est un anglicisme pour lequel la Commission d''enrichissement de la langue française recommande l''équivalent « parc de stationnement ».',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. « Parking » est un emprunt direct à l''anglais. La Commission d''enrichissement de la langue française (anciennement Commission générale de terminologie) recommande officiellement l''emploi de « parc de stationnement » ou « stationnement ». Cette commission, créée par décret, publie régulièrement au Journal officiel des équivalents français pour les emprunts inutiles à l''anglais. D''autres exemples : « logiciel » pour « software », « ordinateur » pour « computer », « baladodiffusion » pour « podcast ».',
  'Certains pensent que les recommandations de la Commission sont obligatoires pour tous. Elles ne s''imposent qu''aux administrations et services publics, pas aux citoyens dans leur usage privé.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — vrai_faux — Adaptation des emprunts
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6040000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_neologie_emprunts',
  'Néologie et emprunts linguistiques',
  'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Lorsqu''un mot est emprunté à une langue étrangère, il conserve toujours sa prononciation et son orthographe d''origine en français.',
  NULL,
  NULL,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est faux. Les emprunts subissent très souvent une adaptation phonologique (la prononciation est francisée) et/ou morphologique (l''orthographe est modifiée). Par exemple, le mot anglais « football » se prononce [futbol] en français, et non avec la prononciation anglaise. Le mot arabe « qahwa » est devenu « café ». Le mot italien « paparazzi » forme son singulier en français « un paparazzi » (au lieu de « un paparazzo » en italien). L''adaptation des emprunts est un processus naturel d''intégration lexicale.',
  'L''erreur est de croire que les emprunts restent figés dans leur forme d''origine. En réalité, la langue emprunteuse adapte le mot à son propre système phonologique et morphologique.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — vrai_faux — Composition savante
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6040000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_neologie_emprunts',
  'Néologie et emprunts linguistiques',
  'Difficile',
  'vrai_faux',
  'Vrai ou faux ? La dérivation (ajout de préfixes et suffixes) est le procédé de néologie le plus productif en français contemporain.',
  NULL,
  NULL,
  '{"mode":"boolean","value":true}'::jsonb,
  'C''est vrai. La dérivation affixale (par préfixation et/ou suffixation) est le procédé de création lexicale le plus productif en français. Elle permet de former de nouveaux mots à partir de bases existantes : cliquer → cliquable (suffixation), tweet → retweeter (préfixation), dé- + confiner → déconfiner (préfixation). La dérivation représente la majorité des néologismes répertoriés par les dictionnaires chaque année. Elle est suivie par la composition (mot-valise, composition populaire et savante), puis par l''emprunt et la siglaison.',
  'On pourrait penser que l''emprunt à l''anglais est le procédé le plus productif, compte tenu de la médiatisation des anglicismes, mais la dérivation reste largement dominante en nombre de créations.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Intermediaire — reponse_courte — Mot-valise
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6040000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_neologie_emprunts',
  'Néologie et emprunts linguistiques',
  'Intermediaire',
  'reponse_courte',
  'Le mot « informatique » est un mot-valise formé à partir de deux mots. Lesquels ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["information et automatique","information + automatique","information automatique"]}'::jsonb,
  'Le mot « informatique » est un mot-valise créé en 1962 par Philippe Dreyfus, à partir de « information » et « automatique » (infor- + -matique). Ce néologisme, aujourd''hui parfaitement lexicalisé, illustre la vitalité du procédé du mot-valise pour créer des termes techniques en français. La Commission d''enrichissement de la langue française encourage ce type de création plutôt que l''emprunt direct à l''anglais. « Informatique » a d''ailleurs été adopté dans d''autres langues romanes (espagnol, portugais).',
  'Certains pensent que « informatique » est un emprunt à l''anglais (informatics), mais c''est l''inverse : le mot a été créé en français avant d''être emprunté par d''autres langues.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — reponse_courte — Procédé de néologie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6040000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_neologie_emprunts',
  'Néologie et emprunts linguistiques',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on le procédé de formation de mots qui consiste à assembler deux mots autonomes existants avec un trait d''union ou soudés ? Exemples : « porte-monnaie », « arc-en-ciel », « vinaigre ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["composition","la composition","composition populaire"]}'::jsonb,
  'Il s''agit de la composition (ou composition populaire). Ce procédé consiste à assembler deux ou plusieurs mots autonomes de la langue pour former un mot nouveau : porte + monnaie → porte-monnaie, arc + en + ciel → arc-en-ciel, vin + aigre → vinaigre. On distingue la composition populaire (qui utilise des mots français) de la composition savante (qui utilise des racines grecques ou latines : télé + phone → téléphone). La composition est un procédé majeur de création lexicale étudié dans les programmes Éduscol du cycle 3.',
  'L''erreur courante est de confondre composition et dérivation. La composition assemble des mots autonomes, tandis que la dérivation ajoute des affixes (préfixes, suffixes) qui ne sont pas des mots autonomes.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — reponse_courte — Italianisme
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b6040000-0000-0000-0000-00000000000a',
  'Francais',
  'lexique',
  'lex_neologie_emprunts',
  'Néologie et emprunts linguistiques',
  'Difficile',
  'reponse_courte',
  'De quelle langue proviennent les emprunts « balcon », « carnaval », « concert », « sonate » et « aquarelle » entrés massivement dans le français à partir de la Renaissance ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["italien","l''italien","de l''italien","italienne","la langue italienne"]}'::jsonb,
  'Ces mots sont des emprunts à l''italien (ou italianismes). À partir de la Renaissance (XVe-XVIe siècles), le français a massivement emprunté au toscan et à l''italien dans les domaines de l''architecture (balcon, façade), de la musique (concert, sonate, piano), des arts (aquarelle, fresque), de la guerre (brigade, cavalerie) et des fêtes (carnaval, mascarade). L''italien est, après l''anglais, la langue qui a le plus contribué au lexique français par emprunt. On estime à plus de 1 000 les italianismes du français.',
  'Certains pensent que ces mots viennent du latin directement, mais ce sont des emprunts à l''italien moderne, lui-même issu du latin. Le passage par l''italien est historiquement attesté.',
  'valide',
  'CRPE Français — Lexique',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
