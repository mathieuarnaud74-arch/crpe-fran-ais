-- ============================================================
-- Migration : 20 nouvelles séries (Batch 2/3 — Lexique + Compréhension)
-- 7 séries × 10 questions = 70 exercices
-- Domaines : lexique, comprehension_texte
-- ============================================================

-- ============================================================
-- SÉRIE 1 : Champs lexicaux et champs sémantiques
-- Topic : lex_champs_lexicaux
-- UUID prefix : lex-chl0
-- 4 Facile, 3 Intermédiaire, 3 Difficile
-- Mix : 3 qcm, 2 vrai_faux, 2 reponse_courte, 3 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Identifier un champ lexical simple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-chl0-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_champs_lexicaux',
  'Champs lexicaux et champs sémantiques',
  'Facile',
  'qcm',
  'Quel champ lexical est commun aux mots suivants : « écume », « vague », « marée », « falaise », « goéland » ?',
  NULL,
  '[{"id":"a","label":"La montagne"},{"id":"b","label":"La mer"},{"id":"c","label":"Le voyage"},{"id":"d","label":"La nature"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Un champ lexical regroupe l''ensemble des mots qui se rapportent à un même thème, une même notion. Ici, « écume » (mousse des vagues), « vague », « marée », « falaise » (relief côtier) et « goéland » (oiseau marin) appartiennent tous au champ lexical de la mer. Attention : « la nature » serait trop englobant — en analyse textuelle, on privilégie le champ lexical le plus précis possible.',
  'Choisir un hyperonyme trop large comme « la nature » au lieu du champ lexical précis « la mer ». Au CRPE, on attend toujours le thème le plus spécifique.',
  'valide',
  'CRPE Français — Champs lexicaux',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Définition du champ lexical
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-chl0-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_champs_lexicaux',
  'Champs lexicaux et champs sémantiques',
  'Facile',
  'vrai_faux',
  'Un champ lexical ne peut contenir que des noms communs.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Un champ lexical regroupe des mots de toutes les classes grammaticales : noms (« soleil »), verbes (« briller »), adjectifs (« lumineux »), adverbes (« brillamment »). Par exemple, le champ lexical de la lumière inclut « clarté » (nom), « éclairer » (verbe), « éblouissant » (adjectif). Cette diversité de classes est un point essentiel à maîtriser pour le CRPE.',
  'Limiter le champ lexical aux noms. Les verbes, adjectifs et adverbes en font aussi partie dès lors qu''ils se rapportent au même thème.',
  'valide',
  'CRPE Français — Champs lexicaux',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Tri catégories — Classer des mots dans deux champs lexicaux
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-chl0-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_champs_lexicaux',
  'Champs lexicaux et champs sémantiques',
  'Facile',
  'tri_categories',
  'Classez chaque mot dans le champ lexical auquel il appartient : la peur ou la joie.',
  NULL,
  '[{"id":"w1","label":"trembler"},{"id":"w2","label":"rire"},{"id":"w3","label":"effroi"},{"id":"w4","label":"allégresse"},{"id":"w5","label":"terreur"},{"id":"w6","label":"jubiler"},{"id":"w7","label":"frissonner"},{"id":"w8","label":"radieux"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"peur","label":"Champ lexical de la peur"},{"id":"joie","label":"Champ lexical de la joie"}],"mapping":{"w1":"peur","w2":"joie","w3":"peur","w4":"joie","w5":"peur","w6":"joie","w7":"peur","w8":"joie"}}'::jsonb,
  'Le champ lexical de la peur regroupe : « trembler » (réaction physique), « effroi » (peur intense), « terreur » (peur extrême), « frissonner » (manifestation corporelle). Le champ lexical de la joie regroupe : « rire » (manifestation), « allégresse » (joie vive), « jubiler » (se réjouir intensément), « radieux » (qui exprime la joie). Remarque : un même mot peut parfois appartenir à plusieurs champs lexicaux selon le contexte (« frissonner » pourrait relever du froid).',
  'Hésiter sur « frissonner » qui peut évoquer le froid ou la peur. Le contexte est déterminant — ici, associé aux autres mots de peur, le classement est cohérent.',
  'valide',
  'CRPE Français — Champs lexicaux',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — Tri catégories — Distinguer deux champs lexicaux dans un texte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-chl0-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_champs_lexicaux',
  'Champs lexicaux et champs sémantiques',
  'Facile',
  'tri_categories',
  'Dans ce texte, classez les mots soulignés dans le champ lexical correspondant : la guerre ou la paix.',
  'Le général ordonna la trêve. Les soldats déposèrent leurs armes et une accalmie s''installa. Mais au loin, les canons grondaient encore, rappelant que la concorde restait fragile.',
  '[{"id":"w1","label":"trêve"},{"id":"w2","label":"soldats"},{"id":"w3","label":"armes"},{"id":"w4","label":"accalmie"},{"id":"w5","label":"canons"},{"id":"w6","label":"concorde"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"guerre","label":"Champ lexical de la guerre"},{"id":"paix","label":"Champ lexical de la paix"}],"mapping":{"w1":"paix","w2":"guerre","w3":"guerre","w4":"paix","w5":"guerre","w6":"paix"}}'::jsonb,
  'La coexistence de deux champs lexicaux opposés dans un texte crée un effet de contraste. Ici, la guerre (« soldats », « armes », « canons ») s''oppose à la paix (« trêve », « accalmie », « concorde »). Cette tension lexicale reflète la fragilité de la situation décrite. Repérer ces réseaux lexicaux opposés est fondamental pour l''analyse de texte au CRPE.',
  'Classer « trêve » dans la guerre sous prétexte qu''il s''agit d''un terme militaire. Une trêve est un arrêt des combats, donc relève du champ lexical de la paix.',
  'valide',
  'CRPE Français — Champs lexicaux',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — QCM — Distinguer champ lexical et champ sémantique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-chl0-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_champs_lexicaux',
  'Champs lexicaux et champs sémantiques',
  'Intermédiaire',
  'qcm',
  'Quelle est la différence fondamentale entre un champ lexical et un champ sémantique ?',
  NULL,
  '[{"id":"a","label":"Le champ lexical regroupe les mots d''un même thème ; le champ sémantique regroupe les différents sens d''un même mot."},{"id":"b","label":"Le champ lexical est plus large que le champ sémantique."},{"id":"c","label":"Le champ sémantique ne concerne que les synonymes d''un mot."},{"id":"d","label":"Le champ lexical concerne les mots d''un texte ; le champ sémantique concerne les mots du dictionnaire."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le champ lexical regroupe l''ensemble des mots (de classes grammaticales variées) qui se rapportent à un même thème : le champ lexical de l''école inclut « élève », « apprendre », « scolaire », etc. Le champ sémantique, lui, désigne l''ensemble des sens d''un seul mot polysémique : le champ sémantique de « feuille » inclut feuille d''arbre, feuille de papier, feuille de calcul. Cette distinction est un classique du CRPE.',
  'Confondre les deux notions : le champ lexical part d''un thème pour rassembler plusieurs mots, tandis que le champ sémantique part d''un seul mot pour explorer ses différents sens.',
  'valide',
  'CRPE Français — Champs lexicaux',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Réponse courte — Identifier le champ lexical dominant
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-chl0-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_champs_lexicaux',
  'Champs lexicaux et champs sémantiques',
  'Intermédiaire',
  'reponse_courte',
  'Quel est le champ lexical dominant dans cet extrait ? Répondez en un ou deux mots.',
  'L''aube blanchissait à peine l''horizon. Une lueur pâle filtrait à travers les volets clos, tandis que les premières clartés du jour dissipaient les ombres. Le soleil, encore invisible, embrasait déjà le ciel d''un éclat rosé.',
  NULL,
  '{"mode":"text","acceptableAnswers":["la lumière","lumière","la clarté","clarté","luminosité","la luminosité"]}'::jsonb,
  'Le champ lexical dominant est celui de la lumière : « aube », « blanchissait », « lueur », « clartés », « ombres » (par opposition), « soleil », « embrasait », « éclat ». Ce réseau lexical crée une isotopie de la lumière qui structure le passage et lui donne sa cohérence thématique. Repérer le champ lexical dominant permet de dégager le thème principal d''un texte — compétence essentielle au CRPE.',
  'Répondre « le matin » ou « l''aube » : ce sont des éléments temporels, mais le réseau lexical dominant est bien celui de la lumière, dont l''aube n''est qu''un des éléments.',
  'valide',
  'CRPE Français — Champs lexicaux',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Vrai/Faux — Isotopie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-chl0-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_champs_lexicaux',
  'Champs lexicaux et champs sémantiques',
  'Intermédiaire',
  'vrai_faux',
  'L''isotopie est la récurrence d''un même champ lexical dans un texte, contribuant à sa cohérence sémantique.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'L''isotopie, concept introduit par le linguiste A.J. Greimas, désigne la récurrence d''un même réseau sémantique (champ lexical) tout au long d''un texte. Elle assure la cohérence thématique du discours. Par exemple, dans un texte sur la tempête, l''isotopie du déchaînement naturel (« vent », « fracas », « déferler », « tourmente ») crée un fil conducteur sémantique. Au CRPE, on peut vous demander d''identifier les isotopies d''un texte pour en analyser la cohérence.',
  'Confondre isotopie et simple répétition : l''isotopie ne repose pas sur la répétition d''un mot mais sur la récurrence d''un même sème (trait de sens) à travers des mots différents.',
  'valide',
  'CRPE Français — Champs lexicaux',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — QCM — Rôle du champ lexical dans la cohérence textuelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-chl0-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_champs_lexicaux',
  'Champs lexicaux et champs sémantiques',
  'Difficile',
  'qcm',
  'Dans cet extrait, quel effet produit l''entrecroisement des champs lexicaux de la douceur et de la violence ?',
  'Elle lui parlait d''une voix de miel, mais ses mots étaient des lames. Chaque syllabe caressait l''oreille avant de trancher le cœur. Son sourire, d''une tendresse cruelle, achevait le supplice.',
  '[{"id":"a","label":"Il crée un effet comique par l''accumulation de contradictions."},{"id":"b","label":"Il traduit l''ambiguïté du personnage et crée un malaise par l''oxymore permanent."},{"id":"c","label":"Il montre l''incompétence de l''auteur à choisir un registre."},{"id":"d","label":"Il relève d''un champ lexical unique, celui de la parole."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''entrecroisement de deux champs lexicaux antithétiques (douceur : « miel », « caressait », « tendresse » / violence : « lames », « trancher », « supplice ») crée un effet d''oxymore permanent qui traduit l''ambiguïté du personnage. Cette technique stylistique est fréquente en littérature pour exprimer la duplicité. Au CRPE, savoir analyser la fonction des champs lexicaux dans un texte (pas seulement les identifier) est une compétence de niveau supérieur.',
  'Se contenter de lister les champs lexicaux sans analyser leur effet. Le CRPE attend une interprétation : pourquoi l''auteur les utilise-t-il ? Quel sens cela produit-il ?',
  'valide',
  'CRPE Français — Champs lexicaux',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Champ sémantique d''un mot polysémique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-chl0-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_champs_lexicaux',
  'Champs lexicaux et champs sémantiques',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on l''ensemble des significations que peut prendre un même mot selon les contextes ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["champ sémantique","le champ sémantique","champ semantique","le champ semantique"]}'::jsonb,
  'Le champ sémantique d''un mot est l''ensemble de ses significations possibles. Par exemple, le champ sémantique de « opération » inclut : opération chirurgicale, opération militaire, opération mathématique, opération financière. Ne pas confondre avec le champ lexical qui, lui, regroupe des mots différents autour d''un même thème. Cette distinction terminologique est un piège classique du CRPE.',
  'Répondre « polysémie » : la polysémie est la propriété d''un mot d''avoir plusieurs sens, tandis que le champ sémantique est l''ensemble de ces sens. La nuance est subtile mais importante.',
  'valide',
  'CRPE Français — Champs lexicaux',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — Classer des mots selon qu''ils relèvent du champ lexical ou du champ sémantique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-chl0-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'lex_champs_lexicaux',
  'Champs lexicaux et champs sémantiques',
  'Difficile',
  'tri_categories',
  'Classez chaque exemple selon qu''il illustre un champ lexical ou un champ sémantique.',
  NULL,
  '[{"id":"w1","label":"Pluie, orage, bruine, averse = thème de l''eau"},{"id":"w2","label":"Avocat = fruit / juriste / défenseur d''une cause"},{"id":"w3","label":"Scalpel, bistouri, anesthésie = thème de la chirurgie"},{"id":"w4","label":"Grève = arrêt de travail / plage de galets"},{"id":"w5","label":"Strophe, rime, vers, alexandrin = thème de la poésie"},{"id":"w6","label":"Canon = arme / modèle de beauté / chant musical"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cl","label":"Champ lexical (mots différents, même thème)"},{"id":"cs","label":"Champ sémantique (un mot, sens différents)"}],"mapping":{"w1":"cl","w2":"cs","w3":"cl","w4":"cs","w5":"cl","w6":"cs"}}'::jsonb,
  'Le champ lexical part d''un THÈME pour rassembler des MOTS DIFFÉRENTS : pluie/orage/bruine (eau), scalpel/bistouri/anesthésie (chirurgie), strophe/rime/vers (poésie). Le champ sémantique part d''un SEUL MOT pour explorer ses SENS DIFFÉRENTS : avocat (fruit/juriste/défenseur), grève (arrêt de travail/plage), canon (arme/beauté/chant). Retenir : champ lexical = plusieurs mots → un thème ; champ sémantique = un mot → plusieurs sens.',
  'Confondre les deux directions : le champ lexical va des mots vers le thème, le champ sémantique va du mot vers ses sens. Ce sont des démarches inverses.',
  'valide',
  'CRPE Français — Champs lexicaux',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 2 : Figures de style
