-- ============================================================
-- Compléter la série tri_nature_mots (Q7, Q8, Q9, Q10)
-- Subject : Francais | Subdomain : grammaire
-- Type : tri_categories
-- ============================================================

-- Q7 : Nom propre / Nom commun / Adjectif
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'ac110000-0000-0000-0000-000000000007',
  'Francais',
  'grammaire',
  'tri_nature_mots',
  'Tri par catégories : nature des mots',
  'Intermediaire',
  'tri_categories',
  'Classez ces six mots selon leur nature grammaticale.',
  NULL,
  '[{"id":"tc01q7w1","label":"Paris"},{"id":"tc01q7w2","label":"fleuve"},{"id":"tc01q7w3","label":"magnifique"},{"id":"tc01q7w4","label":"Mozart"},{"id":"tc01q7w5","label":"liberté"},{"id":"tc01q7w6","label":"ancien"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"nom_propre","label":"Nom propre"},{"id":"nom_commun","label":"Nom commun"},{"id":"adjectif","label":"Adjectif"}],"mapping":{"tc01q7w1":"nom_propre","tc01q7w2":"nom_commun","tc01q7w3":"adjectif","tc01q7w4":"nom_propre","tc01q7w5":"nom_commun","tc01q7w6":"adjectif"}}'::jsonb,
  'Paris et Mozart désignent des entités uniques (une ville, un compositeur) et prennent une majuscule : ce sont des noms propres. Fleuve et liberté désignent des réalités (concrète pour fleuve, abstraite pour liberté) et s''emploient avec un déterminant : ce sont des noms communs. Magnifique et ancien expriment une qualité ou une caractéristique et peuvent s''accorder en genre et en nombre : ce sont des adjectifs qualificatifs.',
  'Classer « liberté » comme adjectif parce qu''il exprime une notion abstraite. Or liberté accepte un déterminant (la liberté) et peut être sujet ou complément : c''est bien un nom commun. Un adjectif qualifie un nom, il ne fonctionne pas seul comme sujet.',
  'valide',
  'Série CRPE Français — Tri par catégories',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q8 : Complément du nom / Épithète / Attribut du sujet
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'ac110000-0000-0000-0000-000000000008',
  'Francais',
  'grammaire',
  'tri_nature_mots',
  'Tri par catégories : nature des mots',
  'Avance',
  'tri_categories',
  'Classez ces six groupes soulignés selon leur FONCTION dans la phrase.',
  NULL,
  '[{"id":"tc01q8w1","label":"un livre passionnant"},{"id":"tc01q8w2","label":"le chat de ma voisine"},{"id":"tc01q8w3","label":"Cette robe est rouge."},{"id":"tc01q8w4","label":"la table en bois"},{"id":"tc01q8w5","label":"une longue promenade"},{"id":"tc01q8w6","label":"Il semble fatigué."}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"epithete","label":"Épithète"},{"id":"cdn","label":"Complément du nom"},{"id":"attribut","label":"Attribut du sujet"}],"mapping":{"tc01q8w1":"epithete","tc01q8w2":"cdn","tc01q8w3":"attribut","tc01q8w4":"cdn","tc01q8w5":"epithete","tc01q8w6":"attribut"}}'::jsonb,
  'Dans « un livre passionnant » et « une longue promenade », l''adjectif est directement lié au nom sans verbe intermédiaire : c''est un épithète (liée). Dans « le chat de ma voisine » et « la table en bois », un groupe prépositionnel complète le nom : c''est un complément du nom. Dans « Cette robe est rouge » et « Il semble fatigué », l''adjectif est relié au sujet par un verbe d''état (être, sembler) : c''est un attribut du sujet.',
  'Confondre épithète et attribut du sujet. L''épithète est dans le groupe nominal (pas de verbe entre le nom et l''adjectif). L''attribut est séparé du sujet par un verbe d''état (être, paraître, sembler, devenir, rester, demeurer).',
  'valide',
  'Série CRPE Français — Tri par catégories',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q9 : Homophones grammaticaux — a/à, et/est, son/sont
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'ac110000-0000-0000-0000-000000000009',
  'Francais',
  'grammaire',
  'tri_nature_mots',
  'Tri par catégories : nature des mots',
  'Avance',
  'tri_categories',
  'Classez chaque mot souligné selon sa nature grammaticale. Le contexte est donné entre crochets.',
  NULL,
  '[{"id":"tc01q9w1","label":"a [Il a mangé.]"},{"id":"tc01q9w2","label":"à [Il va à Paris.]"},{"id":"tc01q9w3","label":"son [son cahier]"},{"id":"tc01q9w4","label":"sont [Ils sont partis.]"},{"id":"tc01q9w5","label":"et [pain et beurre]"},{"id":"tc01q9w6","label":"est [Elle est grande.]"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"verbe","label":"Verbe"},{"id":"preposition","label":"Préposition"},{"id":"determinant","label":"Déterminant"},{"id":"conjonction","label":"Conjonction de coordination"}],"mapping":{"tc01q9w1":"verbe","tc01q9w2":"preposition","tc01q9w3":"determinant","tc01q9w4":"verbe","tc01q9w5":"conjonction","tc01q9w6":"verbe"}}'::jsonb,
  '« a » (il a mangé) et « sont » (ils sont partis) et « est » (elle est grande) sont des formes conjuguées du verbe avoir ou être : ce sont des verbes. « à » (il va à Paris) introduit un complément de lieu : c''est une préposition. « son » (son cahier) précède un nom et indique la possession : c''est un déterminant possessif. « et » (pain et beurre) relie deux mots de même nature : c''est une conjonction de coordination.',
  'Confondre les homophones a/à, son/sont, et/est. Tests de substitution : « a » peut être remplacé par « avait » (verbe) ; « à » ne le peut pas (préposition). « son » peut être remplacé par « mon » (déterminant) ; « sont » par « étaient » (verbe). « et » par « et puis » (conjonction) ; « est » par « était » (verbe).',
  'valide',
  'Série CRPE Français — Tri par catégories',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;

