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
-- Correct answer distribution: Q1=b, Q2=a, Q3=c, Q4=d, Q5=b, Q6=c, Q7=a, Q8=d, Q10=d
-- ================================================================

('67000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Combien de personnes le mode impératif possède-t-il en français ?',null,
'[{"id":"a","label":"6 personnes (comme l''indicatif)"},{"id":"b","label":"3 personnes : 2e personne du singulier, 1re du pluriel, 2e du pluriel"},{"id":"c","label":"2 personnes : singulier et pluriel uniquement"},{"id":"d","label":"4 personnes : 1re et 2e du singulier, 1re et 2e du pluriel"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Retiens bien : l''impératif ne se conjugue qu''à 3 personnes — 2e pers. du singulier (tu → sans pronom), 1re pers. du pluriel (nous → sans pronom) et 2e pers. du pluriel (vous → sans pronom). Pas de 1re personne du singulier, pas de 3e personne ! Et c''est parfaitement logique : on ne se donne pas d''ordre à soi-même. L''absence de pronom sujet exprimé est la marque distinctive de ce mode — un détail fondamental pour le reconnaître dans un texte !',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Quelle est la forme correcte de l''impératif présent de « aller » à la 2e personne du singulier ?',null,
'[{"id":"a","label":"Va"},{"id":"b","label":"Vas"},{"id":"c","label":"Ailles"},{"id":"d","label":"Allez"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Attention, c''est un piège classique ! « Va » s''écrit sans « s » — les verbes du 1er groupe (et quelques autres : aller, offrir, cueillir) perdent le « s » final à la 2e personne du singulier : « mange », « entre », « va ». Mais voilà la petite exception à connaître absolument : le « s » est rétabli devant « y » et « en » pour des raisons euphoniques. On dit donc « Vas-y » et « Manges-en » ! Cette règle du « s » eupho­nique est une source d''erreur fréquente au CRPE — retiens-la !',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Dans la phrase « Mange tes légumes et tu auras un dessert », quel mode est employé pour « mange » ?',null,
'[{"id":"a","label":"Indicatif présent"},{"id":"b","label":"Subjonctif présent"},{"id":"c","label":"Impératif présent"},{"id":"d","label":"Conditionnel présent"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'C''est ça ! « Mange » est à l''impératif présent (2e pers. sing.) : pas de pronom sujet, injonction directe. Et regarde la structure « Impératif + et + futur » — c''est une construction conditionnelle équivalente à « Si tu manges… tu auras » ! L''indicatif présent donnerait « tu manges » (avec pronom), et le subjonctif donnerait « que tu manges ». Cette construction impérative à valeur conditionnelle est très caractéristique de la langue familière et de l''oral — un beau sujet d''analyse au CRPE !',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Comment forme-t-on l''impératif présent des verbes du 1er groupe ?',null,
'[{"id":"a","label":"On prend la forme du présent de l''indicatif à toutes les personnes sans le pronom"},{"id":"b","label":"On prend l''infinitif et on supprime le « r »"},{"id":"c","label":"On conjugue comme le subjonctif présent à toutes les personnes"},{"id":"d","label":"On prend le radical et on ajoute -e, -ons, -ez (sans -s à la 2e pers. sing.)"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Retiens la formation du 1er groupe : radical + -e (2e sing.), radical + -ons (1re plur.), radical + -ez (2e plur.). La 2e personne du singulier perd le « s » contrairement à l''indicatif — « tu manges » → « Mange ! ». Pour les verbes des 2e et 3e groupes, l''impératif est identique au présent de l''indicatif sans pronom. Verbes comme « offrir » et « cueillir » suivent le 1er groupe à l''impératif aussi — Attention, exception à mémoriser !',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Quelle est la place des pronoms personnels compléments à l''impératif affirmatif ?',null,
'[{"id":"a","label":"Avant le verbe : « Le mange ! »"},{"id":"b","label":"Après le verbe, reliés par un trait d''union : « Mange-le ! »"},{"id":"c","label":"La position varie librement"},{"id":"d","label":"Toujours séparés du verbe par une virgule : « Mange, le ! »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'À l''impératif affirmatif, les pronoms compléments se placent APRÈS le verbe et sont reliés par un trait d''union : « Mange-le », « Donne-lui », « Allons-y », « Prenons-en ». Retiens aussi le changement de forme des pronoms : « moi » remplace « me » (« Dis-moi »), « toi » remplace « te » (« Assieds-toi »). Et à l''impératif négatif ? Les pronoms reprennent leur place habituelle AVANT le verbe : « Ne le mange pas ». Affirmatif = après ; négatif = avant. Simple !',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Laquelle de ces phrases contient une erreur à l''impératif ?',null,
'[{"id":"a","label":"« Appelle-moi ce soir. »"},{"id":"b","label":"« Vas-y maintenant. »"},{"id":"c","label":"« Manges tes céréales. »"},{"id":"d","label":"« Allons-en chercher. »"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'L''erreur est en (c) : « Manges tes céréales » est incorrect ! L''impératif 2e personne du singulier des verbes du 1er groupe s''écrit sans « s » — la forme correcte est « Mange tes céréales ». Le « s » ne s''ajoute que devant « y » ou « en » : « Manges-en ». Les autres phrases sont correctes : (a) « Appelle-moi » — pronom après le verbe, trait d''union, forme « moi » ✓ ; (b) « Vas-y » — « s » euphonique rétabli devant « y » ✓ ; (d) « Allons-en chercher » — « s » euphonique devant « en » ✓. Ce type d''erreur est typique des productions d''élèves que tu devras corriger !',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Quel est l''impératif passé de « finir » à la 2e personne du singulier ?',null,
'[{"id":"a","label":"Aie fini"},{"id":"b","label":"Auras fini"},{"id":"c","label":"Ayant fini"},{"id":"d","label":"Avais fini"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'L''impératif passé, c''est auxiliaire à l''impératif présent + participe passé. Pour « finir » : « Aie fini » (2e sing.), « Ayons fini » (1re plur.), « Ayez fini » (2e plur.). L''impératif passé exprime une injonction d''accomplir une action AVANT un moment de référence : « Aie fini ce travail avant midi. » Il est peu fréquent à l''oral mais présent dans les textes formels — et au CRPE on peut te demander de le reconnaître ou de le former !',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Quelle valeur l''impératif peut-il exprimer en dehors de l''ordre ?',null,
'[{"id":"a","label":"Uniquement l''ordre direct"},{"id":"b","label":"L''ordre et la négation uniquement"},{"id":"c","label":"L''ordre et l''interrogation rhétorique uniquement"},{"id":"d","label":"L''ordre, mais aussi la prière, le conseil, la supplication, la permission, la condition"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'L''impératif est bien plus riche qu''un simple ordre ! Selon le contexte, il peut exprimer : un ordre direct (« Assieds-toi ! »), une prière (« Pardonne-nous nos offenses »), un conseil (« Prends un parapluie, il va pleuvoir »), une supplication (« Aide-moi, je t''en supplie »), une permission (« Entrez, je vous en prie »), une condition (« Travaille, et tu réussiras »). C''est la situation d''énonciation, le ton et le contexte qui déterminent la valeur réelle. Retiens : l''impératif, c''est le mode de l''acte de parole !',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','vrai_faux',
'Vrai ou faux : le verbe « être » à l''impératif présent se conjugue comme le subjonctif présent.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! « Être » a un impératif irrégulier entièrement calqué sur le subjonctif présent : « sois » (2e sing.), « soyons » (1re plur.), « soyez » (2e plur.). Et « avoir » suit la même logique : « aie », « ayons », « ayez ». Ce sont les deux seuls verbes dont l''impératif est entièrement emprunté au subjonctif — une information à retenir absolument ! Ces formes servent aussi à former l''impératif passé de tous les verbes : « aie fini », « sois parti(e) ».',
'valide','CRPE Français V3 — Conjugaison','free',true),

