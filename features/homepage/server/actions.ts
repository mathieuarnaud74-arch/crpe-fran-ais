"use server";

import { revalidatePath } from "next/cache";
import { redirect } from "next/navigation";
import { ZodError } from "zod";

import {
  getAvailableHomepageSectionTypes,
  heroPreviewResultLevelSchema,
  homepageSectionDefinitions,
  homepageSectionSchemas,
  homepageSectionTypeSchema,
  type HomepageSectionType,
} from "@/features/homepage/lib/blocks";
import { getDefaultHomepageSectionProps } from "@/features/homepage/lib/default-homepage";
import { requireAdmin } from "@/features/auth/server/guards";
import { createSupabaseServerClient } from "@/lib/supabase/server";

import { HOMEPAGE_SLUG, ensureHomepageDraftExists } from "./queries";

function getString(formData: FormData, key: string) {
  return String(formData.get(key) ?? "").trim();
}

function getBoolean(formData: FormData, key: string) {
  const value = formData.get(key);
  return value === "true" || value === "on";
}

function getStringList(formData: FormData, prefix: string) {
  const values: string[] = [];
  let index = 0;

  while (formData.has(`${prefix}-${index}`)) {
    const value = getString(formData, `${prefix}-${index}`);

    if (value) {
      values.push(value);
    }

    index += 1;
  }

  return values;
}

function getObjectList<T>(
  formData: FormData,
  count: number,
  buildItem: (index: number) => T | null,
) {
  const values: T[] = [];

  for (let index = 0; index < count; index += 1) {
    const value = buildItem(index);

    if (value) {
      values.push(value);
    }
  }

  return values;
}

