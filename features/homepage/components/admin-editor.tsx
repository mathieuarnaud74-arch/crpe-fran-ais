import Link from "next/link";

import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import { formatDate } from "@/lib/utils";

import type {
  HomepagePageRecord,
  HomepageSectionRecord,
  HomepageSectionType,
} from "@/features/homepage/lib/blocks";
import { homepageSectionDefinitions } from "@/features/homepage/lib/blocks";
import {
  addHomepageSectionAction,
  deleteHomepageSectionAction,
  duplicateHomepageSectionAction,
  moveHomepageSectionAction,
  publishHomepageAction,
  toggleHomepageSectionVisibilityAction,
  updateHomepageSectionAction,
} from "@/features/homepage/server/actions";

import { SubmitButton } from "./submit-button";

const heroMetaSlots = 4;
const heroPreviewStatSlots = 4;
const heroPreviewResultSlots = 8;
const objectItemSlots = 4;
const bulletSlots = 6;
const faqSlots = 8;

const statusLabels: Record<string, string> = {
  saved: "Brouillon enregistré",
  added: "Bloc ajouté",
  deleted: "Bloc supprimé",
  duplicated: "Bloc dupliqué",
  published: "Version publiée",
  blocked: "Action non autorisée pour ce bloc",
  missing: "Bloc introuvable",
  invalid: "Champs invalides",
  error: "Erreur d'enregistrement",
};

type HomepageAdminEditorProps = {
  page: HomepagePageRecord;
  sections: HomepageSectionRecord[];
  availableTypes: HomepageSectionType[];
  selectedSectionId?: string;
  status?: string;
};