('67000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_imperatif','Mode impératif et ses emplois','Facile','qcm',
'Dans la recette de cuisine « Faites bouillir l''eau, puis ajoutez le sel », l''impératif a-t-il une valeur d''ordre ?',null,
'[{"id":"a","label":"Oui, c''est un ordre adressé au lecteur"},{"id":"b","label":"Non, c''est un impératif de politesse qui peut être refusé"},{"id":"c","label":"Non, c''est un impératif hypothétique exprimant une condition"},{"id":"d","label":"Non, c''est une valeur prescriptive ou instructionnelle — le destinataire est générique et l''impératif équivaut à un infinitif ou à « on doit »"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'C''est une valeur instructionnelle ou prescriptive ! Dans les textes prescriptifs — recettes, modes d''emploi, notices —, l''impératif s''adresse à un destinataire générique (le lecteur-modèle) et peut être remplacé par l''infinitif (« Faire bouillir l''eau… ») ou par « on doit ». Ce n''est pas un ordre personnel mais une instruction procédurale. Retiens ce type de texte : le texte injonctif. L''analyse de ses caractéristiques linguistiques — dont cet impératif prescriptif — est au programme du CRPE !',
'valide','CRPE Français V3 — Conjugaison','free',true),

-- ================================================================
-- SÉRIE 68 — Participe présent et gérondif — Intermédiaire — premium
-- topic_key : conj_participe_gerondif
-- Correct answer distribution: Q1=d, Q2=a, Q3=b, Q4=c, Q5=b, Q6=a, Q7=d, Q8=c, Q10=d
-- ================================================================

