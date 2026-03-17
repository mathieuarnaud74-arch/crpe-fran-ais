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

-- Q1 → correct : a
('69000000-0000-0000-0000-000000000001','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel correct de « un garde-malade » ?',null,
'[{"id":"a","label":"des gardes-malades"},{"id":"b","label":"des garde-malades"},{"id":"c","label":"des gardes-malade"},{"id":"d","label":"des garde-malade"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'Dans « garde-malade », les deux éléments sont des noms : « garde » (nom, le soignant) + « malade » (nom, la personne soignée). Quand un composé réunit deux noms, les deux prennent le pluriel → « des gardes-malades ». C''est différent des composés Verbe + Nom où seul le nom s''accorde (si le sens le permet). Analyse la nature de chaque élément, et l''accord suit !',
'valide','CRPE Français V3 — Orthographe','premium',true),

-- Q2 → correct : d  (la bonne réponse "des essuie-glaces" déplacée en d)
('69000000-0000-0000-0000-000000000002','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel de « un essuie-glace » ?',null,
'[{"id":"a","label":"des essuies-glace"},{"id":"b","label":"des essuies-glaces"},{"id":"c","label":"des essuie-glace"},{"id":"d","label":"des essuie-glaces"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'« Essuie-glace » = verbe (essuie) + nom (glace). Dans les composés Verbe + Nom, le verbe est invariable et le nom prend généralement le pluriel : « des essuie-glaces ». Les rectifications de 1990 permettent aussi « des essuie-glace » (nom au singulier) — les deux sont valides. Mais la forme avec -s sur « glaces » reste l''usage codifié le plus courant.',
'valide','CRPE Français V3 — Orthographe','premium',true),

-- Q3 → correct : c  (inchangé)
('69000000-0000-0000-0000-000000000003','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel de « un abat-jour » ?',null,
'[{"id":"a","label":"des abats-jour"},{"id":"b","label":"des abat-jours"},{"id":"c","label":"des abat-jour"},{"id":"d","label":"des abats-jours"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Abat-jour » = verbe (abat) + nom (jour). Attention ! « Jour » reste au singulier car un abat-jour « abat le jour » — le jour est un concept non nombrable dans ce contexte. L''usage traditionnel donne « des abat-jour » sans -s. C''est une des exceptions notables : certains composés V+N gardent le nom au singulier quand la logique sémantique l''impose. Réfléchis au sens !',
'valide','CRPE Français V3 — Orthographe','premium',true),

-- Q4 → correct : b  (inchangé)
('69000000-0000-0000-0000-000000000004','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Comment forme-t-on le pluriel des noms composés de type Adjectif + Nom (ex : « beau-frère ») ?',null,
'[{"id":"a","label":"Seul le nom prend le pluriel"},{"id":"b","label":"Les deux éléments (adjectif et nom) prennent le pluriel"},{"id":"c","label":"Seul l''adjectif prend le pluriel"},{"id":"d","label":"Le composé est entièrement invariable"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Dans les composés Adjectif + Nom, les deux s''accordent car tous deux sont variables : des beaux-frères, des belles-sœurs, des grands-pères, des coffres-forts. Exception notable : « grand-mère » → les grammairiens admettent « grands-mères » (avec accord) ou « grand-mères » (sans accord sur « grand », héritage de l''ancien français où grand était invariable). Les deux sont acceptées aujourd''hui !',
'valide','CRPE Français V3 — Orthographe','premium',true),

-- Q5 → correct : d  (la bonne réponse "des porte-monnaie" déplacée en d)
('69000000-0000-0000-0000-000000000005','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel de « un porte-monnaie » ?',null,
'[{"id":"a","label":"des porte-monnaies"},{"id":"b","label":"des portes-monnaie"},{"id":"c","label":"des portes-monnaies"},{"id":"d","label":"des porte-monnaie"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'« Porte-monnaie » = verbe (porte) + nom (monnaie). « Monnaie » reste au singulier car on porte « de la monnaie » — notion générique, non dénombrable dans ce contexte. La règle : le verbe est invariable, le nom prend le pluriel si le sens l''autorise, reste au singulier sinon. « Des porte-monnaie » est la graphie traditionnelle. Les rectifications 1990 admettent « porte-monnaies » — les deux passent !',
'valide','CRPE Français V3 — Orthographe','premium',true),

