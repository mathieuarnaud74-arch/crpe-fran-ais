-- ============================================================
-- FIX : Série 7 — Réécriture des exercices surlignage_propositions
-- Les segments pré-découpés en phrases entières rendaient l'exercice
-- trivial. On les remplace par des segments mot par mot pour que
-- l'élève doive réellement identifier les frontières de propositions.
-- ============================================================

-- Q1 — Facile — Subordination simple (cause)
-- "Le chat dort parce qu'il est fatigué"
UPDATE public.exercises SET
  choices = '[{"id":"s1","label":"Le chat"},{"id":"s2","label":"dort"},{"id":"s3","label":"parce qu''"},{"id":"s4","label":"il"},{"id":"s5","label":"est"},{"id":"s6","label":"fatigué"}]'::jsonb,
  expected_answer = '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Prop. principale","color":"blue"},{"id":"sub","label":"Sub. de cause","color":"amber"}],"mapping":{"s1":"princ","s2":"princ","s3":"sub","s4":"sub","s5":"sub","s6":"sub"}}'::jsonb
WHERE id = 'c7010000-0000-0000-0000-000000000001';

-- Q2 — Facile — Subordination complétive
-- "Je pense que tu as raison"
UPDATE public.exercises SET
  choices = '[{"id":"s1","label":"Je"},{"id":"s2","label":"pense"},{"id":"s3","label":"que"},{"id":"s4","label":"tu"},{"id":"s5","label":"as"},{"id":"s6","label":"raison"}]'::jsonb,
  expected_answer = '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Prop. principale","color":"blue"},{"id":"sub","label":"Sub. complétive","color":"amber"}],"mapping":{"s1":"princ","s2":"princ","s3":"sub","s4":"sub","s5":"sub","s6":"sub"}}'::jsonb
WHERE id = 'c7010000-0000-0000-0000-000000000002';

-- Q3 — Facile — Subordination antéposée
-- "Quand il pleut, les enfants restent à l'intérieur"
UPDATE public.exercises SET
  choices = '[{"id":"s1","label":"Quand"},{"id":"s2","label":"il"},{"id":"s3","label":"pleut,"},{"id":"s4","label":"les enfants"},{"id":"s5","label":"restent"},{"id":"s6","label":"à l''intérieur"}]'::jsonb,
  expected_answer = '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Prop. principale","color":"blue"},{"id":"sub","label":"Sub. temporelle","color":"amber"}],"mapping":{"s1":"sub","s2":"sub","s3":"sub","s4":"princ","s5":"princ","s6":"princ"}}'::jsonb
WHERE id = 'c7010000-0000-0000-0000-000000000003';

-- Q4 — Intermédiaire — Relative enchâssée (déjà 3 segments, on affine)
-- "Le livre qui est sur la table appartient à Marie"
UPDATE public.exercises SET
  choices = '[{"id":"s1","label":"Le livre"},{"id":"s2","label":"qui"},{"id":"s3","label":"est"},{"id":"s4","label":"sur la table"},{"id":"s5","label":"appartient"},{"id":"s6","label":"à Marie"}]'::jsonb,
  expected_answer = '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Prop. principale","color":"blue"},{"id":"sub","label":"Sub. relative","color":"amber"}],"mapping":{"s1":"princ","s2":"sub","s3":"sub","s4":"sub","s5":"princ","s6":"princ"}}'::jsonb
WHERE id = 'c7010000-0000-0000-0000-000000000004';

-- Q5 — Intermédiaire — Interrogation indirecte
-- "Les élèves se demandent si le contrôle sera difficile"
UPDATE public.exercises SET
  choices = '[{"id":"s1","label":"Les élèves"},{"id":"s2","label":"se demandent"},{"id":"s3","label":"si"},{"id":"s4","label":"le contrôle"},{"id":"s5","label":"sera"},{"id":"s6","label":"difficile"}]'::jsonb,
  expected_answer = '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Prop. principale","color":"blue"},{"id":"sub","label":"Sub. interrogative indirecte","color":"amber"}],"mapping":{"s1":"princ","s2":"princ","s3":"sub","s4":"sub","s5":"sub","s6":"sub"}}'::jsonb
WHERE id = 'c7010000-0000-0000-0000-000000000005';