('68000000-0000-0000-0000-000000000001','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Quelle est la différence formelle entre le participe présent et le gérondif ?',null,
'[{"id":"a","label":"Le participe présent se termine en -ant ; le gérondif se termine en -ent"},{"id":"b","label":"Le participe présent est invariable ; le gérondif s''accorde en genre et en nombre"},{"id":"c","label":"Le participe présent est toujours précédé d''un nom ; le gérondif suit toujours le verbe principal"},{"id":"d","label":"Le gérondif est précédé de la préposition « en » ; le participe présent ne l''est pas"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La différence formelle est simple et nette : gérondif = « en » + forme en -ant (« en chantant »), participe présent = forme en -ant sans « en » (« chantant »). Les deux sont invariables — ça, c''est pareil ! Mais leurs fonctions sont radicalement différentes : le gérondif est un CC du verbe (il modifie l''action du sujet principal) ; le participe présent est une expansion du nom (il modifie un nom, comme une relative). Un petit « en » qui change tout — retiens-le !',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000002','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Dans la phrase « Elle est sortie en courant », quelle est la fonction de « en courant » ?',null,
'[{"id":"a","label":"Gérondif — CC de manière du verbe « sortir »"},{"id":"b","label":"Participe présent — expansion du sujet"},{"id":"c","label":"Infinitif — CC de but"},{"id":"d","label":"Adjectif verbal — attribut du sujet"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'C''est un gérondif (en + -ant) qui exprime ici la manière dont elle est sortie — CC de manière. Et retiens la règle d''or du gérondif : le sujet du gérondif doit être le même que le sujet du verbe principal. Ici, elle sort ET elle court — même sujet, c''est parfait ! Le gérondif est polyvalent : il peut exprimer la manière (en courant), le temps (en arrivant = quand il est arrivé), la condition (en travaillant = si on travaille), la cause (en tombant = parce qu''il est tombé). Riche !',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000003','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Dans la phrase « Les élèves lisant attentivement ont réussi l''épreuve », quelle est la fonction du participe présent « lisant » ?',null,
'[{"id":"a","label":"CC de temps"},{"id":"b","label":"Expansion du nom « élèves » — équivalent d''une proposition relative"},{"id":"c","label":"Attribut du sujet"},{"id":"d","label":"CC de manière du verbe « réussir »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Exactement ! « Lisant attentivement » modifie le nom « élèves » — il équivaut à « qui lisaient attentivement » (relative déterminative). C''est une expansion du nom, une épithète détachée. Comment le vérifier ? Il est supprimable : « Les élèves ont réussi » reste grammatical. Et il se rapporte à un nom, pas au verbe principal. Contrairement au gérondif, le participe présent peut avoir un sujet différent du sujet de la principale — c''est la construction absolue, une notion avancée !',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000004','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Quelle est la règle d''accord du participe présent ?',null,
'[{"id":"a","label":"Il s''accorde en genre et en nombre avec le nom qu''il qualifie"},{"id":"b","label":"Il s''accorde uniquement avec le sujet du verbe principal"},{"id":"c","label":"Il est toujours invariable, quelle que soit sa fonction"},{"id":"d","label":"Il s''accorde avec le complément d''objet direct quand celui-ci le précède"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Le participe présent est TOUJOURS invariable — ni -e, ni -s, ni -es. Exemples : « des enfants chantant », « une femme courant ». Mais Attention au piège de l''adjectif verbal ! L''adjectif verbal dérivé du participe présent, lui, s''accorde : « des enfants obéissants », « une femme charmante ». Et parfois les formes sont différentes : « en négligeant » (participe présent) vs « négligent » (adjectif verbal) ; « en provoquant » vs « provocant ». Cette distinction participe présent / adjectif verbal est un classique du CRPE !',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000005','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Parmi ces formes, laquelle est un adjectif verbal (et non un participe présent) ?',null,
'[{"id":"a","label":"« en négligeant ses devoirs »"},{"id":"b","label":"« un étudiant négligent »"},{"id":"c","label":"« négligeant ses devoirs, il échoua »"},{"id":"d","label":"« nous négligeant nos responsabilités »"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'C''est la phrase b) ! « Négligent » dans « un étudiant négligent » est un adjectif verbal : il s''accorde (négligent/négligente/négligents) et qualifie un nom de façon stable. Dans (a), « négligeant » est un gérondif (en + -ant). Dans (c), « négligeant » est un participe présent en construction absolue. Retiens les indices de l''adjectif verbal : accord, position d''épithète ou d''attribut, et parfois une forme différente du participe présent — « précédant » (PP) vs « précédent » (adj. ou nom). Un beau piège orthographique au CRPE !',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000006','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Quelle contrainte pèse sur le sujet du gérondif ?',null,
'[{"id":"a","label":"Le sujet du gérondif doit obligatoirement être le même que le sujet du verbe principal"},{"id":"b","label":"Le gérondif peut avoir n''importe quel sujet, explicite ou implicite"},{"id":"c","label":"Le gérondif n''a jamais de sujet"},{"id":"d","label":"Le sujet du gérondif doit obligatoirement être un nom animé"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Retiens cette règle absolue : le sujet du gérondif doit obligatoirement être le même que le sujet du verbe principal. Sinon, la phrase est fautive ! Exemple incorrect : *« En partant, la porte a claqué » — la porte ne part pas, c''est une erreur logique. On appelle ça un gérondif "mal attaché" (dangling participle en anglais) — une faute fréquente dans les copies d''élèves, que tu devras identifier et corriger. Seul le participe présent en construction absolue peut avoir un sujet propre différent du sujet principal !',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000007','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Comment forme-t-on le participe présent ? Quel est le radical de base ?',null,
'[{"id":"a","label":"On prend l''infinitif et on ajoute « -ant »"},{"id":"b","label":"On prend le radical du passé simple et on ajoute « -ant »"},{"id":"c","label":"On prend la 3e personne du singulier du présent de l''indicatif et on ajoute « -ant »"},{"id":"d","label":"On prend la 1re personne du pluriel du présent de l''indicatif, on supprime « -ons » et on ajoute « -ant »"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'La règle générale est fiable et simple : 1re pers. plur. présent de l''indicatif, on supprime -ons, on ajoute -ant. Exemples : nous mangeons → mang- → mangeant ; nous finissons → finiss- → finissant ; nous prenons → pren- → prenant. Trois exceptions à connaître par cœur : être → étant ; avoir → ayant ; savoir → sachant. Hors ces trois-là, la règle fonctionne pour l''immense majorité des verbes — c''est ton outil de référence au CRPE !',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000008','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Quelle est la valeur du gérondif dans : « Il s''est blessé en tombant » ?',null,
'[{"id":"a","label":"Manière"},{"id":"b","label":"Condition"},{"id":"c","label":"Cause ou simultanéité — le fait de tomber a provoqué/accompagné la blessure"},{"id":"d","label":"But — il est tombé pour se blesser"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'C''est une cause et une simultanéité ! C''est parce qu''il est tombé qu''il s''est blessé, et les deux actions se sont produites en même temps. Le gérondif est souvent ambigu entre cause, temps et manière — c''est le contexte qui tranche. Ici, « en tombant » n''exprime pas la manière de se blesser mais la circonstance causale. Retiens : cette polysémie contextuelle est une caractéristique du gérondif, et identifier la valeur précise selon le contexte est une compétence attendue au CRPE !',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000009','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','vrai_faux',
'Vrai ou faux : « tout en » + gérondif marque une opposition ou une simultanéité avec une nuance de concession.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai ! La locution « tout en + gérondif » est un outil stylistique élégant qui renforce la valeur de simultanéité avec une nuance d''opposition ou de concession : « Tout en travaillant, elle s''ennuyait. » Les deux états coexistent de façon paradoxale ou inattendue — et ce « tout » intensifie exactement cet aspect. C''est une construction littéraire fréquente dans les textes du CRPE. Si tu vois « tout en + -ant » dans un texte, pense immédiatement : simultanéité avec nuance concessive !',
'valide','CRPE Français V3 — Conjugaison','premium',true),

