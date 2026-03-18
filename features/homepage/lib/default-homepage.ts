import {
  FRENCH_DIAGNOSTIC_BANK_SIZE,
  FRENCH_DIAGNOSTIC_SESSION_SIZE,
} from "@/content/french-diagnostic-questions";
import { FRENCH_DOMAIN_ORDER, SUBJECT_LABEL, SUBDOMAIN_LABELS } from "@/lib/constants";

import {
  type HomepagePageRecord,
  type HomepageSectionPropsMap,
  type HomepageSectionRecord,
  type HomepageSectionStage,
  type HomepageSectionType,
} from "./blocks";

const subdomainCount = Object.keys(SUBDOMAIN_LABELS).length;

type SectionSeed<T extends HomepageSectionType> = {
  type: T;
  visible: boolean;
  props: HomepageSectionPropsMap[T];
};

const defaultSectionSeeds: Array<SectionSeed<HomepageSectionType>> = [
  {
    type: "hero",
    visible: true,
    props: {
      badgeText: "CRPE Français Oral & Écrit 2026-2027",
      title: "Passez votre CRPE français sans laisser de lacunes.",
      description:
        "Le CRPE teste des automatismes précis. 40 questions suffisent à révéler vos vraies lacunes. Ensuite, des séries ciblées travaillent exactement ces points — avec des corrections qui expliquent la règle, pas juste la bonne réponse.",
      primaryCtaLabel: "Faire le diagnostic gratuit",
      primaryCtaHrefGuest: "/inscription",
      primaryCtaHrefAuth: "/diagnostic",
      secondaryCtaLabel: "Voir l'offre complète",
      secondaryCtaHref: "/offre",
      metaItems: ["Gratuit, sans carte bancaire", "Programme officiel 2026", "500+ exercices · 60+ séries"],
    },
  },
  {
    type: "trust_bar",
    visible: true,
    props: {
      eyebrow: "En un coup d'œil",
      items: [
        {
          label: "500+ exercices",
          detail: `${subdomainCount} sous-domaines du programme officiel CRPE 2026`,
        },
        {
          label: `${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions · ~8 minutes`,
          detail: "Diagnostic personnalisé par sous-domaine, pas une note globale",
        },
        {
          label: "Gratuit pour commencer",
          detail: "20 questions corrigées par jour — sans carte bancaire",
        },
      ],
    },
  },
  {
    type: "benefits",
    visible: true,
    props: {
      eyebrow: "Comment ça marche",
      title: "Trois étapes. Un point de départ clair. Des révisions qui servent.",
      description:
        "Le CRPE teste des règles précises. Les premières questions identifient les lacunes. Les séries les travaillent dans l'ordre.",
      cards: [
        {
          eyebrow: "01 — Point de départ",
          title: "Vous savez ce qui vous manque — en 8 minutes.",
          description:
            `${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions sur les ${subdomainCount} sous-domaines identifient vos fragilités. Pas une note globale — un profil avec les priorités en premier.`,
        },
        {
          eyebrow: "02 — Séries ciblées",
          title: "Vous révisez ce qui compte, pas ce que vous savez déjà.",
          description:
            "Les séries prioritaires remontent selon votre profil. Vous progressez sur vos points faibles, pas sur vos acquis.",
        },
        {
          eyebrow: "03 — Corrections",
          title: "Chaque erreur devient une règle que vous ne referez plus.",
          description:
            "Les corrections expliquent le raisonnement derrière la bonne réponse. Vous comprenez avant de passer à la suite.",
        },
      ],
      steps: [
        {
          title: "Point de départ en 8 minutes",
          description:
            "Un bref passage qui identifie les fragilités avant de débloquer les révisions.",
        },
        {
          title: "Séries dans le bon ordre",
          description:
            "Le profil obtenu met en avant les thèmes les plus rentables à reprendre en premier.",
        },
        {
          title: "Corrections qui enseignent",
          description:
            "Chaque réponse laisse une règle, une justification et un repère pour la suite.",
        },
      ],
    },
  },
  {
    type: "features",
    visible: true,
    props: {
      eyebrow: "La qualité des corrections",
      title: "Pas un simple « faux ». Une explication qui vaut une révision.",
      description:
        "Les exercices expliquent la règle et l'appliquent. Vous quittez chaque question avec quelque chose en plus.",
      bulletItems: [
        "QCM et analyses de langue avec feedback immédiat.",
        "Règle nommée et justification réutilisable pour les séances suivantes.",
        "Formulation pensée pour le concours, pas pour l'effet gadget.",
      ],
    },
  },
  {
    type: "domains",
    visible: false,
    props: {
      eyebrow: "Domaines couverts",
      title: "Trois domaines, sept sous-domaines, un parcours de révision cohérent.",
      description:
        "Le contenu est organisé pour vous aider à réviser avec méthode, sans perdre la vue d'ensemble du programme.",
    },
  },
  {
    type: "faq",
    visible: true,
    props: {
      eyebrow: "FAQ",
      title: "Ce que les candidats demandent avant de commencer.",
      description: "Réponses directes. Pas d'engagement caché.",
      noteTitle: "Une question non listée ?",
      noteDescription: "Écrivez à contact@crpe-prep.fr",
      noteLinkHref: "mailto:contact@crpe-prep.fr",
      items: [
        {
          question: "C'est vraiment gratuit ?",
          answer:
            "Oui — sans carte bancaire ni engagement. Le diagnostic complet est gratuit, et vous accédez à 20 exercices par jour en version libre. L'abonnement débloque l'accès illimité et les séries ciblées selon vos résultats.",
        },
        {
          question: "Que reçoit-on à la fin de la session de départ ?",
          answer:
            "En 8 minutes et 16 questions, vous obtenez un profil complet sous-domaine par sous-domaine : vos points forts, vos lacunes prioritaires, et un ordre de révision personnalisé. Ce profil guide tout votre parcours — les séries remontent dans l'ordre où vous en avez le plus besoin.",
        },
        {
          question: "Les corrections sont-elles vraiment utiles ?",
          answer:
            "C'est le point central du site. Chaque exercice est corrigé avec la règle grammaticale ou orthographique qui s'applique — pas seulement la bonne réponse. Vous comprenez pourquoi vous avez faux, et vous mémorisez la règle pour ne plus refaire la même erreur le jour du concours.",
        },
        {
          question: "Quels domaines sont couverts ?",
          answer:
            `Grammaire, orthographe, conjugaison, lexique, analyse de la langue, compréhension de texte et didactique du français — les ${subdomainCount} sous-domaines testés au CRPE. Tout le contenu est aligné sur le programme officiel 2026.`,
        },
        {
          question: "Peut-on arrêter l'abonnement facilement ?",
          answer:
            "Oui, sans condition ni délai de préavis. Résiliation en un clic depuis le portail Stripe. Les formules journalière et hebdomadaire ne se renouvellent pas automatiquement — aucune surprise sur votre relevé.",
        },
        {
          question: "En quoi c'est différent des annales officielles ?",
          answer:
            "Les annales vous donnent des sujets — pas de correction, pas de priorisation, pas d'adaptation à vos lacunes. Ici, chaque exercice est corrigé avec la règle qui s'applique, un diagnostic identifie vos points faibles sous-domaine par sous-domaine, et les séries remontent dans l'ordre où vous en avez le plus besoin. Les annales sont un outil de test. Ce site est un outil de progression.",
        },
        {
          question: "Combien d'exercices sont disponibles ?",
          answer:
            "Plus de 500 exercices répartis en 60+ séries, couvrant les 7 sous-domaines testés au CRPE : grammaire, conjugaison, orthographe, lexique, analyse de la langue, compréhension de texte et didactique du français. Le catalogue est aligné sur le programme officiel 2026.",
        },
      ],
    },
  },
  {
    type: "final_cta",
    visible: true,
    props: {
      eyebrow: "Prêt à commencer ?",
      title: "Commencez par le diagnostic — gratuit, 8 minutes, sans carte.",
      description:
        "Identifiez vos lacunes réelles. Révisez dans l'ordre qui compte. Comprenez avant de passer à la suite.",
      bulletItems: [
        "Gratuit pour commencer — sans carte bancaire.",
        "Profil sous-domaine en sortie du diagnostic.",
        "Séries ciblées selon vos résultats.",
        "Résiliable à tout moment via Stripe.",
      ],
      pricingTiers: [
        { label: "Gratuit", price: "0 €/jour", highlight: false },
        { label: "Journalier", price: "0,99 €", highlight: false },
        { label: "Semainier", price: "2,99 €", highlight: false },
        { label: "Mensuel", price: "6,99 €/mois", highlight: true },
      ],
      primaryCtaLabel: "Faire le diagnostic gratuit",
      primaryCtaHref: "/inscription",
      secondaryCtaLabelGuest: "Voir l'offre complète",
      secondaryCtaHrefGuest: "/offre",
      secondaryCtaLabelAuth: "Voir l'offre complète",
      secondaryCtaHrefAuth: "/offre",
    },
  },
];

const defaultSectionSeedByType = Object.fromEntries(
  defaultSectionSeeds.map((section) => [section.type, section]),
) as Record<HomepageSectionType, SectionSeed<HomepageSectionType>>;

export function createDefaultHomepagePage(): Omit<HomepagePageRecord, "id"> {
  return {
    slug: "homepage",
    title: "Homepage marketing",
    status: "published",
    lastPublishedAt: new Date().toISOString(),
  };
}

export function createDefaultHomepageSections(
  stage: HomepageSectionStage,
  pageId = "seed-homepage",
): Array<Omit<HomepageSectionRecord, "id">> {
  return defaultSectionSeeds.map((section, index) => ({
    pageId,
    stage,
    type: section.type,
    orderIndex: index,
    visible: section.visible,
    props: section.props,
  }));
}

export function getDefaultHomepageSectionProps<T extends HomepageSectionType>(type: T) {
  return defaultSectionSeedByType[type].props as HomepageSectionPropsMap[T];
}