-- Topic : lex_figures_style
-- UUID prefix : lex-fig0
-- 3 Facile, 4 Intermédiaire, 3 Difficile
-- Mix : 4 qcm, 2 vrai_faux, 2 reponse_courte, 2 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Distinguer métaphore et comparaison
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-fig0-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_figures_style',
  'Figures de style',
  'Facile',
  'qcm',
  'Quelle figure de style est utilisée dans la phrase : « Cet homme est un lion » ?',
  NULL,
  '[{"id":"a","label":"Une comparaison"},{"id":"b","label":"Une métaphore"},{"id":"c","label":"Une personnification"},{"id":"d","label":"Une hyperbole"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est une métaphore car il y a identification directe (« est un lion ») sans outil de comparaison (comme, tel que, semblable à…). Si la phrase était « Cet homme est courageux comme un lion », ce serait une comparaison. La métaphore est plus forte stylistiquement car elle supprime la distance entre le comparé et le comparant. Critère simple : pas de mot-outil = métaphore.',
  'Confondre métaphore et comparaison. La comparaison utilise obligatoirement un outil de comparaison (comme, tel, semblable à, pareil à, ainsi que…). Sans cet outil, c''est une métaphore.',
  'valide',
  'CRPE Français — Figures de style',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Personnification
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-fig0-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_figures_style',
  'Figures de style',
  'Facile',
  'vrai_faux',
  'Dans « Le vent hurle sa colère », la figure de style employée est une personnification.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'La personnification consiste à attribuer des caractéristiques humaines à un élément non humain. Ici, le vent « hurle » (action humaine) et éprouve de la « colère » (sentiment humain). La personnification est une forme particulière de métaphore : le comparant implicite est un être humain. Elle est très fréquente en poésie pour animer la nature et créer une relation affective avec le lecteur.',
  'Confondre personnification et métaphore. La personnification EST une métaphore, mais une métaphore spécifique où le comparant est toujours un être humain (comportement, sentiment, action humaine).',
  'valide',
  'CRPE Français — Figures de style',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Tri catégories — Figures d''analogie vs figures d''opposition
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-fig0-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_figures_style',
  'Figures de style',
  'Facile',
  'tri_categories',
  'Classez chaque figure de style selon sa catégorie : figure d''analogie (rapprochement) ou figure d''opposition (contraste).',
  NULL,
  '[{"id":"w1","label":"Comparaison"},{"id":"w2","label":"Antithèse"},{"id":"w3","label":"Métaphore"},{"id":"w4","label":"Oxymore"},{"id":"w5","label":"Personnification"},{"id":"w6","label":"Chiasme d''opposition"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"analogie","label":"Figures d''analogie"},{"id":"opposition","label":"Figures d''opposition"}],"mapping":{"w1":"analogie","w2":"opposition","w3":"analogie","w4":"opposition","w5":"analogie","w6":"opposition"}}'::jsonb,
  'Les figures d''analogie créent un rapprochement entre deux éléments : comparaison (avec outil), métaphore (sans outil), personnification (comparant humain). Les figures d''opposition jouent sur le contraste : antithèse (deux idées opposées juxtaposées), oxymore (deux termes contradictoires accolés : « obscure clarté »), chiasme d''opposition (structure croisée AB/BA opposant deux réalités). Cette classification est fondamentale pour l''analyse stylistique au CRPE.',
  'Classer l''oxymore comme figure d''analogie parce qu''il rapproche deux mots. L''oxymore rapproche deux mots CONTRADICTOIRES, ce qui en fait une figure d''opposition.',
  'valide',
  'CRPE Français — Figures de style',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — QCM — Identifier une litote
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-fig0-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_figures_style',
  'Figures de style',
  'Intermédiaire',
  'qcm',
  'Quelle figure de style Chimène emploie-t-elle dans « Va, je ne te hais point » (Le Cid, Corneille) ?',
  NULL,
  '[{"id":"a","label":"Un euphémisme"},{"id":"b","label":"Une litote"},{"id":"c","label":"Une antiphrase"},{"id":"d","label":"Une prétérition"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est la litote la plus célèbre de la littérature française. Chimène dit le moins pour faire entendre le plus : « je ne te hais point » signifie en réalité « je t''aime passionnément ». La litote dit moins pour suggérer plus (atténuation par la négation). Ne pas confondre avec l''euphémisme qui atténue une réalité désagréable (« il nous a quittés » pour « il est mort ») ni avec l''antiphrase qui dit le contraire de ce qu''on pense (ironie).',
  'Confondre litote et euphémisme. La litote atténue pour renforcer le propos (dire moins pour signifier plus). L''euphémisme atténue pour adoucir une réalité pénible. La direction est inverse.',
  'valide',
  'CRPE Français — Figures de style',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — QCM — Métonymie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-fig0-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_figures_style',
  'Figures de style',
  'Intermédiaire',
  'qcm',
  'Dans « Boire un verre » ou « Tout Paris en parle », quelle figure de style est utilisée ?',
  NULL,
  '[{"id":"a","label":"Une synecdoque"},{"id":"b","label":"Une métonymie"},{"id":"c","label":"Une métaphore"},{"id":"d","label":"Une hyperbole"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La métonymie remplace un mot par un autre ayant un lien logique avec lui (contenant/contenu, lieu/habitants, cause/effet). « Boire un verre » = boire le contenu du verre (contenant pour contenu). « Tout Paris » = tous les Parisiens (lieu pour habitants). La synecdoque, souvent considérée comme un cas particulier de métonymie, utilise la partie pour le tout (« une voile » pour « un bateau ») ou le tout pour la partie.',
  'Confondre métonymie et synecdoque. La synecdoque joue sur le rapport partie/tout (« une voile » = un navire), tandis que la métonymie joue sur d''autres rapports logiques (contenant/contenu, lieu/habitants, etc.).',
  'valide',
  'CRPE Français — Figures de style',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Réponse courte — Identifier une figure
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-fig0-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_figures_style',
  'Figures de style',
  'Intermédiaire',
  'reponse_courte',
  'Quelle figure de style consiste à répéter un même mot ou groupe de mots en début de vers ou de phrase successive ? (Un seul mot attendu.)',
  'Exemple : « Moi, je suis las. / Moi, je suis seul. / Moi, je suis libre. »',
  NULL,
  '{"mode":"text","acceptableAnswers":["anaphore","l''anaphore","une anaphore","anaphore rhétorique","l''anaphore rhétorique"]}'::jsonb,
  'L''anaphore (rhétorique) est la répétition d''un mot ou groupe de mots en début de vers, de phrase ou de proposition successifs. Attention au CRPE : ne pas confondre l''anaphore rhétorique (figure de style par répétition) avec l''anaphore textuelle (reprise d''un élément déjà mentionné par un pronom ou un substitut). « Il vit un chat. L''animal dormait » → « l''animal » est une anaphore textuelle (reprise de « chat »), pas une figure de style.',
  'Confondre anaphore rhétorique (figure de style : répétition en début de phrase) et anaphore textuelle (grammaire de texte : reprise d''un référent). Cette distinction est un piège classique du CRPE.',
  'valide',
  'CRPE Français — Figures de style',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Vrai/Faux — Hyperbole
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-fig0-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_figures_style',
  'Figures de style',
  'Intermédiaire',
  'vrai_faux',
  'L''hyperbole et l''euphémisme sont des figures de style opposées : l''une amplifie, l''autre atténue.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'L''hyperbole amplifie la réalité par l''exagération (« mourir de rire », « un bruit à réveiller les morts »). L''euphémisme, au contraire, atténue une réalité jugée désagréable ou brutale (« les non-voyants » pour « les aveugles », « il nous a quittés » pour « il est mort »). Ces deux figures jouent sur l''intensité mais en sens inverse. Elles relèvent toutes deux des figures d''atténuation/amplification dans la classification rhétorique.',
  'Confondre euphémisme et litote. L''euphémisme adoucit une réalité pénible ; la litote dit moins pour faire entendre plus. « Il n''est pas très intelligent » = euphémisme (adoucit « il est bête »). « Ce n''est pas mal » = litote (signifie « c''est très bien »).',
  'valide',
  'CRPE Français — Figures de style',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Tri catégories — Identifier les figures dans des extraits littéraires
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-fig0-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_figures_style',
  'Figures de style',
  'Difficile',
  'tri_categories',
  'Classez chaque extrait selon la figure de style dominante qu''il illustre.',
  NULL,
  '[{"id":"w1","label":"Cette obscure clarté qui tombe des étoiles (Corneille)"},{"id":"w2","label":"Je meurs de soif !"},{"id":"w3","label":"C''est un roc, c''est un pic, c''est un cap ! (Rostand)"},{"id":"w4","label":"La forêt gémissait sous le vent d''hiver"},{"id":"w5","label":"Un silence assourdissant régnait"},{"id":"w6","label":"Il était fort comme un taureau"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"oxy","label":"Oxymore"},{"id":"hyp","label":"Hyperbole"},{"id":"per","label":"Personnification"},{"id":"comp","label":"Comparaison"}],"mapping":{"w1":"oxy","w2":"hyp","w3":"hyp","w4":"per","w5":"oxy","w6":"comp"}}'::jsonb,
  'Oxymores : « obscure clarté » et « silence assourdissant » associent deux termes contradictoires. Hyperboles : « je meurs de soif » (exagération) et la tirade du nez de Cyrano (accumulation amplificatrice). Personnification : la forêt « gémit » (comportement humain attribué à un végétal). Comparaison : « fort comme un taureau » (outil « comme »). Notez que la tirade de Cyrano cumule métaphores et hyperbole — c''est l''hyperbole qui domine par l''accumulation.',
  'Confondre l''oxymore avec l''antithèse. L''oxymore unit deux termes contradictoires dans un même groupe syntaxique (« obscure clarté »). L''antithèse oppose deux idées dans deux groupes distincts (« la chair est triste, l''esprit est vif »).',
  'valide',
  'CRPE Français — Figures de style',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Figure de substitution
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-fig0-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_figures_style',
  'Figures de style',
  'Difficile',
  'reponse_courte',
  'Dans « L''Hexagone a voté dimanche », quelle figure de style désigne la France par sa forme géographique ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["métonymie","une métonymie","la métonymie","metonymie"]}'::jsonb,
  'Désigner la France par « l''Hexagone » est une métonymie : on remplace le nom du pays par sa caractéristique géographique (sa forme hexagonale). Certains linguistes y voient une synecdoque (la forme pour le tout), mais la classification la plus courante au CRPE retient la métonymie par analogie spatiale. Autres métonymies courantes : « l''Élysée » pour le président, « Bruxelles » pour l''Union européenne, « la Maison-Blanche » pour le gouvernement américain.',
  'Répondre « périphrase ». Si « l''Hexagone » est bien une façon détournée de nommer la France, le mécanisme repose sur un lien logique (forme → pays) et non sur une description développée. Une périphrase serait « le pays en forme d''hexagone ».',
  'valide',
  'CRPE Français — Figures de style',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — QCM — Chiasme
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-fig0-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'lex_figures_style',
  'Figures de style',
  'Difficile',
  'qcm',
  'Quel vers illustre un chiasme ?',
  NULL,
  '[{"id":"a","label":"Il faut manger pour vivre et non pas vivre pour manger. (Molière)"},{"id":"b","label":"Je vis, je meurs ; je me brûle et me noie. (Louise Labé)"},{"id":"c","label":"La terre était grise, le ciel était gris. (Zola)"},{"id":"d","label":"Ô temps ! suspends ton vol. (Lamartine)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le chiasme est une structure croisée de type AB/BA. Chez Molière : « manger (A) pour vivre (B) / vivre (B) pour manger (A) ». La structure syntaxique s''inverse symétriquement. Chez Louise Labé (b), c''est une antithèse par accumulation. Chez Zola (c), c''est un parallélisme (même structure AB/AB). Chez Lamartine (d), c''est une apostrophe avec personnification du temps. Le chiasme crée un effet de miroir ou de boucle qui renforce l''argumentation.',
  'Confondre chiasme et parallélisme. Le parallélisme répète la même structure (AB/AB) : « la terre était grise, le ciel était gris ». Le chiasme croise la structure (AB/BA) : « manger pour vivre / vivre pour manger ».',
  'valide',
  'CRPE Français — Figures de style',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 3 : Registres et niveaux de langue