export function HomepageAdminEditor({
  page,
  sections,
  availableTypes,
  selectedSectionId,
  status,
}: HomepageAdminEditorProps) {
  const selectedSection =
    sections.find((section) => section.id === selectedSectionId) ?? sections[0] ?? null;

  return (
    <div className="space-y-6">
      <Card>
        <CardHeader className="flex flex-col gap-4 lg:flex-row lg:items-start lg:justify-between">
          <div>
            <div className="flex flex-wrap items-center gap-3">
              <Badge tone={page.status === "published" ? "success" : "warning"}>
                {page.status === "published" ? "Publié" : "Brouillon"}
              </Badge>
              <Badge tone="neutral">{page.slug}</Badge>
              {status && statusLabels[status] ? (
                <Badge tone="accentSecondary">{statusLabels[status]}</Badge>
              ) : null}
            </div>
            <CardTitle className="mt-4 text-[2.2rem]">{page.title}</CardTitle>
            <CardDescription className="mt-2 max-w-3xl">
              Éditeur encadré de la homepage : sections prédéfinies, ordre contrôlé, preview séparée
              et publication explicite.
            </CardDescription>
            <p className="mt-3 text-sm text-muted">
              Dernière publication :{" "}
              <span className="font-medium text-ink">
                {page.lastPublishedAt ? formatDate(page.lastPublishedAt) : "jamais"}
              </span>
            </p>
          </div>

          <div className="flex flex-wrap items-center gap-3">
            <Link
              href="/"
              className="inline-flex items-center justify-center rounded-full border border-border bg-paper px-5 py-3 text-sm font-semibold text-ink shadow-subtle"
            >
              Voir le live
            </Link>
            <Link
              href="/admin/homepage/preview"
              className="inline-flex items-center justify-center rounded-full border border-border bg-paper px-5 py-3 text-sm font-semibold text-ink shadow-subtle"
            >
              Prévisualiser
            </Link>
            <form action={publishHomepageAction}>
              <SubmitButton idleLabel="Publier" pendingLabel="Publication..." />
            </form>
          </div>
        </CardHeader>
      </Card>

      <div className="grid gap-6 xl:grid-cols-[360px,1fr]">
        <div className="space-y-6">
          <Card>
            <CardHeader>
              <CardTitle>Sections actuelles</CardTitle>
              <CardDescription>
                Sélectionnez un bloc pour l’éditer. Le réordonnancement se fait avec des actions
                simples et robustes.
              </CardDescription>
            </CardHeader>
            <CardContent className="space-y-3">
              {sections.map((section, index) => {
                const definition = homepageSectionDefinitions[section.type];
                const selected = selectedSection?.id === section.id;

                return (
                  <div
                    key={section.id}
                    className={[
                      "rounded-[1.3rem] border p-4 transition-colors",
                      selected ? "border-accentSecondary/40 bg-accentSecondarySoft/50" : "border-border bg-paper",
                      !section.visible && "opacity-70",
                    ].join(" ")}
                  >
                    <div className="flex items-start justify-between gap-3">
                      <div className="space-y-2">
                        <div className="flex flex-wrap items-center gap-2">
                          <Badge tone="neutral">0{index + 1}</Badge>
                          <Badge tone="accent">{definition.label}</Badge>
                          {!section.visible ? <Badge tone="warning">Masqué</Badge> : null}
                        </div>
                        <p className="text-sm leading-6 text-muted">{definition.description}</p>
                      </div>
                      <Link
                        href={`/admin/homepage?section=${section.id}`}
                        className="rounded-full border border-border px-3 py-1 text-xs font-semibold text-ink"
                      >
                        Éditer
                      </Link>
                    </div>

                    <div className="mt-4 flex flex-wrap gap-2">
                      <form action={moveHomepageSectionAction}>
                        <input type="hidden" name="sectionId" value={section.id} />
                        <input type="hidden" name="direction" value="up" />
                        <Button variant="secondary" size="sm" type="submit">
                          Monter
                        </Button>
                      </form>
                      <form action={moveHomepageSectionAction}>
                        <input type="hidden" name="sectionId" value={section.id} />
                        <input type="hidden" name="direction" value="down" />
                        <Button variant="secondary" size="sm" type="submit">
                          Descendre
                        </Button>
                      </form>
                      {homepageSectionDefinitions[section.type].allowMultiple ? (
                        <form action={duplicateHomepageSectionAction}>
                          <input type="hidden" name="sectionId" value={section.id} />
                          <Button variant="secondary" size="sm" type="submit">
                            Dupliquer
                          </Button>
                        </form>
                      ) : null}
                      <form action={toggleHomepageSectionVisibilityAction}>
                        <input type="hidden" name="sectionId" value={section.id} />
                        <input
                          type="hidden"
                          name="visible"
                          value={section.visible ? "false" : "true"}
                        />
                        <Button variant="secondary" size="sm" type="submit">
                          {section.visible ? "Masquer" : "Afficher"}
                        </Button>
                      </form>
                      <form action={deleteHomepageSectionAction}>
                        <input type="hidden" name="sectionId" value={section.id} />
                        <Button variant="destructive" size="sm" type="submit">
                          Supprimer
                        </Button>
                      </form>
                    </div>
                  </div>
                );
              })}
            </CardContent>
          </Card>

          <Card>
            <CardHeader>
              <CardTitle>Ajouter un bloc</CardTitle>
              <CardDescription>
                Catalogue limité de blocs autorisés pour préserver la cohérence de la homepage.
              </CardDescription>
            </CardHeader>
            <CardContent className="space-y-3">
              {availableTypes.length === 0 ? (
                <p className="text-sm leading-7 text-muted">
                  Tous les blocs autorisés sont déjà présents dans la configuration actuelle.
                </p>
              ) : (
                availableTypes.map((type) => {
                  const definition = homepageSectionDefinitions[type];

                  return (
                    <form key={type} action={addHomepageSectionAction} className="rounded-[1.2rem] border border-border bg-paper p-4">
                      <input type="hidden" name="type" value={type} />
                      <p className="text-sm font-semibold text-ink">{definition.label}</p>
                      <p className="mt-1 text-sm leading-6 text-muted">{definition.description}</p>
                      <div className="mt-3">
                        <Button variant="secondary" size="sm" type="submit">
                          Ajouter ce bloc
                        </Button>
                      </div>
                    </form>
                  );
                })
              )}
            </CardContent>
          </Card>
        </div>

        <div>
          {selectedSection ? (
            <SectionEditor section={selectedSection} />
          ) : (
            <Card>
              <CardHeader>
                <CardTitle>Aucune section</CardTitle>
                <CardDescription>
                  Ajoutez un premier bloc pour commencer l’édition de la homepage.
                </CardDescription>
              </CardHeader>
            </Card>
          )}
        </div>
      </div>
    </div>
  );
}

