-- Ajout du type d'exercice surlignage_propositions à l'enum exercise_type
ALTER TYPE exercise_type ADD VALUE IF NOT EXISTS 'surlignage_propositions';
