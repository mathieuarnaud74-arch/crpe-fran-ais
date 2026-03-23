import { z } from "zod";

const richTextSchema = z.string().trim().min(1).max(4000);
const shortTextSchema = z.string().trim().min(1).max(240);
const urlSchema = z.string().trim().min(1).max(512);

export const homepageSectionTypeValues = [
  "hero",
  "trust_bar",
  "benefits",
  "features",
  "domains",
  "faq",
  "final_cta",
] as const;

export const homepageSectionTypeSchema = z.enum(homepageSectionTypeValues);

export type HomepageSectionType = z.infer<typeof homepageSectionTypeSchema>;

export const heroPreviewResultLevelSchema = z.enum(["Prioritaire", "À renforcer", "Maîtrisé"]);
export type HeroPreviewResultLevel = z.infer<typeof heroPreviewResultLevelSchema>;

export const heroSectionPropsSchema = z.object({
  badgeText: shortTextSchema,
  title: richTextSchema,
  description: richTextSchema,
  primaryCtaLabel: shortTextSchema,
  primaryCtaHrefGuest: urlSchema,
  primaryCtaHrefAuth: urlSchema,
  secondaryCtaLabel: shortTextSchema,
  secondaryCtaHref: urlSchema,
  metaItems: z.array(shortTextSchema).min(1).max(4),
  previewBadgeText: shortTextSchema.optional(),
  previewTitle: shortTextSchema.optional(),
  previewDescription: richTextSchema.optional(),
  previewStats: z
    .array(
      z.object({
        value: shortTextSchema,
        label: shortTextSchema,
      }),
    )
    .min(1)
    .max(4)
    .optional(),
  previewResults: z
    .array(
      z.object({
        label: shortTextSchema,
        level: heroPreviewResultLevelSchema,
      }),
    )
    .min(1)
    .max(8)
    .optional(),
  previewRecommendationEyebrow: shortTextSchema.optional(),
  previewRecommendationText: richTextSchema.optional(),
});

export type HeroSectionProps = z.infer<typeof heroSectionPropsSchema>;

export const trustBarSectionPropsSchema = z.object({
  eyebrow: shortTextSchema,
  items: z
    .array(
      z.object({
        label: shortTextSchema,
        detail: richTextSchema,
      }),
    )
    .min(1)
    .max(4),
});

export type TrustBarSectionProps = z.infer<typeof trustBarSectionPropsSchema>;

export const benefitsSectionPropsSchema = z.object({
  eyebrow: shortTextSchema,
  title: richTextSchema,
  description: richTextSchema,
  cards: z
    .array(
      z.object({
        eyebrow: shortTextSchema,
        title: shortTextSchema,
        description: richTextSchema,
        stat: shortTextSchema.optional(),
      }),
    )
    .min(1)
    .max(4),
  steps: z
    .array(
      z.object({
        title: shortTextSchema,
        description: richTextSchema,
      }),
    )
    .min(1)
    .max(4),
});

export type BenefitsSectionProps = z.infer<typeof benefitsSectionPropsSchema>;

export const featuresSectionPropsSchema = z.object({
  eyebrow: shortTextSchema,
  title: richTextSchema,
  description: richTextSchema,
  bulletItems: z.array(shortTextSchema).min(1).max(6),
});

export type FeaturesSectionProps = z.infer<typeof featuresSectionPropsSchema>;

export const domainsSectionPropsSchema = z.object({
  eyebrow: shortTextSchema,
  title: richTextSchema,
  description: richTextSchema,
});

export type DomainsSectionProps = z.infer<typeof domainsSectionPropsSchema>;

export const faqSectionPropsSchema = z.object({
  eyebrow: shortTextSchema,
  title: richTextSchema,
  description: richTextSchema,
  noteTitle: shortTextSchema,
  noteDescription: richTextSchema,
  noteLinkHref: z.string().url().optional(),
  items: z
    .array(
      z.object({
        question: shortTextSchema,
        answer: richTextSchema,
      }),
    )
    .min(1)
    .max(8),
});