-- Topic : lex_registres_langue
-- UUID prefix : lex-reg0
-- 4 Facile, 3 Intermédiaire, 3 Difficile
-- Mix : 3 qcm, 2 vrai_faux, 2 reponse_courte, 3 tri_categories
-- ============================================================

-- Q1 — Facile — Tri catégories — Classer des mots par registre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-reg0-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_registres_langue',
  'Registres et niveaux de langue',
  'Facile',
  'tri_categories',
  'Classez chaque mot ou expression selon son registre de langue.',
  NULL,
  '[{"id":"w1","label":"bagnole"},{"id":"w2","label":"voiture"},{"id":"w3","label":"automobile"},{"id":"w4","label":"bouquin"},{"id":"w5","label":"livre"},{"id":"w6","label":"ouvrage"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"fam","label":"Familier"},{"id":"cour","label":"Courant"},{"id":"sout","label":"Soutenu"}],"mapping":{"w1":"fam","w2":"cour","w3":"sout","w4":"fam","w5":"cour","w6":"sout"}}'::jsonb,
  'Les trois registres de langue (familier, courant, soutenu) traduisent des situations de communication différentes. Familier : « bagnole », « bouquin » (usage oral, entre proches). Courant : « voiture », « livre » (usage standard, neutre). Soutenu : « automobile », « ouvrage » (usage formel, littéraire). Au CRPE, on attend que les candidats sachent identifier ces registres ET expliquer leur rôle dans l''adaptation à la situation de communication.',
  'Croire que le registre soutenu est « meilleur » que le familier. En didactique, aucun registre n''est supérieur : chacun est adapté à une situation de communication. L''enjeu pédagogique est d''enrichir le répertoire linguistique des élèves.',
  'valide',
  'CRPE Français — Registres de langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Identifier le registre d''une phrase
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-reg0-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_registres_langue',
  'Registres et niveaux de langue',
  'Facile',
  'qcm',
  'À quel registre de langue appartient la phrase : « J''eusse aimé que vous prissiez le temps de considérer ma requête » ?',
  NULL,
  '[{"id":"a","label":"Familier"},{"id":"b","label":"Courant"},{"id":"c","label":"Soutenu"},{"id":"d","label":"Argotique"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Cette phrase relève du registre soutenu, repérable à plusieurs marqueurs : le subjonctif plus-que-parfait (« eusse aimé », « prissiez »), le vocabulaire recherché (« considérer », « requête ») et la longueur de la construction syntaxique. En registre courant, on dirait : « J''aurais aimé que vous preniez le temps d''examiner ma demande. » En registre familier : « J''aurais bien voulu que tu regardes ce que je demande. »',
  'Ne pas reconnaître le subjonctif plus-que-parfait (« eusse aimé », « prissiez ») comme marqueur du registre soutenu. Ce temps est quasi exclusif à l''écrit littéraire.',
  'valide',
  'CRPE Français — Registres de langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Vrai/Faux — Registre familier
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-reg0-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_registres_langue',
  'Registres et niveaux de langue',
  'Facile',
  'vrai_faux',
  'Le registre familier se caractérise uniquement par un vocabulaire relâché (argot, abréviations).',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Le registre familier ne se réduit pas au vocabulaire. Il se manifeste aussi par des traits syntaxiques (suppression du « ne » de négation : « j''sais pas », interrogation sans inversion : « tu viens ? »), phonétiques (élisions : « t''es », « j''suis ») et prosodiques. Au CRPE, il faut montrer que les registres de langue se distinguent sur trois plans : lexical, syntaxique et phonétique/prosodique.',
  'Réduire le registre de langue au seul vocabulaire. Les marqueurs syntaxiques (absence de « ne » dans la négation, questions sans inversion) et phonétiques (élisions) sont tout aussi importants.',
  'valide',
  'CRPE Français — Registres de langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Facile — Tri catégories — Marqueurs de registre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-reg0-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_registres_langue',
  'Registres et niveaux de langue',
  'Facile',
  'tri_categories',
  'Classez chaque phrase selon son registre de langue.',
  NULL,
  '[{"id":"w1","label":"Il a chopé la grippe."},{"id":"w2","label":"Il a attrapé la grippe."},{"id":"w3","label":"Il a contracté la grippe."},{"id":"w4","label":"T''as vu c''truc ?"},{"id":"w5","label":"As-tu vu cette chose ?"},{"id":"w6","label":"Avez-vous aperçu cet objet ?"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"fam","label":"Familier"},{"id":"cour","label":"Courant"},{"id":"sout","label":"Soutenu"}],"mapping":{"w1":"fam","w2":"cour","w3":"sout","w4":"fam","w5":"cour","w6":"sout"}}'::jsonb,
  'Chaque triplet montre la gradation des registres. « Choper/attraper/contracter » : le verbe change. « T''as vu c''truc / As-tu vu cette chose / Avez-vous aperçu cet objet » : la syntaxe, la phonétique et le vocabulaire changent simultanément. Remarquez que le familier cumule élision phonétique (« t''as », « c''truc »), vocabulaire relâché et interrogation directe sans inversion.',
  'Croire que seul le vocabulaire change entre les registres. La syntaxe (inversion sujet-verbe, « est-ce que ») et la phonétique (élisions) sont aussi des marqueurs distinctifs.',
  'valide',
  'CRPE Français — Registres de langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — QCM — Variation diastratique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-reg0-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_registres_langue',
  'Registres et niveaux de langue',
  'Intermédiaire',
  'qcm',
  'En sociolinguistique, comment appelle-t-on la variation linguistique liée au milieu social du locuteur ?',
  NULL,
  '[{"id":"a","label":"Variation diatopique"},{"id":"b","label":"Variation diastratique"},{"id":"c","label":"Variation diaphasique"},{"id":"d","label":"Variation diachronique"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La variation diastratique concerne les différences linguistiques liées au groupe social (âge, profession, classe sociale). La variation diatopique concerne les différences géographiques (régionalismes, dialectes). La variation diaphasique concerne l''adaptation du discours à la situation de communication (registres de langue). La variation diachronique concerne l''évolution de la langue dans le temps. Au CRPE, ces notions sociolinguistiques peuvent être mobilisées dans les questions de didactique.',
  'Confondre diastratique (lié au groupe social) et diaphasique (lié à la situation). Les registres de langue relèvent de la variation diaphasique (on adapte son discours au contexte), pas de la variation diastratique.',
  'valide',
  'CRPE Français — Registres de langue',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Réponse courte — Registre vs niveau de langue
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-reg0-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_registres_langue',
  'Registres et niveaux de langue',
  'Intermédiaire',
  'reponse_courte',
  'Comment appelle-t-on le type de variation linguistique qui dépend de la situation de communication (formelle, informelle) et non du milieu social ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["variation diaphasique","diaphasique","la variation diaphasique"]}'::jsonb,
  'La variation diaphasique est l''adaptation du discours en fonction de la situation de communication : on ne parle pas de la même façon lors d''un entretien d''embauche et avec des amis proches. C''est cette variation qui fonde la notion de registres de langue (familier, courant, soutenu). Dans le cadre du CRPE, l''enjeu didactique est d''apprendre aux élèves à adapter leur registre au contexte, sans dévaloriser aucun usage.',
  'Confondre variation diaphasique (liée à la situation) et variation diastratique (liée au milieu social). Un même locuteur utilise différents registres selon la situation : c''est la variation diaphasique.',
  'valide',
  'CRPE Français — Registres de langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Vrai/Faux — Application didactique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-reg0-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_registres_langue',
  'Registres et niveaux de langue',
  'Intermédiaire',
  'vrai_faux',
  'À l''école, l''enseignement des registres de langue doit amener les élèves à n''utiliser que le registre soutenu.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Les programmes scolaires ne visent pas l''abandon du registre familier au profit du soutenu, mais l''enrichissement du répertoire linguistique de l''élève et sa capacité à adapter son registre à la situation de communication. L''objectif est la maîtrise de la variation : savoir quand employer quel registre. Cette approche respecte la diversité des usages et évite la stigmatisation sociale. C''est un point de didactique fondamental au CRPE.',
  'Penser que l''école doit éradiquer le registre familier. L''objectif est l''enrichissement et l''adaptation, pas le remplacement. Chaque registre a sa légitimité dans son contexte.',
  'valide',
  'CRPE Français — Registres de langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — QCM — Marqueurs syntaxiques de registre
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-reg0-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_registres_langue',
  'Registres et niveaux de langue',
  'Difficile',
  'qcm',
  'Parmi ces traits syntaxiques, lequel est un marqueur du registre soutenu (et non du registre courant) ?',
  NULL,
  '[{"id":"a","label":"L''emploi de « est-ce que » dans les interrogatives"},{"id":"b","label":"L''inversion du sujet dans les interrogatives (« Viendrez-vous ? »)"},{"id":"c","label":"L''emploi du passé composé pour exprimer l''antériorité"},{"id":"d","label":"L''emploi de la forme négative « ne…pas »"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'L''inversion du sujet dans les phrases interrogatives (« Viendrez-vous ? », « Quand partirons-nous ? ») est un marqueur syntaxique du registre soutenu. En registre courant, on utilise « est-ce que » (« Est-ce que vous viendrez ? »). En registre familier, on se contente de l''intonation montante (« Tu viens ? ») ou du marqueur « c''est quand que… ». Ces trois formes interrogatives correspondent aux trois registres : intonation (familier), « est-ce que » (courant), inversion (soutenu).',
  'Penser que l''inversion sujet-verbe est du registre courant. Dans l''usage réel contemporain, l''inversion est perçue comme soutenue, tandis que « est-ce que » est le standard courant.',
  'valide',
  'CRPE Français — Registres de langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Terme technique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-reg0-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_registres_langue',
  'Registres et niveaux de langue',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on la variation linguistique liée à l''origine géographique du locuteur (par exemple, les régionalismes) ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["variation diatopique","diatopique","la variation diatopique"]}'::jsonb,
  'La variation diatopique (du grec topos, « lieu ») concerne les différences linguistiques liées à l''aire géographique : régionalismes (« chocolatine » vs « pain au chocolat »), accents, dialectes. Elle se distingue de la variation diastratique (milieu social), diaphasique (situation de communication) et diachronique (évolution dans le temps). Au CRPE, connaître ces quatre types de variation permet de mieux comprendre la diversité des usages linguistiques des élèves.',
  'Confondre diatopique (géographique) avec diastratique (sociale). Moyen mnémotechnique : diatopique contient « topo » comme dans topographie (lieu).',
  'valide',
  'CRPE Français — Registres de langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — Types de marqueurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-reg0-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'lex_registres_langue',
  'Registres et niveaux de langue',
  'Difficile',
  'tri_categories',
  'Classez chaque trait selon qu''il est un marqueur lexical, syntaxique ou phonétique du registre familier.',
  NULL,
  '[{"id":"w1","label":"Emploi de « boulot » au lieu de « travail »"},{"id":"w2","label":"Suppression du « ne » dans la négation"},{"id":"w3","label":"Élision de voyelles (« t''es », « j''sais »)"},{"id":"w4","label":"Emploi de « flic » au lieu de « policier »"},{"id":"w5","label":"Interrogation par intonation seule (« Tu viens ? »)"},{"id":"w6","label":"Chute du « e » muet (« j''te dis »)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"lex","label":"Marqueur lexical"},{"id":"syn","label":"Marqueur syntaxique"},{"id":"phon","label":"Marqueur phonétique"}],"mapping":{"w1":"lex","w2":"syn","w3":"phon","w4":"lex","w5":"syn","w6":"phon"}}'::jsonb,
  'Les marqueurs du registre familier se répartissent en trois catégories. Lexicaux : emploi de mots argotiques ou familiers (« boulot », « flic »). Syntaxiques : modification de la structure de phrase (suppression du « ne » négatif, interrogation par intonation sans inversion). Phonétiques : modification de la prononciation (élision de voyelles « t''es », chute du « e » muet « j''te dis »). Cette triple analyse est attendue au CRPE pour montrer la maîtrise de la notion de registre de langue.',
  'Ne voir que les marqueurs lexicaux (vocabulaire familier) et oublier les marqueurs syntaxiques et phonétiques. L''analyse des registres exige de croiser les trois niveaux.',
  'valide',
  'CRPE Français — Registres de langue',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 4 : Relations de sens (synonymie, antonymie, polysémie)
