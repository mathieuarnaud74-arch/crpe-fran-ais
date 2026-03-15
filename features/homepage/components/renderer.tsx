import {
  ArrowRight,
  BarChart3,
  BookOpen,
  CheckCircle2,
  CircleHelp,
  Clock3,
  type LucideIcon,
  ShieldCheck,
  Sparkles,
  Target,
} from "lucide-react";
import Balancer from "react-wrap-balancer";

import { FadeIn } from "@/components/marketing/reveal";
import { Accordion, AccordionContent, AccordionItem, AccordionTrigger } from "@/components/ui/accordion";
import { Badge } from "@/components/ui/badge";
import { ButtonLink } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { FRENCH_DOMAIN_CONFIG, FRENCH_DOMAIN_ORDER, SUBDOMAIN_LABELS } from "@/lib/constants";

import type {
  BenefitsSectionProps,
  DomainsSectionProps,
  FaqSectionProps,
  FeaturesSectionProps,
  FinalCtaSectionProps,
  HeroSectionProps,
  HomepageSectionRecord,
  TrustBarSectionProps,
} from "@/features/homepage/lib/blocks";

import { ShowcaseAnalyse, ShowcaseQCM } from "@/app/(marketing)/_showcase";

type HomepageRendererProps = {
  sections: HomepageSectionRecord[];
  authenticated: boolean;
};

const trustBarIcons = [Clock3, BarChart3, ShieldCheck] satisfies LucideIcon[];
const benefitIcons = [Target, BookOpen, Sparkles] satisfies LucideIcon[];
const domainIcons: Record<(typeof FRENCH_DOMAIN_ORDER)[number], LucideIcon> = {
  grammaire: BookOpen,
  orthographe: CheckCircle2,
  "analyse-de-la-langue": Sparkles,
};

const heroResultLevelStyles = {
  Prioritaire:
    "border border-accentSecondary/25 bg-accentSecondarySoft text-accentSecondaryDark",
  "À renforcer": "border border-border bg-secondary text-ink",
  "Maîtrisé": "border border-successBorder bg-successBg text-accent",
} as const;

export function HomepageRenderer({ sections, authenticated }: HomepageRendererProps) {
  return (
    <main>
      {sections
        .filter((section) => section.visible)
        .sort((left, right) => left.orderIndex - right.orderIndex)
        .map((section) => (
          <HomepageSectionSwitch
            key={section.id}
            section={section}
            authenticated={authenticated}
          />
        ))}
    </main>
  );
}

function HomepageSectionSwitch({
  section,
  authenticated,
}: {
  section: HomepageSectionRecord;
  authenticated: boolean;
}) {
  switch (section.type) {
    case "hero":
      return <HeroSection props={section.props} authenticated={authenticated} />;
    case "trust_bar":
      return <TrustBarSection props={section.props} />;
    case "benefits":
      return <BenefitsSection props={section.props} />;
    case "features":
      return <FeaturesSection props={section.props} />;
    case "domains":
      return <DomainsSection props={section.props} />;
    case "faq":
      return <FaqSection props={section.props} />;
    case "final_cta":
      return <FinalCtaSection props={section.props} authenticated={authenticated} />;
    default:
      return null;
  }
}

function SectionEyebrow({ children }: { children: React.ReactNode }) {
  return (
    <p className="text-xs font-semibold uppercase tracking-[0.18em] text-muted">{children}</p>
  );
}

