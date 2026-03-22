-- Série : Didactique — Analyse de manuels et séquences (7 exercices)
-- Niveau : Avancé | Accès : premium | Sous-domaine : didactique_maths

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01a0000-0000-0000-0000-000000000001', 'Mathematiques', 'didactique_maths', 'math_didactique_manuels_sequences',
  'Didactique — Analyse de manuels et séquences', 'Avance', 'qcm',
  'Un manuel de CE1 introduit la multiplication par des groupements d''objets (« 3 paquets de 5 »). À quel type de problème multiplicatif de Vergnaud cela correspond-il ?',
  NULL,
  '[{"id": "a", "label": "Configuration rectangulaire"}, {"id": "b", "label": "Produit de mesures"}, {"id": "c", "label": "Proportionnalité simple (un rapport)"}, {"id": "d", "label": "Combinaison"}]',
  '{"mode": "single", "value": "c"}',
  'Dans la classification des structures multiplicatives de Vergnaud, « 3 paquets de 5 » correspond à la proportionnalité simple (isomorphisme de mesures) : on a un rapport scalaire (« tant de fois tant »). La configuration rectangulaire relève d''un produit de mesures (lignes × colonnes), la combinaison renvoie aux situations de type produit cartésien. Le groupement d''objets identiques est le prototype de la multiplication comme itération d''une quantité, soit une relation de proportionnalité simple entre le nombre de paquets et la quantité totale.',
  'Confondre la configuration rectangulaire (rangées × colonnes) avec le groupement d''objets. La configuration rectangulaire est un produit de mesures, alors que le groupement relève de la proportionnalité simple (rapport scalaire).',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01a0000-0000-0000-0000-000000000002', 'Mathematiques', 'didactique_maths', 'math_didactique_manuels_sequences',
  'Didactique — Analyse de manuels et séquences', 'Avance', 'vrai_faux',
  'Un manuel qui introduit les fractions exclusivement par le partage de pizzas propose une approche didactique complète.',
  NULL,
  NULL,
  '{"mode": "single", "value": "faux"}',
  'Le partage de pizza ne mobilise que la conception « partie-tout » (part-whole) des fractions. Or, les travaux didactiques (Kieren, Brousseau) distinguent au moins cinq facettes de la fraction : partie-tout, quotient (3 ÷ 4), opérateur (3/4 de …), mesure (repérage sur une droite graduée) et rapport (ratio). Une séquence complète doit faire rencontrer aux élèves ces différentes conceptions afin de construire un concept robuste. Se limiter à une seule représentation crée un obstacle didactique : les élèves ne reconnaissent plus la fraction dans un contexte différent du partage.',
  'Penser qu''une seule représentation suffit. La conception partie-tout est nécessaire mais insuffisante : elle ne permet pas aux élèves de comprendre qu''une fraction est aussi un nombre repérable sur une droite ou le résultat d''une division.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01a0000-0000-0000-0000-000000000003', 'Mathematiques', 'didactique_maths', 'math_didactique_manuels_sequences',
  'Didactique — Analyse de manuels et séquences', 'Avance', 'qcm',
  'Un exercice de CM1 demande : « Combien de bouquets de 8 roses peut-on faire avec 53 roses ? » Quel type de division est ici en jeu ?',
  NULL,
  '[{"id": "a", "label": "Division partage (distribuer)"}, {"id": "b", "label": "Division quotition (grouper)"}, {"id": "c", "label": "Division euclidienne pure"}, {"id": "d", "label": "Proportionnalité"}]',
  '{"mode": "single", "value": "b"}',
  'Il s''agit d''une division quotition (ou division par regroupement / mesure) : on cherche combien de groupes de taille fixe (8 roses) on peut constituer à partir d''un ensemble donné (53 roses). Par opposition, la division partage distribue une quantité en un nombre fixe de parts égales (« 53 roses réparties en 8 bouquets, combien dans chaque bouquet ? »). La distinction partage/quotition est une variable didactique fondamentale dans l''enseignement de la division : les deux sens doivent être travaillés explicitement pour que les élèves construisent un concept complet de la division.',
  'Confondre division partage et division quotition. Dans la division partage, on connaît le nombre de parts et on cherche la taille de chaque part. Dans la division quotition, on connaît la taille de chaque groupe et on cherche le nombre de groupes.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01a0000-0000-0000-0000-000000000004', 'Mathematiques', 'didactique_maths', 'math_didactique_manuels_sequences',
  'Didactique — Analyse de manuels et séquences', 'Avance', 'reponse_courte',
  'Un manuel propose la séquence suivante pour les aires : 1) Comparer des aires par superposition, 2) Mesurer des aires avec un quadrillage, 3) Introduire les formules (L × l). Expliquez pourquoi cet ordre est pertinent d''un point de vue didactique.',
  NULL,
  NULL,
  '{"mode": "keywords", "acceptableAnswers": ["sens avant technique", "manipulation avant formalisation", "perceptif", "instrumental", "formel", "formule plaquée", "compréhension avant formule", "construction du sens"]}',
  'Cette progression est pertinente car elle respecte le principe didactique fondamental du « sens avant la technique » (manipulation avant formalisation). L''étape 1 (superposition) relève du niveau perceptif : l''élève compare visuellement, sans outil de mesure, ce qui donne du sens au concept d''aire comme grandeur. L''étape 2 (quadrillage) passe au niveau instrumental : l''élève utilise une unité de mesure pour quantifier, construisant ainsi la notion de mesurage. L''étape 3 (formule) arrive au niveau formel : la formule synthétise et automatise ce que l''élève a compris par la manipulation. Sans cette progression, la formule est « plaquée sans compréhension » — les élèves l''appliquent mécaniquement sans savoir ce qu''ils calculent, ce qui génère des erreurs (confusion aire/périmètre, application de la formule à des figures non rectangulaires).',
  'Proposer directement la formule sans passer par les étapes de manipulation et de mesure. Une formule introduite trop tôt devient un algorithme vide de sens que les élèves appliquent mécaniquement.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01a0000-0000-0000-0000-000000000005', 'Mathematiques', 'didactique_maths', 'math_didactique_manuels_sequences',
  'Didactique — Analyse de manuels et séquences', 'Avance', 'qcm',
  'Un enseignant constate que ses élèves de CM2 confondent périmètre et aire. Quelle situation didactique est la plus pertinente pour lever cette confusion ?',
  NULL,
  '[{"id": "a", "label": "Donner les formules et faire des exercices d''application"}, {"id": "b", "label": "Proposer deux figures de même périmètre mais d''aires différentes et demander de les comparer"}, {"id": "c", "label": "Expliquer la différence au tableau"}, {"id": "d", "label": "Faire mémoriser « périmètre = tour, aire = surface »"}]',
  '{"mode": "single", "value": "b"}',
  'La proposition b) constitue une situation de conflit cognitif au sens de Brousseau : en confrontant les élèves à deux figures de même périmètre mais d''aires différentes (ou inversement), on invalide leur conception erronée selon laquelle « même périmètre implique même aire ». Ce type de situation-problème relève de la dévolution : l''enseignant ne donne pas la réponse mais crée les conditions pour que l''élève remette en question ses représentations. Les options a), c) et d) relèvent d''un enseignement transmissif qui ne s''attaque pas à l''obstacle épistémologique sous-jacent : la confusion entre la mesure du contour et la mesure de la surface.',
  'Croire qu''une explication magistrale ou la mémorisation d''une définition suffit à lever une confusion conceptuelle. Les travaux de Brousseau montrent que les obstacles épistémologiques résistent à l''enseignement direct et nécessitent des situations de conflit cognitif.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01a0000-0000-0000-0000-000000000006', 'Mathematiques', 'didactique_maths', 'math_didactique_manuels_sequences',
  'Didactique — Analyse de manuels et séquences', 'Avance', 'reponse_courte',
  'Un manuel de CE2 propose l''exercice : « Range ces nombres du plus petit au plus grand : 2,5 — 2,13 — 2,8 — 2,45 ». Un enseignant modifie l''exercice en : « 2,5 — 2,50 — 2,500 ». Quel obstacle cette modification vise-t-elle et pourquoi ?',
  NULL,
  NULL,
  '{"mode": "keywords", "acceptableAnswers": ["obstacle du nombre entier", "nombre entier appliqué aux décimaux", "plus de chiffres", "zéros inutiles", "équivalence", "même valeur", "trailing zeros", "2,5 = 2,50"]}',
  'Cette modification cible l''obstacle du nombre entier appliqué aux décimaux (whole number thinking), identifié par les travaux de Brousseau et Douady. Cet obstacle épistémologique conduit les élèves à traiter la partie décimale comme un nombre entier indépendant : ils pensent que 2,13 > 2,8 (car 13 > 8) ou que 2,500 > 2,5 (car 500 > 5). En proposant 2,5 = 2,50 = 2,500, l''enseignant crée une situation qui attaque directement cette conception erronée : les zéros ajoutés après le dernier chiffre significatif ne changent pas la valeur du nombre. Cette prise de conscience est une étape essentielle pour que les élèves construisent une compréhension correcte de la numération décimale positionnelle.',
  'Penser que 2,500 est plus grand que 2,5 parce qu''il « contient plus de chiffres ». C''est précisément l''obstacle du nombre entier appliqué aux décimaux que cette situation vise à déconstruire.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'b01a0000-0000-0000-0000-000000000007', 'Mathematiques', 'didactique_maths', 'math_didactique_manuels_sequences',
  'Didactique — Analyse de manuels et séquences', 'Avance', 'qcm',
  'Selon les programmes du cycle 3 (Éduscol), à quel moment les élèves doivent-ils rencontrer les nombres décimaux pour la première fois ?',
  NULL,
  '[{"id": "a", "label": "CE2"}, {"id": "b", "label": "CM1"}, {"id": "c", "label": "CM2"}, {"id": "d", "label": "6e"}]',
  '{"mode": "single", "value": "b"}',
  'Les programmes officiels du cycle 3 (Éduscol, B.O. 2020 consolidé) introduisent les nombres décimaux au CM1, première année du cycle 3. L''entrée se fait par les fractions décimales (1/10, 1/100) avant de passer à l''écriture à virgule. Cette progressivité est une variable didactique essentielle : les fractions décimales permettent de donner du sens à l''écriture décimale en la reliant à la numération de position (dixièmes, centièmes). Introduire directement l''écriture à virgule sans passer par les fractions décimales risque de renforcer l''obstacle du nombre entier appliqué aux décimaux.',
  'Situer l''introduction des décimaux au CE2 (qui relève du cycle 2) ou au CM2 (trop tardif selon les programmes). Le CE2 travaille les fractions simples (1/2, 1/4) mais pas encore les nombres décimaux à proprement parler.',
  'valide',
  'Génération Claude — Terminologie Éduscol', 'premium', true
) ON CONFLICT (id) DO NOTHING;