-- Topic : lex_relations_sens
-- UUID prefix : lex-sap0
-- 3 Facile, 4 Intermédiaire, 3 Difficile
-- Mix : 3 qcm, 2 vrai_faux, 3 reponse_courte, 2 tri_categories
-- ============================================================

-- Q1 — Facile — Vrai/Faux — Synonymie parfaite
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-sap0-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lex_relations_sens',
  'Relations de sens : synonymie, antonymie, polysémie',
  'Facile',
  'vrai_faux',
  'Deux mots synonymes ont toujours exactement le même sens et sont interchangeables dans tous les contextes.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'La synonymie parfaite n''existe pratiquement pas en français. Les synonymes sont toujours des synonymes partiels : ils partagent un noyau de sens commun mais diffèrent par des nuances de sens, de registre ou de connotation. Par exemple, « mourir », « décéder », « trépasser », « crever » partagent le sens de « cesser de vivre » mais diffèrent par le registre (courant/soutenu/littéraire/familier). On parle de synonymie partielle ou approchée.',
  'Croire que les synonymes sont parfaitement interchangeables. Contre-exemple : « un temps frais » ≠ « un temps froid » — « frais » et « froid » sont synonymes partiels mais non substituables ici.',
  'valide',
  'CRPE Français — Relations de sens',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — QCM — Identifier des antonymes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-sap0-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lex_relations_sens',
  'Relations de sens : synonymie, antonymie, polysémie',
  'Facile',
  'qcm',
  'Quelle paire de mots constitue un couple d''antonymes complémentaires (l''un exclut nécessairement l''autre) ?',
  NULL,
  '[{"id":"a","label":"chaud / froid"},{"id":"b","label":"vivant / mort"},{"id":"c","label":"grand / petit"},{"id":"d","label":"monter / descendre"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les antonymes complémentaires sont ceux où la négation de l''un implique nécessairement l''affirmation de l''autre : si un être n''est pas vivant, il est forcément mort (pas d''intermédiaire). Les antonymes graduels (chaud/froid, grand/petit) admettent des degrés intermédiaires (tiède, moyen). Les antonymes réciproques (monter/descendre, acheter/vendre) impliquent un rapport inverse entre deux acteurs. Cette classification en trois types d''antonymie est attendue au CRPE.',
  'Confondre antonymes complémentaires et graduels. « Chaud/froid » admet « tiède » entre les deux (graduels). « Vivant/mort » n''admet pas d''intermédiaire (complémentaires).',
  'valide',
  'CRPE Français — Relations de sens',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Tri catégories — Synonymes et antonymes
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-sap0-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lex_relations_sens',
  'Relations de sens : synonymie, antonymie, polysémie',
  'Facile',
  'tri_categories',
  'Classez chaque paire de mots selon la relation de sens : synonymie ou antonymie.',
  NULL,
  '[{"id":"w1","label":"courageux / brave"},{"id":"w2","label":"lumineux / obscur"},{"id":"w3","label":"rapide / véloce"},{"id":"w4","label":"généreux / avare"},{"id":"w5","label":"triste / mélancolique"},{"id":"w6","label":"ancien / moderne"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"syn","label":"Synonymie"},{"id":"ant","label":"Antonymie"}],"mapping":{"w1":"syn","w2":"ant","w3":"syn","w4":"ant","w5":"syn","w6":"ant"}}'::jsonb,
  'Synonymes : courageux/brave (même trait de sens : bravoure), rapide/véloce (même sens : vitesse, mais « véloce » est plus soutenu), triste/mélancolique (nuance : la mélancolie est une tristesse plus profonde et durable). Antonymes : lumineux/obscur, généreux/avare, ancien/moderne. Notez que les synonymes comportent toujours des nuances (registre, intensité, connotation).',
  'Considérer « triste » et « mélancolique » comme des synonymes parfaits. La mélancolie a une nuance de durée et de profondeur que « triste » n''a pas nécessairement.',
  'valide',
  'CRPE Français — Relations de sens',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — QCM — Polysémie vs homonymie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-sap0-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lex_relations_sens',
  'Relations de sens : synonymie, antonymie, polysémie',
  'Intermédiaire',
  'qcm',
  'Quel critère permet de distinguer un mot polysémique de deux homonymes ?',
  NULL,
  '[{"id":"a","label":"La prononciation : les homonymes se prononcent différemment."},{"id":"b","label":"L''étymologie : un mot polysémique a une seule origine, les homonymes ont des origines différentes."},{"id":"c","label":"La classe grammaticale : les homonymes sont toujours de classes différentes."},{"id":"d","label":"Le nombre de sens : un polysème a exactement deux sens, un homonyme en a davantage."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le critère fondamental est étymologique. Un mot polysémique est un seul mot ayant développé plusieurs sens au fil du temps à partir d''une même origine : « bureau » (étoffe → meuble → pièce → institution) vient du latin burra. Des homonymes sont des mots d''origines différentes qui ont convergé vers la même forme : « avocat » (juriste, de advocatus) et « avocat » (fruit, du nahuatl ahuacatl). Dans le dictionnaire, un polysème a une seule entrée ; des homonymes ont des entrées séparées.',
  'Croire que les homonymes se distinguent par leur prononciation ou leur orthographe. Les homophones (même son) et homographes (même écriture) sont des sous-types d''homonymes, mais la vraie distinction avec la polysémie est étymologique.',
  'valide',
  'CRPE Français — Relations de sens',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Réponse courte — Hyperonymie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-sap0-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lex_relations_sens',
  'Relations de sens : synonymie, antonymie, polysémie',
  'Intermédiaire',
  'reponse_courte',
  'Comment appelle-t-on un mot dont le sens englobe celui de plusieurs autres mots ? Par exemple, « animal » par rapport à « chat », « chien », « oiseau ».',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["hyperonyme","un hyperonyme","l''hyperonyme","hyperonyme (ou terme générique)","terme générique"]}'::jsonb,
  'Un hyperonyme est un mot de sens plus général qui englobe le sens de mots plus spécifiques (ses hyponymes). « Animal » est l''hyperonyme de « chat », « chien », « oiseau ». Inversement, « chat » est un hyponyme de « animal ». Cette relation d''inclusion sémantique (hyperonymie/hyponymie) est fondamentale pour structurer le vocabulaire. En didactique CRPE, on l''utilise pour enseigner la catégorisation et enrichir le vocabulaire des élèves.',
  'Confondre hyperonyme et synonyme. « Animal » n''est pas un synonyme de « chat » — c''est un terme plus général qui l''inclut. La synonymie implique une équivalence de sens, l''hyperonymie une relation d''inclusion.',
  'valide',
  'CRPE Français — Relations de sens',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Vrai/Faux — Antonymie et préfixation
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-sap0-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lex_relations_sens',
  'Relations de sens : synonymie, antonymie, polysémie',
  'Intermédiaire',
  'vrai_faux',
  'Tous les antonymes se forment par l''ajout d''un préfixe négatif (in-, im-, dé-, mal-).',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'L''antonymie par préfixation (heureux/malheureux, possible/impossible, faire/défaire) n''est qu''un des procédés de formation des antonymes. De nombreux antonymes sont des mots de racines totalement différentes : chaud/froid, grand/petit, vie/mort, beau/laid. On distingue donc les antonymes morphologiques (formés par préfixation) et les antonymes lexicaux (mots d''origines différentes). Au CRPE, cette distinction peut être évaluée dans les questions de morphologie lexicale.',
  'Croire que l''antonymie passe toujours par un préfixe. Les couples comme « grand/petit », « amour/haine », « vie/mort » sont des antonymes sans lien morphologique.',
  'valide',
  'CRPE Français — Relations de sens',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Réponse courte — Hyponyme
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-sap0-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lex_relations_sens',
  'Relations de sens : synonymie, antonymie, polysémie',
  'Intermédiaire',
  'reponse_courte',
  'Si « meuble » est l''hyperonyme, comment appelle-t-on « chaise », « table », « armoire » par rapport à « meuble » ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["hyponymes","des hyponymes","hyponyme","un hyponyme"]}'::jsonb,
  'Ce sont des hyponymes. L''hyponyme est un mot de sens plus spécifique, inclus dans le sens d''un mot plus général (l''hyperonyme). « Chaise », « table », « armoire » sont des hyponymes de « meuble ». Entre eux, ces hyponymes de même niveau sont appelés co-hyponymes. Cette structure hiérarchique (hyperonymie/hyponymie) organise le lexique en arborescence et constitue un outil didactique puissant pour l''enseignement du vocabulaire à l''école primaire.',
  'Confondre hyponyme et synonyme. « Chaise » n''est pas un synonyme de « meuble » (pas interchangeables dans tous les contextes), mais un terme plus spécifique inclus dans sa catégorie.',
  'valide',
  'CRPE Français — Relations de sens',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — QCM — Types d''antonymie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-sap0-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lex_relations_sens',
  'Relations de sens : synonymie, antonymie, polysémie',
  'Difficile',
  'qcm',
  'Quelle paire illustre une antonymie réciproque (les deux termes se présupposent mutuellement) ?',
  NULL,
  '[{"id":"a","label":"jeune / vieux"},{"id":"b","label":"présent / absent"},{"id":"c","label":"acheter / vendre"},{"id":"d","label":"beau / laid"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Les antonymes réciproques sont ceux où l''un présuppose l''autre : il ne peut pas y avoir d''acheteur sans vendeur, de parent sans enfant, d''enseignant sans élève. C''est une relation de réciprocité. « Jeune/vieux » et « beau/laid » sont des antonymes graduels (degrés intermédiaires possibles). « Présent/absent » est un couple complémentaire (pas de degré intermédiaire : on est l''un ou l''autre). Cette triple classification (complémentaires, graduels, réciproques) est un classique du CRPE.',
  'Confondre antonymes réciproques et complémentaires. Les réciproques impliquent deux acteurs dans une relation inverse (acheter/vendre). Les complémentaires s''excluent mutuellement sans réciprocité d''acteurs (vivant/mort).',
  'valide',
  'CRPE Français — Relations de sens',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Polysémie
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-sap0-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lex_relations_sens',
  'Relations de sens : synonymie, antonymie, polysémie',
  'Difficile',
  'reponse_courte',
  'Le mot « grève » a deux sens : « arrêt de travail » et « rivage de sable ». Ces deux sens ont la même origine étymologique (la Place de Grève à Paris). S''agit-il de polysémie ou d''homonymie ? (Un seul mot attendu.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["polysémie","de polysémie","la polysémie","polysemie","de la polysémie"]}'::jsonb,
  'C''est de la polysémie car les deux sens ont la même origine étymologique : la Place de Grève à Paris, située sur la rive de la Seine (sens de « grève » = rivage), était le lieu où les ouvriers sans travail se rassemblaient (d''où « faire grève » = cesser le travail). Même si le lien sémantique n''est plus évident aujourd''hui, l''origine commune fait qu''il s''agit d''un seul mot polysémique et non de deux homonymes. Ce cas illustre la difficulté de la distinction polysémie/homonymie.',
  'Répondre « homonymie » parce que les deux sens semblent sans rapport. Le critère n''est pas la proximité sémantique actuelle mais l''origine étymologique commune.',
  'valide',
  'CRPE Français — Relations de sens',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — Types de relations sémantiques
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'lex-sap0-0000-0000-0000-000000000010',
  'Francais',
  'lexique',
  'lex_relations_sens',
  'Relations de sens : synonymie, antonymie, polysémie',
  'Difficile',
  'tri_categories',
  'Classez chaque exemple selon la relation de sens qu''il illustre : hyperonymie, synonymie partielle ou antonymie graduelle.',
  NULL,
  '[{"id":"w1","label":"fleur → rose, tulipe, iris"},{"id":"w2","label":"content / joyeux"},{"id":"w3","label":"chaud / froid"},{"id":"w4","label":"véhicule → voiture, camion, moto"},{"id":"w5","label":"rapide / prompt"},{"id":"w6","label":"riche / pauvre"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"hyp","label":"Hyperonymie (générique → spécifiques)"},{"id":"syn","label":"Synonymie partielle"},{"id":"ant","label":"Antonymie graduelle"}],"mapping":{"w1":"hyp","w2":"syn","w3":"ant","w4":"hyp","w5":"syn","w6":"ant"}}'::jsonb,
  'Hyperonymie : « fleur » englobe « rose, tulipe, iris » ; « véhicule » englobe « voiture, camion, moto » — relation d''inclusion du général au particulier. Synonymie partielle : « content/joyeux » et « rapide/prompt » partagent un noyau de sens commun mais avec des nuances (« joyeux » est plus intense que « content », « prompt » est plus soutenu que « rapide »). Antonymie graduelle : « chaud/froid » et « riche/pauvre » admettent des degrés intermédiaires (tiède, aisé).',
  'Classer « chaud/froid » comme antonymie complémentaire. L''antonymie complémentaire n''admet pas de degré intermédiaire (vivant/mort). Comme « tiède » existe entre « chaud » et « froid », c''est une antonymie graduelle.',
  'valide',
  'CRPE Français — Relations de sens',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 5 : Le schéma narratif