function HeroSection({
  props,
  authenticated,
}: {
  props: HeroSectionProps;
  authenticated: boolean;
}) {
  const primaryHref = authenticated ? props.primaryCtaHrefAuth : props.primaryCtaHrefGuest;

  return (
    <section className="relative overflow-hidden border-b border-border/70 bg-[linear-gradient(180deg,#fbf7ef_0%,#f5f1e8_58%,#efe8db_100%)]">
      <div className="absolute inset-0 bg-[radial-gradient(circle_at_top_left,rgba(164,104,73,0.16),transparent_34%),radial-gradient(circle_at_80%_12%,rgba(71,98,87,0.13),transparent_28%),linear-gradient(180deg,rgba(255,255,255,0.3),transparent_35%)]" />
      <div className="absolute left-1/2 top-0 h-[32rem] w-[32rem] -translate-x-1/2 rounded-full bg-paper/50 blur-3xl" />

      <div className="relative mx-auto max-w-6xl px-6 pb-14 pt-10 sm:pb-16 lg:pb-24 lg:pt-16">
        <div className="grid items-center gap-14 lg:grid-cols-[1.03fr,0.97fr]">
          <FadeIn className="relative z-10">
            <Badge tone="accentSecondary" className="border-white/60 bg-card/90">
              {props.badgeText}
            </Badge>

            <h1 className="mt-6 max-w-3xl font-serif text-5xl font-semibold leading-[0.96] text-ink sm:text-6xl lg:text-[4.8rem]">
              <Balancer>{props.title}</Balancer>
            </h1>

            <p className="mt-6 max-w-2xl text-lg leading-8 text-muted sm:text-xl">
              {props.description}
            </p>

            <div className="mt-8 flex flex-wrap items-center gap-3">
              <ButtonLink
                href={primaryHref}
                size="lg"
                className="shadow-[0_18px_42px_rgba(71,98,87,0.22)] ring-1 ring-accentSecondary/20"
              >
                {props.primaryCtaLabel}
                <ArrowRight className="h-4 w-4" />
              </ButtonLink>
              <ButtonLink href={props.secondaryCtaHref} variant="secondary" size="lg">
                {props.secondaryCtaLabel}
              </ButtonLink>
            </div>

            <div className="mt-5 flex flex-wrap gap-x-5 gap-y-2 text-sm text-muted">
              {props.metaItems.map((item) => (
                <span key={item}>{item}</span>
              ))}
            </div>
          </FadeIn>

          <HeroPreviewCard props={props} authenticated={authenticated} />
        </div>
      </div>
    </section>
  );
}

function HeroPreviewCard({
  props,
  authenticated,
}: {
  props: HeroSectionProps;
  authenticated: boolean;
}) {
  const primaryHref = authenticated ? props.primaryCtaHrefAuth : props.primaryCtaHrefGuest;

  return (
    <div className="relative mx-auto w-full max-w-[38rem]">
      <FadeIn delay={0.08} className="absolute -left-4 top-10 hidden w-44 lg:block">
        <div className="rounded-[1.5rem] border border-white/70 bg-card/90 p-4 shadow-panel backdrop-blur">
          <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">Après 8 min</p>
          <p className="mt-3 font-serif text-3xl font-semibold text-ink">Vos priorités</p>
          <p className="mt-2 text-sm leading-6 text-muted">
            Un ordre de révision clair, sans feuille blanche.
          </p>
        </div>
      </FadeIn>

      <FadeIn delay={0.14} className="relative z-10">
        <Card className="overflow-hidden border-white/70 bg-[linear-gradient(180deg,rgba(253,249,243,0.96),rgba(248,242,233,0.98))] shadow-[0_28px_72px_rgba(44,36,32,0.14)]">
          <div className="border-b border-border/80 bg-card/90 px-6 py-5">
            <div className="flex flex-wrap items-center justify-between gap-3">
              <Badge tone="accentSecondary">{props.previewBadgeText}</Badge>
              <span className="text-xs font-medium text-muted">Exemple de résultat personnalisé</span>
            </div>
            <h3 className="mt-4 font-serif text-3xl font-semibold text-ink">
              {props.previewTitle}
            </h3>
            <p className="mt-2 max-w-md text-sm leading-7 text-muted">
              {props.previewDescription}
            </p>
          </div>

          <div className="p-6">
            <div className="grid gap-3 sm:grid-cols-3">
              {props.previewStats.map((item) => (
                <div key={item.label} className="rounded-[1.3rem] border border-border bg-paper px-4 py-4">
                  <p className="font-serif text-3xl font-semibold text-ink">{item.value}</p>
                  <p className="mt-1 text-xs uppercase tracking-[0.12em] text-muted">{item.label}</p>
                </div>
              ))}
            </div>

            <div className="mt-5 space-y-2.5">
              {props.previewResults.map((result) => (
                <div
                  key={result.label}
                  className="flex items-center justify-between gap-4 rounded-[1.1rem] border border-border/90 bg-paper px-4 py-3"
                >
                  <span className="text-sm text-ink">{result.label}</span>
                  <span
                    className={`shrink-0 rounded-full px-3 py-1 text-[11px] font-semibold ${heroResultLevelStyles[result.level]}`}
                  >
                    {result.level}
                  </span>
                </div>
              ))}
            </div>

            <div className="mt-6 rounded-[1.4rem] border border-accentSecondary/15 bg-accentSecondarySoft/65 p-4">
              <p className="text-xs font-semibold uppercase tracking-[0.16em] text-accentSecondaryDark">
                {props.previewRecommendationEyebrow}
              </p>
              <p className="mt-2 text-sm leading-7 text-ink">{props.previewRecommendationText}</p>
            </div>

            <div className="mt-6">
              <ButtonLink
                href={primaryHref}
                className="w-full justify-center py-3.5 text-sm shadow-[0_20px_46px_rgba(71,98,87,0.22)] ring-1 ring-accentSecondary/25"
              >
                {props.primaryCtaLabel}
              </ButtonLink>
            </div>
          </div>
        </Card>
      </FadeIn>

      <FadeIn delay={0.22} className="absolute -bottom-5 right-2 hidden w-56 sm:block">
        <div className="rounded-[1.5rem] border border-white/70 bg-secondary/90 p-4 shadow-panel backdrop-blur">
          <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">
            Ce que vous gagnez
          </p>
          <p className="mt-3 font-serif text-2xl font-semibold text-ink">Moins d&apos;hésitation</p>
          <p className="mt-2 text-sm leading-6 text-muted">
            Plus de clarté dans vos priorités, vos séries et vos prochaines séances.
          </p>
        </div>
      </FadeIn>
    </div>
  );
}

