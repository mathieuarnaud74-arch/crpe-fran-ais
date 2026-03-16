-- CRPE Français — Conjugaison V3 (2 séries × 10 questions)
-- subdomain : conjugaison
-- Séries 67, 68
-- Appliquer APRÈS seed_content_conjugaison_v2.sql

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 67 — Mode impératif et ses emplois — Facile — free
-- topic_key : conj_imperatif
-- ================================================================

('67000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Combien de personnes le mode impératif possède-t-il en français ?',null,
'[{"id":"a","label":"6 personnes (comme l''indicatif)"},{"id":"b","label":"3 personnes : 2e personne du singulier, 1re du pluriel, 2e du pluriel"},{"id":"c","label":"2 personnes : singulier et pluriel uniquement"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''impératif ne se conjugue qu''à 3 personnes : 2e pers. du singulier (tu → forme sans pronom), 1re pers. du pluriel (nous → forme sans pronom) et 2e pers. du pluriel (vous → forme sans pronom). Il n''a pas de sujet exprimé. La 1re pers. du singulier et les 3e personnes n''existent pas à l''impératif. Le manque de 1re personne du singulier est logique : on ne se donne pas d''ordre à soi-même.',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Quelle est la forme correcte de l''impératif présent de « aller » à la 2e personne du singulier ?',null,
'[{"id":"a","label":"Va"},{"id":"b","label":"Vas"},{"id":"c","label":"Ailles"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Va » est la forme correcte — sans « s ». À l''impératif, les verbes du 1er groupe (et quelques autres : aller, offrir, cueillir) perdent le « s » final à la 2e personne du singulier : « mange », « entre », « va ». Exception : le « s » est rétabli devant « y » et « en » euphoniques : « Vas-y », « Manges-en ». Cette règle est une source d''erreur fréquente.',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Dans la phrase « Mange tes légumes et tu auras un dessert », quel mode est employé pour « mange » ?',null,
'[{"id":"a","label":"Indicatif présent"},{"id":"b","label":"Subjonctif présent"},{"id":"c","label":"Impératif présent"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Mange » est à l''impératif présent (2e pers. sing.) : aucun pronom sujet, injonction directe. La structure « Impératif + et + futur » est une construction conditionnelle équivalente à « Si tu manges… tu auras ». L''indicatif présent serait « tu manges » (avec pronom). Le subjonctif serait « que tu manges ». Cette construction impérative à valeur conditionnelle est caractéristique de la langue familière et de l''oral.',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Comment forme-t-on l''impératif présent des verbes du 1er groupe ?',null,
'[{"id":"a","label":"On prend le radical et on ajoute -e, -ons, -ez (sans -s à la 2e pers. sing.)"},{"id":"b","label":"On prend la forme du présent de l''indicatif à toutes les personnes sans le pronom"},{"id":"c","label":"On prend l''infinitif et on supprime le « r »"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Pour les verbes du 1er groupe (et quelques verbes du 3e groupe comme « offrir », « cueillir »), l''impératif présent se forme ainsi : radical + -e (2e sing.), radical + -ons (1re plur.), radical + -ez (2e plur.). La 2e personne du singulier perd le « s » contrairement à l''indicatif (« tu manges » → « mange ! »). Pour les autres groupes, l''impératif est identique au présent de l''indicatif sans pronom.',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Quelle est la place des pronoms personnels compléments à l''impératif affirmatif ?',null,
'[{"id":"a","label":"Avant le verbe : « Le mange ! »"},{"id":"b","label":"Après le verbe, reliés par un trait d''union : « Mange-le ! »"},{"id":"c","label":"La position varie librement"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'À l''impératif affirmatif, les pronoms compléments se placent après le verbe et sont reliés par un trait d''union : « Mange-le », « Donne-lui », « Allons-y », « Prenons-en ». Les formes des pronoms changent par rapport à l''ordre normal : « moi » remplace « me » (« Dis-moi »), « toi » remplace « te » (« Assieds-toi »). À l''impératif négatif, les pronoms reprennent leur place habituelle avant le verbe : « Ne le mange pas ».',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Laquelle de ces phrases contient une erreur à l''impératif ?',null,
'[{"id":"a","label":"« Appelle-moi ce soir. »"},{"id":"b","label":"« Vas-y maintenant. »"},{"id":"c","label":"« Manges tes céréales. »"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Manges tes céréales » est incorrect : l''impératif 2e personne du singulier des verbes du 1er groupe s''écrit sans « s » : « Mange tes céréales ». Le « s » n''est rétabli que devant « y » ou « en » : « Manges-en ». En (a), « Appelle-moi » est correct (pronom après le verbe, trait d''union, forme « moi »). En (b), « Vas-y » est correct (« s » euphonique rétabli devant « y »).',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Quel est l''impératif passé de « finir » à la 2e personne du singulier ?',null,
'[{"id":"a","label":"Aie fini"},{"id":"b","label":"Auras fini"},{"id":"c","label":"Ayant fini"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'L''impératif passé se forme avec l''auxiliaire (être ou avoir) à l''impératif présent + le participe passé. Pour « finir » : « Aie fini » (2e sing.), « Ayons fini » (1re plur.), « Ayez fini » (2e plur.). L''impératif passé exprime une injonction d''accomplir une action avant un moment de référence : « Aie fini ce travail avant midi. » Il est peu fréquent mais présent dans les textes formels.',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Quelle valeur l''impératif peut-il exprimer en dehors de l''ordre ?',null,
'[{"id":"a","label":"Uniquement l''ordre direct"},{"id":"b","label":"L''ordre, mais aussi la prière, le conseil, la supplication, la permission, la condition"},{"id":"c","label":"L''ordre et la négation uniquement"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'L''impératif exprime de multiples valeurs pragmatiques selon le contexte : ordre direct (« Assieds-toi ! »), prière (« Pardonne-nous nos offenses »), conseil (« Prends un parapluie, il va pleuvoir »), supplication (« Aide-moi, je t''en supplie »), permission (« Entrez, je vous en prie »), condition (« Travaille, et tu réussiras »). La valeur est déterminée par la situation d''énonciation, le ton et le contexte.',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','vrai_faux',
'Vrai ou faux : le verbe « être » à l''impératif présent se conjugue comme le subjonctif présent.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. « Être » a un impératif irrégulier calqué sur le subjonctif présent : « sois » (2e sing.), « soyons » (1re plur.), « soyez » (2e plur.). De même, « avoir » : « aie », « ayons », « ayez ». Ces formes servent aussi à former l''impératif passé des verbes conjugués avec « être » ou « avoir ». Ce sont les deux seuls verbes dont l''impératif est entièrement emprunté au subjonctif.',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Dans la recette de cuisine « Faites bouillir l''eau, puis ajoutez le sel », l''impératif a-t-il une valeur d''ordre ?',null,
'[{"id":"a","label":"Oui, c''est un ordre adressé au lecteur"},{"id":"b","label":"Non, c''est une valeur prescriptive ou instructionnelle — le destinataire est générique et l''impératif équivaut à un infinitif ou à « on doit »"},{"id":"c","label":"Non, c''est un impératif de politesse qui peut être refusé"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Dans les textes prescriptifs (recettes, modes d''emploi, notices), l''impératif a une valeur instructionnelle : il s''adresse à un destinataire générique (le lecteur-modèle) et peut être remplacé par l''infinitif (« Faire bouillir l''eau… ») ou par « on doit ». Ce n''est pas un ordre personnel mais une instruction procédurale. Cette valeur est importante pour l''analyse des types de textes au CRPE (texte injonctif).',
'valide','CRPE Français V3 — Conjugaison','free',true),