-- Q10 : Classe grammaticale des mots en « -ment »
INSERT INTO public.exercises (
  id, subject, subdomain, topic_key, topic_label, level,
  exercise_type, instruction, support_text, choices, expected_answer,
  detailed_explanation, common_mistake, validation_status, source, access_tier, is_published
) VALUES (
  'ac110000-0000-0000-0000-000000000010',
  'Francais',
  'grammaire',
  'tri_nature_mots',
  'Tri par catégories : nature des mots',
  'Avance',
  'tri_categories',
  'Le suffixe « -ment » peut former des adverbes OU des noms. Classez ces six mots selon leur nature grammaticale réelle.',
  NULL,
  '[{"id":"tc01q10w1","label":"rapidement"},{"id":"tc01q10w2","label":"changement"},{"id":"tc01q10w3","label":"doucement"},{"id":"tc01q10w4","label":"bâtiment"},{"id":"tc01q10w5","label":"absolument"},{"id":"tc01q10w6","label":"événement"}]'::jsonb,
  '{"mode":"categorization","categories":[{"id":"adverbe","label":"Adverbe"},{"id":"nom","label":"Nom"}],"mapping":{"tc01q10w1":"adverbe","tc01q10w2":"nom","tc01q10w3":"adverbe","tc01q10w4":"nom","tc01q10w5":"adverbe","tc01q10w6":"nom"}}'::jsonb,
  'Rapidement, doucement et absolument sont formés sur un adjectif + le suffixe -ment : ce sont des adverbes de manière. Ils sont invariables et modifient un verbe ou un adjectif. Changement, bâtiment et événement sont des noms : ils acceptent un déterminant (le changement, un bâtiment, l''événement) et peuvent varier en nombre (des changements). Le suffixe -ment a deux origines distinctes : le latin -mente (adverbes) et le latin -mentum (noms).',
  'Croire que tout mot en -ment est un adverbe. Le test décisif : si le mot accepte un déterminant (un, le, des) et varie en nombre, c''est un nom. Si le mot est invariable et modifie un verbe ou un adjectif, c''est un adverbe.',
  'valide',
  'Série CRPE Français — Tri par catégories',
  'free',
  true
) ON CONFLICT (id) DO NOTHING;
