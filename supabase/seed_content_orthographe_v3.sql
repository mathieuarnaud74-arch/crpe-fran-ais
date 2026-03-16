-- CRPE Français — Orthographe V3 (2 séries × 10 questions)
-- subdomain : orthographe
-- Séries 69, 70
-- Appliquer APRÈS seed_content_orthographe_v2.sql

insert into public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, validation_status, source, access_tier, is_published
)
values

-- ================================================================
-- SÉRIE 69 — Pluriel des noms composés — Difficile — premium
-- topic_key : ort_noms_composes_pluriel
-- ================================================================

('69000000-0000-0000-0000-000000000001','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel correct de « un garde-malade » ?',null,
'[{"id":"a","label":"des gardes-malades"},{"id":"b","label":"des garde-malades"},{"id":"c","label":"des gardes-malade"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Dans « garde-malade » (personne qui garde les malades), les deux éléments sont des noms : « garde » (nom) + « malade » (nom). Quand un nom composé est formé de deux noms, les deux prennent le pluriel. On analyse : un garde (= un soignant) + un malade (= la personne soignée) → des gardes-malades. À distinguer des composés Verbe + Nom où seul le nom prend le pluriel si le sens le permet.',
'valide','CRPE Français V3 — Orthographe','premium',true),

('69000000-0000-0000-0000-000000000002','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel de « un essuie-glace » ?',null,
'[{"id":"a","label":"des essuie-glaces"},{"id":"b","label":"des essuies-glaces"},{"id":"c","label":"des essuie-glace"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Essuie-glace » = verbe (essuie) + nom (glace). Dans les composés Verbe + Nom, le verbe est invariable (c''est une forme verbale figée) et le nom prend généralement le pluriel : des essuie-glaces. La logique sémantique : un essuie-glace essuie le glace (singulier peut se justifier) mais l''usage codifié donne « des essuie-glaces ». Toutefois, les rectifications orthographiques de 1990 permettent « des essuie-glace » (accord au singulier).',
'valide','CRPE Français V3 — Orthographe','premium',true),

('69000000-0000-0000-0000-000000000003','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel de « un abat-jour » ?',null,
'[{"id":"a","label":"des abats-jour"},{"id":"b","label":"des abat-jours"},{"id":"c","label":"des abat-jour"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Abat-jour » = verbe (abat) + nom (jour). Ici, le nom « jour » reste au singulier car un abat-jour « abat le jour » (le jour est un concept non nombrable dans ce contexte). L''usage traditionnel maintient « des abat-jour » sans -s. C''est l''une des exceptions notables : certains composés V+N gardent le nom au singulier quand le sens logique le commande. À comparer avec « des abat-son » (abat-son, pluriel : des abat-sons selon l''usage moderne).',
'valide','CRPE Français V3 — Orthographe','premium',true),

('69000000-0000-0000-0000-000000000004','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Comment forme-t-on le pluriel des noms composés de type Adjectif + Nom (ex : « beau-frère ») ?',null,
'[{"id":"a","label":"Seul le nom prend le pluriel"},{"id":"b","label":"Les deux éléments (adjectif et nom) prennent le pluriel"},{"id":"c","label":"Seul l''adjectif prend le pluriel"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Dans les composés Adjectif + Nom, les deux éléments s''accordent au pluriel car ils sont tous deux variables : des beaux-frères, des belles-sœurs, des grands-pères, des coffres-forts. Exception notable : « grand-mère » → des grands-mères (grand s''accorde) mais les formes sans accord (grand-mères sans s à grand) sont historiquement justifiées par le fait que « grand » était invariable en ancien français. Les deux graphies sont aujourd''hui admises.',
'valide','CRPE Français V3 — Orthographe','premium',true),

('69000000-0000-0000-0000-000000000005','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel de « un porte-monnaie » ?',null,
'[{"id":"a","label":"des porte-monnaies"},{"id":"b","label":"des portes-monnaie"},{"id":"c","label":"des porte-monnaie"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Porte-monnaie » = verbe (porte) + nom (monnaie). Le nom « monnaie » reste au singulier car il représente une notion générique (on porte « de la monnaie », non des monnaies dénombrées). La règle des composés V+N : le verbe est invariable, le nom prend le pluriel si le sens logique l''autorise, reste au singulier sinon. « Des porte-monnaie » est la graphie traditionnelle. Les rectifications 1990 admettent « des porte-monnaies ».',
'valide','CRPE Français V3 — Orthographe','premium',true),

