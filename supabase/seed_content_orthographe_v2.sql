-- CRPE Français — Orthographe V2 (5 séries × 10 questions)
insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- =============================================================
-- SÉRIE 46 — Homophones lexicaux courants (Facile / free)
-- =============================================================

(
  '46000000-0000-0000-0000-000000000001',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'qcm',
  'Choisissez la bonne orthographe : « Je vais ___ marché. »',
  null,
  '[{"id":"a","label":"a"},{"id":"b","label":"à"},{"id":"c","label":"as"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La préposition « à » (avec accent) indique un lieu ou une direction et est invariable. On la distingue du verbe « a » (avoir) en essayant de la remplacer par « avait » : si la substitution fonctionne, c''est le verbe ; sinon, c''est la préposition. Ici, « Je vais avait marché » est impossible, donc on écrit bien « à ». Ce test de remplacement est la méthode infaillible pour ne plus confondre ces deux homophones.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000002',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'qcm',
  'Choisissez la bonne orthographe : « Il ___ mangé toute la tarte. »',
  null,
  '[{"id":"a","label":"a"},{"id":"b","label":"à"},{"id":"c","label":"as"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Le verbe « a » est la troisième personne du singulier du présent de l''indicatif du verbe « avoir ». On peut le remplacer par « avait » (« Il avait mangé »), ce qui confirme qu''il s''agit bien d''un verbe et non de la préposition « à ». La préposition « à » (avec accent grave) ne peut jamais être remplacée par une forme conjuguée. Ce test de substitution est la méthode recommandée pour distinguer ces homophones à l''écrit.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000003',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'vrai_faux',
  'Vrai ou faux ? Dans la phrase « Tu sais ou il habite ? », l''orthographe de « ou » est correcte.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Il faut écrire « où » (avec accent grave) lorsqu''il s''agit d''un adverbe de lieu ou d''un pronom relatif. Le test consiste à remplacer « ou » par « ou bien » : si la phrase reste cohérente, on écrit sans accent ; sinon, on met l''accent. Ici, « Tu sais ou bien il habite ? » est incohérent, donc on doit écrire « où ». L''accent grave est ici indispensable pour marquer la valeur locative du mot.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000004',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'qcm',
  'Choisissez la bonne orthographe : « ___ livre est sur la table. »',
  null,
  '[{"id":"a","label":"Ce"},{"id":"b","label":"Se"},{"id":"c","label":"Cet"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Ce » est un déterminant démonstratif qui s''accorde avec le nom masculin singulier « livre ». On distingue « ce » (déterminant ou pronom) de « se » (pronom réfléchi) : « se » introduit toujours un verbe pronominal (se laver, se dire). Ici, « se » serait suivi d''un verbe, pas d''un nom, donc la bonne forme est « ce ». La forme « cet » s''emploie devant un nom masculin commençant par une voyelle ou un h muet.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000005',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'vrai_faux',
  'Vrai ou faux ? Dans « Les élèves sont attentifs », le mot « sont » peut être remplacé par « étaient ».',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  '« Sont » est la troisième personne du pluriel du présent du verbe « être » et peut effectivement être remplacé par « étaient » (imparfait). Ce test de substitution permet de distinguer « sont » (verbe être) de « son » (déterminant possessif). Quand on peut remplacer par « étaient », on écrit « sont » ; quand on peut remplacer par « mon » ou « ton », on écrit « son ». Ici, « Les élèves étaient attentifs » fonctionne parfaitement, confirmant l''orthographe « sont ».',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000006',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'qcm',
  'Choisissez la bonne orthographe : « ___ frère chante bien. »',
  null,
  '[{"id":"a","label":"Son"},{"id":"b","label":"Sont"},{"id":"c","label":"Sond"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Son » est un déterminant possessif (singulier, troisième personne) qui s''emploie devant un nom. On le distingue de « sont » (verbe être) en essayant de le remplacer par « étaient » : « étaient frère » est impossible, donc il s''agit bien du déterminant possessif « son ». On peut aussi le remplacer par « mon » ou « ton » pour confirmer : « Mon frère chante bien » fonctionne. Ces substitutions sont les outils clés pour éviter la confusion.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000007',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'vrai_faux',
  'Vrai ou faux ? Dans « Il est parti », le mot « est » peut être remplacé par « était ».',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  '« Est » est la troisième personne du singulier du présent du verbe « être » et peut être remplacé par « était » (imparfait). Ce test permet de le distinguer de la conjonction « et » : on ne peut jamais remplacer « et » par « était ». Dans « Il était parti », la phrase reste grammaticalement correcte, confirmant qu''il s''agit bien du verbe « être ». La conjonction « et » relie deux éléments de même nature et ne correspond à aucune forme verbale.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000008',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'qcm',
  'Choisissez la bonne orthographe : « Je viendrai en juin ___ juillet. »',
  null,
  '[{"id":"a","label":"et"},{"id":"b","label":"est"},{"id":"c","label":"ai"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'La conjonction de coordination « et » relie ici deux noms de mois (juin et juillet). On la distingue du verbe « est » en essayant de remplacer par « était » : « je viendrai en juin était juillet » est impossible. La conjonction « et » est invariable et ne peut jamais être une forme verbale. Attention également à ne pas la confondre avec « ai » (première personne du singulier du présent de l''indicatif d''avoir), qui ne peut apparaître qu''en tant que verbe.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000009',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'qcm',
  'Choisissez la bonne orthographe : « Je ne ___ pas te suivre. »',
  null,
  '[{"id":"a","label":"peu"},{"id":"b","label":"peux"},{"id":"c","label":"peut"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Peux » est la première (ou deuxième) personne du singulier du présent du verbe « pouvoir ». On distingue ces trois homophones ainsi : « peut » (troisième personne : il peut), « peux » (première ou deuxième personne : je peux, tu peux), « peu » (adverbe de quantité, invariable, remplaçable par « un petit peu »). Ici, le sujet est « je », donc on utilise « peux ». Ce type de question est fréquent au CRPE et repose sur l''identification de la personne grammaticale.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000010',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'vrai_faux',
  'Vrai ou faux ? « Leurs » prend un « s » dans la phrase : « Elles ont rangé leurs affaires. »',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  '« Leurs » est ici un déterminant possessif pluriel qui s''accorde avec le nom « affaires », qui est au pluriel. La règle est simple : « leur » prend un « s » quand il est déterminant possessif devant un nom pluriel. Quand « leur » est un pronom personnel (COI), il reste invariable : « Je leur ai parlé ». Le test consiste à remplacer par « son/ses » : « leurs affaires » → « ses affaires » (pluriel), confirmant que le pluriel est requis. Cette distinction est un classique du CRPE.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

-- =============================================================
-- SÉRIE 47 — Accord des adjectifs de couleur (Intermédiaire / free)
-- =============================================================

(
  '47000000-0000-0000-0000-000000000001',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans « des robes oranges », l''adjectif « orange » s''accorde correctement.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Les adjectifs de couleur issus d''un nom commun (orange, marron, crème, saumon, etc.) sont en principe invariables selon la règle traditionnelle. Ainsi, on écrit « des robes orange » sans s. Cependant, les rectifications orthographiques de 1990 ont assoupli cette règle : « orange » et « rose » peuvent désormais s''accorder. Dans un contexte CRPE, la règle traditionnelle invariable reste la référence attendue. Il est important de connaître les deux positions pour argumenter.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000002',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte selon la règle traditionnelle ?',
  null,
  '[{"id":"a","label":"des yeux marrons"},{"id":"b","label":"des yeux marron"},{"id":"c","label":"des yeux marons"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Marron » est un adjectif de couleur issu d''un nom commun (le marron, fruit du châtaignier). Selon la règle traditionnelle, les adjectifs de couleur dérivés d''un nom sont invariables : on écrit donc « des yeux marron » sans s. Cette règle s''applique aussi à châtaigne, saumon, crème, kaki, tabac, etc. Seuls les adjectifs de couleur simples non issus de noms s''accordent normalement : bleu, rouge, vert, noir, blanc, gris, etc.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000003',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte ?',
  null,
  '[{"id":"a","label":"des murs bleu clair"},{"id":"b","label":"des murs bleus clairs"},{"id":"c","label":"des murs bleus clair"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Lorsqu''un adjectif de couleur est composé de deux mots (bleu clair, vert foncé, rouge vif…), il est invariable, quelle que soit la nature des composants. On écrit donc « des murs bleu clair » sans accord. Cette règle vaut pour toutes les nuances composées : vert pomme, bleu marine, jaune paille, gris anthracite, etc. C''est une règle absolue que les candidats au CRPE doivent maîtriser parfaitement.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000004',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans « des chaussures roses », l''adjectif « roses » s''accorde correctement selon la règle traditionnelle.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Selon la règle traditionnelle, « rose » est un adjectif de couleur dérivé du nom « la rose » (fleur), donc il serait invariable : « des chaussures rose ». Toutefois, les rectifications de 1990 autorisent l''accord de « rose » et « orange » en genre et en nombre. Cette ambiguïté est un piège classique : au CRPE, il convient de connaître la règle traditionnelle (invariable) et de mentionner l''assouplissement de 1990. Dans la plupart des manuels scolaires actuels, « rose » s''accorde.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000005',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'qcm',
  'Quelle forme est correcte selon la règle traditionnelle ?',
  null,
  '[{"id":"a","label":"des voitures mauves"},{"id":"b","label":"des voitures mauve"},{"id":"c","label":"des voitures mauves ou mauve"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Mauve » est un adjectif de couleur qui, contrairement à « marron » ou « orange », est considéré comme un adjectif qualificatif à part entière et non comme un nom employé adjectivement. Il s''accorde donc normalement en genre et en nombre. De même, « fauve », « pourpre », « écarlate », « vermeil » et « châtain » s''accordent. La distinction à retenir : les vrais adjectifs de couleur s''accordent, les noms utilisés comme adjectifs de couleur (marron, orange, crème…) sont invariables.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000006',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? L''adjectif « châtain » s''accorde : on peut écrire « des cheveux châtains ».',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  '« Châtain » est traditionnellement considéré comme un adjectif qualificatif qui s''accorde : « des cheveux châtains ». Son féminin est « châtaine » (des mèches châtaines), bien que certains grammairiens le considèrent invariable au féminin dans l''usage courant. L''Académie française admet les deux formes au féminin. Pour le pluriel masculin, « châtains » est la forme attendue. Ce cas illustre les variations que l''usage introduit et que le CRPE peut tester.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000007',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte ?',
  null,
  '[{"id":"a","label":"des écharpes bleu marine"},{"id":"b","label":"des écharpes bleues marines"},{"id":"c","label":"des écharpes bleu marines"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Bleu marine » est un adjectif de couleur composé (adjectif + nom). Tous les adjectifs de couleur composés sont invariables, quels que soient les éléments qui les constituent. On écrit donc « des écharpes bleu marine » sans aucun accord. Cette règle s''applique uniformément à : vert bouteille, rouge bordeaux, bleu nuit, gris perle, jaune canari, etc. C''est l''une des règles les plus régulièrement testées dans les exercices d''orthographe du CRPE.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000008',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? « Pourpre » est un adjectif de couleur invariable car il est issu d''un nom.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  '« Pourpre », malgré son origine nominale (la pourpre, teinture), est considéré par l''usage et les grammairiens comme un adjectif qualificatif qui s''accorde : « des tentures pourpres ». Il appartient à la même catégorie qu''« écarlate » et « fauve », qui s''accordent également. Cette situation illustre que la règle des adjectifs de couleur issus de noms a des exceptions notables. Pour le CRPE, il est important de mémoriser ces cas particuliers : pourpre, fauve, écarlate, mauve, rose (selon la norme retenue) s''accordent.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000009',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte ?',
  null,
  '[{"id":"a","label":"des nappes crème"},{"id":"b","label":"des nappes crèmes"},{"id":"c","label":"des nappes créme"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Crème » est un adjectif de couleur issu du nom « la crème » ; selon la règle traditionnelle, il est invariable. On écrit donc « des nappes crème » sans accord. Attention à ne pas confondre avec « crémeux » (adjectif variable qui s''accorde normalement). Dans la liste des adjectifs de couleur invariables issus de noms, on trouve également : saumon, kaki, tabac, rouille, ivoire, caramel, chocolat. Tous restent sans marque de genre ou de nombre.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000010',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans « des pulls verts foncés », l''accord est incorrect.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Lorsqu''un adjectif de couleur est suivi d''un qualificatif (foncé, clair, vif, pâle…), l''ensemble forme un adjectif composé invariable. Il faut écrire « des pulls vert foncé » sans aucune marque d''accord. La règle est la même que pour les adjectifs composés de deux mots de couleur différents (bleu-vert, gris-bleu). L''accord des deux éléments constituerait une faute. Cette règle est souvent source d''erreurs même chez des adultes cultivés, ce qui la rend particulièrement pertinente pour le CRPE.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

-- =============================================================
-- SÉRIE 48 — Pluriel des noms composés (Intermédiaire / premium)
-- =============================================================

(
  '48000000-0000-0000-0000-000000000001',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte au pluriel de « timbre-poste » ?',
  null,
  '[{"id":"a","label":"timbres-postes"},{"id":"b","label":"timbres-poste"},{"id":"c","label":"timbre-postes"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « timbre-poste », le premier élément « timbre » est un nom et le second « poste » est aussi un nom mais employé comme complément déterminatif (poste = service postal). Dans ce type de composition (nom + nom complément), seul le premier nom s''accorde. On écrit donc « timbres-poste » : « timbres » au pluriel, « poste » invariable. D''autres exemples similaires : des chefs-d''œuvre (le premier nom s''accorde), des arcs-en-ciel. La règle varie selon la structure grammaticale du composé.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '48000000-0000-0000-0000-000000000002',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le pluriel de « porte-monnaie » est « porte-monnaies ».',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  '« Porte-monnaie » est un nom composé formé d''un verbe (porter) et d''un nom (monnaie) complément d''objet direct. Dans ce type de composé (verbe + COD), le verbe est invariable et le nom reste également invariable (car on porte toujours de la monnaie, pas des monnaies). On écrit donc « des porte-monnaie » sans s. Cette règle s''applique aussi à : porte-clés (invariable selon certaines éditions), ouvre-boîte(s), coupe-papier. Il y a parfois des variations admises selon les dictionnaires.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '48000000-0000-0000-0000-000000000003',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte au pluriel de « grand-mère » ?',
  null,
  '[{"id":"a","label":"grands-mères"},{"id":"b","label":"grand-mères"},{"id":"c","label":"grande-mères"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « grand-mère », « grand » est un adjectif et « mère » est un nom. Selon la règle, dans un composé adjectif + nom, les deux éléments s''accordent en nombre : « des grands-mères » serait logique. Cependant, l''usage consacré par l''Académie est « grand-mères » avec « grand » invariable, car historiquement « grand » était une forme unique pour les deux genres en vieux français. Les rectifications de 1990 admettent « grands-mères » mais la graphie « grand-mères » reste dominante dans les dictionnaires.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '48000000-0000-0000-0000-000000000004',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? « Des après-midi » est la seule forme correcte au pluriel.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  '« Après-midi » peut s''écrire aussi bien « des après-midi » qu''« des après-midis » ; les deux formes sont admises par les dictionnaires. Ce nom composé formé d''une préposition et d''un nom a un statut particulier : le nom « midi » peut rester invariable ou prendre un s au pluriel. Le Petit Robert et le Larousse admettent les deux graphies. C''est un exemple typique de la tolérance orthographique en français, dont il faut avoir connaissance pour le CRPE.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '48000000-0000-0000-0000-000000000005',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte au pluriel de « arc-en-ciel » ?',
  null,
  '[{"id":"a","label":"arcs-en-ciels"},{"id":"b","label":"arcs-en-ciel"},{"id":"c","label":"arc-en-ciels"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « arc-en-ciel », le composé est formé de « arc » (nom) + « en » (préposition) + « ciel » (nom). Seul le premier nom (arc) prend la marque du pluriel, car « en ciel » est un groupe prépositionnel invariable. On écrit donc « des arcs-en-ciel ». De même, « des chefs-d''œuvre » ou « des tête-à-tête » suivent des logiques similaires. L''analyse grammaticale des éléments constituants est la clé pour orthographier correctement le pluriel des noms composés.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '48000000-0000-0000-0000-000000000006',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le pluriel de « week-end » est « week-ends ».',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  '« Week-end » est un emprunt à l''anglais composé de deux noms (week = semaine, end = fin). Dans les emprunts composés, la tendance du français est d''appliquer la marque du pluriel sur le dernier élément ou sur l''ensemble. « Des week-ends » avec s final est la forme recommandée par les dictionnaires français. C''est différent des noms composés français où l''analyse grammaticale prime. Pour les anglicismes, la forme avec s au pluriel est généralement acceptée et recommandée.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '48000000-0000-0000-0000-000000000007',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte au pluriel de « long-courrier » ?',
  null,
  '[{"id":"a","label":"long-courriers"},{"id":"b","label":"longs-courriers"},{"id":"c","label":"longs-courrier"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Long-courrier » est formé d''un adjectif (long) et d''un nom (courrier). Lorsqu''un nom composé est formé d''un adjectif et d''un nom, les deux éléments s''accordent en nombre : « des longs-courriers ». C''est la règle générale pour adjectif + nom : les deux prennent les marques habituelles (genre et nombre). Par exemple : des beaux-arts, des basses-cours, des coffres-forts. L''analyse de la nature grammaticale de chaque composant est essentielle pour appliquer la règle correctement.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '48000000-0000-0000-0000-000000000008',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans « des garde-fous », les deux éléments s''accordent au pluriel.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  '« Garde-fou » est un nom composé de verbe (garder) + nom (fou, au sens de protégé). Seul le nom « fou » peut prendre la marque du pluriel, le verbe « garde » reste invariable. On écrit donc « des garde-fous » avec seulement le s sur « fous ». Cette structure verbe + nom est très fréquente : garde-côte(s), garde-robe(s), passe-partout (invariable car « partout » est un adverbe). La nature grammaticale du second élément détermine s''il prend ou non un s au pluriel.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '48000000-0000-0000-0000-000000000009',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte au pluriel de « chef-d''œuvre » ?',
  null,
  '[{"id":"a","label":"chefs-d''œuvres"},{"id":"b","label":"chefs-d''œuvre"},{"id":"c","label":"chef-d''œuvres"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « chef-d''œuvre », « chef » est un nom et « œuvre » est un nom précédé de la préposition « de ». Le groupe prépositionnel « d''œuvre » est invariable ; seul le premier nom « chef » prend la marque du pluriel : « des chefs-d''œuvre ». Cette structure est identique à « arc-en-ciel » : seul le premier nom s''accorde. Ne pas ajouter de s à « œuvre » est une erreur fréquente. La compréhension de la structure grammaticale interne du composé est indispensable.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '48000000-0000-0000-0000-000000000010',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le pluriel de « un couvre-lit » est « des couvre-lits ».',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  '« Couvre-lit » est formé du verbe « couvrir » (couvre) et du nom « lit ». Le verbe est invariable ; le nom « lit » peut prendre la marque du pluriel car on recouvre des lits (pluriel sémantiquement logique). On admet donc « des couvre-lits ». Cette règle contraste avec « porte-monnaie » où « monnaie » reste invariable car on ne porte pas « des monnaies » mais de la monnaie (indénombrable). La logique sémantique joue donc un rôle dans l''accord de ces composés.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

-- =============================================================
-- SÉRIE 49 — Rectifications orthographiques de 1990 (Avancé / premium)
-- =============================================================

(
  '49000000-0000-0000-0000-000000000001',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'qcm',
  'Selon les rectifications de 1990, quelle graphie est recommandée ?',
  null,
  '[{"id":"a","label":"événement"},{"id":"b","label":"évènement"},{"id":"c","label":"évenement"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les rectifications de 1990 recommandent d''écrire « évènement » avec un accent grave (è), alignant ainsi la graphie sur la prononciation réelle [ɛvɛnmɑ̃] et sur le modèle de « règlement » ou « sèchement ». L''ancienne graphie « événement » (avec accent aigu sur le deuxième é) reste admise dans les dictionnaires, mais la forme rectifiée « évènement » est la graphie officiellement recommandée. Pour le CRPE, connaître cette rectification est attendu.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '49000000-0000-0000-0000-000000000002',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Selon les rectifications de 1990, l''accent circonflexe sur le « i » et le « u » est toujours obligatoire.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Les rectifications de 1990 rendent facultatif l''accent circonflexe sur le « i » et le « u » dans la plupart des mots (sauf pour éviter des ambiguïtés). Ainsi, on peut écrire « cout » pour « coût », « bruler » pour « brûler », « ile » pour « île ». Cependant, l''accent reste obligatoire pour distinguer des homophones : « dû » (participe passé de devoir) vs « du » (article), « sûr » (certain) vs « sur » (préposition), « jeûne » vs « jeune ». Ces exceptions sont cruciales à mémoriser.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '49000000-0000-0000-0000-000000000003',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'qcm',
  'Selon les rectifications de 1990, comment s''écrit « vingt et un » dans les nombres composés ?',
  null,
  '[{"id":"a","label":"vingt-et-un"},{"id":"b","label":"vingt et un"},{"id":"c","label":"vingt-et un"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Les rectifications de 1990 recommandent de lier par des traits d''union tous les numéraux composés, y compris ceux comportant « et » : « vingt-et-un », « trente-et-un », « quarante-et-un », etc. Avant 1990, le trait d''union était absent quand « et » était présent. Cette nouvelle règle simplifie et uniformise l''écriture des nombres. Elle s''applique à tous les numéraux composés inférieurs à cent et au-delà : « deux-cent-vingt-et-un ». C''est l''une des rectifications les plus connues et les plus testées.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '49000000-0000-0000-0000-000000000004',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Selon les rectifications de 1990, « il la laisse tomber » s''écrit avec le participe passé de « laisser » invariable.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'L''une des rectifications de 1990 les plus importantes concerne le participe passé de « laisser » suivi d''un infinitif : il devient invariable, sur le modèle du participe passé de « faire ». On écrit donc « elle s''est laissé tomber » (et non « laissée »), « je les ai laissé partir » (et non « laissés »). Cette règle simplifie considérablement l''accord et aligne « laisser + infinitif » sur « faire + infinitif » (invariable depuis longtemps). C''est une réforme attendue au CRPE niveau avancé.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '49000000-0000-0000-0000-000000000005',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'qcm',
  'Selon les rectifications de 1990, quelle graphie est recommandée pour le mot désignant un appareil photo ?',
  null,
  '[{"id":"a","label":"appareils-photos"},{"id":"b","label":"appareils photos"},{"id":"c","label":"appareils photo"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Selon la règle traditionnelle, « appareil photo » s''écrit sans trait d''union et « photo » reste invariable (nom apposé). Les rectifications de 1990 ne modifient pas directement ce cas, mais recommandent d''éviter les traits d''union superflus dans certains composés. L''Académie française et les dictionnaires courants recommandent « des appareils photo » avec « photo » invariable (apposition). Cette forme illustre la règle générale des noms en apposition : ils ne prennent pas la marque du pluriel.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '49000000-0000-0000-0000-000000000006',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Les rectifications de 1990 recommandent d''écrire « nénuphar » plutôt que « nénufar ».',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'C''est l''inverse : les rectifications de 1990 recommandent « nénufar » (avec f) plutôt que « nénuphar » (avec ph), en s''alignant sur l''étymologie arabe du mot (nīnūfar). Cette recommandation vise à simplifier la graphie et à la rapprocher de la phonétique réelle. De même, « clé » est recommandé plutôt que « clef », « ognon » plutôt qu'' « oignon », « nénufar » plutôt que « nénuphar ». Ces nouvelles graphies coexistent avec les anciennes, qui restent acceptées.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '49000000-0000-0000-0000-000000000007',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'qcm',
  'Selon les rectifications de 1990, comment s''écrit le mot désignant ce qu''on doit (somme d''argent) ?',
  null,
  '[{"id":"a","label":"dû"},{"id":"b","label":"du"},{"id":"c","label":"dû ou du selon le contexte"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Les rectifications de 1990 rendent l''accent circonflexe facultatif sur î et û, mais prévoient une exception importante pour les cas d''homonymie. « Dû » (participe passé de devoir au masculin singulier) conserve son accent pour ne pas être confondu avec « du » (article contracté). Ainsi, la réponse c est la plus précise : « dû » avec accent est maintenu pour l''article participial masculin singulier, mais l''accent est facultatif dans d''autres contextes où il n''y a pas d''ambiguïté. La connaissance de ces exceptions est exigée au CRPE.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '49000000-0000-0000-0000-000000000008',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Les rectifications de 1990 ont été rendues obligatoires dans tous les manuels scolaires français dès 1991.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Les rectifications orthographiques de 1990 ont été publiées au Journal officiel mais n''ont jamais été rendues obligatoires. Elles constituent des recommandations, et les deux graphies (ancienne et nouvelle) sont considérées comme correctes. Ce n''est qu''en 2016 que les nouveaux programmes officiels de l''Éducation nationale ont recommandé l''enseignement de ces nouvelles graphies dans les manuels scolaires, sans toutefois rendre les anciennes formes incorrectes. Il est essentiel pour un futur professeur des écoles de connaître ce statut particulier.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '49000000-0000-0000-0000-000000000009',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'qcm',
  'Selon les rectifications de 1990, quelle graphie est recommandée pour le légume alliacé ?',
  null,
  '[{"id":"a","label":"oignon"},{"id":"b","label":"ognon"},{"id":"c","label":"ongnon"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les rectifications de 1990 recommandent « ognon » (sans i) plutôt que « oignon », afin de simplifier la graphie et de la rapprocher de la prononciation réelle : le i de « oignon » ne se prononce pas. Cette recommandation suit la logique générale de supprimer les lettres muettes non étymologiquement justifiées. Cependant, « oignon » reste une graphie correcte et acceptée. Un futur professeur des écoles doit être capable d''expliquer aux élèves que ces deux formes coexistent légitimement dans l''usage actuel.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '49000000-0000-0000-0000-000000000010',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'vrai_faux',
  'Vrai ou faux ? Selon les rectifications de 1990, « il s''est laissée convaincre » est correct si le sujet est féminin.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Selon les rectifications de 1990, le participe passé de « laisser » suivi d''un infinitif est désormais invariable, quel que soit le genre du sujet. On écrit donc « elle s''est laissé convaincre » (et non « laissée »). Cette règle aligne « laisser + infinitif » sur « faire + infinitif » (invariable) : « elle s''est fait coiffer ». Avant 1990, l''accord était exigé quand le sujet du laisser était aussi le sujet de l''infinitif. La réforme simplifie l''analyse et supprime une difficulté récurrente.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

-- =============================================================
-- SÉRIE 50 — Accents, majuscules et traits d'union (Intermédiaire / free)
-- =============================================================

(
  '50000000-0000-0000-0000-000000000001',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? En français, les majuscules ne prennent pas d''accent.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Cette idée reçue est fausse : les majuscules doivent porter les accents en français. Les règles typographiques françaises officielles et les recommandations de l''Académie française indiquent clairement que les majuscules s''accentuent : É, È, Ê, À, Î, Ô, Û, etc. On écrit donc « État », « Île-de-France », « Époque », « Été ». L''absence d''accent sur les majuscules est tolérée uniquement pour des raisons techniques historiques (machines à écrire), mais ne constitue pas la norme.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000002',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte pour désigner la région administrative ?',
  null,
  '[{"id":"a","label":"ile-de-france"},{"id":"b","label":"Île-de-France"},{"id":"c","label":"Ile de France"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour les noms géographiques composés, la règle française est d''accentuer la majuscule initiale et de lier les éléments par des traits d''union. On écrit donc « Île-de-France » avec l''accent circonflexe sur le I majuscule et des traits d''union entre tous les composants. Cette règle s''applique à tous les noms de régions, villes et lieux composés : Aix-en-Provence, Clermont-Ferrand, Basse-Normandie. L''oubli de l''accent sur la majuscule ou des traits d''union constitue une faute d''orthographe.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000003',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte ?',
  null,
  '[{"id":"a","label":"arc en ciel"},{"id":"b","label":"arc-en-ciel"},{"id":"c","label":"arc-en ciel"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Arc-en-ciel » est un nom composé dont tous les éléments sont liés par des traits d''union. La règle générale veut que les noms composés soudés par des traits d''union forment une unité lexicale : chaque élément est relié. Cette règle s''applique uniformément à l''expression : arc + en + ciel = arc-en-ciel. Au pluriel, on écrira « des arcs-en-ciel » (seul « arc » s''accorde). Les traits d''union sont obligatoires et leur omission constitue une faute caractérisée.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000004',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? On doit écrire « vice-président » avec un trait d''union.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Les mots composés avec le préfixe « vice- » s''écrivent toujours avec un trait d''union : vice-président, vice-recteur, vice-consul, vice-amiral. Ce trait d''union est obligatoire et ne peut pas être supprimé. Il en va de même pour d''autres préfixes formant des composés : sous-directeur, arrière-pensée, avant-garde, demi-heure. On distingue ces cas des préfixes soudés (anticonstitutionnel, infrarouge, ultraviolet) qui ne prennent pas de trait d''union. La maîtrise de cette distinction est attendue au CRPE.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000005',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte dans « Elle a rendu ___ copie » (la copie jointe) ?',
  null,
  '[{"id":"a","label":"ci-joint"},{"id":"b","label":"ci joint"},{"id":"c","label":"cijointe"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Ci-joint » s''écrit toujours avec un trait d''union quand il est placé avant le nom (emploi adverbial) et reste invariable dans ce cas. Mais attention : quand « ci-joint » est placé après le nom ou le pronom, il s''accorde comme un adjectif : « Veuillez trouver ci-jointes les pièces demandées ». Dans notre exemple, « ci-joint » précède implicitement la notion de copie rendue avec le devoir, et la forme adverbiale invariable avec trait d''union est attendue. Cette alternance est un classique des exercices d''orthographe.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000006',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Le mot « État » (institution politique) s''écrit avec une majuscule et un accent sur le E.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  'Le mot « État » prend une majuscule quand il désigne l''institution politique ou la puissance souveraine (l''État français, les affaires de l''État), par opposition à « état » minuscule qui désigne une situation ou condition (être en bon état, l''état des lieux). La majuscule porte un accent aigu : É. Cette distinction majuscule/minuscule avec sens différent est fréquente en français : Église / église, Académie / académie, Parlement / parlement. La maîtrise de ces usages est attendue d''un professeur des écoles.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000007',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte pour l''adverbe signifiant « également » ?',
  null,
  '[{"id":"a","label":"aussi"},{"id":"b","label":"ausi"},{"id":"c","label":"aussi-tôt"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Aussi » est un adverbe simple qui s''écrit sans trait d''union. Il ne faut pas le confondre avec « aussitôt » (adverbe de temps signifiant « immédiatement ») qui lui s''écrit en un seul mot. La graphie « ausi » est simplement incorrecte (doublement du s manquant). Les adverbes composés avec un trait d''union sont rares et leur liste est fixe : peut-être, vis-à-vis, c''est-à-dire. La bonne orthographe des adverbes courants relève des bases attendues au CRPE.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000008',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? « Peut-être » s''écrit obligatoirement avec un trait d''union.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  '« Peut-être » est un adverbe composé qui s''écrit toujours avec un trait d''union. Il est formé de la troisième personne du singulier de « pouvoir » et du verbe « être » à l''infinitif. Sans trait d''union, « peut être » serait analysé comme « il peut être » (verbe modal + infinitif). Le trait d''union est donc fonctionnel : il crée une unité lexicale adverbiale. D''autres locutions similaires : c''est-à-dire, vis-à-vis, face-à-face. Ces locutions figées avec trait d''union sont à mémoriser.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000009',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte pour le pronom interrogatif ?',
  null,
  '[{"id":"a","label":"ou est-il ?"},{"id":"b","label":"où est-il ?"},{"id":"c","label":"Ou est-il ?"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Où » pronom interrogatif ou adverbe de lieu s''écrit toujours avec un accent grave. Il se distingue ainsi de « ou » (conjonction de coordination exprimant l''alternative). La règle mnémotechnique : si on peut remplacer par « ou bien », on écrit sans accent ; sinon, on écrit avec accent. « Ou bien est-il ? » n''a pas de sens, donc on écrit « où ». L''accent grave sur « où » est une marque distinctive essentielle que les élèves apprennent dès le cycle 2, et que tout professeur des écoles doit maîtriser parfaitement.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000010',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans « des hommes d''État », le mot « État » prend une majuscule.',
  null,
  null,
  '{"mode":"boolean","value":true}'::jsonb,
  '« Hommes d''État » désigne des personnes qui exercent des fonctions gouvernementales au plus haut niveau : « État » est ici l''institution politique souveraine et prend donc la majuscule avec accent (État). Si l''on parlait de l''état physique ou moral d''une personne, on écrirait « état » avec une minuscule. Cette alternance majuscule/minuscule en fonction du sens est un phénomène récurrent en français : le même mot peut avoir un sens technique ou institutionnel (majuscule) et un sens commun (minuscule). C''est un point important de l''orthographe lexicale.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
);