function SectionEditor({ section }: { section: HomepageSectionRecord }) {
  return (
    <Card>
      <CardHeader>
        <div className="flex flex-wrap items-center gap-3">
          <Badge tone="accent">{homepageSectionDefinitions[section.type].label}</Badge>
          {!section.visible ? <Badge tone="warning">Bloc masqué</Badge> : null}
        </div>
        <CardTitle className="text-[2rem]">Édition du bloc</CardTitle>
        <CardDescription>
          Les champs sont volontairement encadrés pour garder une homepage cohérente et facile à
          maintenir.
        </CardDescription>
      </CardHeader>
      <CardContent>
        <form action={updateHomepageSectionAction} className="space-y-8">
          <input type="hidden" name="sectionId" value={section.id} />
          <input type="hidden" name="type" value={section.type} />
          {renderSectionFields(section)}
          <div className="flex justify-end">
            <SubmitButton idleLabel="Enregistrer le brouillon" pendingLabel="Enregistrement..." />
          </div>
        </form>
      </CardContent>
    </Card>
  );
}

function renderSectionFields(section: HomepageSectionRecord) {
  switch (section.type) {
    case "hero":
      return <HeroFields section={section} />;
    case "trust_bar":
      return <TrustBarFields section={section} />;
    case "benefits":
      return <BenefitsFields section={section} />;
    case "features":
      return <FeaturesFields section={section} />;
    case "domains":
      return <DomainsFields section={section} />;
    case "faq":
      return <FaqFields section={section} />;
    case "final_cta":
      return <FinalCtaFields section={section} />;
    default:
      return null;
  }
}

function HeroFields({ section }: { section: HomepageSectionRecord<"hero"> }) {
  const { props } = section;

  return (
    <div className="space-y-8">
      <div className="grid gap-4 lg:grid-cols-2">
        <TextField name="badgeText" label="Badge" defaultValue={props.badgeText} />
        <TextField name="previewBadgeText" label="Badge aperçu" defaultValue={props.previewBadgeText} />
      </div>
      <TextareaField name="title" label="Titre principal" defaultValue={props.title} rows={3} />
      <TextareaField name="description" label="Description" defaultValue={props.description} rows={4} />

      <div className="grid gap-4 lg:grid-cols-2">
        <TextField name="primaryCtaLabel" label="CTA principal" defaultValue={props.primaryCtaLabel} />
        <TextField name="secondaryCtaLabel" label="CTA secondaire" defaultValue={props.secondaryCtaLabel} />
        <TextField name="primaryCtaHrefGuest" label="Lien CTA principal invité" defaultValue={props.primaryCtaHrefGuest} />
        <TextField name="primaryCtaHrefAuth" label="Lien CTA principal connecté" defaultValue={props.primaryCtaHrefAuth} />
        <TextField name="secondaryCtaHref" label="Lien CTA secondaire" defaultValue={props.secondaryCtaHref} />
      </div>

      <FieldBlock title="Métadonnées rapides">
        <div className="grid gap-4 md:grid-cols-2">
          {Array.from({ length: heroMetaSlots }).map((_, index) => (
            <TextField
              key={index}
              name={`metaItems-${index}`}
              label={`Métadonnée ${index + 1}`}
              defaultValue={props.metaItems[index] ?? ""}
            />
          ))}
        </div>
      </FieldBlock>

      <FieldBlock title="Carte d’aperçu">
        <div className="grid gap-4 lg:grid-cols-2">
          <TextField name="previewTitle" label="Titre aperçu" defaultValue={props.previewTitle} />
          <TextareaField
            name="previewDescription"
            label="Description aperçu"
            defaultValue={props.previewDescription}
            rows={3}
          />
        </div>

        <div className="mt-4 grid gap-4 md:grid-cols-2">
          {Array.from({ length: heroPreviewStatSlots }).map((_, index) => (
            <div key={index} className="grid gap-4 rounded-[1.1rem] border border-border p-4">
              <TextField
                name={`previewStats-value-${index}`}
                label={`Stat ${index + 1} · valeur`}
                defaultValue={props.previewStats[index]?.value ?? ""}
              />
              <TextField
                name={`previewStats-label-${index}`}
                label={`Stat ${index + 1} · libellé`}
                defaultValue={props.previewStats[index]?.label ?? ""}
              />
            </div>
          ))}
        </div>

        <div className="mt-4 grid gap-4 md:grid-cols-2">
          {Array.from({ length: heroPreviewResultSlots }).map((_, index) => (
            <div key={index} className="grid gap-4 rounded-[1.1rem] border border-border p-4">
              <TextField
                name={`previewResults-label-${index}`}
                label={`Résultat ${index + 1} · libellé`}
                defaultValue={props.previewResults[index]?.label ?? ""}
              />
              <SelectField
                name={`previewResults-level-${index}`}
                label={`Résultat ${index + 1} · niveau`}
                defaultValue={props.previewResults[index]?.level ?? "À renforcer"}
                options={["Prioritaire", "À renforcer", "Maîtrisé"]}
              />
            </div>
          ))}
        </div>

        <div className="mt-4 grid gap-4 lg:grid-cols-2">
          <TextField
            name="previewRecommendationEyebrow"
            label="Eyebrow recommandation"
            defaultValue={props.previewRecommendationEyebrow}
          />
          <TextareaField
            name="previewRecommendationText"
            label="Texte de recommandation"
            defaultValue={props.previewRecommendationText}
            rows={4}
          />
        </div>
      </FieldBlock>
    </div>
  );
}