('69000000-0000-0000-0000-000000000006','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel de « un chef-d''œuvre » ?',null,
'[{"id":"a","label":"des chefs-d''œuvre"},{"id":"b","label":"des chef-d''œuvres"},{"id":"c","label":"des chefs-d''œuvres"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Chef-d''œuvre » = Nom (chef) + préposition (de) + Nom (œuvre). Dans les composés N + prép. + N, le premier nom prend le pluriel (il est le noyau) ; le second reste généralement au singulier car il est complément : des chefs-d''œuvre. Ici « chef » = le principal, l''élément directeur, et « œuvre » est complément. La règle : seul le nom noyau (premier élément) prend le -s.',
'valide','CRPE Français V3 — Orthographe','premium',true),

('69000000-0000-0000-0000-000000000007','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel de « un arc-en-ciel » ?',null,
'[{"id":"a","label":"des arcs-en-ciel"},{"id":"b","label":"des arc-en-ciels"},{"id":"c","label":"des arcs-en-ciels"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Arc-en-ciel » est un composé N + prép. + N : seul le premier nom (arc) est le noyau et prend le pluriel. « Ciel » reste au singulier dans le composé (même si « ciels » existe au sens de représentations picturales). La graphie correcte est donc « des arcs-en-ciel ». Une faute fréquente est d''ajouter un -s à « ciel », par analogie avec le pluriel standard du mot.',
'valide','CRPE Français V3 — Orthographe','premium',true),

('69000000-0000-0000-0000-000000000008','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Les noms composés avec un élément invariable (préfixe, adverbe, préposition) : quelle règle s''applique ?',null,
'[{"id":"a","label":"Les deux éléments prennent le pluriel"},{"id":"b","label":"Seul l''élément variable (nom ou adjectif) prend le pluriel"},{"id":"c","label":"Le composé est entièrement invariable"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Quand un nom composé contient un élément invariable (préfixe comme anti-, pseudo-, vice- ; adverbe ou préposition), seul l''élément variable prend le pluriel. Ex : des anti-virus → « anti » est invariable, « virus » prend le pluriel en logique mais reste invariable ici (mot latin). Des vice-présidents → « vice » invariable, « présidents » prend le -s. Des avant-gardes → « avant » invariable, « gardes » prend le -s.',
'valide','CRPE Français V3 — Orthographe','premium',true),

('69000000-0000-0000-0000-000000000009','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','vrai_faux',
'Vrai ou faux : les rectifications orthographiques de 1990 ont simplifié le pluriel des noms composés en soudant les éléments et en appliquant la règle du pluriel des mots simples dans certains cas.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'Vrai. Les rectifications de 1990 proposent, pour les composés avec trait d''union (Verbe + Nom et Préposition + Nom), de ne mettre le pluriel qu''au second élément dans tous les cas, simplifiant ainsi les règles : « des cure-dents » → « des curedents » (soudé) ou « des cure-dents » avec pluriel toujours au second élément. Ces formes rectifiées sont acceptées à l''CRPE mais pas encore universellement employées. Les deux graphies sont valides.',
'valide','CRPE Français V3 — Orthographe','premium',true),

('69000000-0000-0000-0000-000000000010','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel de « un passe-partout » ?',null,
'[{"id":"a","label":"des passe-partouts"},{"id":"b","label":"des passes-partout"},{"id":"c","label":"des passe-partout"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Passe-partout » = verbe (passe) + adverbe (partout). Quand le second élément est un adverbe ou une préposition, il est invariable. Le verbe est également invariable (forme figée). Le composé entier reste donc invariable : des passe-partout. Même raisonnement pour « passe-droit » (des passe-droits, car « droit » est ici un nom), ce qui montre l''importance d''analyser la nature de chaque composant.',
'valide','CRPE Français V3 — Orthographe','premium',true),

-- ================================================================
-- SÉRIE 70 — Accord des numéraux — Intermédiaire — free
-- topic_key : ort_numeraux
-- ================================================================