-- Topic : cpt_schema_narratif
-- UUID prefix : cpt-sn00
-- 3 Facile, 4 Intermédiaire, 3 Difficile
-- Mix : 4 qcm, 2 vrai_faux, 2 reponse_courte, 2 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Les 5 étapes du schéma narratif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-sn00-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'cpt_schema_narratif',
  'Le schéma narratif',
  'Facile',
  'qcm',
  'Combien d''étapes comporte le schéma narratif classique (schéma quinaire) ?',
  NULL,
  '[{"id":"a","label":"3 étapes"},{"id":"b","label":"4 étapes"},{"id":"c","label":"5 étapes"},{"id":"d","label":"6 étapes"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Le schéma narratif classique, dit quinaire (du latin quinque, « cinq »), comporte 5 étapes : 1) situation initiale (état stable), 2) élément perturbateur (événement déclencheur), 3) péripéties (actions transformatrices), 4) résolution (dénouement), 5) situation finale (nouvel état stable). Ce modèle, hérité des travaux de Paul Larivaille, est un outil fondamental pour l''analyse et la production de récits à l''école primaire.',
  'Oublier la situation finale et ne compter que 4 étapes. La situation finale n''est pas un retour à la situation initiale : c''est un nouvel équilibre, souvent différent du premier.',
  'valide',
  'CRPE Français — Schéma narratif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — L''élément perturbateur
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-sn00-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'cpt_schema_narratif',
  'Le schéma narratif',
  'Facile',
  'vrai_faux',
  'L''élément perturbateur est toujours un événement négatif ou malheureux.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'L''élément perturbateur n''est pas nécessairement négatif. C''est tout événement qui vient rompre l''équilibre de la situation initiale et déclencher l''action. Il peut être positif : une rencontre amoureuse, un héritage inattendu, une découverte merveilleuse. L''essentiel est qu''il transforme la situation et lance la dynamique narrative. Au CRPE, évitez cette vision réductrice : « perturbateur » signifie « qui modifie l''équilibre », pas « qui crée un malheur ».',
  'Associer systématiquement « perturbateur » à « négatif ». Un héritage surprise, une rencontre heureuse ou une découverte peuvent aussi perturber l''équilibre initial.',
  'valide',
  'CRPE Français — Schéma narratif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Tri catégories — Identifier les étapes dans un conte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-sn00-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'cpt_schema_narratif',
  'Le schéma narratif',
  'Facile',
  'tri_categories',
  'Classez chaque extrait du Petit Chaperon rouge selon l''étape du schéma narratif qu''il représente.',
  NULL,
  '[{"id":"w1","label":"Il était une fois une petite fille qui vivait avec sa mère."},{"id":"w2","label":"Un jour, sa mère lui demanda d''apporter une galette à sa grand-mère."},{"id":"w3","label":"En chemin, elle rencontra le loup qui prit un raccourci."},{"id":"w4","label":"Le chasseur ouvrit le ventre du loup et délivra la grand-mère."},{"id":"w5","label":"Depuis ce jour, elle ne s''écarta plus jamais du chemin."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"si","label":"Situation initiale"},{"id":"ep","label":"Élément perturbateur"},{"id":"per","label":"Péripéties"},{"id":"res","label":"Résolution"},{"id":"sf","label":"Situation finale"}],"mapping":{"w1":"si","w2":"ep","w3":"per","w4":"res","w5":"sf"}}'::jsonb,
  'Situation initiale : présentation du cadre et des personnages (« il était une fois… »). Élément perturbateur : l''événement déclencheur qui rompt l''équilibre (la mère demande d''aller chez la grand-mère). Péripéties : les actions qui se succèdent (rencontre du loup). Résolution : l''action qui dénoue le problème (le chasseur intervient). Situation finale : le nouvel équilibre (elle ne s''écarte plus du chemin — elle a appris une leçon).',
  'Confondre l''élément perturbateur et les péripéties. L''élément perturbateur est l''événement DÉCLENCHEUR (la mission confiée). Les péripéties sont les CONSÉQUENCES de ce déclenchement (rencontre du loup, etc.).',
  'valide',
  'CRPE Français — Schéma narratif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — QCM — Application sur un texte court
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-sn00-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'cpt_schema_narratif',
  'Le schéma narratif',
  'Intermédiaire',
  'qcm',
  'Dans cet extrait, quel passage constitue l''élément perturbateur ?',
  'Thomas vivait paisiblement dans son village de montagne. Chaque matin, il conduisait ses chèvres au pâturage. Un soir d''orage, un rocher s''effondra et bloqua l''unique chemin menant à la vallée. Thomas dut alors chercher un passage inconnu à travers la forêt.',
  '[{"id":"a","label":"Thomas vivait paisiblement dans son village."},{"id":"b","label":"Chaque matin, il conduisait ses chèvres au pâturage."},{"id":"c","label":"Un soir d''orage, un rocher s''effondra et bloqua l''unique chemin."},{"id":"d","label":"Thomas dut alors chercher un passage inconnu."}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'L''élément perturbateur est l''effondrement du rocher : c''est l''événement inattendu qui rompt l''équilibre de la vie paisible de Thomas. Les deux premières phrases forment la situation initiale (cadre stable, habitudes). La recherche d''un passage inconnu fait partie des péripéties (conséquences de l''élément perturbateur). On repère souvent l''élément perturbateur grâce à un marqueur temporel de rupture : « un soir », « un jour », « soudain ».',
  'Confondre l''élément perturbateur avec la première péripétie. L''élément perturbateur est l''événement DÉCLENCHEUR (le rocher tombe), les péripéties sont les ACTIONS qui en découlent (chercher un passage).',
  'valide',
  'CRPE Français — Schéma narratif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — QCM — Schéma narratif vs schéma actanciel
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-sn00-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'cpt_schema_narratif',
  'Le schéma narratif',
  'Intermédiaire',
  'qcm',
  'Quelle est la différence principale entre le schéma narratif et le schéma actanciel ?',
  NULL,
  '[{"id":"a","label":"Le schéma narratif analyse la chronologie des événements ; le schéma actanciel analyse les rôles et forces en jeu dans le récit."},{"id":"b","label":"Le schéma narratif est pour les contes ; le schéma actanciel est pour les romans."},{"id":"c","label":"Le schéma narratif comporte 5 étapes ; le schéma actanciel en comporte 3."},{"id":"d","label":"Ils sont synonymes et désignent le même outil d''analyse."}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le schéma narratif (Larivaille) analyse la structure temporelle du récit : il suit le déroulement chronologique des événements en 5 étapes. Le schéma actanciel (Greimas) analyse les forces et les rôles dans le récit : sujet, objet, destinateur, destinataire, adjuvant, opposant. Ces deux outils sont complémentaires : le premier répond à « que se passe-t-il ? » (progression), le second à « qui fait quoi et pourquoi ? » (dynamique des forces). Les deux s''appliquent à tout type de récit.',
  'Croire que ces outils sont réservés à certains genres. Le schéma narratif et le schéma actanciel s''appliquent aussi bien aux contes, aux romans, aux nouvelles qu''aux récits de vie.',
  'valide',
  'CRPE Français — Schéma narratif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Réponse courte — Marqueur temporel de rupture
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-sn00-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'cpt_schema_narratif',
  'Le schéma narratif',
  'Intermédiaire',
  'reponse_courte',
  'Dans un récit, quel type de marqueur linguistique signale généralement le passage de la situation initiale à l''élément perturbateur ? (Expression en 2-3 mots attendue.)',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["marqueur temporel","connecteur temporel","indicateur temporel","un marqueur temporel","un connecteur temporel"]}'::jsonb,
  'Le passage à l''élément perturbateur est généralement signalé par un connecteur temporel de rupture : « un jour », « soudain », « tout à coup », « un matin », « mais voilà que ». Ce marqueur crée une rupture avec l''imparfait descriptif de la situation initiale et introduit souvent le passé simple (temps de l''action ponctuelle). Repérer ces marqueurs est une compétence clé pour l''analyse de texte narratif au CRPE et pour l''enseignement de la production d''écrit.',
  'Répondre « un connecteur logique ». Les connecteurs logiques (car, donc, cependant) structurent l''argumentation. Le passage à l''élément perturbateur est signalé par des connecteurs TEMPORELS de rupture.',
  'valide',
  'CRPE Français — Schéma narratif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Vrai/Faux — Situation finale ≠ situation initiale
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-sn00-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'cpt_schema_narratif',
  'Le schéma narratif',
  'Intermédiaire',
  'vrai_faux',
  'La situation finale d''un récit est toujours un retour exact à la situation initiale.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'La situation finale est un NOUVEL équilibre, généralement différent de la situation initiale. Le héros a évolué, appris quelque chose, gagné ou perdu. Dans Le Petit Chaperon rouge, la fillette insouciante du début est devenue prudente à la fin. Dans Cendrillon, la servante est devenue princesse. Ce décalage entre situation initiale et situation finale est porteur de sens : il révèle la transformation du personnage et la morale du récit.',
  'Croire que la situation finale est un simple retour à la normale. Si tel était le cas, l''histoire n''aurait rien changé et ne porterait aucun sens. La transformation est l''essence même du récit.',
  'valide',
  'CRPE Français — Schéma narratif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — QCM — Limites du modèle quinaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-sn00-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'cpt_schema_narratif',
  'Le schéma narratif',
  'Difficile',
  'qcm',
  'Quelle est une limite reconnue du schéma narratif quinaire comme outil d''analyse littéraire ?',
  NULL,
  '[{"id":"a","label":"Il ne s''applique qu''aux textes écrits en français."},{"id":"b","label":"Il impose une grille rigide qui ne rend pas compte des récits non linéaires, enchâssés ou à narrateurs multiples."},{"id":"c","label":"Il ne peut analyser que les contes de fées."},{"id":"d","label":"Il ne distingue pas situation initiale et situation finale."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le schéma quinaire est un modèle simplifié, très utile en didactique pour initier les élèves à la structure narrative, mais qui présente des limites face aux récits complexes : récits à flash-back (analepses), récits enchâssés (récit dans le récit), récits à fins ouvertes, récits polyphoniques (plusieurs narrateurs), ou récits modernes qui déconstruisent volontairement la linéarité. Au CRPE, montrer que vous connaissez les limites du modèle témoigne d''une maturité critique appréciée.',
  'Penser que le schéma narratif est un modèle universel et infaillible. C''est un outil pédagogique précieux mais limité, surtout face à la littérature contemporaine qui joue souvent avec les codes narratifs.',
  'valide',
  'CRPE Français — Schéma narratif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Terme technique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-sn00-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'cpt_schema_narratif',
  'Le schéma narratif',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on le modèle d''analyse narrative qui identifie 6 rôles (sujet, objet, destinateur, destinataire, adjuvant, opposant) plutôt que 5 étapes chronologiques ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["schéma actanciel","le schéma actanciel","schema actanciel","le schema actanciel","modèle actanciel"]}'::jsonb,
  'Le schéma actanciel, théorisé par A.J. Greimas (1966), identifie six « actants » (rôles fonctionnels) : le sujet (qui agit), l''objet (ce qu''il recherche), le destinateur (qui mandate la quête), le destinataire (qui en bénéficie), l''adjuvant (qui aide) et l''opposant (qui fait obstacle). Un même personnage peut remplir plusieurs rôles, et un rôle peut être tenu par un élément non humain (la tempête comme opposant). Complémentaire du schéma narratif, il enrichit l''analyse en se centrant sur les forces en jeu.',
  'Confondre « actant » et « personnage ». Un actant est un rôle fonctionnel, pas un personnage. Un personnage peut être à la fois adjuvant et opposant (comme le loup déguisé en grand-mère).',
  'valide',
  'CRPE Français — Schéma narratif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Tri catégories — Temps verbaux et schéma narratif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-sn00-0000-0000-0000-000000000010',
  'Francais',
  'comprehension_texte',
  'cpt_schema_narratif',
  'Le schéma narratif',
  'Difficile',
  'tri_categories',
  'Classez chaque caractéristique selon l''étape du schéma narratif à laquelle elle correspond typiquement.',
  NULL,
  '[{"id":"w1","label":"Emploi dominant de l''imparfait (description, habitudes)"},{"id":"w2","label":"Connecteur temporel de rupture (« soudain », « un jour »)"},{"id":"w3","label":"Succession de passés simples (actions ponctuelles)"},{"id":"w4","label":"Retour à l''imparfait ou au présent de vérité générale"},{"id":"w5","label":"Verbe au passé simple introduisant un changement brusque"},{"id":"w6","label":"Formule conclusive (« depuis ce jour », « désormais »)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"si","label":"Situation initiale"},{"id":"ep","label":"Élément perturbateur"},{"id":"per","label":"Péripéties"},{"id":"sf","label":"Situation finale"}],"mapping":{"w1":"si","w2":"ep","w3":"per","w4":"sf","w5":"ep","w6":"sf"}}'::jsonb,
  'La situation initiale utilise l''imparfait (description, état stable). L''élément perturbateur se signale par un connecteur de rupture (« un jour ») et un verbe au passé simple (action ponctuelle qui brise l''équilibre). Les péripéties enchaînent les passés simples (actions successives). La situation finale revient à l''imparfait ou au présent de vérité générale et utilise des formules conclusives (« depuis ce jour »). Cette corrélation temps verbaux / étapes narratives est un outil d''analyse puissant au CRPE.',
  'Ne pas voir le lien entre temps verbaux et structure narrative. L''alternance imparfait/passé simple n''est pas aléatoire : elle correspond aux différentes étapes du schéma narratif.',
  'valide',
  'CRPE Français — Schéma narratif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 6 : Analyser un texte argumentatif
