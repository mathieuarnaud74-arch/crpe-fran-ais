-- Seed: Didactique de la division — Sens, algorithmes et obstacles (7 exercices)
-- Subdomain: didactique_maths | Level: Intermediaire | Access: premium

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc070000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_division',
  'Didactique de la division — Sens, algorithmes et obstacles', 'Intermediaire',
  'qcm',
  'La division possède deux sens fondamentaux selon la classification des problèmes multiplicatifs de Vergnaud. Le problème « 24 billes sont réparties équitablement entre 6 enfants. Combien de billes chaque enfant reçoit-il ? » relève d''un de ces sens. Lequel ?',
  NULL,
  '[{"id":"a","label":"La division-partage (partition) : on connaît le nombre de parts et on cherche la valeur de chaque part"},{"id":"b","label":"La division-quotition (groupement) : on connaît la valeur de chaque part et on cherche combien de parts on peut faire"},{"id":"c","label":"La division euclidienne : on cherche le reste de la division"},{"id":"d","label":"La division comme fraction : on cherche l''écriture décimale du quotient"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Ce problème relève de la division-partage (ou partition). On connaît la quantité totale (24 billes) et le nombre de parts (6 enfants), et on cherche la taille de chaque part. C''est le sens le plus intuitif pour les élèves car il s''appuie sur l''expérience quotidienne du partage. L''autre sens, la division-quotition (ou groupement), correspond à la question inverse : « J''ai 24 billes, je fais des paquets de 4. Combien de paquets puis-je faire ? ». Ici, on connaît la taille de chaque part et on cherche le nombre de parts. Selon Vergnaud, ces deux sens relèvent de l''isomorphisme de mesures dans le champ multiplicatif, la division étant l''opération inverse de la multiplication. Éduscol recommande de travailler systématiquement les deux sens pour construire un concept complet de la division.',
  'Confondre division-partage et division-quotition. Dans le partage, on cherche « combien dans chaque part » ; dans la quotition, on cherche « combien de parts ». Ces deux sens doivent être travaillés explicitement.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc070000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_division',
  'Didactique de la division — Sens, algorithmes et obstacles', 'Intermediaire',
  'vrai_faux',
  'Un élève de CM1 effectue la division 157 ÷ 12 et écrit : « 157 ÷ 12 = 13 reste 1 ». En vérifiant, on trouve 12 × 13 + 1 = 157. L''élève a commis une erreur dans l''algorithme de la division posée.',
  NULL,
  NULL,
  '{"mode":"single","value":"faux"}'::jsonb,
  'Le résultat est correct : 12 × 13 = 156, et 156 + 1 = 157. Le quotient est 13, le reste est 1, et la relation fondamentale de la division euclidienne est vérifiée : dividende = diviseur × quotient + reste, avec reste < diviseur (1 < 12). Cette vérification par la « preuve par 9 » ou plutôt par la relation euclidienne est un geste fondamental que les programmes Éduscol recommandent d''enseigner systématiquement. Elle permet à l''élève de valider son résultat de manière autonome et de donner du sens à la relation entre multiplication et division, conformément au cadre de Vergnaud sur l''isomorphisme de mesures dans le champ multiplicatif.',
  'Ne pas vérifier le résultat d''une division en utilisant la relation euclidienne (dividende = diviseur × quotient + reste). Cette vérification est essentielle et doit devenir un automatisme dès le CM1.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc070000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_division',
  'Didactique de la division — Sens, algorithmes et obstacles', 'Intermediaire',
  'qcm',
  'Dans la théorie des champs conceptuels de Vergnaud, la division est l''opération inverse de la multiplication. Un problème de division-quotition (groupement) peut être modélisé par la recherche d''un opérateur scalaire manquant. Quel schéma représente correctement la division-quotition « J''ai 30 images, je fais des paquets de 5. Combien de paquets ? » ?',
  NULL,
  '[{"id":"a","label":"1 paquet → 5 images / ? paquets → 30 images — on cherche l''opérateur scalaire ×? entre 1 et le nombre de paquets"},{"id":"b","label":"30 images ÷ 5 = ? — simple application mécanique de la division sans modélisation"},{"id":"c","label":"5 × ? = 30 — recherche du facteur manquant, relevant de la multiplication et non de la division"},{"id":"d","label":"30 – 5 – 5 – 5 … = 0 — soustraction itérée, procédure élémentaire mais pas un schéma de Vergnaud"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Le schéma de Vergnaud pour la division-quotition s''inscrit dans l''isomorphisme de mesures : deux espaces de mesures (paquets et images) sont reliés par un opérateur fonctionnel (×5). On connaît l''opérateur (×5) et la quantité d''arrivée (30 images), on cherche la quantité de départ (nombre de paquets). Le schéma 1 paquet → 5 images / ? paquets → 30 images montre clairement que la division-quotition revient à chercher un opérateur scalaire manquant. La réponse C (5 × ? = 30) est mathématiquement équivalente mais ne rend pas visible la structure proportionnelle à deux espaces de mesures. La réponse D décrit une procédure primitive (soustraction itérée) que les élèves utilisent avant de maîtriser la division, mais ce n''est pas un schéma conceptuel au sens de Vergnaud.',
  'Réduire la modélisation de la division-quotition à la soustraction itérée. Si cette procédure est une entrée légitime, le schéma de Vergnaud met en lumière la structure proportionnelle sous-jacente, fondamentale pour la compréhension profonde.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc070000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_division',
  'Didactique de la division — Sens, algorithmes et obstacles', 'Intermediaire',
  'reponse_courte',
  'Dans un problème de division en contexte, l''interprétation du reste est cruciale. Problème : « 47 élèves partent en sortie. Chaque minibus peut transporter 8 élèves. Combien de minibus faut-il réserver ? » La division donne 47 ÷ 8 = 5 reste 7. Combien de minibus faut-il réserver au total ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["6","six","Six","6 minibus"]}'::jsonb,
  'Il faut réserver 6 minibus. La division euclidienne donne un quotient de 5 et un reste de 7 : 5 minibus transporteront 40 élèves, mais il reste 7 élèves qui ne peuvent pas rester sur le trottoir ! Il faut donc un 6e minibus. Ce problème illustre parfaitement la question de l''interprétation du reste en contexte, un enjeu didactique majeur identifié par les recherches en didactique des mathématiques. Selon le contexte, le reste peut être : arrondi au-dessus (comme ici — il faut un minibus de plus), ignoré (« combien de paquets complets ? » → 5), ou exprimé comme fraction/décimal (« quelle part chacun reçoit-il ? »). Éduscol insiste sur la nécessité de proposer des problèmes variés où le traitement du reste diffère, pour éviter que les élèves appliquent systématiquement la même stratégie.',
  'Répondre 5 en se limitant au quotient sans interpréter le reste. L''élève doit comprendre que dans ce contexte, le reste impose d''ajouter un minibus supplémentaire, car on ne peut pas laisser 7 élèves sans transport.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc070000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_division',
  'Didactique de la division — Sens, algorithmes et obstacles', 'Intermediaire',
  'qcm',
  'Au cycle 2, les programmes Éduscol recommandent d''introduire la division avant l''algorithme posé. Quelle approche est préconisée pour faire émerger le sens de la division dès le CE1 ?',
  NULL,
  '[{"id":"a","label":"Enseigner directement l''algorithme de la division posée (potence) avec des dividendes à deux chiffres"},{"id":"b","label":"Proposer des situations de groupements et de partages concrets, en laissant les élèves utiliser des procédures personnelles (dessins, soustractions itérées, essais de multiplication)"},{"id":"c","label":"Faire mémoriser les divisions « tables inversées » (56 ÷ 7 = 8) avant toute mise en situation"},{"id":"d","label":"Attendre le CM1 pour aborder la division, le cycle 2 étant réservé à l''addition et la soustraction"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Conformément à la théorie des situations didactiques de Brousseau, l''entrée dans la division au cycle 2 se fait par des situations-problèmes de partage et de groupement concrets. L''élève manipule du matériel (jetons, cubes), fait des dessins, procède par soustractions successives ou par essais de multiplication. Ces procédures personnelles constituent la phase d''action. Progressivement, lors des phases de formulation et d''institutionnalisation, l''écriture mathématique est introduite. L''algorithme posé (en potence) n''est formalisé qu''au CM1, quand le sens est solidement construit. Cette progression respecte le principe fondamental : le sens précède la technique. Les programmes Éduscol insistent : « La compréhension des opérations doit précéder la maîtrise des algorithmes. »',
  'Introduire l''algorithme posé de la division trop tôt, avant que le sens (partage et groupement) ne soit construit. L''algorithme sans compréhension conduit à des procédures mécaniques vides de sens.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc070000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_division',
  'Didactique de la division — Sens, algorithmes et obstacles', 'Intermediaire',
  'vrai_faux',
  'Au cycle 3, la progression vers l''algorithme posé de la division (en potence) passe nécessairement par des étapes intermédiaires comme la division par soustractions successives et la division par encadrement par des multiples, avant d''aboutir à l''algorithme conventionnel.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'Les programmes Éduscol et les travaux de didactique recommandent effectivement une progression par étapes vers l''algorithme posé de la division. D''abord, les élèves utilisent la soustraction itérée (retirer le diviseur autant de fois que possible), puis ils apprennent à encadrer le dividende par des multiples du diviseur (« 12 × 10 = 120, 12 × 20 = 240, donc le quotient de 195 ÷ 12 est entre 10 et 20 »). Ensuite vient la division par soustractions de multiples « optimisés » (retirer 12 × 10, puis 12 × 6, etc.), avant d''aboutir à l''algorithme conventionnel chiffre par chiffre. Cette progression permet de donner du sens à chaque étape de l''algorithme et de comprendre que la potence est une écriture condensée de ces soustractions successives de multiples. Brousseau insiste sur le fait que sauter ces étapes conduit à un algorithme « vide de sens ».',
  'Penser que l''algorithme posé peut être enseigné directement sans étapes intermédiaires. La progression par niveaux d''abstraction croissants est essentielle pour que l''élève comprenne le lien entre chaque étape de l''algorithme et le sens de la division.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc070000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_division',
  'Didactique de la division — Sens, algorithmes et obstacles', 'Intermediaire',
  'qcm',
  'Un élève de CM2 effectue la division 856 ÷ 32. Voici son travail posé en potence : il écrit 85 ÷ 32 = 2 (reste 21), abaisse le 6 pour obtenir 216, puis écrit 216 ÷ 32 = 6 (reste 24). Il annonce : « 856 ÷ 32 = 26 reste 24 ». En vérifiant : 32 × 26 + 24 = 856. Quelle analyse didactique faites-vous ?',
  NULL,
  '[{"id":"a","label":"L''élève a commis une erreur de calcul dans les produits partiels"},{"id":"b","label":"L''élève a correctement appliqué l''algorithme ; le résultat est juste et la relation euclidienne est vérifiée"},{"id":"c","label":"L''élève a oublié de vérifier que le reste est inférieur au diviseur, son résultat est donc invalide"},{"id":"d","label":"L''élève aurait dû trouver un quotient décimal et non un quotient entier avec reste"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'Le travail de l''élève est parfaitement correct. Vérifions : 32 × 26 = 32 × 20 + 32 × 6 = 640 + 192 = 832, et 832 + 24 = 856. La relation euclidienne (dividende = diviseur × quotient + reste) est satisfaite, et le reste 24 est bien strictement inférieur au diviseur 32. L''élève maîtrise l''algorithme de la division posée à deux chiffres au diviseur : il sait estimer chaque chiffre du quotient, gérer les soustractions partielles et abaisser correctement les chiffres du dividende. Ce type d''exercice d''analyse de productions d''élèves est recommandé par Éduscol pour développer la compétence professionnelle « analyser les erreurs et les réussites des élèves ». Ici, l''enseignant doit reconnaître une réussite et la valoriser.',
  'Chercher une erreur là où il n''y en a pas. Au CRPE, les analyses de productions d''élèves incluent aussi des travaux corrects — il faut savoir identifier et justifier une réussite autant qu''une erreur.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'premium',
  true
) ON CONFLICT (id) DO NOTHING;