export type FaqSectionProps = z.infer<typeof faqSectionPropsSchema>;

export const finalCtaSectionPropsSchema = z.object({
  eyebrow: shortTextSchema,
  title: richTextSchema,
  description: richTextSchema,
  bulletItems: z.array(shortTextSchema).min(1).max(6),
  pricingTiers: z
    .array(
      z.object({
        label: shortTextSchema,
        price: shortTextSchema,
        highlight: z.boolean(),
      }),
    )
    .min(0)
    .max(4),
  primaryCtaLabel: shortTextSchema,
  primaryCtaHref: urlSchema,
  secondaryCtaLabelGuest: shortTextSchema,
  secondaryCtaHrefGuest: urlSchema,
  secondaryCtaLabelAuth: shortTextSchema,
  secondaryCtaHrefAuth: urlSchema,
});

export type FinalCtaSectionProps = z.infer<typeof finalCtaSectionPropsSchema>;

export const homepageSectionSchemas = {
  hero: heroSectionPropsSchema,
  trust_bar: trustBarSectionPropsSchema,
  benefits: benefitsSectionPropsSchema,
  features: featuresSectionPropsSchema,
  domains: domainsSectionPropsSchema,
  faq: faqSectionPropsSchema,
  final_cta: finalCtaSectionPropsSchema,
} as const;

export type HomepageSectionPropsMap = {
  hero: HeroSectionProps;
  trust_bar: TrustBarSectionProps;
  benefits: BenefitsSectionProps;
  features: FeaturesSectionProps;
  domains: DomainsSectionProps;
  faq: FaqSectionProps;
  final_cta: FinalCtaSectionProps;
};

export type HomepageSectionDefinition = {
  label: string;
  description: string;
  allowMultiple: boolean;
};

export const homepageSectionDefinitions: Record<HomepageSectionType, HomepageSectionDefinition> = {
  hero: {
    label: "Hero",
    description: "Promesse principale, CTA et aperçu du diagnostic.",
    allowMultiple: false,
  },
  trust_bar: {
    label: "Barre de confiance",
    description: "Repères rapides sous forme de cartes courtes.",
    allowMultiple: false,
  },
  benefits: {
    label: "Bénéfices",
    description: "Arguments marketing et étapes de méthode.",
    allowMultiple: true,
  },
  features: {
    label: "Fonctionnalités",
    description: "Section éditoriale avec démonstration et points forts.",
    allowMultiple: true,
  },
  domains: {
    label: "Domaines",
    description: "Présentation des domaines couverts, avec cartes fixes.",
    allowMultiple: false,
  },
  faq: {
    label: "FAQ",
    description: "Questions/réponses et réassurance.",
    allowMultiple: false,
  },
  final_cta: {
    label: "CTA final",
    description: "Clôture commerciale avec tarifs et CTA.",
    allowMultiple: false,
  },
};

export type HomepagePageStatus = "draft" | "published";
export type HomepageSectionStage = "draft" | "published";

export type HomepagePageRecord = {
  id: string;
  slug: string;
  title: string;
  status: HomepagePageStatus;
  lastPublishedAt: string | null;
};

export type HomepageSectionRecord<T extends HomepageSectionType = HomepageSectionType> =
  T extends HomepageSectionType
    ? {
        id: string;
        pageId: string;
        stage: HomepageSectionStage;
        type: T;
        orderIndex: number;
        visible: boolean;
        props: HomepageSectionPropsMap[T];
      }
    : never;

export function parseHomepageSectionProps<T extends HomepageSectionType>(
  type: T,
  value: unknown,
): HomepageSectionPropsMap[T] | null {
  const schema = homepageSectionSchemas[type];
  const result = schema.safeParse(value);

  if (!result.success) {
    return null;
  }

  return result.data as HomepageSectionPropsMap[T];
}

export function getAvailableHomepageSectionTypes(existingTypes: HomepageSectionType[]) {
  return homepageSectionTypeValues.filter((type) => {
    if (homepageSectionDefinitions[type].allowMultiple) {
      return true;
    }

    return !existingTypes.includes(type);
  });
}
