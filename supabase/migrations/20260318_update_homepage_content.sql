-- Homepage content update: refonte copywriting mars 2026
-- Met à jour toutes les sections (draft + published) avec les nouveaux textes.
-- Trust bar et Domaines passent en visible = false.

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

  -- ── HERO ──────────────────────────────────────────────────────────────────
  UPDATE public.page_sections
  SET props_json = $json${
    "badgeText": "CRPE Français Oral & Écrit 2026-2027",
    "title": "Révisez les épreuves de français en vous exerçant.",
    "description": "Retrouvez de nombreux contenus gratuits pour revoir les notions essentielles du programme 2026, faire le point sur vos besoins et avancer pas à pas avec des exercices ciblés et des corrections claires.",
    "primaryCtaLabel": "Découvrir gratuitement",
    "primaryCtaHrefGuest": "/inscription",
    "primaryCtaHrefAuth": "/diagnostic",
    "secondaryCtaLabel": "Voir l'offre complète",
    "secondaryCtaHref": "/offre",
    "metaItems": ["Aucune carte requise", "Conforme au programme 2026"]
  }$json$::jsonb
  WHERE page_id = v_page_id AND type = 'hero';

  -- ── TRUST BAR : masquer ───────────────────────────────────────────────────
  UPDATE public.page_sections
  SET visible = false
  WHERE page_id = v_page_id AND type = 'trust_bar';

  -- ── BENEFITS ──────────────────────────────────────────────────────────────
  UPDATE public.page_sections
  SET props_json = $json${
    "eyebrow": "Comment ça marche",
    "title": "Trois étapes. Un point de départ clair. Des révisions qui servent.",
    "description": "Le CRPE teste des règles précises. Les premières questions identifient les lacunes. Les séries les travaillent dans l'ordre.",
    "cards": [
      {
        "eyebrow": "01 — Point de départ",
        "title": "Vous savez ce qui vous manque — en 8 minutes.",
        "description": "40 questions sur les 7 sous-domaines identifient vos fragilités. Pas une note globale — un profil avec les priorités en premier."
      },
      {
        "eyebrow": "02 — Séries ciblées",
        "title": "Vous révisez ce qui compte, pas ce que vous savez déjà.",
        "description": "Les séries prioritaires remontent selon votre profil. Vous progressez sur vos points faibles, pas sur vos acquis."
      },
      {
        "eyebrow": "03 — Corrections",
        "title": "Chaque erreur devient une règle que vous ne referez plus.",
        "description": "Les corrections expliquent le raisonnement derrière la bonne réponse. Vous comprenez avant de passer à la suite."
      }
    ],
    "steps": [
      {
        "title": "Point de départ en 8 minutes",
        "description": "Un bref passage qui identifie les fragilités avant de débloquer les révisions."
      },
      {
        "title": "Séries dans le bon ordre",
        "description": "Le profil obtenu met en avant les thèmes les plus rentables à reprendre en premier."
      },
      {
        "title": "Corrections qui enseignent",
        "description": "Chaque réponse laisse une règle, une justification et un repère pour la suite."
      }
    ]
  }$json$::jsonb
  WHERE page_id = v_page_id AND type = 'benefits';

  -- ── FEATURES ──────────────────────────────────────────────────────────────
  UPDATE public.page_sections
  SET props_json = $json${
    "eyebrow": "La qualité des corrections",
    "title": "Pas un simple « faux ». Une explication qui vaut une révision.",
    "description": "Les exercices expliquent la règle et l'appliquent. Vous quittez chaque question avec quelque chose en plus.",
    "bulletItems": [
      "QCM et analyses de langue avec feedback immédiat.",
      "Règle nommée et justification réutilisable pour les séances suivantes.",
      "Formulation pensée pour le concours, pas pour l'effet gadget."
    ]
  }$json$::jsonb
  WHERE page_id = v_page_id AND type = 'features';

  -- ── DOMAINS : masquer ─────────────────────────────────────────────────────
  UPDATE public.page_sections
  SET visible = false
  WHERE page_id = v_page_id AND type = 'domains';

  -- ── FAQ ───────────────────────────────────────────────────────────────────
  UPDATE public.page_sections
  SET props_json = $json${
    "eyebrow": "FAQ",
    "title": "Ce que les candidats demandent avant de commencer.",
    "description": "Réponses directes. Pas d'engagement caché.",
    "noteTitle": "Une question non listée ?",
    "noteDescription": "Écrivez à contact@crpe-prep.fr",
    "items": [
      {
        "question": "C'est vraiment gratuit ?",
        "answer": "Oui — sans paiement ni carte bancaire. Accessible à tous avant tout engagement."
      },
      {
        "question": "Que reçoit-on à la fin de la session de départ ?",
        "answer": "Un profil détaillé sous-domaine par sous-domaine, avec les priorités à travailler en premier."
      },
      {
        "question": "Les corrections sont-elles vraiment utiles ?",
        "answer": "C'est le point central du site. Chaque exercice est corrigé avec la règle qui s'applique — pas seulement la bonne réponse."
      },
      {
        "question": "Quels domaines sont couverts ?",
        "answer": "Grammaire, orthographe, conjugaison, lexique, analyse de la langue, compréhension de texte et didactique — les 7 sous-domaines testés au CRPE."
      },
      {
        "question": "Peut-on arrêter l'abonnement facilement ?",
        "answer": "Oui. Résiliation sans condition via Stripe. Les accès journalier et hebdomadaire ne se renouvellent pas automatiquement."
      }
    ]
  }$json$::jsonb
  WHERE page_id = v_page_id AND type = 'faq';

  -- ── FINAL CTA ─────────────────────────────────────────────────────────────
  UPDATE public.page_sections
  SET props_json = $json${
    "eyebrow": "Prêt à commencer ?",
    "title": "Gratuit pour commencer. 8 minutes. Un profil de révision en sortie.",
    "description": "Pas de carte bancaire. Pas d'engagement. Juste un point de départ clair.",
    "bulletItems": [
      "Accès gratuit pour commencer.",
      "Séries ciblées selon vos résultats.",
      "Résiliable à tout moment."
    ],
    "pricingTiers": [],
    "primaryCtaLabel": "Commencer — c'est gratuit",
    "primaryCtaHref": "/inscription",
    "secondaryCtaLabelGuest": "Voir l'offre complète",
    "secondaryCtaHrefGuest": "/offre",
    "secondaryCtaLabelAuth": "Voir l'offre complète",
    "secondaryCtaHrefAuth": "/offre"
  }$json$::jsonb
  WHERE page_id = v_page_id AND type = 'final_cta';

  RAISE NOTICE 'Homepage content mis à jour.';
END $$;