function TrustBarFields({ section }: { section: HomepageSectionRecord<"trust_bar"> }) {
  const { props } = section;

  return (
    <div className="space-y-8">
      <TextField name="eyebrow" label="Eyebrow" defaultValue={props.eyebrow} />
      <FieldBlock title="Cartes de confiance">
        <div className="grid gap-4 md:grid-cols-2">
          {Array.from({ length: objectItemSlots }).map((_, index) => (
            <div key={index} className="grid gap-4 rounded-[1.1rem] border border-border p-4">
              <TextField
                name={`items-label-${index}`}
                label={`Carte ${index + 1} · titre`}
                defaultValue={props.items[index]?.label ?? ""}
              />
              <TextareaField
                name={`items-detail-${index}`}
                label={`Carte ${index + 1} · détail`}
                defaultValue={props.items[index]?.detail ?? ""}
                rows={3}
              />
            </div>
          ))}
        </div>
      </FieldBlock>
    </div>
  );
}

function BenefitsFields({ section }: { section: HomepageSectionRecord<"benefits"> }) {
  const { props } = section;

  return (
    <div className="space-y-8">
      <TextField name="eyebrow" label="Eyebrow" defaultValue={props.eyebrow} />
      <TextareaField name="title" label="Titre" defaultValue={props.title} rows={3} />
      <TextareaField name="description" label="Description" defaultValue={props.description} rows={4} />

      <FieldBlock title="Cartes de bénéfices">
        <div className="space-y-4">
          {Array.from({ length: objectItemSlots }).map((_, index) => (
            <div key={index} className="grid gap-4 rounded-[1.1rem] border border-border p-4">
              <TextField
                name={`cards-eyebrow-${index}`}
                label={`Carte ${index + 1} · eyebrow`}
                defaultValue={props.cards[index]?.eyebrow ?? ""}
              />
              <TextField
                name={`cards-title-${index}`}
                label={`Carte ${index + 1} · titre`}
                defaultValue={props.cards[index]?.title ?? ""}
              />
              <TextareaField
                name={`cards-description-${index}`}
                label={`Carte ${index + 1} · description`}
                defaultValue={props.cards[index]?.description ?? ""}
                rows={3}
              />
            </div>
          ))}
        </div>
      </FieldBlock>

      <FieldBlock title="Étapes de méthode">
        <div className="space-y-4">
          {Array.from({ length: objectItemSlots }).map((_, index) => (
            <div key={index} className="grid gap-4 rounded-[1.1rem] border border-border p-4">
              <TextField
                name={`steps-title-${index}`}
                label={`Étape ${index + 1} · titre`}
                defaultValue={props.steps[index]?.title ?? ""}
              />
              <TextareaField
                name={`steps-description-${index}`}
                label={`Étape ${index + 1} · description`}
                defaultValue={props.steps[index]?.description ?? ""}
                rows={3}
              />
            </div>
          ))}
        </div>
      </FieldBlock>
    </div>
  );
}