-- ================================================================
-- SÉRIE 68 — Participe présent et gérondif — Intermédiaire — premium
-- topic_key : conj_participe_gerondif
-- ================================================================

('68000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Quelle est la différence formelle entre le participe présent et le gérondif ?',null,
'[{"id":"a","label":"Le participe présent se termine en -ant ; le gérondif se termine en -ent"},{"id":"b","label":"Le gérondif est précédé de la préposition « en » ; le participe présent ne l''est pas"},{"id":"c","label":"Le participe présent est invariable ; le gérondif s''accorde en genre et en nombre"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La différence formelle est simple : le gérondif = « en » + forme en -ant du verbe (« en chantant »). Le participe présent = forme en -ant sans « en » (« chantant »). Les deux sont invariables. Mais leurs fonctions différent radicalement : le gérondif est un CC du verbe (il modifie l''action du sujet principal) ; le participe présent est une expansion du nom (il modifie un nom, comme une relative).',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Dans la phrase « Elle est sortie en courant », quelle est la fonction de « en courant » ?',null,
'[{"id":"a","label":"Participe présent — expansion du sujet"},{"id":"b","label":"Gérondif — CC de manière du verbe « sortir »"},{"id":"c","label":"Infinitif — CC de but"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« En courant » est un gérondif (en + -ant) qui exprime ici la manière dont elle est sortie : c''est un CC de manière. Le gérondif a le même sujet que le verbe principal (elle sort et elle court). Il peut exprimer diverses valeurs circonstancielles : manière (en courant), temps (en arrivant = quand il est arrivé), condition (en travaillant = si on travaille), cause (en tombant = parce qu''il est tombé), simultanéité.',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Dans la phrase « Les élèves lisant attentivement ont réussi l''épreuve », quelle est la fonction du participe présent « lisant » ?',null,
'[{"id":"a","label":"CC de temps"},{"id":"b","label":"Expansion du nom « élèves » — équivalent d''une proposition relative"},{"id":"c","label":"Attribut du sujet"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Lisant attentivement » est un participe présent qui modifie le nom « élèves » : il équivaut à « qui lisaient attentivement » (relative déterminative). C''est une expansion du nom (épithète détachée). On peut le vérifier : il est supprimable (« Les élèves ont réussi ») et se rapporte à un nom. Contrairement au gérondif, le participe présent peut avoir un sujet différent de celui de la principale — c''est la construction absolue.',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Quelle est la règle d''accord du participe présent ?',null,
'[{"id":"a","label":"Il s''accorde en genre et en nombre avec le nom qu''il qualifie"},{"id":"b","label":"Il est toujours invariable, quelle que soit sa fonction"},{"id":"c","label":"Il s''accorde uniquement avec le sujet du verbe principal"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le participe présent est invariable : il ne prend ni -e, ni -s, ni -es. Ex : « des enfants chantant », « une femme courant ». À ne pas confondre avec l''adjectif verbal (dérivé du participe présent) qui, lui, s''accorde : « des enfants obéissants », « une femme charmante ». L''adjectif verbal et le participe présent ont parfois des formes différentes : « en négligeant » (PP) / « négligent » (adj.) ; « en provoquant » / « provocant ».',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Parmi ces formes, laquelle est un adjectif verbal (et non un participe présent) ?',null,
'[{"id":"a","label":"« en négligeant ses devoirs »"},{"id":"b","label":"« un étudiant négligent »"},{"id":"c","label":"« négligeant ses devoirs, il échoua »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Négligent » dans « un étudiant négligent » est un adjectif verbal : il s''accorde (négligent/négligente/négligents) et qualifie un nom de façon stable. Dans (a), « négligeant » est un gérondif (en + -ant). Dans (c), « négligeant » est un participe présent en construction absolue. L''adjectif verbal se distingue du participe présent par son accord, sa position (épithète ou attribut) et parfois sa forme : « précédant » (PP) / « précédent » (adj. ou nom).',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Quelle contrainte pèse sur le sujet du gérondif ?',null,
'[{"id":"a","label":"Le gérondif peut avoir n''importe quel sujet, explicite ou implicite"},{"id":"b","label":"Le sujet du gérondif doit obligatoirement être le même que le sujet du verbe principal"},{"id":"c","label":"Le gérondif n''a jamais de sujet"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le gérondif a obligatoirement le même sujet que le verbe principal. Sinon, la phrase est incorrecte : *« En partant, la porte a claqué » (= la porte ne part pas). Les erreurs de gérondif dit « mal attaché » (dangling participle) sont fréquentes dans les copies. Seul le participe présent en construction absolue peut avoir un sujet propre différent du sujet principal.',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Comment forme-t-on le participe présent ? Quel est le radical de base ?',null,
'[{"id":"a","label":"On prend l''infinitif et on ajoute « -ant »"},{"id":"b","label":"On prend la 1re personne du pluriel du présent de l''indicatif, on supprime « -ons » et on ajoute « -ant »"},{"id":"c","label":"On prend le radical du passé simple et on ajoute « -ant »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'La règle générale : PP = radical de la 1re pers. plur. indicatif présent + -ant. Ex : nous mangeons → mang- → mangeant ; nous finissons → finiss- → finissant ; nous prenons → pren- → prenant. Exceptions : être → étant ; avoir → ayant ; savoir → sachant. Cette règle est fiable pour la grande majorité des verbes et est attendue au CRPE.',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Quelle est la valeur du gérondif dans : « Il s''est blessé en tombant » ?',null,
'[{"id":"a","label":"Manière"},{"id":"b","label":"Condition"},{"id":"c","label":"Cause ou simultanéité — le fait de tomber a provoqué/accompagné la blessure"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« En tombant » exprime ici une cause (c''est parce qu''il est tombé qu''il s''est blessé) et simultanéité (les deux actions ont lieu en même temps). Le gérondif est souvent ambigu entre cause, temps et manière — le contexte tranche. Ici, « en tombant » n''exprime pas la manière de se blesser mais la circonstance causale qui a provoqué la blessure. Cette polysémie contextuelle est caractéristique du gérondif.',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','vrai_faux',
'Vrai ou faux : « tout en » + gérondif marque une opposition ou une simultanéité avec une nuance de concession.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. La locution « tout en + gérondif » renforce la valeur de simultanéité avec une nuance d''opposition ou de concession : « Tout en travaillant, elle s''ennuyait » (simultanéité + légère opposition entre l''action et l''état). C''est une construction littéraire fréquente. Le « tout » intensifie l''aspect paradoxal ou inattendu de la coexistence des deux actions ou états.',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Dans la phrase « Ayant terminé son repas, elle quitta la table », quelle est la valeur du participe passé composé « ayant terminé » ?',null,
'[{"id":"a","label":"Il s''agit d''un gérondif passé exprimant la manière"},{"id":"b","label":"Il s''agit d''un participe présent composé (ou passé) exprimant l''antériorité — l''action de terminer précède l''action de quitter"},{"id":"c","label":"Il s''agit d''un plus-que-parfait de l''indicatif"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Ayant terminé » est un participe présent composé (auxiliaire « avoir » ou « être » au participe présent + PP du verbe). Il exprime l''antériorité par rapport au verbe principal : elle a d''abord terminé, puis elle a quitté. Cette forme est distincte du participe présent simple (« terminant »), qui exprime la simultanéité. Elle est fréquente dans les textes littéraires et les écrits soutenus attendus au CRPE.',
'valide','CRPE Français V3 — Conjugaison','premium',true)

;
