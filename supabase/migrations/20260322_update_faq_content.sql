-- FAQ content update: enrichissement des réponses + noteLinkHref mars 2026
-- Remplace les réponses courtes par des réponses complètes avec contexte.
-- Ajoute noteLinkHref pour rendre l'email de contact cliquable.

DO $$
DECLARE
  v_page_id uuid;
BEGIN
  SELECT id INTO v_page_id
  FROM public.pages
  WHERE slug = 'homepage'
  LIMIT 1;

  IF v_page_id IS NULL THEN
    RAISE NOTICE 'Page homepage introuvable — migration ignorée.';
    RETURN;
  END IF;

  UPDATE public.page_sections
  SET props_json = $json${
    "eyebrow": "FAQ",
    "title": "Ce que les candidats demandent avant de commencer.",
    "description": "Réponses directes. Pas d'engagement caché.",
    "noteTitle": "Une question non listée ?",
    "noteDescription": "Écrivez à contact@crpe-prep.fr",
    "noteLinkHref": "mailto:contact@crpe-prep.fr",
    "items": [
      {
        "question": "C'est vraiment gratuit ?",
        "answer": "Oui — sans carte bancaire ni engagement. Le diagnostic complet est gratuit, et vous accédez à 20 exercices par jour en version libre. L'abonnement débloque l'accès illimité et les séries ciblées selon vos résultats."
      },
      {
        "question": "Que reçoit-on à la fin de la session de départ ?",
        "answer": "En 8 minutes et 16 questions, vous obtenez un profil complet sous-domaine par sous-domaine : vos points forts, vos lacunes prioritaires, et un ordre de révision personnalisé. Ce profil guide tout votre parcours — les séries remontent dans l'ordre où vous en avez le plus besoin."
      },
      {
        "question": "Les corrections sont-elles vraiment utiles ?",
        "answer": "C'est le point central du site. Chaque exercice est corrigé avec la règle grammaticale ou orthographique qui s'applique — pas seulement la bonne réponse. Vous comprenez pourquoi vous avez faux, et vous mémorisez la règle pour ne plus refaire la même erreur le jour du concours."
      },
      {
        "question": "Quels domaines sont couverts ?",
        "answer": "Grammaire, orthographe, conjugaison, lexique, analyse de la langue, compréhension de texte et didactique du français — les 7 sous-domaines testés au CRPE. Tout le contenu est aligné sur le programme officiel 2026."
      },
      {
        "question": "Peut-on arrêter l'abonnement facilement ?",
        "answer": "Oui, sans condition ni délai de préavis. Résiliation en un clic depuis le portail Stripe. Les formules journalière et hebdomadaire ne se renouvellent pas automatiquement — aucune surprise sur votre relevé."
      },
      {
        "question": "En quoi c'est différent des annales officielles ?",
        "answer": "Les annales vous donnent des sujets — pas de correction, pas de priorisation, pas d'adaptation à vos lacunes. Ici, chaque exercice est corrigé avec la règle qui s'applique, un diagnostic identifie vos points faibles sous-domaine par sous-domaine, et les séries remontent dans l'ordre où vous en avez le plus besoin. Les annales sont un outil de test. Ce site est un outil de progression."
      },
      {
        "question": "Combien d'exercices sont disponibles ?",
        "answer": "Plus de 500 exercices répartis en 60+ séries, couvrant les 7 sous-domaines testés au CRPE : grammaire, conjugaison, orthographe, lexique, analyse de la langue, compréhension de texte et didactique du français. Le catalogue est aligné sur le programme officiel 2026."
      }
    ]
  }$json$::jsonb
  WHERE page_id = v_page_id AND type = 'faq';

END $$;
