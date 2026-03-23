-- Seed: Programmes par cycle — Repères et progressions (7 exercices)
-- Subdomain: didactique_maths | Level: Facile | Access: free

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc060000-0000-0000-0000-000000000001',
  'Mathematiques', 'didactique_maths', 'math_didactique_programmes_cycles',
  'Programmes par cycle — Repères et progressions', 'Facile',
  'qcm',
  'À quel cycle la multiplication est-elle introduite comme objet d''enseignement dans les programmes de l''Éducation nationale ?',
  NULL,
  '[{"id":"a","label":"Cycle 1 (maternelle) — dès la grande section"},{"id":"b","label":"Cycle 2 (CP-CE1-CE2) — introduction progressive à partir du CP"},{"id":"c","label":"Cycle 3 (CM1-CM2-6e) — uniquement à partir du CM1"},{"id":"d","label":"Cycle 4 (collège) — la multiplication n''est formalisée qu''au collège"}]'::jsonb,
  '{"mode":"single","value":"b"}'::jsonb,
  'La multiplication est introduite au cycle 2. Dès le CP, les élèves rencontrent des situations relevant du champ multiplicatif (groupements égaux, partages équitables). Au CE1, le signe × est introduit et la mémorisation des premières tables commence (tables de 2 et de 5). Au CE2, la mémorisation de toutes les tables (jusqu''à 9 × 9) est un objectif et l''algorithme de la multiplication par un nombre à un chiffre est travaillé. Il est important de noter qu''au cycle 1, les élèves ne travaillent pas la multiplication en tant que telle, mais construisent des prérequis (dénombrement de collections organisées en groupements réguliers). La progression est spiralaire : le concept est approfondi et étendu au cycle 3.',
  'Penser que la multiplication n''est introduite qu''au CE2 ou au CM1. Les programmes prévoient une entrée dans le champ multiplicatif dès le CP par le biais de situations concrètes.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc060000-0000-0000-0000-000000000002',
  'Mathematiques', 'didactique_maths', 'math_didactique_programmes_cycles',
  'Programmes par cycle — Repères et progressions', 'Facile',
  'vrai_faux',
  'Les fractions apparaissent pour la première fois dans les programmes au cycle 3 (CM1-CM2-6e). Elles ne sont pas du tout abordées au cycle 2.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai : les fractions en tant qu''objet mathématique formel (écriture a/b, comparaison, opérations) n''apparaissent qu''au cycle 3, principalement à partir du CM1. Au cycle 2, les programmes ne prévoient pas de travail sur les fractions. Cependant, certaines situations du cycle 2 préparent implicitement le terrain : les partages équitables (« partager une galette en 4 parts égales ») et l''utilisation du vocabulaire « moitié », « quart », « double ». Au cycle 3, la progression prévoit : CM1 — fractions simples (demi, tiers, quart), écriture fractionnaire, placement sur une droite graduée ; CM2 — fractions décimales, lien avec les nombres décimaux ; 6e — opérations sur les fractions simples. Au cycle 4 (collège), les fractions sont étendues aux nombres rationnels.',
  'Penser que les fractions sont introduites dès le CE2. Bien que le vocabulaire « moitié » ou « quart » soit utilisé au C2, l''écriture fractionnaire et le travail formel sur les fractions débutent au CM1.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc060000-0000-0000-0000-000000000003',
  'Mathematiques', 'didactique_maths', 'math_didactique_programmes_cycles',
  'Programmes par cycle — Repères et progressions', 'Facile',
  'qcm',
  'Quelle est la progression des concepts de géométrie plane à travers les cycles selon les programmes Éduscol ?',
  NULL,
  '[{"id":"a","label":"C1 : reconnaissance de formes de base ; C2 : description et reproduction de figures par propriétés (angles droits, côtés égaux) avec instruments ; C3 : classification, propriétés des quadrilatères, symétrie axiale, programmes de construction"},{"id":"b","label":"C1 : aucune géométrie ; C2 : uniquement le vocabulaire ; C3 : toute la géométrie plane"},{"id":"c","label":"C1 : constructions au compas ; C2 : démonstrations géométriques ; C3 : géométrie analytique"},{"id":"d","label":"La géométrie est identique à tous les cycles, seuls les exercices changent"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La progression en géométrie plane suit le modèle perceptif → instrumenté → déductif, en cohérence avec les niveaux de Van Hiele. Au cycle 1 (maternelle), les élèves reconnaissent et nomment des formes de base (carré, rond, triangle, rectangle) par la perception et la manipulation (puzzles, tangrams, emboîtements). Au cycle 2, on passe à la géométrie instrumentée : les élèves utilisent la règle, l''équerre et le compas pour reproduire, décrire et construire des figures en s''appuyant sur leurs propriétés (angles droits, côtés de même longueur). Au cycle 3, on approfondit vers la déduction informelle : classification des quadrilatères, relations d''inclusion, symétrie axiale, agrandissement/réduction, et rédaction de programmes de construction. Cette progression garantit la construction progressive de concepts géométriques robustes.',
  'Croire que la géométrie ne commence qu''au cycle 2. Dès la maternelle, les programmes prévoient un travail essentiel de reconnaissance et de manipulation des formes qui pose les fondations de la pensée géométrique.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc060000-0000-0000-0000-000000000004',
  'Mathematiques', 'didactique_maths', 'math_didactique_programmes_cycles',
  'Programmes par cycle — Repères et progressions', 'Facile',
  'reponse_courte',
  'Les programmes du cycle 2 prévoient que les élèves travaillent avec des nombres entiers. Jusqu''à quel ordre de grandeur les nombres entiers doivent-ils être maîtrisés en fin de cycle 2 (fin de CE2) selon les attendus Éduscol ?',
  NULL,
  NULL,
  '{"mode":"text","acceptableAnswers":["10000","10 000","dix mille","jusqu''à 10000","jusqu''à 10 000"]}'::jsonb,
  'En fin de cycle 2 (fin de CE2), les élèves doivent maîtriser les nombres entiers jusqu''à 10 000. La progression au sein du cycle 2 est : CP — nombres jusqu''à 100, CE1 — nombres jusqu''à 1 000, CE2 — nombres jusqu''à 10 000. Cette progression permet de construire solidement la compréhension du système de numération décimale : chaque année, on ajoute un ordre de grandeur et on approfondit les relations entre unités, dizaines, centaines et milliers. Au cycle 3, l''extension se poursuit : les élèves travaillent avec des nombres entiers de plus en plus grands (jusqu''au million et au-delà) et découvrent les nombres décimaux.',
  'Confondre les attendus de fin de cycle avec ceux d''un niveau particulier. La progression CP (100) → CE1 (1 000) → CE2 (10 000) est à connaître précisément pour le CRPE.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc060000-0000-0000-0000-000000000005',
  'Mathematiques', 'didactique_maths', 'math_didactique_programmes_cycles',
  'Programmes par cycle — Repères et progressions', 'Facile',
  'qcm',
  'Le socle commun de connaissances, de compétences et de culture identifie cinq domaines. Dans quel domaine du socle les mathématiques sont-elles principalement rattachées ?',
  NULL,
  '[{"id":"a","label":"Domaine 1 — Les langages pour penser et communiquer (sous-domaine : langages mathématiques, scientifiques et informatiques)"},{"id":"b","label":"Domaine 2 — Les méthodes et outils pour apprendre"},{"id":"c","label":"Domaine 3 — La formation de la personne et du citoyen"},{"id":"d","label":"Domaine 5 — Les représentations du monde et l''activité humaine"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'Les mathématiques sont principalement rattachées au domaine 1 du socle commun : « Les langages pour penser et communiquer ». Ce domaine comprend quatre sous-domaines, dont « Comprendre, s''exprimer en utilisant les langages mathématiques, scientifiques et informatiques ». Les mathématiques y sont considérées comme un langage permettant de modéliser, calculer, raisonner et communiquer. Cependant, les mathématiques contribuent aussi aux autres domaines : au domaine 2 (méthodes et outils) par la résolution de problèmes, au domaine 4 (systèmes naturels et systèmes techniques) par la modélisation. Le socle commun adopte une vision transversale où les mathématiques ne sont pas isolées mais au service de la compréhension du monde.',
  'Penser que les mathématiques sont un domaine à part entière du socle. Elles sont intégrées au domaine 1 comme un langage, ce qui reflète la vision du socle : les mathématiques sont un outil de pensée et de communication.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc060000-0000-0000-0000-000000000006',
  'Mathematiques', 'didactique_maths', 'math_didactique_programmes_cycles',
  'Programmes par cycle — Repères et progressions', 'Facile',
  'vrai_faux',
  'Les programmes Éduscol prévoient une progression « spiralaire » en mathématiques : les mêmes notions sont reprises d''un cycle à l''autre avec un niveau de complexité croissant, plutôt qu''un enseignement linéaire où chaque notion est traitée une seule fois.',
  NULL,
  NULL,
  '{"mode":"single","value":"vrai"}'::jsonb,
  'C''est vrai : les programmes français de mathématiques adoptent une progression spiralaire (ou curriculaire en spirale). Une même notion — par exemple la multiplication, les fractions ou la symétrie — est abordée plusieurs fois au fil de la scolarité, à des niveaux de complexité et d''abstraction croissants. Par exemple, les grandeurs et mesures : au C1, on compare des longueurs par superposition ; au C2, on mesure avec des unités conventionnelles (cm, m) ; au C3, on convertit entre unités et on calcule des périmètres et aires. Cette approche s''oppose à un curriculum linéaire où chaque notion serait « terminée » en un bloc. La spirale permet la consolidation progressive, la mise en réseau des connaissances et le respect des rythmes d''apprentissage. Ce principe est explicitement mentionné dans les documents d''accompagnement Éduscol.',
  'Confondre spiralaire et répétitif. La progression spiralaire ne consiste pas à refaire la même chose : chaque reprise enrichit, approfondit et complexifie la notion.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'fc060000-0000-0000-0000-000000000007',
  'Mathematiques', 'didactique_maths', 'math_didactique_programmes_cycles',
  'Programmes par cycle — Repères et progressions', 'Facile',
  'qcm',
  'Le domaine « Grandeurs et mesures » fait l''objet d''une progression inter-cycles cohérente. Quelle affirmation décrit correctement la progression de l''enseignement des mesures de longueur du cycle 1 au cycle 3 ?',
  NULL,
  '[{"id":"a","label":"C1 : comparaison directe et indirecte de longueurs (superposition, bande de papier) ; C2 : mesure avec unités conventionnelles (cm, m, km), estimation ; C3 : conversions entre unités, périmètre, lien avec les nombres décimaux"},{"id":"b","label":"C1 : mesure en centimètres avec une règle ; C2 : conversions complexes ; C3 : uniquement révision"},{"id":"c","label":"Les mesures de longueur ne sont abordées qu''à partir du cycle 2"},{"id":"d","label":"C1 : aucune grandeur ; C2 : toutes les grandeurs ; C3 : calcul d''aires uniquement"}]'::jsonb,
  '{"mode":"single","value":"a"}'::jsonb,
  'La progression des mesures de longueur illustre parfaitement l''approche spiralaire des programmes. Au cycle 1 (maternelle), les élèves comparent des longueurs par des procédures directes (superposition) et indirectes (utilisation d''un objet intermédiaire comme une bande de papier ou une ficelle). Il n''y a pas encore d''unité conventionnelle. Au cycle 2, on introduit les unités conventionnelles (cm, m, km), la mesure avec la règle graduée et l''estimation de grandeurs. Au cycle 3, on approfondit avec les conversions entre unités (utilisation du tableau de conversion), le calcul de périmètres, et le lien entre mesures de longueur et nombres décimaux (3,5 m = 3 m 50 cm). Cette progression respecte le principe fondamental : percevoir → mesurer avec unités arbitraires → mesurer avec unités conventionnelles → calculer et convertir.',
  'Oublier que le travail sur les grandeurs commence dès la maternelle par la comparaison directe. Ce travail perceptif est un prérequis essentiel pour donner du sens à la mesure conventionnelle introduite au C2.',
  'valide',
  'Génération Claude — Terminologie Éduscol',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