-- Q6 — Intermédiaire — Coordination (indépendantes)
-- "Marie chante et Pierre danse"
UPDATE public.exercises SET
  choices = '[{"id":"s1","label":"Marie"},{"id":"s2","label":"chante"},{"id":"s3","label":"et"},{"id":"s4","label":"Pierre"},{"id":"s5","label":"danse"}]'::jsonb,
  expected_answer = '{"mode":"highlight_groups","groups":[{"id":"ind1","label":"Indépendante 1","color":"blue"},{"id":"ind2","label":"Indépendante 2","color":"amber"}],"mapping":{"s1":"ind1","s2":"ind1","s3":"ind2","s4":"ind2","s5":"ind2"}}'::jsonb
WHERE id = 'c7010000-0000-0000-0000-000000000006';

-- Q7 — Intermédiaire — Juxtaposition
-- "Le soleil brille ; les oiseaux chantent"
UPDATE public.exercises SET
  choices = '[{"id":"s1","label":"Le soleil"},{"id":"s2","label":"brille ;"},{"id":"s3","label":"les oiseaux"},{"id":"s4","label":"chantent"}]'::jsonb,
  expected_answer = '{"mode":"highlight_groups","groups":[{"id":"ind1","label":"Indépendante 1","color":"blue"},{"id":"ind2","label":"Indépendante 2","color":"amber"}],"mapping":{"s1":"ind1","s2":"ind1","s3":"ind2","s4":"ind2"}}'::jsonb
WHERE id = 'c7010000-0000-0000-0000-000000000007';

-- Q8 — Difficile — Coordination avec « mais »
-- "Il est fatigué mais il continue de travailler"
UPDATE public.exercises SET
  choices = '[{"id":"s1","label":"Il"},{"id":"s2","label":"est"},{"id":"s3","label":"fatigué"},{"id":"s4","label":"mais"},{"id":"s5","label":"il"},{"id":"s6","label":"continue"},{"id":"s7","label":"de travailler"}]'::jsonb,
  expected_answer = '{"mode":"highlight_groups","groups":[{"id":"ind1","label":"Indépendante 1","color":"blue"},{"id":"ind2","label":"Indépendante 2","color":"amber"}],"mapping":{"s1":"ind1","s2":"ind1","s3":"ind1","s4":"ind2","s5":"ind2","s6":"ind2","s7":"ind2"}}'::jsonb
WHERE id = 'c7010000-0000-0000-0000-000000000008';

-- Q9 — Difficile — Concessive (bien que + subjonctif)
-- "Bien qu'il soit fatigué, Pierre continue de courir"
UPDATE public.exercises SET
  choices = '[{"id":"s1","label":"Bien qu''"},{"id":"s2","label":"il"},{"id":"s3","label":"soit"},{"id":"s4","label":"fatigué,"},{"id":"s5","label":"Pierre"},{"id":"s6","label":"continue"},{"id":"s7","label":"de courir"}]'::jsonb,
  expected_answer = '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Prop. principale","color":"blue"},{"id":"sub","label":"Sub. concessive","color":"amber"}],"mapping":{"s1":"sub","s2":"sub","s3":"sub","s4":"sub","s5":"princ","s6":"princ","s7":"princ"}}'::jsonb
WHERE id = 'c7010000-0000-0000-0000-000000000009';

-- Q10 — Difficile — Deux subordonnées (déjà 4 segments, on affine)
-- "Les enfants qui jouent dans la cour rentreront quand la cloche sonnera"
UPDATE public.exercises SET
  choices = '[{"id":"s1","label":"Les enfants"},{"id":"s2","label":"qui"},{"id":"s3","label":"jouent"},{"id":"s4","label":"dans la cour"},{"id":"s5","label":"rentreront"},{"id":"s6","label":"quand"},{"id":"s7","label":"la cloche"},{"id":"s8","label":"sonnera"}]'::jsonb,
  expected_answer = '{"mode":"highlight_groups","groups":[{"id":"princ","label":"Prop. principale","color":"blue"},{"id":"rel","label":"Sub. relative","color":"amber"},{"id":"circo","label":"Sub. circonstancielle","color":"emerald"}],"mapping":{"s1":"princ","s2":"rel","s3":"rel","s4":"rel","s5":"princ","s6":"circo","s7":"circo","s8":"circo"}}'::jsonb
WHERE id = 'c7010000-0000-0000-0000-000000000010';