function TrustBarSection({ props }: { props: TrustBarSectionProps }) {
  return (
    <section className="mx-auto max-w-6xl px-6 py-10 lg:py-12">
      <FadeIn>
        <SectionEyebrow>{props.eyebrow}</SectionEyebrow>
      </FadeIn>
      <div className="mt-5 grid gap-3 sm:grid-cols-3">
        {props.items.map((item, index) => {
          const Icon = trustBarIcons[index % trustBarIcons.length];

          return (
            <FadeIn key={`${item.label}-${index}`} delay={0.08 + index * 0.08}>
              <div className="h-full rounded-[1.5rem] border border-white/70 bg-card/80 p-4 shadow-[0_16px_36px_rgba(44,36,32,0.08)] backdrop-blur">
                <div className="flex h-10 w-10 items-center justify-center rounded-2xl bg-secondary text-accentSecondaryDark">
                  <Icon className="h-4 w-4" />
                </div>
                <p className="mt-4 text-sm font-semibold text-ink">{item.label}</p>
                <p className="mt-1 text-sm leading-6 text-muted">{item.detail}</p>
              </div>
            </FadeIn>
          );
        })}
      </div>
    </section>
  );
}

function BenefitsSection({ props }: { props: BenefitsSectionProps }) {
  return (
    <section id="methode" className="mx-auto max-w-6xl px-6 py-14 lg:py-20">
      <FadeIn>
        <SectionEyebrow>{props.eyebrow}</SectionEyebrow>
        <div className="mt-4 max-w-3xl">
          <h2 className="font-serif text-4xl font-semibold text-ink sm:text-[2.85rem]">
            <Balancer>{props.title}</Balancer>
          </h2>
          <p className="mt-4 text-base leading-8 text-muted sm:text-lg">{props.description}</p>
        </div>
      </FadeIn>

      <div className="mt-10 grid gap-5 lg:grid-cols-3">
        {props.cards.map((card, index) => {
          const Icon = benefitIcons[index % benefitIcons.length];

          return (
            <FadeIn key={`${card.title}-${index}`} delay={0.06 * index}>
              <Card className="h-full border-white/70 bg-card/90">
                <CardHeader>
                  <div className="flex h-11 w-11 items-center justify-center rounded-2xl bg-secondary text-accentSecondaryDark">
                    <Icon className="h-5 w-5" />
                  </div>
                  <p className="text-xs font-semibold uppercase tracking-[0.16em] text-muted">
                    {card.eyebrow}
                  </p>
                  <CardTitle className="text-[1.9rem] leading-tight">{card.title}</CardTitle>
                </CardHeader>
                <CardContent>
                  <CardDescription className="text-sm leading-7">{card.description}</CardDescription>
                </CardContent>
              </Card>
            </FadeIn>
          );
        })}
      </div>

      <div className="mt-10 grid gap-4 lg:grid-cols-3">
        {props.steps.map((step, index) => (
          <FadeIn key={`${step.title}-${index}`} delay={0.12 + index * 0.07}>
            <div className="rounded-[1.6rem] border border-border bg-paper/60 p-5">
              <div className="flex items-center gap-3">
                <span className="flex h-9 w-9 items-center justify-center rounded-full bg-ink text-sm font-semibold text-paper">
                  0{index + 1}
                </span>
                <h3 className="font-serif text-2xl font-semibold text-ink">{step.title}</h3>
              </div>
              <p className="mt-4 text-sm leading-7 text-muted">{step.description}</p>
            </div>
          </FadeIn>
        ))}
      </div>
    </section>
  );
}

