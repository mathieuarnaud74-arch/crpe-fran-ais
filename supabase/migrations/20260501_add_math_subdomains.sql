-- Ajout des sous-domaines mathématiques à l'enum exercise_subdomain
ALTER TYPE public.exercise_subdomain ADD VALUE IF NOT EXISTS 'nombres_calcul';
ALTER TYPE public.exercise_subdomain ADD VALUE IF NOT EXISTS 'geometrie';
ALTER TYPE public.exercise_subdomain ADD VALUE IF NOT EXISTS 'grandeurs_mesures';
ALTER TYPE public.exercise_subdomain ADD VALUE IF NOT EXISTS 'organisation_donnees';
ALTER TYPE public.exercise_subdomain ADD VALUE IF NOT EXISTS 'didactique_maths';