-- Q6 → correct : a  (inchangé)
('69000000-0000-0000-0000-000000000006','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel de « un chef-d''œuvre » ?',null,
'[{"id":"a","label":"des chefs-d''œuvre"},{"id":"b","label":"des chef-d''œuvres"},{"id":"c","label":"des chefs-d''œuvres"},{"id":"d","label":"des chef-d''œuvre"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'« Chef-d''œuvre » = Nom (chef) + préposition (de) + Nom (œuvre). Dans les composés N + prép. + N, seul le premier nom — le noyau — prend le pluriel. « Œuvre » est complément et reste invariable. « Chef » est l''élément directeur, il prend le -s. Résultat : « des chefs-d''œuvre ». Seul le nom noyau s''accorde — retiens cette règle !',
'valide','CRPE Français V3 — Orthographe','premium',true),

-- Q7 → correct : b  (la bonne réponse "des arcs-en-ciel" déplacée en b, swap avec l'ancienne b)
('69000000-0000-0000-0000-000000000007','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel de « un arc-en-ciel » ?',null,
'[{"id":"a","label":"des arc-en-ciels"},{"id":"b","label":"des arcs-en-ciel"},{"id":"c","label":"des arcs-en-ciels"},{"id":"d","label":"des arc-en-ciel"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'« Arc-en-ciel » = N + prép. + N : seul le premier nom (arc) est le noyau et prend le pluriel. « Ciel » reste au singulier dans le composé — même si « ciels » existe pour les représentations picturales. La graphie correcte : « des arcs-en-ciel ». Ajouter un -s à « ciel » par analogie avec le pluriel ordinaire ? C''est la faute classique à éviter !',
'valide','CRPE Français V3 — Orthographe','premium',true),

-- Q8 → correct : c  (la bonne réponse déplacée en c, swap avec l'ancienne c)
('69000000-0000-0000-0000-000000000008','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Les noms composés avec un élément invariable (préfixe, adverbe, préposition) : quelle règle s''applique ?',null,
'[{"id":"a","label":"Les deux éléments prennent le pluriel"},{"id":"b","label":"Le composé est entièrement invariable"},{"id":"c","label":"Seul l''élément variable (nom ou adjectif) prend le pluriel"},{"id":"d","label":"Seul l''élément invariable prend le pluriel"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Quand un nom composé contient un élément invariable (préfixe comme anti-, vice- ; adverbe ou préposition), seul l''élément variable prend le pluriel. Des vice-présidents → « vice » invariable, « présidents » prend le -s. Des avant-gardes → « avant » invariable, « gardes » prend le -s. La règle est logique : ce qui est invariable par nature ne change pas. Identifie l''élément variable et accorde-le !',
'valide','CRPE Français V3 — Orthographe','premium',true),

-- Q9 → vrai_faux : inchangé
('69000000-0000-0000-0000-000000000009','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','vrai_faux',
'Vrai ou faux : les rectifications orthographiques de 1990 ont simplifié le pluriel des noms composés en soudant les éléments et en appliquant la règle du pluriel des mots simples dans certains cas.',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":true}'::jsonb,
'C''est vrai ! Les rectifications de 1990 proposent pour les composés avec trait d''union (Verbe + Nom et Préposition + Nom) de ne mettre le pluriel qu''au second élément dans tous les cas — plus simple ! Ces formes rectifiées sont acceptées au CRPE mais pas encore universellement employées. Les deux graphies sont valides : l''ancienne et la rectifiée. À toi de choisir, et de savoir justifier ton choix.',
'valide','CRPE Français V3 — Orthographe','premium',true),

-- Q10 → correct : d  (la bonne réponse "des passe-partout" déplacée en d)
('69000000-0000-0000-0000-000000000010','Francais','orthographe','ort_noms_composes_pluriel','Pluriel des noms composés','Difficile','qcm',
'Quel est le pluriel de « un passe-partout » ?',null,
'[{"id":"a","label":"des passe-partouts"},{"id":"b","label":"des passes-partout"},{"id":"c","label":"des passes-partouts"},{"id":"d","label":"des passe-partout"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'« Passe-partout » = verbe (passe) + adverbe (partout). Le verbe est invariable, et « partout » est un adverbe — invariable lui aussi. Le composé entier reste donc invariable : « des passe-partout ». Compare avec « passe-droit » (des passe-droits) où « droit » est un nom — là il s''accorde ! C''est pourquoi analyser la nature de chaque élément est indispensable.',
'valide','CRPE Français V3 — Orthographe','premium',true),

-- ================================================================
-- SÉRIE 70 — Accord des numéraux — Intermédiaire — free
-- topic_key : ort_numeraux
-- ================================================================

-- Q1 → correct : b  (inchangé)
('70000000-0000-0000-0000-000000000001','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Dans quelle situation « vingt » prend-il un « s » au pluriel ?',null,
'[{"id":"a","label":"Toujours, quand le nombre est supérieur à 20"},{"id":"b","label":"Quand il est multiplié et qu''il termine le nombre (sans autre numéral après lui)"},{"id":"c","label":"Jamais : « vingt » est invariable"},{"id":"d","label":"Uniquement dans les adjectifs ordinaux (vingtième)"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Le -s de quatre-vingts, c''est celui du pluriel — il ne vit que tout seul au bout du nombre. Dès qu''un chiffre suit, il disparaît ! Quatre-vingts (80) ← -s car il termine. Quatre-vingt-deux (82) ← pas de -s car suivi d''un autre chiffre. Exception : dans les dates décennales, les années quatre-vingts (la décennie) — là le -s revient.',
'valide','CRPE Français V3 — Orthographe','free',true),

-- Q2 → correct : d  (la bonne réponse "deux cents euros" déplacée en d)
('70000000-0000-0000-0000-000000000002','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Parmi ces formes, laquelle est correcte ?',null,
'[{"id":"a","label":"deux-cents euros"},{"id":"b","label":"deux cent euros"},{"id":"c","label":"deux cents-euros"},{"id":"d","label":"deux cents euros"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'« Deux cents » (200) : « cent » prend un -s parce qu''il est multiplié ET qu''il termine le nombre. « Deux cents euros » ✓. Si un chiffre suit : « deux cent dix » (210) → pas de -s car « cent » n''est plus en fin de nombre. La règle de cent copie exactement celle de vingt : multiplié + en fin de nombre = -s.',
'valide','CRPE Français V3 — Orthographe','free',true),

-- Q3 → correct : a  (inchangé)
('70000000-0000-0000-0000-000000000003','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Comment s''écrit « 80e rang » en toutes lettres ?',null,
'[{"id":"a","label":"quatre-vingtième rang"},{"id":"b","label":"quatre-vingtsième rang"},{"id":"c","label":"quatre-vingtiesme rang"},{"id":"d","label":"quatre-vingt-ième rang"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'À l''ordinal, le -s final du cardinal s''efface ! « Quatre-vingts » devient « quatre-vingtième » — le -s disparaît avant le suffixe -ième. Même logique pour « centième », « millième ». Règle à retenir : à l''ordinal, jamais de -s au numéral de base. « Quatre-vingtième » est la seule forme correcte.',
'valide','CRPE Français V3 — Orthographe','free',true),

-- Q4 → correct : c  (la bonne réponse "mille invariable" déplacée en c, swap avec l'ancienne c)
('70000000-0000-0000-0000-000000000004','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Quelle est la règle d''accord de « mil » et « mille » dans les nombres ?',null,
'[{"id":"a","label":"« mille » prend un -s au pluriel : des milles"},{"id":"b","label":"« mille » s''accorde en genre : mille / milles au féminin"},{"id":"c","label":"« mille » est toujours invariable en tant que numéral"},{"id":"d","label":"« mille » s''accorde uniquement quand il est multiplié"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'« Mille » est invariable comme adjectif numéral cardinal — deux mille euros, cinq mille personnes, jamais de -s. « Mil » est une forme archaïque réservée aux millésimes de dates (l''an mil neuf cent). À ne surtout pas confondre avec « mille » nom commun (unité de mesure) qui lui prend un -s : des milles marins. Deux mots, deux règles différentes !',
'valide','CRPE Français V3 — Orthographe','free',true),

-- Q5 → correct : d  (la bonne réponse déplacée en d)
('70000000-0000-0000-0000-000000000005','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Selon les rectifications orthographiques de 1990, comment s''écrit désormais « vingt-et-un » ?',null,
'[{"id":"a","label":"vingt-et-un (inchangé)"},{"id":"b","label":"vingt et un (sans traits d''union)"},{"id":"c","label":"vingt et-un (trait d''union seulement avant)"},{"id":"d","label":"vingt-et-un (avec traits d''union partout)"}]'::jsonb,
'{"mode":"single_choice","value":"d"}'::jsonb,
'Les rectifications de 1990 ont généralisé le trait d''union dans tous les nombres composés — y compris ceux avec « et » : vingt-et-un, trente-et-un, soixante-et-onze. Avant 1990, le trait d''union sautait quand « et » était présent. Les deux graphies restent valides, mais la forme rectifiée est celle des nouveaux manuels. Au CRPE, les deux sont acceptées.',
'valide','CRPE Français V3 — Orthographe','free',true),

-- Q6 → correct : a  (la bonne réponse déplacée en a, swap avec l'ancienne a)
('70000000-0000-0000-0000-000000000006','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Comment s''accorde « demi » dans les expressions suivantes : « une demi-heure » et « une heure et demie » ?',null,
'[{"id":"a","label":"Avant le nom (épithète), « demi » est invariable ; après le nom relié par « et », « demi » s''accorde en genre"},{"id":"b","label":"Dans les deux cas, « demi » s''accorde avec le nom"},{"id":"c","label":"Dans les deux cas, « demi » est invariable"},{"id":"d","label":"« demi » s''accorde toujours en genre et en nombre"}]'::jsonb,
'{"mode":"single_choice","value":"a"}'::jsonb,
'La règle de « demi » — à bien graver dans ta mémoire ! Avant le nom avec trait d''union : invariable → une demi-heure, un demi-pain. Après le nom avec « et » : accord en genre (pas en nombre) → une heure et demie, un kilo et demi. Le -e du féminin ne change pas au pluriel : deux heures et demie (pas « demies »). Cette règle est parmi les plus testées à l''écrit !',
'valide','CRPE Français V3 — Orthographe','free',true),

-- Q7 → correct : b  (inchangé)
('70000000-0000-0000-0000-000000000007','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Comment s''écrit « 21 étudiants » en toutes lettres selon les rectifications 1990 ?',null,
'[{"id":"a","label":"vingt et un étudiants"},{"id":"b","label":"vingt-et-un étudiants"},{"id":"c","label":"vingt-un étudiants"},{"id":"d","label":"vingt-et-uns étudiants"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Selon les rectifications de 1990, le trait d''union est généralisé dans tous les nombres composés, y compris avec « et » : vingt-et-un. La forme traditionnelle sans trait d''union (vingt et un) reste valide. Au CRPE, les deux sont acceptées — l''essentiel est de savoir qu''il existe deux graphies légitimes et de pouvoir les expliquer à tes futurs élèves.',
'valide','CRPE Français V3 — Orthographe','free',true),

-- Q8 → correct : b  (inchangé)
('70000000-0000-0000-0000-000000000008','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Comment s''accorde le numéral ordinal « premier » dans « les premières neiges » ?',null,
'[{"id":"a","label":"Il ne s''accorde pas : les premier neiges"},{"id":"b","label":"Il s''accorde en genre et en nombre : les premières neiges"},{"id":"c","label":"Il s''accorde uniquement en nombre : les premiers neiges"},{"id":"d","label":"Il s''accorde uniquement en genre : les première neiges"}]'::jsonb,
'{"mode":"single_choice","value":"b"}'::jsonb,
'Les numéraux ordinaux (premier/première, second/seconde, troisième...) sont des adjectifs — ils s''accordent en genre et en nombre. « Les premières neiges » : féminin pluriel ✓. Contrairement aux cardinaux (un, deux, trois...) généralement invariables, les ordinaux bougent avec le nom. Au-delà de « deuxième », ils ajoutent simplement -ième et s''accordent de la même façon.',
'valide','CRPE Français V3 — Orthographe','free',true),

-- Q9 → vrai_faux : inchangé
('70000000-0000-0000-0000-000000000009','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','vrai_faux',
'Vrai ou faux : « cent » prend un « s » dans l''expression « page deux cent » (à la page 200 d''un livre).',null,
'[{"id":"true","label":"Vrai"},{"id":"false","label":"Faux"}]'::jsonb,
'{"mode":"boolean","value":false}'::jsonb,
'Faux ! Quand les numéraux cardinaux servent d''ordinaux (pour indiquer un rang, une page, une année...), ils restent invariables : « page deux cent », « l''an deux mille ». Ces numéraux expriment un ordre, pas une quantité — donc pas de -s. Exception très rare : si on parle de la quantité elle-même, le -s revient (deux cents euros). Ordinal ou cardinal ? C''est ça la question clé !',
'valide','CRPE Français V3 — Orthographe','free',true),

-- Q10 → correct : c  (la bonne réponse déplacée en c)
('70000000-0000-0000-0000-000000000010','Francais','orthographe','ort_numeraux','Accord des numéraux','Intermediaire','qcm',
'Comment s''écrit correctement la somme « 1 980 euros » en toutes lettres ?',null,
'[{"id":"a","label":"mille neuf cents quatre-vingt euros"},{"id":"b","label":"mil neuf cent quatre-vingts euros"},{"id":"c","label":"mille neuf cent quatre-vingts euros"},{"id":"d","label":"mille neuf cent quatre-vingt euros"}]'::jsonb,
'{"mode":"single_choice","value":"c"}'::jsonb,
'Décompose : 1000 = mille (invariable) + 900 = neuf cent (pas de -s car suivi de quatre-vingts) + 80 = quatre-vingts (avec -s car il termine le nombre). Total : mille neuf cent quatre-vingts. « Mil » ? Non — réservé aux dates de l''ère chrétienne (l''an mil neuf cent...). « Neuf cents » aurait un -s seulement si cent terminait le nombre : 900 = neuf cents, mais 980 = neuf cent quatre-vingts.',
'valide','CRPE Français V3 — Orthographe','free',true)

;