function buildPropsFromFormData(type: HomepageSectionType, formData: FormData) {
  switch (type) {
    case "hero":
      return homepageSectionSchemas.hero.parse({
        badgeText: getString(formData, "badgeText"),
        title: getString(formData, "title"),
        description: getString(formData, "description"),
        primaryCtaLabel: getString(formData, "primaryCtaLabel"),
        primaryCtaHrefGuest: getString(formData, "primaryCtaHrefGuest"),
        primaryCtaHrefAuth: getString(formData, "primaryCtaHrefAuth"),
        secondaryCtaLabel: getString(formData, "secondaryCtaLabel"),
        secondaryCtaHref: getString(formData, "secondaryCtaHref"),
        metaItems: getStringList(formData, "metaItems"),
        previewBadgeText: getString(formData, "previewBadgeText"),
        previewTitle: getString(formData, "previewTitle"),
        previewDescription: getString(formData, "previewDescription"),
        previewStats: getObjectList(formData, 4, (index) => {
          const value = getString(formData, `previewStats-value-${index}`);
          const label = getString(formData, `previewStats-label-${index}`);

          if (!value || !label) {
            return null;
          }

          return { value, label };
        }),
        previewResults: getObjectList(formData, 8, (index) => {
          const label = getString(formData, `previewResults-label-${index}`);
          const level = getString(formData, `previewResults-level-${index}`);

          if (!label || !level) {
            return null;
          }

          return {
            label,
            level: heroPreviewResultLevelSchema.parse(level),
          };
        }),
        previewRecommendationEyebrow: getString(formData, "previewRecommendationEyebrow"),
        previewRecommendationText: getString(formData, "previewRecommendationText"),
      });
    case "trust_bar":
      return homepageSectionSchemas.trust_bar.parse({
        eyebrow: getString(formData, "eyebrow"),
        items: getObjectList(formData, 4, (index) => {
          const label = getString(formData, `items-label-${index}`);
          const detail = getString(formData, `items-detail-${index}`);

          if (!label || !detail) {
            return null;
          }

          return { label, detail };
        }),
      });
    case "benefits":
      return homepageSectionSchemas.benefits.parse({
        eyebrow: getString(formData, "eyebrow"),
        title: getString(formData, "title"),
        description: getString(formData, "description"),
        cards: getObjectList(formData, 4, (index) => {
          const eyebrow = getString(formData, `cards-eyebrow-${index}`);
          const title = getString(formData, `cards-title-${index}`);
          const description = getString(formData, `cards-description-${index}`);

          if (!eyebrow || !title || !description) {
            return null;
          }

          return { eyebrow, title, description };
        }),
        steps: getObjectList(formData, 4, (index) => {
          const title = getString(formData, `steps-title-${index}`);
          const description = getString(formData, `steps-description-${index}`);

          if (!title || !description) {
            return null;
          }

          return { title, description };
        }),
      });
    case "features":
      return homepageSectionSchemas.features.parse({
        eyebrow: getString(formData, "eyebrow"),
        title: getString(formData, "title"),
        description: getString(formData, "description"),
        bulletItems: getStringList(formData, "bulletItems"),
      });
    case "domains":
      return homepageSectionSchemas.domains.parse({
        eyebrow: getString(formData, "eyebrow"),
        title: getString(formData, "title"),
        description: getString(formData, "description"),
      });
    case "faq":
      return homepageSectionSchemas.faq.parse({
        eyebrow: getString(formData, "eyebrow"),
        title: getString(formData, "title"),
        description: getString(formData, "description"),
        noteTitle: getString(formData, "noteTitle"),
        noteDescription: getString(formData, "noteDescription"),
        items: getObjectList(formData, 8, (index) => {
          const question = getString(formData, `items-question-${index}`);
          const answer = getString(formData, `items-answer-${index}`);

          if (!question || !answer) {
            return null;
          }

          return { question, answer };
        }),
      });
    case "final_cta":
      return homepageSectionSchemas.final_cta.parse({
        eyebrow: getString(formData, "eyebrow"),
        title: getString(formData, "title"),
        description: getString(formData, "description"),
        bulletItems: getStringList(formData, "bulletItems"),
        pricingTiers: getObjectList(formData, 4, (index) => {
          const label = getString(formData, `pricingTiers-label-${index}`);
          const price = getString(formData, `pricingTiers-price-${index}`);

          if (!label || !price) {
            return null;
          }

          return {
            label,
            price,
            highlight: getBoolean(formData, `pricingTiers-highlight-${index}`),
          };
        }),
        primaryCtaLabel: getString(formData, "primaryCtaLabel"),
        primaryCtaHref: getString(formData, "primaryCtaHref"),
        secondaryCtaLabelGuest: getString(formData, "secondaryCtaLabelGuest"),
        secondaryCtaHrefGuest: getString(formData, "secondaryCtaHrefGuest"),
        secondaryCtaLabelAuth: getString(formData, "secondaryCtaLabelAuth"),
        secondaryCtaHrefAuth: getString(formData, "secondaryCtaHrefAuth"),
      });
    default:
      throw new Error("Unsupported section type");
  }
}

function revalidateHomepagePaths() {
  revalidatePath("/");
  revalidatePath("/admin/homepage");
  revalidatePath("/admin/homepage/preview");
}

async function markHomepageAsDraft(pageId: string) {
  const supabase = await createSupabaseServerClient();

  await supabase.from("pages").update({ status: "draft" }).eq("id", pageId);
}

async function getDraftSectionsForPage(pageId: string) {
  const supabase = await createSupabaseServerClient();
  const { data } = await supabase
    .from("page_sections")
    .select("*")
    .eq("page_id", pageId)
    .eq("stage", "draft")
    .order("order_index", { ascending: true })
    .order("created_at", { ascending: true });

  return (data ?? []) as Array<{
    id: string;
    type: string;
    page_id: string;
    order_index: number;
    visible: boolean;
    props_json: unknown;
  }>;
}