-- Topic : cpt_texte_argumentatif
-- UUID prefix : cpt-arg0
-- 3 Facile, 3 Intermédiaire, 4 Difficile
-- Mix : 4 qcm, 2 vrai_faux, 2 reponse_courte, 2 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Thèse, argument, exemple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-arg0-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'cpt_texte_argumentatif',
  'Analyser un texte argumentatif',
  'Facile',
  'qcm',
  'Dans un texte argumentatif, qu''appelle-t-on la « thèse » ?',
  NULL,
  '[{"id":"a","label":"Un exemple concret qui illustre le propos."},{"id":"b","label":"L''idée principale défendue par l''auteur."},{"id":"c","label":"Un argument qui réfute l''adversaire."},{"id":"d","label":"La conclusion du texte."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La thèse est l''idée principale, l''opinion ou la position que l''auteur défend dans son texte. C''est la réponse qu''il apporte à la question débattue. Les arguments sont les raisons avancées pour soutenir cette thèse. Les exemples sont les faits concrets qui illustrent les arguments. Hiérarchie : thèse > arguments > exemples. Au CRPE, savoir repérer et formuler la thèse d''un texte argumentatif est une compétence fondamentale.',
  'Confondre thèse et argument. La thèse est l''opinion défendue (« Il faut protéger l''environnement »), l''argument est la raison qui la justifie (« car les ressources naturelles sont limitées »).',
  'valide',
  'CRPE Français — Texte argumentatif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Tri catégories — Thèse, argument, exemple
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-arg0-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'cpt_texte_argumentatif',
  'Analyser un texte argumentatif',
  'Facile',
  'tri_categories',
  'Classez chaque énoncé selon son rôle dans l''argumentation.',
  'La lecture est essentielle au développement de l''enfant. En effet, elle enrichit le vocabulaire et stimule l''imagination. Par exemple, une étude de 2019 montre que les enfants qui lisent 20 minutes par jour maîtrisent 1,8 million de mots de plus par an.',
  '[{"id":"w1","label":"La lecture est essentielle au développement de l''enfant."},{"id":"w2","label":"Elle enrichit le vocabulaire et stimule l''imagination."},{"id":"w3","label":"Une étude de 2019 montre que les enfants qui lisent 20 min/jour maîtrisent 1,8 million de mots de plus par an."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"these","label":"Thèse"},{"id":"arg","label":"Argument"},{"id":"ex","label":"Exemple"}],"mapping":{"w1":"these","w2":"arg","w3":"ex"}}'::jsonb,
  'La thèse (opinion défendue) : « La lecture est essentielle au développement de l''enfant » — c''est l''idée principale. L''argument (raison) : « elle enrichit le vocabulaire et stimule l''imagination » — c''est le POURQUOI, introduit par « en effet ». L''exemple (fait concret) : l''étude chiffrée — c''est la PREUVE concrète, introduite par « par exemple ». Repérer les connecteurs (« en effet », « par exemple ») aide à identifier ces trois niveaux.',
  'Confondre argument et exemple. L''argument est une raison générale (« elle enrichit le vocabulaire »), l''exemple est un fait précis et vérifiable (une étude, un chiffre, un cas particulier).',
  'valide',
  'CRPE Français — Texte argumentatif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Vrai/Faux — Convaincre vs persuader
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-arg0-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'cpt_texte_argumentatif',
  'Analyser un texte argumentatif',
  'Facile',
  'vrai_faux',
  'Convaincre et persuader sont deux démarches identiques.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'Convaincre fait appel à la raison du destinataire : on utilise des arguments logiques, des preuves, un raisonnement structuré. Persuader fait appel aux émotions, aux sentiments, à l''affectivité : on utilise des images frappantes, des appels à la pitié, à la peur, à l''admiration. Un même texte peut combiner les deux stratégies. Argumenter est le terme englobant : on argumente pour convaincre (raison) et/ou persuader (émotion). Cette distinction est un classique du CRPE.',
  'Utiliser « convaincre » et « persuader » comme synonymes. En analyse argumentative, ils désignent deux stratégies distinctes : logos (raison) vs pathos (émotion).',
  'valide',
  'CRPE Français — Texte argumentatif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — QCM — Les connecteurs argumentatifs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-arg0-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'cpt_texte_argumentatif',
  'Analyser un texte argumentatif',
  'Intermédiaire',
  'qcm',
  'Quel connecteur introduit typiquement une concession dans un texte argumentatif ?',
  NULL,
  '[{"id":"a","label":"En effet"},{"id":"b","label":"Par conséquent"},{"id":"c","label":"Certes… mais"},{"id":"d","label":"De plus"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'La structure « certes… mais » est le marqueur typique de la concession : on accorde un point à l''adversaire (« certes, la technologie a des avantages ») avant de le réfuter ou de le nuancer (« mais elle crée aussi des dépendances »). C''est une stratégie argumentative puissante car elle montre qu''on a considéré l''argument adverse. « En effet » introduit une justification, « par conséquent » une conséquence, « de plus » une addition. Connaître ces connecteurs est essentiel pour l''analyse de texte au CRPE.',
  'Confondre concession et opposition. La concession (certes… mais) admet d''abord le point de vue adverse avant de le dépasser. L''opposition simple (mais, cependant) confronte deux idées sans accorder de validité à l''une.',
  'valide',
  'CRPE Français — Texte argumentatif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Tri catégories — Types de connecteurs
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-arg0-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'cpt_texte_argumentatif',
  'Analyser un texte argumentatif',
  'Intermédiaire',
  'tri_categories',
  'Classez chaque connecteur selon sa fonction dans l''argumentation.',
  NULL,
  '[{"id":"w1","label":"en effet"},{"id":"w2","label":"cependant"},{"id":"w3","label":"par conséquent"},{"id":"w4","label":"car"},{"id":"w5","label":"néanmoins"},{"id":"w6","label":"donc"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"cause","label":"Cause / Justification"},{"id":"opp","label":"Opposition / Concession"},{"id":"cons","label":"Conséquence / Conclusion"}],"mapping":{"w1":"cause","w2":"opp","w3":"cons","w4":"cause","w5":"opp","w6":"cons"}}'::jsonb,
  'Cause/Justification : « en effet » (confirme ce qui précède), « car » (introduit la raison). Opposition/Concession : « cependant » et « néanmoins » (introduisent une restriction ou un point de vue contraire). Conséquence/Conclusion : « par conséquent » et « donc » (introduisent le résultat logique). Ces connecteurs structurent la progression argumentative et sont des indices précieux pour repérer la stratégie de l''auteur.',
  'Confondre « en effet » (cause : il confirme) et « en fait » (opposition : il rectifie). « En effet » justifie ce qui précède ; « en fait » le corrige ou le nuance.',
  'valide',
  'CRPE Français — Texte argumentatif',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — Réponse courte — Stratégie argumentative
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-arg0-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'cpt_texte_argumentatif',
  'Analyser un texte argumentatif',
  'Intermédiaire',
  'reponse_courte',
  'Comment appelle-t-on la stratégie argumentative qui consiste à détruire systématiquement les arguments de l''adversaire ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["réfutation","la réfutation","refutation","la refutation"]}'::jsonb,
  'La réfutation est la stratégie qui consiste à démontrer que les arguments de l''adversaire sont faux, insuffisants ou mal fondés. Elle s''oppose à la concession (qui accorde une part de vérité à l''adversaire) et à la démonstration directe (qui développe ses propres arguments sans aborder ceux de l''autre). Un texte argumentatif efficace combine souvent ces stratégies : concéder un point, puis réfuter les arguments principaux, tout en construisant sa propre démonstration.',
  'Confondre réfutation et concession. La réfutation DÉTRUIT l''argument adverse (« cet argument est faux parce que… »). La concession ADMET une part de vérité (« certes, on peut penser que… mais… »).',
  'valide',
  'CRPE Français — Texte argumentatif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Difficile — QCM — Types d''arguments
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-arg0-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'cpt_texte_argumentatif',
  'Analyser un texte argumentatif',
  'Difficile',
  'qcm',
  'Dans l''extrait suivant, quel type d''argument est utilisé ?',
  'Comme le rappelait Victor Hugo, « celui qui ouvre une porte d''école ferme une prison ». L''éducation est donc notre meilleur rempart contre la délinquance.',
  '[{"id":"a","label":"Argument par analogie"},{"id":"b","label":"Argument d''autorité"},{"id":"c","label":"Argument ad hominem"},{"id":"d","label":"Argument par l''absurde"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est un argument d''autorité : on cite une personnalité reconnue (Victor Hugo) pour renforcer la crédibilité du propos. L''argument d''autorité s''appuie sur le prestige, l''expertise ou la notoriété d''une personne. Attention : cet argument peut être fallacieux si l''autorité citée n''a aucune compétence dans le domaine concerné. L''argument par analogie compare deux situations similaires. L''argument ad hominem attaque la personne plutôt que ses idées. L''argument par l''absurde montre les conséquences absurdes de la thèse adverse.',
  'Confondre argument d''autorité et simple citation. Une citation ne devient argument d''autorité que si elle est utilisée POUR prouver quelque chose en s''appuyant sur la notoriété de son auteur.',
  'valide',
  'CRPE Français — Texte argumentatif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Vrai/Faux — Argument ad hominem
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-arg0-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'cpt_texte_argumentatif',
  'Analyser un texte argumentatif',
  'Difficile',
  'vrai_faux',
  'L''argument ad hominem est un argument valide car il permet de discréditer efficacement un adversaire.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'L''argument ad hominem (« contre la personne ») est considéré comme un sophisme, un raisonnement fallacieux. Il consiste à attaquer la personne de l''adversaire (son caractère, sa vie privée, ses contradictions personnelles) plutôt que ses idées ou ses arguments. Exemple : « Vous parlez d''écologie, mais vous prenez l''avion ! » — cela n''invalide pas les arguments écologiques en soi. Au CRPE, savoir identifier les arguments fallacieux est une compétence d''analyse critique attendue.',
  'Croire que discréditer une personne invalide ses arguments. La valeur d''un argument est indépendante de la personne qui le formule — c''est le principe de non-pertinence de l''ad hominem.',
  'valide',
  'CRPE Français — Texte argumentatif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Réponse courte — Concession
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-arg0-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'cpt_texte_argumentatif',
  'Analyser un texte argumentatif',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on la stratégie qui consiste à accorder une part de raison à l''adversaire avant de développer son propre point de vue (souvent avec « certes… mais ») ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["concession","la concession","une concession"]}'::jsonb,
  'La concession est une stratégie argumentative subtile : on reconnaît la validité partielle de l''argument adverse (« Certes, les écrans peuvent avoir des vertus pédagogiques… ») avant de le dépasser par un argument jugé plus fort (« …mais leur usage excessif nuit au développement cognitif des enfants »). La concession renforce la crédibilité de l''auteur en montrant qu''il ne refuse pas le dialogue. Elle est structurée par « certes… mais », « il est vrai que… cependant », « bien que… ».',
  'Confondre concession et contre-argument. La concession ADMET la validité partielle de l''argument adverse avant de le dépasser. Le contre-argument OPPOSE directement un argument contraire.',
  'valide',
  'CRPE Français — Texte argumentatif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — QCM — Argument par analogie vs argument d''autorité
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-arg0-0000-0000-0000-000000000010',
  'Francais',
  'comprehension_texte',
  'cpt_texte_argumentatif',
  'Analyser un texte argumentatif',
  'Difficile',
  'qcm',
  'Quel type d''argument est utilisé dans : « De même qu''un jardinier doit tailler les branches mortes pour que l''arbre prospère, un enseignant doit corriger les erreurs pour que l''élève progresse » ?',
  NULL,
  '[{"id":"a","label":"Argument d''autorité"},{"id":"b","label":"Argument par analogie"},{"id":"c","label":"Argument par l''absurde"},{"id":"d","label":"Argument de valeur"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est un argument par analogie : on établit un parallèle entre deux situations (jardinage et enseignement) pour faire comprendre et accepter une idée. Le connecteur « de même que… » signale explicitement la comparaison analogique. La force de cet argument repose sur la pertinence du parallèle : si les deux situations sont vraiment comparables, l''argument est efficace. Sa faiblesse : toute analogie a ses limites (un élève n''est pas un arbre). Au CRPE, savoir évaluer la pertinence d''une analogie est une compétence d''analyse critique.',
  'Confondre argument par analogie et comparaison stylistique. L''analogie argumentative vise à PROUVER quelque chose en s''appuyant sur une situation similaire. La comparaison stylistique vise à ILLUSTRER ou EMBELLIR.',
  'valide',
  'CRPE Français — Texte argumentatif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- ============================================================