('70000000-0000-0000-0000-000000000001','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Dans quelle situation « vingt » prend-il un « s » au pluriel ?',null,
'[{"id":"a","label":"Toujours, quand le nombre est supérieur à 20"},{"id":"b","label":"Quand il est multiplié et qu''il termine le nombre (sans autre numéral après lui)"},{"id":"c","label":"Jamais : « vingt » est invariable"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Vingt » prend un -s uniquement quand il est multiplié ET qu''il est en fin de nombre : quatre-vingts (80) ← s car il termine. Mais : quatre-vingt-deux (82) ← pas de s car suivi d''un autre chiffre. De même : quatre-vingts pages (adjectif numéral, pas de -s selon la règle traditionnelle) vs deux cents (200) avec s. Exception : en écriture ordinale ou comme nom, il prend un s : les années quatre-vingts (décennie).',
'valide','CRPE Français V3 — Orthographe','free',true),

('70000000-0000-0000-0000-000000000002','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Parmi ces formes, laquelle est correcte ?',null,
'[{"id":"a","label":"deux-cents euros"},{"id":"b","label":"deux cents euros"},{"id":"c","label":"deux cent euros"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Deux cents » (200) : « cent » prend un -s quand il est multiplié et qu''il termine le nombre. Ici, « deux cents » (= 2 × 100) est en fin de nombre → -s. « Deux cents euros » est donc correct. Si un chiffre suit : « deux cent dix » (210) → pas de s car « cent » n''est pas en fin de nombre. Avec un trait d''union : selon les rectifications 1990, les traits d''union sont généralisés : deux-cents, mais l''usage traditionnel ne les met pas entre tous les éléments.',
'valide','CRPE Français V3 — Orthographe','free',true),

('70000000-0000-0000-0000-000000000003','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Comment s''écrit « 80e rang » en toutes lettres ?',null,
'[{"id":"a","label":"quatre-vingtième rang"},{"id":"b","label":"quatre-vingtsième rang"},{"id":"c","label":"quatre-vingtiesme rang"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Les numéraux ordinaux se forment en ajoutant le suffixe -ième au cardinal. Quand « quatre-vingts » devient ordinal, le -s de « vingts » disparaît : quatre-vingtième. La règle est analogue pour « centième », « millième ». À l''ordinal, il n''y a jamais de s final au numéral de base. « Quatre-vingtième » est donc la seule forme correcte.',
'valide','CRPE Français V3 — Orthographe','free',true),

('70000000-0000-0000-0000-000000000004','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Quelle est la règle d''accord de « mil » et « mille » dans les nombres ?',null,
'[{"id":"a","label":"« mille » est toujours invariable en tant que numéral"},{"id":"b","label":"« mille » prend un -s au pluriel : des milles"},{"id":"c","label":"« mille » s''accorde en genre : mille / milles au féminin"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Mille » est invariable en tant qu''adjectif numéral cardinal : deux mille euros, cinq mille personnes. Il ne prend jamais de -s. « Mil » est une forme archaïque utilisée uniquement dans les millésimes des dates (l''an mil neuf cent). À ne pas confondre avec « mille » nom (unité de mesure) qui, lui, prend un -s au pluriel : des milles marins. La distinction mil/mille dans les dates est attendue en orthographe soignée.',
'valide','CRPE Français V3 — Orthographe','free',true),

('70000000-0000-0000-0000-000000000005','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Selon les rectifications orthographiques de 1990, comment s''écrit désormais « vingt-et-un » ?',null,
'[{"id":"a","label":"vingt-et-un (inchangé)"},{"id":"b","label":"vingt et un (sans traits d''union)"},{"id":"c","label":"vingt-et-un (avec traits d''union partout)"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Les rectifications de 1990 ont généralisé le trait d''union dans tous les nombres composés, y compris ceux comportant « et » : vingt-et-un, trente-et-un, quarante-et-un, cinquante-et-un, soixante-et-un, soixante-et-onze. Avant 1990, seuls les nombres sans « et » prenaient le trait d''union (vingt-deux, trente-trois…). Les deux graphies sont acceptées mais la forme rectifiée est désormais enseignée.',
'valide','CRPE Français V3 — Orthographe','free',true),