function FeaturesFields({ section }: { section: HomepageSectionRecord<"features"> }) {
  const { props } = section;

  return (
    <div className="space-y-8">
      <TextField name="eyebrow" label="Eyebrow" defaultValue={props.eyebrow} />
      <TextareaField name="title" label="Titre" defaultValue={props.title} rows={3} />
      <TextareaField name="description" label="Description" defaultValue={props.description} rows={4} />
      <FieldBlock title="Points forts">
        <div className="grid gap-4 md:grid-cols-2">
          {Array.from({ length: bulletSlots }).map((_, index) => (
            <TextField
              key={index}
              name={`bulletItems-${index}`}
              label={`Point ${index + 1}`}
              defaultValue={props.bulletItems[index] ?? ""}
            />
          ))}
        </div>
      </FieldBlock>
    </div>
  );
}

function DomainsFields({ section }: { section: HomepageSectionRecord<"domains"> }) {
  const { props } = section;

  return (
    <div className="space-y-8">
      <TextField name="eyebrow" label="Eyebrow" defaultValue={props.eyebrow} />
      <TextareaField name="title" label="Titre" defaultValue={props.title} rows={3} />
      <TextareaField
        name="description"
        label="Description"
        defaultValue={props.description}
        rows={4}
      />
      <p className="text-sm leading-7 text-muted">
        Les cartes de domaines restent cadrées par le code pour conserver une présentation stable.
        Cette section édite uniquement l’introduction éditoriale.
      </p>
    </div>
  );
}

function FaqFields({ section }: { section: HomepageSectionRecord<"faq"> }) {
  const { props } = section;

  return (
    <div className="space-y-8">
      <TextField name="eyebrow" label="Eyebrow" defaultValue={props.eyebrow} />
      <TextareaField name="title" label="Titre" defaultValue={props.title} rows={3} />
      <TextareaField name="description" label="Description" defaultValue={props.description} rows={4} />
      <TextField name="noteTitle" label="Titre de note" defaultValue={props.noteTitle} />
      <TextareaField
        name="noteDescription"
        label="Description de note"
        defaultValue={props.noteDescription}
        rows={3}
      />

      <FieldBlock title="Questions / réponses">
        <div className="space-y-4">
          {Array.from({ length: faqSlots }).map((_, index) => (
            <div key={index} className="grid gap-4 rounded-[1.1rem] border border-border p-4">
              <TextField
                name={`items-question-${index}`}
                label={`FAQ ${index + 1} · question`}
                defaultValue={props.items[index]?.question ?? ""}
              />
              <TextareaField
                name={`items-answer-${index}`}
                label={`FAQ ${index + 1} · réponse`}
                defaultValue={props.items[index]?.answer ?? ""}
                rows={4}
              />
            </div>
          ))}
        </div>
      </FieldBlock>
    </div>
  );
}