-- SÉRIE 7 : Cohérence et cohésion textuelle
-- Topic : cpt_coherence_textuelle
-- UUID prefix : cpt-coh0
-- 3 Facile, 4 Intermédiaire, 3 Difficile
-- Mix : 3 qcm, 2 vrai_faux, 3 reponse_courte, 2 tri_categories
-- ============================================================

-- Q1 — Facile — QCM — Anaphore textuelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-coh0-0000-0000-0000-000000000001',
  'Francais',
  'comprehension_texte',
  'cpt_coherence_textuelle',
  'Cohérence et cohésion textuelle',
  'Facile',
  'qcm',
  'Dans « Marie entra dans la pièce. Elle posa son manteau sur la chaise », quel est le rôle du pronom « elle » ?',
  NULL,
  '[{"id":"a","label":"C''est un déictique qui désigne une personne présente."},{"id":"b","label":"C''est une anaphore textuelle qui reprend « Marie »."},{"id":"c","label":"C''est un pronom indéfini."},{"id":"d","label":"C''est une cataphore qui annonce un élément à venir."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Le pronom « elle » est une anaphore pronominale : il reprend un élément déjà mentionné dans le texte (son antécédent : « Marie »). L''anaphore textuelle est un mécanisme fondamental de cohésion : elle permet d''éviter les répétitions tout en maintenant la continuité référentielle. Ne pas confondre avec le déictique (qui renvoie au contexte d''énonciation : « je », « ici ») ni avec la cataphore (qui annonce un élément à venir : « Il était là, Pierre, assis dans l''ombre »).',
  'Confondre anaphore textuelle (reprise d''un référent déjà mentionné) et anaphore rhétorique (répétition en début de phrase/vers). Ce sont deux notions distinctes portant le même nom.',
  'valide',
  'CRPE Français — Cohérence textuelle',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — Vrai/Faux — Cohérence vs cohésion
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-coh0-0000-0000-0000-000000000002',
  'Francais',
  'comprehension_texte',
  'cpt_coherence_textuelle',
  'Cohérence et cohésion textuelle',
  'Facile',
  'vrai_faux',
  'La cohérence et la cohésion d''un texte sont deux notions synonymes.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"faux"}'::jsonb,
  'La cohérence concerne le sens global du texte : non-contradiction des informations, progression logique des idées, pertinence par rapport à la situation de communication. La cohésion concerne les liens linguistiques entre les phrases : connecteurs, anaphores, temps verbaux, ponctuation. Un texte peut être cohésif (bien lié formellement) sans être cohérent (les idées se contredisent). Et inversement. Au CRPE, cette distinction terminologique est fondamentale.',
  'Utiliser « cohérence » et « cohésion » de manière interchangeable. La cohérence est sémantique (le sens), la cohésion est linguistique (les outils de liaison).',
  'valide',
  'CRPE Français — Cohérence textuelle',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Facile — Tri catégories — Types d''anaphores textuelles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-coh0-0000-0000-0000-000000000003',
  'Francais',
  'comprehension_texte',
  'cpt_coherence_textuelle',
  'Cohérence et cohésion textuelle',
  'Facile',
  'tri_categories',
  'Classez chaque reprise anaphorique selon son type : anaphore pronominale ou anaphore nominale.',
  'Le loup sortit de la forêt. Il avait très faim. La bête féroce aperçut un village. Elle s''en approcha. L''animal sournois se faufila entre les maisons. Il guettait sa proie.',
  '[{"id":"w1","label":"Il (avait très faim)"},{"id":"w2","label":"La bête féroce"},{"id":"w3","label":"Elle"},{"id":"w4","label":"L''animal sournois"},{"id":"w5","label":"Il (guettait)"},{"id":"w6","label":"sa (proie)"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"pron","label":"Anaphore pronominale"},{"id":"nom","label":"Anaphore nominale"}],"mapping":{"w1":"pron","w2":"nom","w3":"pron","w4":"nom","w5":"pron","w6":"pron"}}'::jsonb,
  'Les anaphores pronominales reprennent l''antécédent par un pronom (« il », « elle », « sa ») : elles assurent la continuité sans enrichir l''information. Les anaphores nominales reprennent l''antécédent par un groupe nominal (« la bête féroce », « l''animal sournois ») : elles ajoutent une caractérisation et enrichissent la représentation du référent. En production d''écrit, varier les types d''anaphores est un critère de qualité textuelle.',
  'Oublier que « sa » (proie) est aussi une anaphore pronominale : le déterminant possessif renvoie au loup et contribue à la chaîne anaphorique.',
  'valide',
  'CRPE Français — Cohérence textuelle',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Intermédiaire — QCM — Progression thématique
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-coh0-0000-0000-0000-000000000004',
  'Francais',
  'comprehension_texte',
  'cpt_coherence_textuelle',
  'Cohérence et cohésion textuelle',
  'Intermédiaire',
  'qcm',
  'Quel type de progression thématique est utilisé dans cet extrait ?',
  'Paris est la capitale de la France. Paris compte plus de 2 millions d''habitants. Paris est traversée par la Seine. Paris abrite de nombreux musées.',
  '[{"id":"a","label":"Progression linéaire (le propos de chaque phrase devient le thème de la suivante)."},{"id":"b","label":"Progression à thème constant (le même thème est repris dans chaque phrase)."},{"id":"c","label":"Progression éclatée (les thèmes se succèdent sans lien apparent)."},{"id":"d","label":"Progression à thèmes dérivés (les thèmes dérivent d''un hyperthème)."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'C''est une progression à thème constant : le même thème (« Paris ») est repris en tête de chaque phrase, avec un propos différent à chaque fois (capitale, habitants, Seine, musées). Ce type de progression est fréquent dans les textes descriptifs et informatifs. La progression linéaire (le propos P1 devient le thème de P2) est plus dynamique et fréquente dans les récits. La progression à thèmes dérivés part d''un hyperthème dont découlent les thèmes successifs.',
  'Confondre thème constant et simple répétition. La progression à thème constant reprend le même SUJET de discours, pas nécessairement le même mot. On pourrait remplacer « Paris » par « elle », « la capitale », « la Ville lumière » sans changer le type de progression.',
  'valide',
  'CRPE Français — Cohérence textuelle',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Intermédiaire — Réponse courte — Progression linéaire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-coh0-0000-0000-0000-000000000005',
  'Francais',
  'comprehension_texte',
  'cpt_coherence_textuelle',
  'Cohérence et cohésion textuelle',
  'Intermédiaire',
  'reponse_courte',
  'Comment appelle-t-on le type de progression thématique où le propos (rhème) d''une phrase devient le thème de la phrase suivante, créant un effet d''enchaînement ?',
  'Exemple : « Le chat attrapa une souris. Cette souris était grise. Le gris rappelait la couleur du ciel. »',
  NULL,
  '{"mode":"text","acceptableAnswers":["progression linéaire","linéaire","la progression linéaire","progression lineaire"]}'::jsonb,
  'La progression linéaire (ou progression à thème linéaire) est celle où le rhème (propos, information nouvelle) de la phrase 1 devient le thème (sujet de discours) de la phrase 2 : chat → souris → grise → ciel. C''est la progression la plus dynamique, qui fait avancer l''information. Elle est fréquente dans les récits et les explications causales (A provoque B, B entraîne C). Combéttes (1983) a théorisé ces trois types de progression thématique devenus classiques en linguistique textuelle.',
  'Confondre progression linéaire et progression à thème constant. Dans la progression linéaire, le thème CHANGE à chaque phrase (il reprend le rhème précédent). Dans la progression à thème constant, le thème RESTE le même.',
  'valide',
  'CRPE Français — Cohérence textuelle',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermédiaire — QCM — Connecteurs logiques et temporels
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-coh0-0000-0000-0000-000000000006',
  'Francais',
  'comprehension_texte',
  'cpt_coherence_textuelle',
  'Cohérence et cohésion textuelle',
  'Intermédiaire',
  'qcm',
  'Quel est le rôle principal des connecteurs dans un texte ?',
  NULL,
  '[{"id":"a","label":"Enrichir le vocabulaire du texte."},{"id":"b","label":"Assurer la cohésion en explicitant les relations logiques et temporelles entre les phrases."},{"id":"c","label":"Remplacer la ponctuation."},{"id":"d","label":"Marquer le registre de langue soutenu."}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les connecteurs (aussi appelés mots de liaison ou organisateurs textuels) assurent la cohésion du texte en explicitant les relations entre les phrases et les paragraphes. Ils peuvent être temporels (d''abord, ensuite, enfin), logiques (car, donc, cependant, en revanche), spatiaux (ici, là-bas, au-delà). Sans connecteurs, le lecteur doit inférer les relations entre les idées, ce qui rend le texte moins accessible. Au CRPE, l''emploi des connecteurs est un critère d''évaluation majeur en production d''écrit.',
  'Croire que les connecteurs sont facultatifs ou purement décoratifs. Ils sont structurants : leur absence ou leur mauvais emploi compromet la compréhension du texte.',
  'valide',
  'CRPE Français — Cohérence textuelle',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Intermédiaire — Vrai/Faux — Non-contradiction
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-coh0-0000-0000-0000-000000000007',
  'Francais',
  'comprehension_texte',
  'cpt_coherence_textuelle',
  'Cohérence et cohésion textuelle',
  'Intermédiaire',
  'vrai_faux',
  'La règle de non-contradiction stipule qu''un texte ne doit jamais contenir deux informations qui se contredisent.',
  NULL,
  '[{"id":"vrai","label":"Vrai"},{"id":"faux","label":"Faux"}]'::jsonb,
  '{"mode":"single_choice","value":"vrai"}'::jsonb,
  'La règle de non-contradiction est l''une des quatre métarègles de cohérence textuelle identifiées par Michel Charolles (1978) : 1) répétition (reprises anaphoriques), 2) progression (apport d''information nouvelle), 3) non-contradiction (pas d''information contradictoire), 4) relation (lien avec le monde représenté). Si un texte dit « Pierre est célibataire » puis « la femme de Pierre entra », il y a contradiction et rupture de cohérence. Au CRPE, ces quatre règles constituent le cadre théorique de l''analyse textuelle.',
  'Penser que la non-contradiction interdit tout retournement de situation. Dans un récit, un personnage peut changer de statut (célibataire puis marié), mais cela doit être explicitement marqué comme une transformation, pas présenté comme simultanément vrai.',
  'valide',
  'CRPE Français — Cohérence textuelle',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Difficile — Réponse courte — Anaphore conceptuelle
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-coh0-0000-0000-0000-000000000008',
  'Francais',
  'comprehension_texte',
  'cpt_coherence_textuelle',
  'Cohérence et cohésion textuelle',
  'Difficile',
  'reponse_courte',
  'Dans « L''usine a licencié 200 ouvriers. Cette catastrophe sociale a provoqué la colère des syndicats », comment appelle-t-on l''anaphore « cette catastrophe sociale » qui résume et réinterprète le contenu de la phrase précédente ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["anaphore conceptuelle","une anaphore conceptuelle","anaphore résomptive","une anaphore résomptive"]}'::jsonb,
  'L''anaphore conceptuelle (aussi appelée résomptive) reprend non pas un mot spécifique mais le contenu global d''une phrase ou d''un passage, en le résumant sous une nouvelle dénomination. « Cette catastrophe sociale » résume et réinterprète « L''usine a licencié 200 ouvriers ». Ce type d''anaphore est puissant car il permet de condenser l''information ET d''orienter l''interprétation du lecteur (le choix de « catastrophe » n''est pas neutre). C''est un outil rhétorique et textuel de haut niveau.',
  'Classer cette reprise comme simple anaphore nominale. L''anaphore conceptuelle va plus loin : elle ne reprend pas un mot mais un CONTENU PROPOSITIONNEL entier, qu''elle reformule et réinterprète.',
  'valide',
  'CRPE Français — Cohérence textuelle',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Difficile — Tri catégories — Métarègles de Charolles
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-coh0-0000-0000-0000-000000000009',
  'Francais',
  'comprehension_texte',
  'cpt_coherence_textuelle',
  'Cohérence et cohésion textuelle',
  'Difficile',
  'tri_categories',
  'Classez chaque problème de texte selon la métarègle de cohérence de Charolles qu''il enfreint.',
  NULL,
  '[{"id":"w1","label":"Le texte ne reprend aucun élément d''une phrase à l''autre (aucune anaphore, aucun connecteur)."},{"id":"w2","label":"Le texte dit que Pierre est à Paris puis, sans explication, qu''il est à Tokyo au même moment."},{"id":"w3","label":"Chaque phrase répète la même information sans rien apporter de nouveau."},{"id":"w4","label":"Le texte parle de cuisine puis brusquement d''astrophysique sans lien logique."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"rep","label":"Règle de répétition (reprises insuffisantes)"},{"id":"nc","label":"Règle de non-contradiction"},{"id":"prog","label":"Règle de progression (pas d''information nouvelle)"},{"id":"rel","label":"Règle de relation (pas de lien entre les contenus)"}],"mapping":{"w1":"rep","w2":"nc","w3":"prog","w4":"rel"}}'::jsonb,
  'Les quatre métarègles de cohérence textuelle de Charolles (1978) : 1) RÉPÉTITION : le texte doit contenir des reprises (anaphores, connecteurs) pour assurer la continuité. 2) NON-CONTRADICTION : aucune information ne doit en contredire une autre. 3) PROGRESSION : chaque phrase doit apporter une information nouvelle. 4) RELATION : les contenus doivent être reliés entre eux et au monde représenté. Ces règles constituent le cadre d''évaluation de la cohérence textuelle au CRPE.',
  'Oublier la règle de progression : un texte qui répète la même chose sans avancer est incohérent, même s''il ne contient aucune contradiction. La répétition sans progression est un défaut majeur.',
  'valide',
  'CRPE Français — Cohérence textuelle',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Difficile — Réponse courte — Progression à thèmes dérivés
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'cpt-coh0-0000-0000-0000-000000000010',
  'Francais',
  'comprehension_texte',
  'cpt_coherence_textuelle',
  'Cohérence et cohésion textuelle',
  'Difficile',
  'reponse_courte',
  'Comment appelle-t-on le type de progression thématique où un thème général (hyperthème) est décliné en sous-thèmes successifs ?',
  'Exemple : « Le corps humain est une machine complexe. Le cœur pompe le sang. Les poumons assurent la respiration. Le cerveau coordonne l''ensemble. »',
  NULL,
  '{"mode":"text","acceptableAnswers":["progression à thèmes dérivés","progression éclatée","à thèmes dérivés","thèmes dérivés","progression a themes derives"]}'::jsonb,
  'La progression à thèmes dérivés (parfois appelée « éclatée ») part d''un hyperthème (« le corps humain ») dont dérivent les thèmes successifs (cœur, poumons, cerveau). Chaque phrase développe un aspect particulier de l''hyperthème. C''est la progression typique des textes descriptifs (description d''un lieu, d''un personnage) et des textes explicatifs (présentation des parties d''un tout). Elle complète les deux autres types : progression à thème constant et progression linéaire.',
  'Confondre progression à thèmes dérivés et progression à thème constant. Dans la progression à thème constant, c''est le MÊME thème qui revient. Dans la progression à thèmes dérivés, les thèmes CHANGENT mais dérivent tous d''un hyperthème commun.',
  'valide',
  'CRPE Français — Cohérence textuelle',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
