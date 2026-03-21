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
-- Correct answer distribution: Q1→b, Q2→a, Q4→a, Q6→a, Q8→d, Q9→b
-- (vrai_faux: Q3, Q5, Q7, Q10 — skipped)

(
  '46000000-0000-0000-0000-000000000001',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'qcm',
  'Choisissez la bonne orthographe : « Je vais ___ marché. »',
  null,
  '[{"id":"a","label":"a"},{"id":"b","label":"à"},{"id":"c","label":"as"},{"id":"d","label":"ah"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'La préposition « à » (avec accent) indique un lieu ou une direction. Pour ne plus te tromper, teste avec « avait » : si ça fonctionne, c''est le verbe ; sinon, c''est la préposition. « Je vais avait marché » — impossible ! Donc on écrit bien « à ». Ce test de remplacement, c''est ton meilleur ami pour distinguer ces deux homophones.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000002',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'qcm',
  'Choisissez la bonne orthographe : « Il ___ mangé toute la tarte. »',
  null,
  '[{"id":"a","label":"a"},{"id":"b","label":"à"},{"id":"c","label":"as"},{"id":"d","label":"â"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« A » est la 3e personne du singulier du verbe avoir. Teste avec « avait » : « Il avait mangé toute la tarte » — ça fonctionne ! Donc c''est le verbe, on écrit sans accent. La préposition « à » (avec accent) ne peut jamais être remplacée par une forme conjuguée. Un seul test, et tu ne confonds plus jamais !',
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
  'Faux ! Il faut écrire « où » avec accent grave. Le test : remplace par « ou bien ». « Tu sais ou bien il habite ? » — ça ne tient pas ! Donc on met l''accent. « Ou » sans accent = « ou bien » (alternative). « Où » avec accent = lieu ou pronom relatif. Ce test du « ou bien » ne rate jamais !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000004',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'qcm',
  'Choisissez la bonne orthographe : « ___ livre est sur la table. »',
  null,
  '[{"id":"a","label":"Ce"},{"id":"b","label":"Se"},{"id":"c","label":"Cet"},{"id":"d","label":"Ses"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Ce » est le déterminant démonstratif masculin singulier devant un nom (livre). « Se » introduit toujours un verbe pronominal — il ne peut jamais précéder un nom directement. Et « cet » s''emploie devant un nom masculin commençant par une voyelle ou un h muet. Ici, « livre » commence par une consonne → « ce ». Analyse la nature du mot qui suit !',
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
  'Vrai ! « Sont » est la 3e personne du pluriel du verbe être — et ça se vérifie en remplaçant par « étaient » (imparfait). « Les élèves étaient attentifs » — ça fonctionne ! Ce test permet de distinguer « sont » (verbe être) de « son » (déterminant possessif). « Son » se remplace par « mon » ou « ton » — jamais par « étaient ».',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000006',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'qcm',
  'Choisissez la bonne orthographe : « ___ frère chante bien. »',
  null,
  '[{"id":"a","label":"Son"},{"id":"b","label":"Sont"},{"id":"c","label":"Sond"},{"id":"d","label":"Sons"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Son » est le déterminant possessif singulier (3e personne) devant un nom. Teste avec « étaient » : « étaient frère » — impossible ! Donc ce n''est pas le verbe être. Teste avec « mon » : « Mon frère chante bien » — ça marche ! C''est bien « son » possessif. Ces substitutions sont tes outils clés pour ne plus te tromper.',
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
  'Vrai ! « Est » est la 3e personne du singulier du verbe être — et « était » peut le remplacer sans problème. « Il était parti » — ça fonctionne ! Ce test permet de le distinguer de la conjonction « et » : on ne peut jamais remplacer « et » par « était ». « Et » relie deux éléments, il n''a aucune forme verbale. Ce test est infaillible !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000008',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'qcm',
  'Choisissez la bonne orthographe : « Je viendrai en juin ___ juillet. »',
  null,
  '[{"id":"a","label":"est"},{"id":"b","label":"ai"},{"id":"c","label":"ait"},{"id":"d","label":"et"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'La conjonction de coordination « et » relie deux noms de mois. Teste avec « était » : « je viendrai en juin était juillet » — absurde ! Donc ce n''est pas le verbe être. « Et » est invariable et ne peut jamais être une forme verbale. Et ne confonds pas non plus avec « ai » (1re personne du verbe avoir) — qui ne peut apparaître qu''en tant que verbe conjugué.',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '46000000-0000-0000-0000-000000000009',
  'Francais', 'orthographe', 'ort_homophones_lexicaux', 'Homophones lexicaux courants', 'Facile',
  'qcm',
  'Choisissez la bonne orthographe : « Je ne ___ pas te suivre. »',
  null,
  '[{"id":"a","label":"peu"},{"id":"b","label":"peux"},{"id":"c","label":"peut"},{"id":"d","label":"peuse"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Trois homophones, trois rôles différents ! « Peut » = 3e personne (il peut). « Peux » = 1re ou 2e personne (je peux, tu peux). « Peu » = adverbe de quantité (un petit peu) — invariable. Ici le sujet est « je » → on utilise « peux ». Identifie la personne grammaticale et l''accord est évident !',
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
  'Vrai ! « Leurs » est ici un déterminant possessif pluriel qui s''accorde avec « affaires » (pluriel). Règle simple : « leur » prend un -s devant un nom pluriel. Quand « leur » est un pronom COI, il reste invariable : « Je leur ai parlé ». Test : remplace par « son/ses ». « Leurs affaires » → « ses affaires » (pluriel) — le pluriel est requis. Cette distinction est un classique du CRPE !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

-- =============================================================
-- SÉRIE 47 — Accord des adjectifs de couleur (Intermédiaire / free)
-- =============================================================
-- QCM: Q2→b, Q3→a, Q5→d, Q7→a, Q9→d
-- (vrai_faux: Q1, Q4, Q6, Q8, Q10 — skipped)

(
  '47000000-0000-0000-0000-000000000001',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? Dans « des robes oranges », l''adjectif « orange » s''accorde correctement.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Attention, piège classique ! Les adjectifs de couleur issus d''un nom commun (orange, marron, crème, saumon...) sont en principe invariables selon la règle traditionnelle : « des robes orange » sans s. Les rectifications de 1990 ont assoupli la règle pour « orange » et « rose » qui peuvent s''accorder. Au CRPE, la règle traditionnelle reste la référence — mais il faut connaître les deux positions pour bien argumenter !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000002',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte selon la règle traditionnelle ?',
  null,
  '[{"id":"a","label":"des yeux marrons"},{"id":"b","label":"des yeux marron"},{"id":"c","label":"des yeux marons"},{"id":"d","label":"des yeux marronne"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Marron » vient du nom commun (le marron, le fruit). Règle traditionnelle : adjectif de couleur issu d''un nom → invariable. « Des yeux marron » sans s. Même chose pour châtaigne, saumon, crème, kaki, tabac... Seuls les adjectifs de couleur simples non issus de noms s''accordent normalement : bleu, rouge, vert, noir, blanc. Retiens la distinction : adjectif pur → accord, nom utilisé comme adj → invariable !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000003',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte ?',
  null,
  '[{"id":"a","label":"des murs bleu clair"},{"id":"b","label":"des murs bleus clairs"},{"id":"c","label":"des murs bleus clair"},{"id":"d","label":"des murs bleu-clairs"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Un adjectif de couleur composé de deux mots (bleu clair, vert foncé, rouge vif...) est invariable — sans aucun accord, quels que soient les composants. « Des murs bleu clair » sans s ni e. Cette règle est absolue : vert pomme, bleu marine, jaune paille, gris anthracite — tous invariables. C''est une règle que les futurs profs des écoles doivent maîtriser parfaitement !',
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
  'Selon la règle traditionnelle, « rose » vient du nom « la rose » (fleur) → invariable : « des chaussures rose ». Mais les rectifications de 1990 autorisent l''accord de « rose » et « orange » en genre et nombre. Voilà un piège classique : au CRPE, connais la règle traditionnelle (invariable) ET l''assouplissement de 1990. Dans la plupart des manuels actuels, « rose » s''accorde. Contexte et norme font la différence !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000005',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'qcm',
  'Quelle forme est correcte selon la règle traditionnelle ?',
  null,
  '[{"id":"a","label":"des voitures mauve"},{"id":"b","label":"des voitures mauves ou mauve"},{"id":"c","label":"des voitures mauves"},{"id":"d","label":"des voitures mauvette"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  '« Mauve » n''est pas un nom employé adjectivement — c''est un vrai adjectif qui s''accorde normalement. Même chose pour « fauve », « pourpre », « écarlate », « vermeil » et « châtain ». La distinction à graver : les vrais adjectifs de couleur s''accordent ; les noms utilisés comme adjectifs de couleur (marron, orange, crème...) sont invariables. Identifie la nature du mot, et l''accord suit !',
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
  'Oui ! « Châtain » est un adjectif qui s''accorde : « des cheveux châtains ». Son féminin est « châtaine » (des mèches châtaines) — mais certains grammairiens le considèrent invariable au féminin dans l''usage courant. L''Académie française admet les deux formes au féminin. Ce cas illustre que l''usage évolue et que le CRPE peut tester ces zones de tolérance. Connaître les deux positions, c''est la sécurité !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000007',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte ?',
  null,
  '[{"id":"a","label":"des écharpes bleu marine"},{"id":"b","label":"des écharpes bleues marines"},{"id":"c","label":"des écharpes bleu marines"},{"id":"d","label":"des écharpes blues marines"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Bleu marine » est un adjectif de couleur composé (adjectif + nom) → invariable dans tous les cas, quels que soient les composants. « Des écharpes bleu marine » sans aucun accord. Cette règle s''applique partout : vert bouteille, rouge bordeaux, bleu nuit, gris perle, jaune canari. L''une des règles les plus régulièrement testées au CRPE — à connaître absolument !',
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
  'Faux ! « Pourpre » s''accorde malgré son origine nominale (la pourpre, teinture). Il appartient à la même catégorie qu''« écarlate » et « fauve » — tous variables. Ces exceptions montrent que la règle des adjectifs issus de noms a ses limites. Pour le CRPE : pourpre, fauve, écarlate, mauve, rose (selon la norme) s''accordent. Mémorise ces cas particuliers — ils tombent souvent !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '47000000-0000-0000-0000-000000000009',
  'Francais', 'orthographe', 'ort_adjectifs_couleur', 'Accord des adjectifs de couleur', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte ?',
  null,
  '[{"id":"a","label":"des nappes crèmes"},{"id":"b","label":"des nappes créme"},{"id":"c","label":"des nappes crémées"},{"id":"d","label":"des nappes crème"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  '« Crème » vient du nom « la crème » → invariable selon la règle traditionnelle : « des nappes crème » sans accord. Ne confonds pas avec « crémeux » (adjectif variable qui s''accorde normalement). Dans la liste des invariables issus de noms, tu trouveras aussi : saumon, kaki, tabac, rouille, ivoire, caramel, chocolat. Tous sans marque de genre ou de nombre !',
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
  'Exactement — l''accord est incorrect ! Quand un adjectif de couleur est suivi d''un qualificatif (foncé, clair, vif, pâle...), l''ensemble forme un adjectif composé invariable. Il faut écrire « des pulls vert foncé » sans aucune marque d''accord. Même règle pour les compositions de deux couleurs (bleu-vert, gris-bleu). Accorder les deux éléments, c''est une faute — même chez des adultes cultivés !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

-- =============================================================
-- SÉRIE 48 — Pluriel des noms composés (Intermédiaire / premium)
-- =============================================================
-- QCM: Q1→b, Q3→d, Q5→b, Q7→d, Q9→b
-- (vrai_faux: Q2, Q4, Q6, Q8, Q10 — skipped)

(
  '48000000-0000-0000-0000-000000000001',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte au pluriel de « timbre-poste » ?',
  null,
  '[{"id":"a","label":"timbres-postes"},{"id":"b","label":"timbres-poste"},{"id":"c","label":"timbre-postes"},{"id":"d","label":"timbres-postaux"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « timbre-poste », « timbre » est le nom principal et « poste » est un nom employé comme complément déterminatif (le service postal). Dans ce type de composition (nom + nom complément), seul le premier nom s''accorde : « timbres-poste ». « Poste » reste invariable. Analyse la structure grammaticale du composé — c''est toujours elle qui décide !',
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
  'Faux ! « Porte-monnaie » = verbe (porter) + nom (monnaie) COD. Le verbe est invariable, et « monnaie » reste au singulier car on porte de la monnaie (notion générique, non dénombrable). On écrit « des porte-monnaie » sans s. Même logique pour ouvre-boîte(s), coupe-papier. Attention : la logique sémantique joue un rôle — si le nom est nombrable, il peut prendre le pluriel !',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '48000000-0000-0000-0000-000000000003',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte au pluriel de « grand-mère » ?',
  null,
  '[{"id":"a","label":"grands-mères"},{"id":"b","label":"grande-mères"},{"id":"c","label":"grand-mères-là"},{"id":"d","label":"grand-mères"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'Dans « grand-mère », la règle logique (adjectif + nom → les deux s''accordent) donnerait « grands-mères ». Mais l''usage consacré par l''Académie est « grand-mères » avec « grand » invariable — héritage de l''ancien français où grand était une forme unique pour les deux genres. Les rectifications de 1990 admettent « grands-mères » mais « grand-mères » reste dominant dans les dictionnaires. Les deux passent au CRPE !',
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
  'Les deux formes sont admises : « des après-midi » et « des après-midis » sont toutes les deux acceptées. « Après-midi » a un statut particulier : le nom « midi » peut rester invariable ou prendre un -s au pluriel selon les dictionnaires. Le Petit Robert et le Larousse admettent les deux graphies. Voilà un exemple parfait de la tolérance orthographique en français — un futur prof des écoles doit en avoir connaissance !',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '48000000-0000-0000-0000-000000000005',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte au pluriel de « arc-en-ciel » ?',
  null,
  '[{"id":"a","label":"arcs-en-ciels"},{"id":"b","label":"arcs-en-ciel"},{"id":"c","label":"arc-en-ciels"},{"id":"d","label":"arc-en-ciaux"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « arc-en-ciel » : « arc » (nom) + « en ciel » (groupe prépositionnel invariable). Seul le premier nom — le noyau — prend le pluriel : « des arcs-en-ciel ». « Ciel » reste au singulier dans le composé. L''analyse des éléments constitutifs, c''est la clé pour orthographier correctement le pluriel des noms composés. Ne laisse jamais la logique du mot simple prendre le dessus sur la grammaire du composé !',
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
  'Vrai ! « Week-end » est un emprunt à l''anglais. Pour les emprunts composés, la tendance française est d''appliquer le -s sur le dernier élément ou sur l''ensemble : « des week-ends » avec s final est la forme recommandée par les dictionnaires français. C''est différent des noms composés français où l''analyse grammaticale prime. Pour les anglicismes, le -s au pluriel est généralement accepté et recommandé. Simple !',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '48000000-0000-0000-0000-000000000007',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte au pluriel de « long-courrier » ?',
  null,
  '[{"id":"a","label":"long-courriers"},{"id":"b","label":"longs-courrier"},{"id":"c","label":"longs-courriaux"},{"id":"d","label":"longs-courriers"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  '« Long-courrier » = adjectif (long) + nom (courrier). Quand un composé réunit un adjectif et un nom, les deux s''accordent en nombre : « des longs-courriers ». Règle générale pour adjectif + nom : les deux bougent. Par exemple : des beaux-arts, des basses-cours, des coffres-forts. Identifie la nature grammaticale de chaque composant — c''est toujours elle qui décide de l''accord !',
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
  'Faux ! « Garde-fou » = verbe (garder) + nom (fou). Le verbe « garde » est invariable — toujours. Seul le nom « fou » peut prendre le -s : « des garde-fous ». La structure verbe + nom est très fréquente : garde-côte(s), garde-robe(s), passe-partout (invariable car « partout » est adverbe). La nature grammaticale du second élément détermine s''il prend ou non le pluriel. Identifie-la et agis en conséquence !',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '48000000-0000-0000-0000-000000000009',
  'Francais', 'orthographe', 'ort_noms_composes_pluriel', 'Pluriel des noms composés', 'Intermediaire',
  'qcm',
  'Quelle est la forme correcte au pluriel de « chef-d''œuvre » ?',
  null,
  '[{"id":"a","label":"chefs-d''œuvres"},{"id":"b","label":"chefs-d''œuvre"},{"id":"c","label":"chef-d''œuvres"},{"id":"d","label":"chefs-d''œuvriers"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Dans « chef-d''œuvre », « chef » est le premier nom — le noyau — et « œuvre » est précédé de la préposition « de » → groupe prépositionnel invariable. Seul « chef » prend le -s : « des chefs-d''œuvre ». Ne pas ajouter de -s à « œuvre » — c''est l''erreur classique ! Même structure qu''« arc-en-ciel » : seul le nom noyau (premier élément) s''accorde.',
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
  'Vrai ! « Couvre-lit » = verbe (couvrir) + nom (lit). Le verbe est invariable ; le nom « lit » peut prendre le -s car on recouvre des lits (pluriel sémantiquement logique) : « des couvre-lits ». C''est différent de « porte-monnaie » où « monnaie » est indénombrable. La logique sémantique joue donc un rôle dans l''accord de ces composés — réfléchis au sens, et l''accord devient naturel !',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

-- =============================================================
-- SÉRIE 49 — Rectifications orthographiques de 1990 (Avancé / premium)
-- =============================================================
-- QCM: Q1→b, Q3→a, Q5→d, Q7→c, Q9→d
-- (vrai_faux: Q2, Q4, Q6, Q8, Q10 — skipped)

(
  '49000000-0000-0000-0000-000000000001',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'qcm',
  'Selon les rectifications de 1990, quelle graphie est recommandée ?',
  null,
  '[{"id":"a","label":"événement"},{"id":"b","label":"évènement"},{"id":"c","label":"évenement"},{"id":"d","label":"évennement"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les rectifications de 1990 recommandent « évènement » avec accent grave (è) pour aligner la graphie sur la prononciation réelle [ɛvɛnmɑ̃] — sur le modèle de « règlement » ou « sèchement ». L''ancienne graphie « événement » (avec deux accents aigus) reste admise. Pour le CRPE, connaître cette rectification est attendu — c''est l''une des plus connues et des plus souvent testées !',
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
  'Faux ! Les rectifications de 1990 rendent facultatif l''accent circonflexe sur le « i » et le « u » dans la plupart des mots. On peut écrire « cout », « bruler », « ile ». Mais attention — l''accent reste obligatoire pour éviter les confusions : « dû » (participe passé) vs « du » (article), « sûr » vs « sur », « jeûne » vs « jeune ». Ces exceptions sont cruciales — mémorise-les absolument !',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '49000000-0000-0000-0000-000000000003',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'qcm',
  'Selon les rectifications de 1990, comment s''écrit « vingt et un » dans les nombres composés ?',
  null,
  '[{"id":"a","label":"vingt-et-un"},{"id":"b","label":"vingt et un"},{"id":"c","label":"vingt-et un"},{"id":"d","label":"vingtet-un"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  'Les rectifications de 1990 généralisent le trait d''union dans tous les numéraux composés — y compris ceux avec « et » : vingt-et-un, trente-et-un, quarante-et-un... Avant 1990, le trait d''union était absent quand « et » était présent. Cette nouvelle règle simplifie et uniformise. Elle s''applique à tous les composés : deux-cent-vingt-et-un. C''est l''une des rectifications les plus connues — à retenir !',
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
  'Vrai ! L''une des rectifications les plus importantes : le participe de « laisser » suivi d''un infinitif devient invariable. On écrit « elle s''est laissé tomber » (pas « laissée ») et « je les ai laissé partir » (pas « laissés »). C''est le même modèle que « faire + infinitif » — invariable depuis longtemps. Cette réforme simplifie considérablement l''accord et est attendue au CRPE niveau avancé !',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '49000000-0000-0000-0000-000000000005',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'qcm',
  'Selon les rectifications de 1990, quelle graphie est recommandée pour le mot désignant un appareil photo ?',
  null,
  '[{"id":"a","label":"appareils-photos"},{"id":"b","label":"appareils photos"},{"id":"c","label":"appareils-photographiques"},{"id":"d","label":"appareils photo"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  'L''Académie française et les dictionnaires courants recommandent « des appareils photo » avec « photo » invariable (nom en apposition). Les rectifications de 1990 ne modifient pas directement ce cas mais recommandent d''éviter les traits d''union superflus dans certains composés. La règle générale des noms en apposition : ils ne prennent pas la marque du pluriel. « Des appareils photo » — retiens ce cas !',
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
  'C''est l''inverse ! Les rectifications recommandent « nénufar » (avec f) plutôt que « nénuphar » (avec ph), en s''alignant sur l''étymologie arabe du mot. Cette recommandation simplifie la graphie et la rapproche de la phonétique réelle. Même logique pour : « clé » plutôt que « clef », « ognon » plutôt qu''« oignon ». Les nouvelles graphies coexistent avec les anciennes — les deux restent acceptées.',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '49000000-0000-0000-0000-000000000007',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'qcm',
  'Selon les rectifications de 1990, comment s''écrit le mot désignant ce qu''on doit (somme d''argent) ?',
  null,
  '[{"id":"a","label":"dû"},{"id":"b","label":"dûe"},{"id":"c","label":"dû ou du selon le contexte"},{"id":"d","label":"dehu"}]'::jsonb,
  '{"mode":"single_choice","value":"c"}'::jsonb,
  'Les rectifications de 1990 rendent l''accent facultatif sur î et û, SAUF pour éviter les ambiguïtés. « Dû » (participe passé de devoir, masculin singulier) conserve son accent pour ne pas être confondu avec « du » (article contracté). Réponse la plus précise : « dû » avec accent est maintenu là où il distingue des homophones, mais peut disparaître ailleurs. Ces exceptions sont exigées au CRPE — connais-les par cœur !',
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
  'Faux ! Les rectifications de 1990 ont été publiées au Journal officiel mais elles n''ont jamais été rendues obligatoires — ce sont des recommandations. Les deux graphies (ancienne et nouvelle) restent correctes. C''est en 2016 que les nouveaux programmes de l''Éducation nationale ont recommandé l''enseignement des nouvelles graphies dans les manuels, sans rendre les anciennes formes incorrectes. Un futur prof des écoles doit absolument connaître ce statut particulier !',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

(
  '49000000-0000-0000-0000-000000000009',
  'Francais', 'orthographe', 'ort_rectifications_1990', 'Rectifications orthographiques de 1990', 'Avance',
  'qcm',
  'Selon les rectifications de 1990, quelle graphie est recommandée pour le légume alliacé ?',
  null,
  '[{"id":"a","label":"oignon"},{"id":"b","label":"ognon"},{"id":"c","label":"ongnon"},{"id":"d","label":"oignion"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Les rectifications de 1990 recommandent « ognon » (sans i) plutôt qu''« oignon » — le i ne se prononce pas, autant le supprimer ! Cette logique de simplification phonétique est au cœur des rectifications. « Oignon » reste une graphie correcte et acceptée. Un futur professeur des écoles doit être capable d''expliquer aux élèves que ces deux formes coexistent légitimement dans l''usage actuel.',
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
  'Faux ! Selon les rectifications de 1990, le participe de « laisser » suivi d''un infinitif est désormais invariable — quel que soit le genre du sujet. On écrit « elle s''est laissé convaincre » (pas « laissée »). Cette règle aligne « laisser + infinitif » sur « faire + infinitif » (invariable depuis toujours). La réforme supprime une vraie difficulté récurrente — et ça simplifie l''analyse pour tous !',
  'valide', 'CRPE Français — Orthographe V2', 'premium', true
),

-- =============================================================
-- SÉRIE 50 — Accents, majuscules et traits d'union (Intermédiaire / free)
-- =============================================================
-- QCM: Q2→b, Q3→d, Q5→a, Q7→d, Q9→b
-- (vrai_faux: Q1, Q4, Q6, Q8, Q10 — skipped)

(
  '50000000-0000-0000-0000-000000000001',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'vrai_faux',
  'Vrai ou faux ? En français, les majuscules ne prennent pas d''accent.',
  null,
  null,
  '{"mode":"boolean","value":false}'::jsonb,
  'Faux — et c''est une idée reçue très répandue ! Les règles typographiques françaises officielles et l''Académie française sont claires : les majuscules s''accentuent. On écrit « État », « Île-de-France », « Époque », « Été ». L''absence d''accent sur les majuscules était tolérée pour des raisons techniques historiques (machines à écrire) — mais ça ne constitue pas la norme. Un futur prof des écoles doit le savoir et l''enseigner !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000002',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte pour désigner la région administrative ?',
  null,
  '[{"id":"a","label":"ile-de-france"},{"id":"b","label":"Île-de-France"},{"id":"c","label":"Ile de France"},{"id":"d","label":"île-De-France"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  'Pour les noms géographiques composés : majuscule initiale avec accent + traits d''union entre tous les composants. « Île-de-France » avec l''accent circonflexe sur le I majuscule et des traits d''union partout. Cette règle s''applique à toutes les régions, villes et lieux composés : Aix-en-Provence, Clermont-Ferrand. Oublier l''accent sur la majuscule ou les traits d''union, c''est une faute d''orthographe caractérisée !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000003',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte ?',
  null,
  '[{"id":"a","label":"arc en ciel"},{"id":"b","label":"arc-en ciel"},{"id":"c","label":"arc-enciel"},{"id":"d","label":"arc-en-ciel"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  '« Arc-en-ciel » : tous les éléments sont liés par des traits d''union — ils forment une unité lexicale. Arc + en + ciel = arc-en-ciel, invariablement. Au pluriel : « des arcs-en-ciel » (seul « arc » s''accorde). Les traits d''union sont obligatoires et leur omission constitue une faute caractérisée. Pas de demi-mesure : soit tout attaché avec des traits, soit une faute !',
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
  'Vrai ! Les mots composés avec le préfixe « vice- » s''écrivent toujours avec un trait d''union : vice-président, vice-recteur, vice-consul, vice-amiral. Ce trait d''union est obligatoire. Même règle pour sous-directeur, arrière-pensée, avant-garde, demi-heure. À distinguer des préfixes soudés (anticonstitutionnel, infrarouge, ultraviolet) qui n''en prennent pas. Maîtriser cette distinction, c''est attendu au CRPE !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000005',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte dans « Elle a rendu ___ copie » (la copie jointe) ?',
  null,
  '[{"id":"a","label":"ci-joint"},{"id":"b","label":"ci joint"},{"id":"c","label":"cijointe"},{"id":"d","label":"ci-joignée"}]'::jsonb,
  '{"mode":"single_choice","value":"a"}'::jsonb,
  '« Ci-joint » avec trait d''union quand il est placé avant le nom (emploi adverbial) — et dans ce cas il est invariable. Mais attention : quand « ci-joint » est placé après le nom ou le pronom, il s''accorde comme un adjectif : « Veuillez trouver ci-jointes les pièces demandées ». Avant le nom → invariable avec trait d''union ; après → accord. Cette alternance est un classique des exercices d''orthographe !',
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
  'Vrai ! « État » avec majuscule et accent quand il désigne l''institution politique souveraine (l''État français, les affaires de l''État). « État » minuscule désigne une situation ou condition (être en bon état, l''état des lieux). Majuscule + accent aigu : É. Cette distinction majuscule/minuscule avec sens différent est fréquente en français : Église/église, Académie/académie, Parlement/parlement. Un professeur des écoles doit maîtriser ces usages !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000007',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte pour l''adverbe signifiant « également » ?',
  null,
  '[{"id":"a","label":"ausi"},{"id":"b","label":"aussi-tôt"},{"id":"c","label":"aussitot"},{"id":"d","label":"aussi"}]'::jsonb,
  '{"mode":"single_choice","value":"d"}'::jsonb,
  '« Aussi » s''écrit sans trait d''union — c''est un adverbe simple. Ne le confonds pas avec « aussitôt » (= immédiatement) qui s''écrit en un seul mot. Et « ausi » ? C''est simplement incorrect — le doublement du s est indispensable. Les adverbes composés avec un trait d''union sont rares et leur liste est fixe : peut-être, vis-à-vis, c''est-à-dire. Pour « aussi », c''est simple : un mot, un s double, pas de trait d''union !',
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
  'Vrai ! « Peut-être » s''écrit toujours avec un trait d''union : il forme une unité lexicale adverbiale. Sans lui, « peut être » s''analyserait comme « il peut être » (verbe modal + infinitif) — sens complètement différent ! Le trait d''union est fonctionnel ici. Autres locutions similaires : c''est-à-dire, vis-à-vis, face-à-face. Ces locutions figées avec trait d''union sont à mémoriser une bonne fois pour toutes !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
),

(
  '50000000-0000-0000-0000-000000000009',
  'Francais', 'orthographe', 'ort_accents_majuscules', 'Accents, majuscules et traits d''union', 'Intermediaire',
  'qcm',
  'Quelle orthographe est correcte pour le pronom interrogatif ?',
  null,
  '[{"id":"a","label":"ou est-il ?"},{"id":"b","label":"où est-il ?"},{"id":"c","label":"Ou est-il ?"},{"id":"d","label":"oû est-il ?"}]'::jsonb,
  '{"mode":"single_choice","value":"b"}'::jsonb,
  '« Où » avec accent grave : pronom interrogatif ou adverbe de lieu — toujours. Test : peut-on remplacer par « ou bien » ? « Ou bien est-il ? » — ça n''a aucun sens ! Donc accent grave obligatoire. « Ou » sans accent = « ou bien » (alternative). L''accent grave sur « où » est une marque distinctive essentielle que les élèves apprennent dès le cycle 2 — et que tout professeur des écoles doit maîtriser parfaitement.',
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
  'Vrai ! « Hommes d''État » désigne des personnes qui exercent des fonctions gouvernementales au plus haut niveau — « État » est l''institution politique souveraine → majuscule avec accent (É). Si on parlait de l''état physique ou moral, on écrirait « état » minuscule. Cette alternance majuscule/minuscule selon le sens est un phénomène récurrent en français : même mot, sens technique/institutionnel (majuscule) vs sens commun (minuscule). C''est un point important de l''orthographe lexicale !',
  'valide', 'CRPE Français — Orthographe V2', 'free', true
);