async function reindexDraftSections(pageId: string, sectionIdsInOrder: string[]) {
  const supabase = await createSupabaseServerClient();

  await Promise.all(
    sectionIdsInOrder.map((sectionId, index) =>
      supabase.from("page_sections").update({ order_index: index }).eq("id", sectionId),
    ),
  );
}

function redirectToAdmin(sectionId?: string, status?: string): never {
  const params = new URLSearchParams();

  if (sectionId) {
    params.set("section", sectionId);
  }

  if (status) {
    params.set("status", status);
  }

  const suffix = params.size > 0 ? `?${params.toString()}` : "";
  redirect(`/admin/homepage${suffix}`);
}

export async function addHomepageSectionAction(formData: FormData) {
  await requireAdmin();

  let type: HomepageSectionType;

  try {
    type = homepageSectionTypeSchema.parse(getString(formData, "type"));
  } catch {
    redirectToAdmin(undefined, "invalid");
  }

  const { page, sections } = await ensureHomepageDraftExists();
  const availableTypes = getAvailableHomepageSectionTypes(
    sections.map((section) => section.type),
  );

  if (!availableTypes.includes(type)) {
    redirectToAdmin(undefined, "blocked");
  }

  const supabase = await createSupabaseServerClient();
  const orderIndex = sections.length;

  const { data, error } = await supabase
    .from("page_sections")
    .insert({
      page_id: page.id,
      stage: "draft",
      type,
      order_index: orderIndex,
      visible: true,
      props_json: getDefaultHomepageSectionProps(type) as Record<string, unknown>,
    })
    .select("id")
    .single();

  if (error) {
    redirectToAdmin(undefined, "error");
  }

  await markHomepageAsDraft(page.id);
  revalidateHomepagePaths();
  redirectToAdmin((data as { id: string } | null)?.id ?? undefined, "added");
}

export async function updateHomepageSectionAction(formData: FormData) {
  await requireAdmin();

  const sectionId = getString(formData, "sectionId");
  let type: HomepageSectionType;
  let props: ReturnType<typeof buildPropsFromFormData>;

  try {
    type = homepageSectionTypeSchema.parse(getString(formData, "type"));
    props = buildPropsFromFormData(type, formData);
  } catch (error) {
    if (error instanceof ZodError) {
      redirectToAdmin(sectionId || undefined, "invalid");
    }

    redirectToAdmin(sectionId || undefined, "error");
  }

  const supabase = await createSupabaseServerClient();
  const { data: section } = await supabase
    .from("page_sections")
    .select("id, page_id")
    .eq("id", sectionId)
    .eq("stage", "draft")
    .single();

  if (!section) {
    redirectToAdmin(undefined, "missing");
  }

  const { error } = await supabase
    .from("page_sections")
    .update({
      props_json: props as Record<string, unknown>,
    })
    .eq("id", sectionId);

  if (error) {
    redirectToAdmin(sectionId || undefined, "error");
  }

  await markHomepageAsDraft((section as { page_id: string }).page_id);
  revalidateHomepagePaths();
  redirectToAdmin(sectionId, "saved");
}

export async function toggleHomepageSectionVisibilityAction(formData: FormData) {
  await requireAdmin();

  const sectionId = getString(formData, "sectionId");
  const visible = getBoolean(formData, "visible");
  const { page } = await ensureHomepageDraftExists();
  const supabase = await createSupabaseServerClient();

  const { error } = await supabase
    .from("page_sections")
    .update({ visible })
    .eq("id", sectionId)
    .eq("stage", "draft");

  if (error) {
    redirectToAdmin(sectionId || undefined, "error");
  }

  await markHomepageAsDraft(page.id);
  revalidateHomepagePaths();
  redirectToAdmin(sectionId, "saved");
}

