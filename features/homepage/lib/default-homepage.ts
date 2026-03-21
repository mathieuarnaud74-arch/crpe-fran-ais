import {
  FRENCH_DIAGNOSTIC_SESSION_SIZE,
} from "@/content/french-diagnostic-questions";
import { SUBDOMAIN_LABELS } from "@/lib/constants";

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
      badgeText: "Préparation CRPE Français 2026",
      title: "Repérez vos lacunes en français CRPE, puis révisez seulement ce qui vous fera gagner des points.",
      description:
        `Le diagnostic de ${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions repère vos fragilités sous-domaine par sous-domaine. Ensuite, des séries ciblées et des corrections expliquées vous aident à travailler la règle utile au lieu d'enchaîner des exercices au hasard.`,
      primaryCtaLabel: "Lancer le diagnostic gratuit",
      primaryCtaHrefGuest: "/diagnostic",
      primaryCtaHrefAuth: "/diagnostic",
      secondaryCtaLabel: "Comparer gratuit et premium",
      secondaryCtaHref: "/offre",
      metaItems: [
        "Programme officiel 2026",
        `${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions · profil par sous-domaine`,
      ],
    },
  },
  {
    type: "trust_bar",
    visible: true,
    props: {
      eyebrow: "Concret dès l'arrivée",
      items: [
        {
          label: "500+ exercices",
          detail: `${subdomainCount} sous-domaines du programme officiel CRPE 2026`,
        },
        {
          label: `${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions · ~15 min`,
          detail: `${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions niveau CRPE, avec profil par sous-domaine`,
        },
        {
          label: "Gratuit pour commencer",
          detail: "Compte gratuit, diagnostic sauvegardé et 20 questions corrigées par jour",
        },
      ],
    },
  },
  {
    type: "benefits",
    visible: true,
    props: {
      eyebrow: "Comment ça marche",
      title: "Diagnostic, priorités, séries ciblées.",
      description:
        "Vous commencez par situer vos fragilités, puis vous travaillez les notions qui vous feront progresser le plus vite.",
      cards: [
        {
          eyebrow: "01 — Point de départ",
          title: "Vous voyez vos lacunes avant de réviser.",
          description:
            `${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions couvrent les ${subdomainCount} sous-domaines. En sortie, vous savez quoi reprendre d'abord et quoi laisser de côté pour l'instant.`,
        },
        {
          eyebrow: "02 — Séries ciblées",
          title: "Vous travaillez les points qui méritent vraiment votre temps.",
          description:
            "Les séries à lancer en premier remontent selon votre profil. Vous avancez dans un ordre utile, pas au hasard.",
        },
        {
          eyebrow: "03 — Corrections",
          title: "Les corrections vous laissent une règle claire, pas juste un verdict.",
          description:
            "Chaque correction explique le raisonnement, le piège et le repère à retenir pour la suite.",
        },
      ],
      steps: [],
    },
  },
  {
    type: "features",
    visible: true,
    props: {
      eyebrow: "La qualité des corrections",
      title: "Chaque correction doit vous laisser une règle claire.",
      description:
        "L'objectif n'est pas de signaler l'erreur. L'objectif est de vous aider à la comprendre, puis à la refaire juste.",
      bulletItems: [
        "Feedback immédiat sur les QCM et les analyses de langue.",
        "Règle nommée et justification réutilisable dans les séries suivantes.",
        "Formulation pensée pour le niveau attendu au CRPE.",
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
      description: "Réponses courtes aux vraies hésitations avant de commencer.",
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
            `Environ 30 minutes et ${FRENCH_DIAGNOSTIC_SESSION_SIZE} questions plus tard, vous obtenez un profil complet sous-domaine par sous-domaine : points d'appui, lacunes prioritaires et ordre de révision recommandé. Ce profil guide ensuite les séries à lancer en premier.`,
        },
        {
          question: "Les corrections sont-elles vraiment utiles ?",
          answer:
            "C'est le point central du site. Chaque exercice est corrigé avec la règle grammaticale ou orthographique qui s'applique — pas seulement la bonne réponse. Vous comprenez pourquoi vous avez faux, et vous mémorisez la règle pour ne plus refaire la même erreur le jour du concours.",
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
      ],
    },
  },
  {
    type: "final_cta",
    visible: true,
    props: {
      eyebrow: "Point de départ recommandé",
      title: "Commencez par voir où vous perdez vraiment des points.",
      description:
        "Le diagnostic est gratuit. Il vous donne un profil par sous-domaine, puis vous oriente vers les séries les plus rentables.",
      bulletItems: [
        "Diagnostic complet gratuit, sans carte bancaire.",
        "Profil sous-domaine en sortie.",
        "20 questions corrigées par jour en accès gratuit.",
        "Accès premium illimité, résiliable à tout moment.",
      ],
      pricingTiers: [
        { label: "Gratuit", price: "0 €/jour", highlight: false },
        { label: "Journalier", price: "0,99 €", highlight: false },
        { label: "Semainier", price: "2,99 €", highlight: false },
        { label: "Mensuel", price: "6,99 €/mois", highlight: true },
      ],
      primaryCtaLabel: "Lancer le diagnostic gratuit",
      primaryCtaHref: "/diagnostic",
      secondaryCtaLabelGuest: "Voir les accès gratuit et premium",
      secondaryCtaHrefGuest: "/offre",
      secondaryCtaLabelAuth: "Voir les accès gratuit et premium",
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
