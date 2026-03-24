-- Remove legacy math topics that do not belong to the current 5-domain catalog.
-- These series use obsolete subdomains and distort the domain counters.

update public.exercises
set is_published = false
where subject = 'Mathematiques'
  and topic_key = any (
    array[
      'math_entiers_decimaux_v1',
      'math_grandeurs_mesures_v1',
      'math_passages_registre_v1',
      'math_proportionnalite_v1',
      'math_sens_operations_v1',
      'proportionnalite_situations_concretes',
      'tri_quadrilateres_proprietes'
    ]
  );