('68000000-0000-0000-0000-000000000010','Francais','conjugaison','conj_participe_gerondif','Participe présent et gérondif','Intermediaire','qcm',
'Dans la phrase « Ayant terminé son repas, elle quitta la table », quelle est la valeur du participe passé composé « ayant terminé » ?',null,
'[{"id":"a","label":"Il s''agit d''un gérondif passé exprimant la manière"},{"id":"b","label":"Il s''agit d''un plus-que-parfait de l''indicatif"},{"id":"c","label":"Il s''agit d''un participe présent simple exprimant la simultanéité"},{"id":"d","label":"Il s''agit d''un participe présent composé (ou passé) exprimant l''antériorité — l''action de terminer précède l''action de quitter"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'C''est un participe présent composé — auxiliaire « avoir » au participe présent (ayant) + participe passé (terminé). Sa valeur ? L''antériorité ! Elle a d''abord terminé, PUIS elle a quitté la table. C''est ce qui le distingue du participe présent simple (« terminant »), qui exprimerait la simultanéité. Cette forme est fréquente dans les textes littéraires et les écrits soutenus — exactement le genre de textes que tu analyseras au CRPE. Retiens : participe composé = antériorité ; participe simple = simultanéité !',
'valide','CRPE Français V3 — Conjugaison','premium',true)

;