function FeaturesSection({ props }: { props: FeaturesSectionProps }) {
  return (
    <section className="border-y border-border/70 bg-card/60">
      <div className="mx-auto grid max-w-6xl gap-10 px-6 py-14 lg:grid-cols-[0.78fr,1.22fr] lg:py-20">
        <FadeIn>
          <SectionEyebrow>{props.eyebrow}</SectionEyebrow>
          <h2 className="mt-4 font-serif text-4xl font-semibold text-ink sm:text-[2.8rem]">
            <Balancer>{props.title}</Balancer>
          </h2>
          <p className="mt-4 text-base leading-8 text-muted">{props.description}</p>

          <div className="mt-8 space-y-4">
            {props.bulletItems.map((item) => (
              <div
                key={item}
                className="flex items-start gap-3 rounded-[1.35rem] border border-border bg-paper px-4 py-4 shadow-subtle"
              >
                <CheckCircle2 className="mt-0.5 h-5 w-5 shrink-0 text-accentSecondaryDark" />
                <p className="text-sm leading-7 text-muted">{item}</p>
              </div>
            ))}
          </div>
        </FadeIn>

        <div className="grid gap-6 lg:grid-cols-2">
          <FadeIn delay={0.08}>
            <ShowcaseQCM />
          </FadeIn>
          <FadeIn delay={0.16}>
            <ShowcaseAnalyse />
          </FadeIn>
        </div>
      </div>
    </section>
  );
}

function DomainsSection({ props }: { props: DomainsSectionProps }) {
  return (
    <section id="domaines" className="mx-auto max-w-6xl px-6 py-14 lg:py-20">
      <FadeIn>
        <SectionEyebrow>{props.eyebrow}</SectionEyebrow>
        <div className="mt-4 max-w-3xl">
          <h2 className="font-serif text-4xl font-semibold text-ink sm:text-[2.85rem]">
            <Balancer>{props.title}</Balancer>
          </h2>
          <p className="mt-4 text-base leading-8 text-muted sm:text-lg">{props.description}</p>
        </div>
      </FadeIn>

      <div className="mt-10 grid gap-5 lg:grid-cols-3">
        {FRENCH_DOMAIN_ORDER.map((domainKey, index) => {
          const domain = FRENCH_DOMAIN_CONFIG[domainKey];
          const Icon = domainIcons[domainKey];

          return (
            <FadeIn key={domainKey} delay={0.05 * index}>
              <Card
                className={[
                  "h-full border-border/90 transition-transform duration-200 hover:-translate-y-1",
                  index === 1 ? "bg-secondary/80" : "bg-card",
                ].join(" ")}
              >
                <CardHeader>
                  <div className="flex items-center justify-between gap-3">
                    <div className="flex h-11 w-11 items-center justify-center rounded-2xl bg-paper text-accentSecondaryDark shadow-subtle">
                      <Icon className="h-5 w-5" />
                    </div>
                    <span className="text-sm text-muted">0{index + 1}</span>
                  </div>
                  <CardTitle className="text-[2rem]">{domain.label}</CardTitle>
                  <CardDescription>{domain.description}</CardDescription>
                </CardHeader>
                <CardContent className="space-y-5">
                  <div className="flex flex-wrap gap-2">
                    {domain.subdomains.map((subdomain) => (
                      <span
                        key={subdomain}
                        className="rounded-full border border-border bg-paper px-3 py-2 text-sm text-ink"
                      >
                        {SUBDOMAIN_LABELS[subdomain]}
                      </span>
                    ))}
                  </div>
                  <ButtonLink href={domain.href} variant="secondary">
                    Voir le domaine
                  </ButtonLink>
                </CardContent>
              </Card>
            </FadeIn>
          );
        })}
      </div>
    </section>
  );
}

