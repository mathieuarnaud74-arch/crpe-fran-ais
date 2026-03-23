-- ============================================================
-- Migration : Série Lexique — Polysémie et sens des mots en contexte
-- UUID prefix : e402
-- 10 exercices : qcm (4), tri_categories (3), reponse_courte (3)
-- Chaque exercice s''appuie sur des phrases ou textes montrant un même mot
-- utilisé avec des sens différents
-- ============================================================

-- Q1 — Facile — qcm — Le mot « glace »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa180000-0000-0000-0000-000000000001',
  'Francais',
  'lexique',
  'lexique_sens_contexte',
  'Polysémie et sens des mots en contexte',
  'Facile',
  'qcm',
  'Dans quel sens le mot « glace » est-il employé dans cet extrait ?',
  '« Elle s''approcha de la glace et examina longuement son visage fatigué. Les cernes sous ses yeux lui donnaient un air malade. Elle soupira et détourna le regard. » — D''après Maupassant, Une vie',
  '[{"id":"a","label":"Sens propre : eau solidifiée par le froid"},{"id":"b","label":"Sens courant : dessert glacé sucré"},{"id":"c","label":"Sens figuré : froideur, indifférence"},{"id":"d","label":"Sens spécialisé : miroir, surface réfléchissante"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Dans ce contexte, « la glace » désigne un miroir — une surface réfléchissante dans laquelle le personnage observe son reflet. C''est un sens spécialisé (ou acception secondaire) du mot « glace ». Les indices contextuels sont « s''approcha », « examina son visage » et « détourna le regard », qui décrivent tous l''action de se regarder. Le mot « glace » est polysémique : il possède plusieurs sens (eau gelée, miroir, dessert, froideur…) que seul le contexte permet de distinguer.',
  'Confondre sens propre et sens spécialisé : le sens propre de « glace » est « eau solidifiée par le froid ». Le sens « miroir » est un sens dérivé par analogie (la surface lisse et brillante de la glace reflète comme un miroir).',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q2 — Facile — qcm — Le mot « tableau »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa180000-0000-0000-0000-000000000002',
  'Francais',
  'lexique',
  'lexique_sens_contexte',
  'Polysémie et sens des mots en contexte',
  'Facile',
  'qcm',
  'Dans quel sens le mot « tableau » est-il employé dans cet extrait ?',
  '« Le soleil couchant embrasait la vallée. Les champs dorés, les toits rouges des fermes, le clocher de l''église se détachant sur un ciel de feu… Quel tableau magnifique s''offrait à nos yeux ! » — D''après Alphonse Daudet, Lettres de mon moulin',
  '[{"id":"a","label":"Sens propre : œuvre picturale encadrée, toile peinte"},{"id":"b","label":"Sens figuré : spectacle visuel, scène digne d''être peinte"},{"id":"c","label":"Sens technique : surface d''écriture dans une salle de classe"},{"id":"d","label":"Sens spécialisé : présentation organisée de données en lignes et colonnes"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Ici, « tableau » est employé au sens figuré : il désigne un spectacle visuel si beau qu''il évoque une peinture. Les indices contextuels sont l''accumulation descriptive (« champs dorés, toits rouges, clocher ») et l''exclamation admirative « Quel tableau magnifique ! ». Le glissement du sens propre (toile peinte) au sens figuré (scène remarquable) repose sur une analogie : ce paysage est si beau qu''on dirait un tableau de peintre.',
  'On pourrait choisir le sens propre (« œuvre picturale ») puisque le texte décrit un paysage. Mais ici, il n''y a pas de toile réelle : le mot « tableau » désigne métaphoriquement la scène observée. L''expression « s''offrait à nos yeux » confirme qu''il s''agit d''un spectacle réel, non d''une peinture.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q3 — Intermediaire — qcm — Le mot « opération »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa180000-0000-0000-0000-000000000003',
  'Francais',
  'lexique',
  'lexique_sens_contexte',
  'Polysémie et sens des mots en contexte',
  'Intermediaire',
  'qcm',
  'Le mot « opération » a un sens différent dans chacune de ces deux phrases. Identifiez les deux sens utilisés.',
  'Phrase A : « L''opération a duré trois heures, mais le chirurgien est confiant : le patient se rétablira vite. »\nPhrase B : « Les élèves de CM2 doivent maîtriser les quatre opérations avant l''entrée en sixième. »',
  '[{"id":"a","label":"A : sens médical (intervention chirurgicale) / B : sens mathématique (calcul)"},{"id":"b","label":"A : sens militaire (manœuvre) / B : sens commercial (transaction)"},{"id":"c","label":"A : sens mathématique (calcul) / B : sens médical (intervention)"},{"id":"d","label":"A : sens courant (action) / B : sens militaire (manœuvre)"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le mot « opération » est fortement polysémique. En phrase A, les indices « chirurgien », « patient », « se rétablira » orientent vers le sens médical (intervention chirurgicale). En phrase B, « CM2 », « quatre opérations » et « sixième » orientent vers le sens mathématique (addition, soustraction, multiplication, division). C''est un excellent exemple pour travailler la polysémie en classe : un même mot, des contextes radicalement différents. En didactique, on parle de désambiguïsation contextuelle.',
  'Penser que le sens « courant » d''opération est toujours le sens médical. En réalité, le sens premier (étymologique) est « action, travail » (du latin operatio). Les sens médical, mathématique et militaire sont tous des spécialisations de ce sens originel.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q4 — Avancé — qcm — Le mot « note » dans un texte littéraire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa180000-0000-0000-0000-000000000004',
  'Francais',
  'lexique',
  'lexique_sens_contexte',
  'Polysémie et sens des mots en contexte',
  'Avance',
  'qcm',
  'Dans cet extrait, le mot « note » est utilisé à deux reprises avec des sens différents. Identifiez ces deux acceptions.',
  '« Il griffonna une note rapide sur un bout de papier — le nom de l''hôtel, l''heure du rendez-vous — puis glissa le billet dans sa poche. Dehors, un violoniste jouait une mélodie dont chaque note semblait suspendue dans l''air du soir, vibrante et fragile comme un fil d''or. » — D''après Stefan Zweig, Lettre d''une inconnue (adapté)',
  '[{"id":"a","label":"1re occurrence : annotation écrite / 2e occurrence : son musical"},{"id":"b","label":"1re occurrence : évaluation scolaire / 2e occurrence : son musical"},{"id":"c","label":"1re occurrence : annotation écrite / 2e occurrence : facture à payer"},{"id":"d","label":"1re occurrence : évaluation scolaire / 2e occurrence : annotation écrite"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La première « note » (« griffonna une note rapide ») désigne un message écrit bref — une annotation, un aide-mémoire. Les indices sont « griffonna », « bout de papier », « billet ». La seconde « note » (« chaque note semblait suspendue ») désigne un son musical. Les indices sont « violoniste », « mélodie », « vibrante ». Le mot « note » possède au moins cinq acceptions courantes : son musical, annotation, évaluation scolaire, facture, nuance (« une note de couleur »). Le contexte est le seul outil de désambiguïsation.',
  'Confondre les acceptions en s''appuyant uniquement sur le sens le plus familier (souvent le sens scolaire : « la note de l''examen »). En contexte littéraire, le sens musical et le sens d''annotation sont bien plus fréquents.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q5 — Facile — tri_categories — Le mot « pied » : classer par sens
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa180000-0000-0000-0000-000000000005',
  'Francais',
  'lexique',
  'lexique_sens_contexte',
  'Polysémie et sens des mots en contexte',
  'Facile',
  'tri_categories',
  'Le mot « pied » est polysémique. Classez chaque phrase selon le sens dans lequel il est employé.',
  'Le mot « pied » possède de nombreux sens. Lisez chaque phrase attentivement et identifiez si « pied » désigne une partie du corps, la base d''un objet ou une unité de mesure poétique.',
  '[{"id":"tc19q1w1","label":"Elle s''est tordu le pied en descendant l''escalier."},{"id":"tc19q1w2","label":"Le pied de la lampe est en marbre blanc."},{"id":"tc19q1w3","label":"Ce vers de Racine compte exactement douze pieds."},{"id":"tc19q1w4","label":"Il marchait pieds nus sur le sable chaud."},{"id":"tc19q1w5","label":"Au pied de la montagne, un village dormait."},{"id":"tc19q1w6","label":"L''alexandrin est un vers de douze pieds."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"corps","label":"Partie du corps"},{"id":"base","label":"Base / partie inférieure"},{"id":"poesie","label":"Unité de mesure en poésie"}],"mapping":{"tc19q1w1":"corps","tc19q1w2":"base","tc19q1w3":"poesie","tc19q1w4":"corps","tc19q1w5":"base","tc19q1w6":"poesie"}}'::jsonb,
  'Le mot « pied » a un sens propre (partie du corps humain) et plusieurs sens dérivés par analogie. Le « pied de la lampe » et le « pied de la montagne » désignent la partie inférieure, la base — par analogie avec le pied humain qui est la partie la plus basse du corps. Le « pied » en poésie est une unité de mesure rythmique (en réalité, on devrait parler de « syllabe » en français, le terme « pied » étant emprunté à la métrique latine). Ce mot est un excellent support pour travailler la polysémie en classe de cycle 3.',
  'En versification française, le terme exact est « syllabe » et non « pied » (le pied appartient à la métrique gréco-latine). Cependant, l''usage courant et les programmes du CRPE acceptent le terme « pied » pour désigner la syllabe métrique.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q6 — Intermediaire — tri_categories — Le mot « air » : classer par sens
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa180000-0000-0000-0000-000000000006',
  'Francais',
  'lexique',
  'lexique_sens_contexte',
  'Polysémie et sens des mots en contexte',
  'Intermediaire',
  'tri_categories',
  'Le mot « air » change de sens selon le contexte. Classez chaque phrase selon l''acception utilisée.',
  'Le mot « air » est polysémique. Identifiez s''il désigne le mélange gazeux que l''on respire, une mélodie/musique, ou une apparence/expression du visage.',
  '[{"id":"tc19q2w1","label":"L''air de la montagne lui fit le plus grand bien."},{"id":"tc19q2w2","label":"Elle fredonnait un air de Mozart en préparant le dîner."},{"id":"tc19q2w3","label":"Il avait l''air triste depuis le départ de son ami."},{"id":"tc19q2w4","label":"Ouvrez la fenêtre, il faut renouveler l''air de la pièce."},{"id":"tc19q2w5","label":"Cet air joyeux résonnait dans toute la salle de concert."},{"id":"tc19q2w6","label":"Elle avait un air mystérieux qui intriguait tout le monde."},{"id":"tc19q2w7","label":"Les oiseaux fendaient l''air avec une grâce infinie."},{"id":"tc19q2w8","label":"Le joueur de flûte entama un air mélancolique."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"gaz","label":"Gaz / atmosphère"},{"id":"musique","label":"Mélodie / morceau musical"},{"id":"apparence","label":"Apparence / expression"}],"mapping":{"tc19q2w1":"gaz","tc19q2w2":"musique","tc19q2w3":"apparence","tc19q2w4":"gaz","tc19q2w5":"musique","tc19q2w6":"apparence","tc19q2w7":"gaz","tc19q2w8":"musique"}}'::jsonb,
  'Le mot « air » possède trois grandes familles de sens. Le sens physique (gaz atmosphérique) : « l''air de la montagne », « renouveler l''air », « fendaient l''air ». Le sens musical (mélodie) : « un air de Mozart », « air joyeux », « air mélancolique ». Le sens d''apparence (aspect, expression) : « l''air triste », « un air mystérieux ». Ces trois sens ont des origines étymologiques distinctes : le sens atmosphérique vient du latin aer (grec aêr), le sens musical vient de l''italien aria, et le sens d''apparence vient du latin area (surface, d''où « mine, apparence »).',
  'L''expression « avoir l''air + adjectif » pose un problème d''accord classique au CRPE : si le sujet est féminin, on peut écrire « elle a l''air triste » (l''adjectif s''accorde avec « air ») ou « elle a l''air triste » (accord avec le sujet). Les deux sont acceptés.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q7 — Avancé — tri_categories — Le mot « coup » : sens multiples
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa180000-0000-0000-0000-000000000007',
  'Francais',
  'lexique',
  'lexique_sens_contexte',
  'Polysémie et sens des mots en contexte',
  'Avance',
  'tri_categories',
  'Le mot « coup » entre dans de nombreuses expressions. Classez chaque phrase selon que « coup » désigne un choc physique, une action soudaine ou une quantité/fois.',
  'Le mot « coup » est l''un des plus polysémiques du français. Analysez le contexte de chaque phrase pour déterminer le sens précis.',
  '[{"id":"tc19q3w1","label":"Il a reçu un coup de poing sur l''épaule."},{"id":"tc19q3w2","label":"D''un seul coup, la lumière s''éteignit dans toute la maison."},{"id":"tc19q3w3","label":"Boire un coup entre amis après le travail."},{"id":"tc19q3w4","label":"Le coup de tonnerre fit trembler les vitres."},{"id":"tc19q3w5","label":"Il a réussi du premier coup, sans hésiter."},{"id":"tc19q3w6","label":"Le coup de téléphone le réveilla en sursaut."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"choc","label":"Choc physique / impact"},{"id":"action","label":"Action soudaine / événement brusque"},{"id":"quantite","label":"Quantité / fois / occurrence"}],"mapping":{"tc19q3w1":"choc","tc19q3w2":"action","tc19q3w3":"quantite","tc19q3w4":"choc","tc19q3w5":"quantite","tc19q3w6":"action"}}'::jsonb,
  'Le mot « coup » (du latin colpus, puis colaphus) a un sens premier de choc physique (« coup de poing », « coup de tonnerre » = impact sonore). Par extension, il désigne une action soudaine (« d''un seul coup » = soudainement, « coup de téléphone » = appel). Il sert aussi à compter les occurrences (« du premier coup » = à la première tentative, « boire un coup » = boire une fois). En didactique, le travail sur les expressions figées contenant « coup » est recommandé au cycle 3 pour enrichir le vocabulaire.',
  'Certaines expressions sont ambiguës : « coup de tonnerre » pourrait sembler être une « action soudaine », mais il désigne bien un impact sonore (le tonnerre frappe). Le critère est : y a-t-il un choc, un impact physique ou sonore ? Si oui, c''est le sens de choc.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 — Facile — reponse_courte — Synonyme de « volume » en contexte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa180000-0000-0000-0000-000000000008',
  'Francais',
  'lexique',
  'lexique_sens_contexte',
  'Polysémie et sens des mots en contexte',
  'Intermediaire',
  'reponse_courte',
  'Par quel synonyme pourrait-on remplacer le mot « volume » dans ce contexte précis ? Donnez un seul mot.',
  '« La bibliothèque de mon grand-père contenait des centaines de volumes reliés en cuir, rangés du sol au plafond. Il les avait collectionnés toute sa vie, rapportant de chaque voyage un nouveau volume qu''il ajoutait à sa collection. » — D''après Anatole France, Le Crime de Sylvestre Bonnard',
  NULL,
  '{"mode":"text","acceptableAnswers":["livre","ouvrage","tome","bouquin"]}'::jsonb,
  'Dans ce contexte, « volume » désigne un livre — un ouvrage relié. Les indices sont « bibliothèque », « reliés en cuir », « rangés », « collection ». Le mot « volume » vient du latin volumen (rouleau de papyrus). Son sens premier est donc « livre, ouvrage ». Les autres sens (volume sonore, volume spatial, volume d''un solide en géométrie) sont des extensions par analogie. Les synonymes acceptables sont : livre, ouvrage, tome, bouquin (familier).',
  'Ne pas proposer « quantité » ou « espace » qui correspondent à d''autres acceptions du mot « volume » (volume d''un récipient, volume sonore). Le contexte de la bibliothèque oriente clairement vers le sens de « livre ».',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 — Intermediaire — reponse_courte — Synonyme de « courant » en contexte
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa180000-0000-0000-0000-000000000009',
  'Francais',
  'lexique',
  'lexique_sens_contexte',
  'Polysémie et sens des mots en contexte',
  'Intermediaire',
  'reponse_courte',
  'Par quel synonyme pourrait-on remplacer le mot « courant » dans ce contexte précis ? Donnez un seul mot.',
  '« Le nageur, épuisé, luttait contre le courant qui l''entraînait vers le large. Ses bras battaient l''eau avec de moins en moins de force, tandis que le courant, implacable, le tirait toujours plus loin de la rive. » — D''après Victor Hugo, Les Travailleurs de la mer (adapté)',
  NULL,
  '{"mode":"text","acceptableAnswers":["flux","flot","coulee","torrent","remous"]}'::jsonb,
  'Dans ce contexte, « courant » désigne le mouvement de l''eau dans une direction — le flux, le flot. Les indices sont « nageur », « entraînait vers le large », « battaient l''eau », « tirait loin de la rive ». Le mot « courant » est polysémique : courant électrique (sens technique), courant d''air (mouvement d''air), être au courant (être informé), langage courant (registre de langue ordinaire), le mois courant (en cours). Chaque acception nécessite un synonyme différent.',
  'Ne pas proposer « habituel » ou « ordinaire » qui correspondent au sens adjectival de « courant » (« un mot courant »). Ici, « courant » est un nom désignant le mouvement de l''eau.',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 — Avancé — reponse_courte — Synonyme de « terre » en contexte littéraire
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fa180000-0000-0000-0000-00000000000a',
  'Francais',
  'lexique',
  'lexique_sens_contexte',
  'Polysémie et sens des mots en contexte',
  'Avance',
  'reponse_courte',
  'Par quel synonyme pourrait-on remplacer le mot « terre » dans ce contexte précis ? Donnez un seul mot.',
  '« Après vingt ans passés sur les mers lointaines, le vieux marin ne rêvait plus que de retrouver sa terre. Il imaginait les collines vertes, le clocher du village, l''odeur du foin coupé. Sa terre natale l''appelait comme un chant qu''on n''oublie jamais. » — D''après Pierre Loti, Pêcheur d''Islande (adapté)',
  NULL,
  '{"mode":"text","acceptableAnswers":["patrie","pays","region","contrée","homeland"]}'::jsonb,
  'Dans ce contexte, « terre » désigne la patrie, le pays natal — le lieu d''origine auquel on est attaché affectivement. Les indices sont « vieux marin » (loin de chez lui), « retrouver sa terre » (idée de retour), « collines vertes, clocher du village » (paysage familier), « terre natale ». Le mot « terre » est extrêmement polysémique : la planète Terre, le sol (matière), un terrain agricole, la terre ferme (opposée à la mer), la patrie. La substitution par un synonyme est l''un des meilleurs outils didactiques pour faire comprendre la polysémie aux élèves de cycle 3.',
  'Ne pas proposer « sol » ou « terrain » qui correspondent au sens concret/agricole de « terre ». Le contexte nostalgique (le marin loin de chez lui, les souvenirs d''enfance) oriente vers le sens de « patrie, pays natal ».',
  'valide',
  'CRPE Français — Lexique interactif',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