function FinalCtaFields({ section }: { section: HomepageSectionRecord<"final_cta"> }) {
  const { props } = section;

  return (
    <div className="space-y-8">
      <TextField name="eyebrow" label="Eyebrow" defaultValue={props.eyebrow} />
      <TextareaField name="title" label="Titre" defaultValue={props.title} rows={3} />
      <TextareaField name="description" label="Description" defaultValue={props.description} rows={4} />

      <FieldBlock title="Arguments rapides">
        <div className="grid gap-4 md:grid-cols-2">
          {Array.from({ length: bulletSlots }).map((_, index) => (
            <TextField
              key={index}
              name={`bulletItems-${index}`}
              label={`Argument ${index + 1}`}
              defaultValue={props.bulletItems[index] ?? ""}
            />
          ))}
        </div>
      </FieldBlock>

      <FieldBlock title="Tarifs">
        <div className="space-y-4">
          {Array.from({ length: objectItemSlots }).map((_, index) => (
            <div key={index} className="grid gap-4 rounded-[1.1rem] border border-border p-4 lg:grid-cols-[1fr,1fr,180px]">
              <TextField
                name={`pricingTiers-label-${index}`}
                label={`Tarif ${index + 1} · libellé`}
                defaultValue={props.pricingTiers[index]?.label ?? ""}
              />
              <TextField
                name={`pricingTiers-price-${index}`}
                label={`Tarif ${index + 1} · prix`}
                defaultValue={props.pricingTiers[index]?.price ?? ""}
              />
              <CheckboxField
                name={`pricingTiers-highlight-${index}`}
                label="Mettre en avant"
                defaultChecked={props.pricingTiers[index]?.highlight ?? false}
              />
            </div>
          ))}
        </div>
      </FieldBlock>

      <FieldBlock title="CTA">
        <div className="grid gap-4 lg:grid-cols-2">
          <TextField name="primaryCtaLabel" label="CTA principal" defaultValue={props.primaryCtaLabel} />
          <TextField name="primaryCtaHref" label="Lien CTA principal" defaultValue={props.primaryCtaHref} />
          <TextField
            name="secondaryCtaLabelGuest"
            label="CTA secondaire invité"
            defaultValue={props.secondaryCtaLabelGuest}
          />
          <TextField
            name="secondaryCtaHrefGuest"
            label="Lien CTA secondaire invité"
            defaultValue={props.secondaryCtaHrefGuest}
          />
          <TextField
            name="secondaryCtaLabelAuth"
            label="CTA secondaire connecté"
            defaultValue={props.secondaryCtaLabelAuth}
          />
          <TextField
            name="secondaryCtaHrefAuth"
            label="Lien CTA secondaire connecté"
            defaultValue={props.secondaryCtaHrefAuth}
          />
        </div>
      </FieldBlock>
    </div>
  );
}

function FieldBlock({
  title,
  children,
}: {
  title: string;
  children: React.ReactNode;
}) {
  return (
    <section className="space-y-4 rounded-[1.4rem] border border-border bg-paper p-5">
      <div>
        <h3 className="text-sm font-semibold text-ink">{title}</h3>
      </div>
      {children}
    </section>
  );
}

function TextField({
  name,
  label,
  defaultValue,
}: {
  name: string;
  label: string;
  defaultValue: string;
}) {
  return (
    <div className="grid gap-2">
      <Label htmlFor={name}>{label}</Label>
      <Input id={name} name={name} defaultValue={defaultValue} />
    </div>
  );
}

function TextareaField({
  name,
  label,
  defaultValue,
  rows = 4,
}: {
  name: string;
  label: string;
  defaultValue: string;
  rows?: number;
}) {
  return (
    <div className="grid gap-2">
      <Label htmlFor={name}>{label}</Label>
      <Textarea id={name} name={name} defaultValue={defaultValue} rows={rows} />
    </div>
  );
}

function SelectField({
  name,
  label,
  defaultValue,
  options,
}: {
  name: string;
  label: string;
  defaultValue: string;
  options: string[];
}) {
  return (
    <div className="grid gap-2">
      <Label htmlFor={name}>{label}</Label>
      <select
        id={name}
        name={name}
        defaultValue={defaultValue}
        className="flex h-11 rounded-[1rem] border border-border bg-card px-4 text-sm text-ink shadow-subtle"
      >
        {options.map((option) => (
          <option key={option} value={option}>
            {option}
          </option>
        ))}
      </select>
    </div>
  );
}

function CheckboxField({
  name,
  label,
  defaultChecked,
}: {
  name: string;
  label: string;
  defaultChecked: boolean;
}) {
  return (
    <label className="flex items-center gap-3 rounded-[1rem] border border-border bg-card px-4 py-3 text-sm text-ink shadow-subtle">
      <input type="checkbox" name={name} defaultChecked={defaultChecked} className="h-4 w-4" />
      <span>{label}</span>
    </label>
  );
}