function FaqSection({ props }: { props: FaqSectionProps }) {
  return (
    <section
      id="faq"
      className="border-y border-border/70 bg-[linear-gradient(180deg,rgba(234,228,216,0.45),rgba(253,249,243,0.92))]"
    >
      <div className="mx-auto grid max-w-6xl gap-10 px-6 py-14 lg:grid-cols-[0.82fr,1.18fr] lg:py-20">
        <FadeIn>
          <SectionEyebrow>{props.eyebrow}</SectionEyebrow>
          <h2 className="mt-4 font-serif text-4xl font-semibold text-ink sm:text-[2.8rem]">
            <Balancer>{props.title}</Balancer>
          </h2>
          <p className="mt-4 text-base leading-8 text-muted">{props.description}</p>
          <div className="mt-8 rounded-[1.75rem] border border-border bg-card p-5 shadow-subtle">
            <div className="flex items-start gap-3">
              <div className="flex h-11 w-11 items-center justify-center rounded-2xl bg-secondary text-accentSecondaryDark">
                <CircleHelp className="h-5 w-5" />
              </div>
              <div>
                <p className="text-sm font-semibold text-ink">{props.noteTitle}</p>
                <p className="mt-2 text-sm leading-7 text-muted">{props.noteDescription}</p>
              </div>
            </div>
          </div>
        </FadeIn>

        <FadeIn delay={0.08}>
          <Card className="border-white/70 bg-card/95">
            <CardContent className="pt-2">
              <Accordion type="single" collapsible defaultValue="item-0">
                {props.items.map((item, index) => (
                  <AccordionItem key={item.question} value={`item-${index}`}>
                    <AccordionTrigger>{item.question}</AccordionTrigger>
                    <AccordionContent>{item.answer}</AccordionContent>
                  </AccordionItem>
                ))}
              </Accordion>
            </CardContent>
          </Card>
        </FadeIn>
      </div>
    </section>
  );
}

function FinalCtaSection({
  props,
  authenticated,
}: {
  props: FinalCtaSectionProps;
  authenticated: boolean;
}) {
  const secondaryLabel = authenticated
    ? props.secondaryCtaLabelAuth
    : props.secondaryCtaLabelGuest;
  const secondaryHref = authenticated
    ? props.secondaryCtaHrefAuth
    : props.secondaryCtaHrefGuest;

  return (
    <section className="mx-auto max-w-6xl px-6 py-14 lg:py-20">
      <FadeIn>
        <div className="overflow-hidden rounded-[2rem] border border-ink/10 bg-ink text-paper shadow-[0_30px_80px_rgba(44,36,32,0.18)]">
          <div className="grid gap-10 p-8 lg:grid-cols-[1.08fr,0.92fr] lg:p-10">
            <div>
              <p className="text-xs font-semibold uppercase tracking-[0.16em] text-paper/65">
                {props.eyebrow}
              </p>
              <h2 className="mt-4 font-serif text-4xl font-semibold leading-tight text-paper sm:text-[2.9rem]">
                <Balancer>{props.title}</Balancer>
              </h2>
              <p className="mt-4 max-w-2xl text-base leading-8 text-paper/75">
                {props.description}
              </p>

              <div className="mt-8 grid gap-3 sm:grid-cols-2">
                {props.bulletItems.map((item) => (
                  <div
                    key={item}
                    className="flex items-center gap-3 rounded-[1.25rem] bg-white/6 px-4 py-3"
                  >
                    <CheckCircle2 className="h-4 w-4 text-[#C9E7D7]" />
                    <span className="text-sm text-paper/85">{item}</span>
                  </div>
                ))}
              </div>
            </div>

            <div className="rounded-[1.75rem] border border-white/10 bg-white/6 p-6 backdrop-blur">
              <p className="text-sm font-semibold text-paper">Formules disponibles</p>
              <div className="mt-5 flex flex-wrap gap-2">
                {props.pricingTiers.map((tier) => (
                  <span
                    key={`${tier.label}-${tier.price}`}
                    className={[
                      "rounded-full border px-4 py-2 text-sm",
                      tier.highlight
                        ? "border-paper/20 bg-paper text-ink"
                        : "border-white/10 bg-white/5 text-paper/80",
                    ].join(" ")}
                  >
                    {tier.label} · <span className="font-semibold">{tier.price}</span>
                  </span>
                ))}
              </div>
              <p className="mt-4 text-sm leading-7 text-paper/70">
                Accès sans engagement, paiement sécurisé par Stripe et activation immédiate.
              </p>

              <div className="mt-8 flex flex-wrap gap-3">
                <ButtonLink href={props.primaryCtaHref} size="lg" className="bg-paper text-ink hover:bg-surface">
                  {props.primaryCtaLabel}
                </ButtonLink>
                <ButtonLink
                  href={secondaryHref}
                  variant="secondary"
                  size="lg"
                  className="border-white/15 bg-white/5 text-paper hover:bg-white/10"
                >
                  {secondaryLabel}
                </ButtonLink>
              </div>
            </div>
          </div>
        </div>
      </FadeIn>
    </section>
  );
}