('70000000-0000-0000-0000-000000000006','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Comment s''accorde « demi » dans les expressions suivantes : « une demi-heure » et « une heure et demie » ?',null,
'[{"id":"a","label":"Dans les deux cas, « demi » est invariable"},{"id":"b","label":"Dans les deux cas, « demi » s''accorde avec le nom"},{"id":"c","label":"Avant le nom (épithète), « demi » est invariable ; après le nom relié par « et », « demi » s''accorde en genre"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'La règle de « demi » : placé avant le nom (épithète antéposée, avec trait d''union), il est invariable : une demi-heure, un demi-pain. Placé après le nom avec la conjonction « et », il s''accorde en genre (pas en nombre) avec le nom précédent : une heure et demie (féminin), un kilo et demi (masculin), deux heures et demie (le -e du féminin ne varie pas au pluriel). Cette règle est une des plus testées à l''écrit.',
'valide','CRPE Français V3 — Orthographe','free',true),

('70000000-0000-0000-0000-000000000007','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Comment s''écrit « 21 étudiants » en toutes lettres selon les rectifications 1990 ?',null,
'[{"id":"a","label":"vingt et un étudiants"},{"id":"b","label":"vingt-et-un étudiants"},{"id":"c","label":"vingt-un étudiants"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Selon les rectifications orthographiques de 1990, le trait d''union est généralisé dans tous les nombres composés, y compris ceux avec « et » : vingt-et-un. La forme traditionnelle sans trait d''union avant « et » (vingt et un) reste valide, mais la forme rectifiée (vingt-et-un) est désormais celle enseignée dans les nouveaux manuels. Au CRPE, les deux sont acceptées.',
'valide','CRPE Français V3 — Orthographe','free',true),

('70000000-0000-0000-0000-000000000008','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Comment s''accorde le numéral ordinal « premier » dans « les premières neiges » ?',null,
'[{"id":"a","label":"Il ne s''accorde pas : les premier neiges"},{"id":"b","label":"Il s''accorde en genre et en nombre : les premières neiges"},{"id":"c","label":"Il s''accorde uniquement en nombre : les premiers neiges"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Les numéraux ordinaux (premier/première, second/seconde, troisième…) sont des adjectifs et s''accordent en genre et en nombre avec le nom qu''ils qualifient : la première page, le premier rang, les premières neiges, les premiers pas. À distinguer des cardinaux (un, deux, trois…) qui sont généralement invariables. Les ordinaux au-delà de « deuxième » ajoutent simplement -ième et s''accordent de même.',
'valide','CRPE Français V3 — Orthographe','free',true),

('70000000-0000-0000-0000-000000000009','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','vrai_faux',
'Vrai ou faux : « cent » prend un « s » dans l''expression « page deux cent » (à la page 200 d''un livre).',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux. Quand les numéraux cardinaux sont employés comme adjectifs ordinaux (pour désigner un rang, une page, une année…), ils restent invariables : « page deux cent » (= la deux centième page), « l''an deux mille ». La règle : les numéraux ordinaux de rang n''ont pas de -s car ils expriment un ordre et non une quantité. Exception : « le numéro deux cents » si on parle du numéro de quantité (rare).',
'valide','CRPE Français V3 — Orthographe','free',true),

('70000000-0000-0000-0000-000000000010','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Comment s''écrit correctement la somme « 1 980 euros » en toutes lettres ?',null,
'[{"id":"a","label":"mille neuf cent quatre-vingts euros"},{"id":"b","label":"mille neuf cents quatre-vingt euros"},{"id":"c","label":"mil neuf cent quatre-vingts euros"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Analyse : 1 000 = mille (invariable) + 900 = neuf cent (cent ne prend pas de s car suivi de « quatre-vingts ») + 80 = quatre-vingts (s car il termine le nombre). Total : mille neuf cent quatre-vingts. « Mil » s''emploie uniquement dans les dates de l''ère chrétienne (l''an mil neuf cent…). « Neuf cents » aurait un s seulement si cent terminait le nombre : 900 = neuf cents, mais 980 = neuf cent quatre-vingts (cent n''est plus terminal).',
'valide','CRPE Français V3 — Orthographe','free',true)

;