export async function deleteHomepageSectionAction(formData: FormData) {
  await requireAdmin();

  const sectionId = getString(formData, "sectionId");
  const { page } = await ensureHomepageDraftExists();
  const supabase = await createSupabaseServerClient();

  const { error } = await supabase
    .from("page_sections")
    .delete()
    .eq("id", sectionId)
    .eq("stage", "draft");

  if (error) {
    redirectToAdmin(sectionId || undefined, "error");
  }

  const remainingSections = await getDraftSectionsForPage(page.id);
  await reindexDraftSections(
    page.id,
    remainingSections.map((section) => section.id),
  );

  await markHomepageAsDraft(page.id);
  revalidateHomepagePaths();
  redirectToAdmin(undefined, "deleted");
}

export async function moveHomepageSectionAction(formData: FormData) {
  await requireAdmin();

  const sectionId = getString(formData, "sectionId");
  const direction = getString(formData, "direction");
  const { page } = await ensureHomepageDraftExists();
  const sections = await getDraftSectionsForPage(page.id);
  const currentIndex = sections.findIndex((section) => section.id === sectionId);

  if (currentIndex === -1) {
    redirectToAdmin(undefined, "missing");
  }

  const targetIndex = direction === "up" ? currentIndex - 1 : currentIndex + 1;

  if (targetIndex < 0 || targetIndex >= sections.length) {
    redirectToAdmin(sectionId, "blocked");
  }

  const reordered = sections.slice();
  const [currentSection] = reordered.splice(currentIndex, 1);
  reordered.splice(targetIndex, 0, currentSection);

  await reindexDraftSections(
    page.id,
    reordered.map((section) => section.id),
  );

  await markHomepageAsDraft(page.id);
  revalidateHomepagePaths();
  redirectToAdmin(sectionId, "saved");
}

export async function duplicateHomepageSectionAction(formData: FormData) {
  await requireAdmin();

  const sectionId = getString(formData, "sectionId");
  const { page } = await ensureHomepageDraftExists();
  const sections = await getDraftSectionsForPage(page.id);
  const targetSection = sections.find((section) => section.id === sectionId);

  if (!targetSection) {
    redirectToAdmin(undefined, "missing");
  }

  let type: HomepageSectionType;

  try {
    type = homepageSectionTypeSchema.parse(targetSection.type);
  } catch {
    redirectToAdmin(sectionId || undefined, "error");
  }

  const existingTypes = sections.map((section) =>
    homepageSectionTypeSchema.parse(section.type),
  );
  const availableTypes = getAvailableHomepageSectionTypes(existingTypes);

  if (!homepageSectionDefinitions[type].allowMultiple && !availableTypes.includes(type)) {
    redirectToAdmin(sectionId, "blocked");
  }

  const supabase = await createSupabaseServerClient();
  const insertIndex = sections.findIndex((section) => section.id === sectionId) + 1;

  const { data, error } = await supabase
    .from("page_sections")
    .insert({
      page_id: page.id,
      stage: "draft",
      type,
      order_index: sections.length,
      visible: targetSection.visible,
      props_json: targetSection.props_json as Record<string, unknown>,
    })
    .select("id")
    .single();

  if (error) {
    redirectToAdmin(sectionId || undefined, "error");
  }

  const nextSections = await getDraftSectionsForPage(page.id);
  const newSectionId = (data as { id: string } | null)?.id;

  if (newSectionId) {
    const reorderedIds = nextSections
      .filter((section) => section.id !== newSectionId)
      .map((section) => section.id);

    reorderedIds.splice(insertIndex, 0, newSectionId);
    await reindexDraftSections(page.id, reorderedIds);
  }

  await markHomepageAsDraft(page.id);
  revalidateHomepagePaths();
  redirectToAdmin(newSectionId, "duplicated");
}

export async function publishHomepageAction() {
  await requireAdmin();

  const supabase = await createSupabaseServerClient();
  const { error } = await supabase.rpc("publish_page_sections", {
    target_page_slug: HOMEPAGE_SLUG,
  });

  if (error) {
    redirectToAdmin(undefined, "error");
  }

  revalidateHomepagePaths();
  redirectToAdmin(undefined, "published");
}
