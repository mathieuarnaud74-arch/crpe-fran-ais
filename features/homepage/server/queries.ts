import { createSupabaseServerClient } from "@/lib/supabase/server";
import type { Database } from "@/types/database";

import {
  getAvailableHomepageSectionTypes,
  homepageSectionTypeSchema,
  parseHomepageSectionProps,
  type HomepagePageRecord,
  type HomepageSectionRecord,
  type HomepageSectionStage,
  type HomepageSectionType,
} from "@/features/homepage/lib/blocks";
import {
  createDefaultHomepagePage,
  createDefaultHomepageSections,
  getDefaultHomepageSectionProps,
} from "@/features/homepage/lib/default-homepage";

type PageRow = Database["public"]["Tables"]["pages"]["Row"];
type PageInsert = Database["public"]["Tables"]["pages"]["Insert"];
type PageSectionRow = Database["public"]["Tables"]["page_sections"]["Row"];
type PageSectionInsert = Database["public"]["Tables"]["page_sections"]["Insert"];

export const HOMEPAGE_SLUG = "homepage";

function toHomepagePageRecord(row: PageRow): HomepagePageRecord {
  return {
    id: row.id,
    slug: row.slug,
    title: row.title,
    status: row.status,
    lastPublishedAt: row.last_published_at,
  };
}

function toHomepageSectionRecord(
  row: PageSectionRow,
): HomepageSectionRecord | null {
  const typeResult = homepageSectionTypeSchema.safeParse(row.type);

  if (!typeResult.success) {
    return null;
  }

  const type = typeResult.data as HomepageSectionType;
  const props = parseHomepageSectionProps(type, row.props_json);

  if (!props) {
    const fallbackProps = getDefaultHomepageSectionProps(type);

    return {
      id: row.id,
      pageId: row.page_id,
      stage: row.stage,
      type,
      orderIndex: row.order_index,
      visible: row.visible,
      props: fallbackProps,
    } as HomepageSectionRecord;
  }

  return {
    id: row.id,
    pageId: row.page_id,
    stage: row.stage,
    type,
    orderIndex: row.order_index,
    visible: row.visible,
    props,
  } as HomepageSectionRecord;
}

function toPageSectionInsert(
  section: Omit<HomepageSectionRecord, "id">,
): PageSectionInsert {
  return {
    page_id: section.pageId,
    stage: section.stage,
    type: section.type,
    order_index: section.orderIndex,
    visible: section.visible,
    props_json: section.props as unknown as Database["public"]["Tables"]["page_sections"]["Insert"]["props_json"],
  };
}

function buildFallbackHomepage(stage: HomepageSectionStage) {
  const page = createDefaultHomepagePage();
  const sections = createDefaultHomepageSections(stage).map((section, index) => ({
    id: `fallback-${stage}-${index}`,
    ...section,
  })) as HomepageSectionRecord[];

  return {
    page: {
      id: "fallback-homepage",
      ...page,
    } satisfies HomepagePageRecord,
    sections,
  };
}

async function getHomepagePageRow() {
  const supabase = await createSupabaseServerClient();
  const { data } = await supabase
    .from("pages")
    .select("*")
    .eq("slug", HOMEPAGE_SLUG)
    .maybeSingle();

  return (data as PageRow | null) ?? null;
}

async function getHomepageSectionRows(pageId: string, stage: HomepageSectionStage) {
  const supabase = await createSupabaseServerClient();
  const { data } = await supabase
    .from("page_sections")
    .select("*")
    .eq("page_id", pageId)
    .eq("stage", stage)
    .order("order_index", { ascending: true })
    .order("created_at", { ascending: true });

  return (data as PageSectionRow[] | null) ?? [];
}

async function insertDefaultHomepageData(pageId?: string) {
  const supabase = await createSupabaseServerClient();
  let targetPageId = pageId;

  if (!targetPageId) {
    const defaultPage = createDefaultHomepagePage();
    const pageInsert: PageInsert = {
      slug: defaultPage.slug,
      title: defaultPage.title,
      status: defaultPage.status,
      last_published_at: defaultPage.lastPublishedAt,
    };

    const { data: page } = await supabase.from("pages").insert(pageInsert).select("*").single();
    targetPageId = (page as PageRow).id;
  }

  const inserts = [
    ...createDefaultHomepageSections("draft", targetPageId),
    ...createDefaultHomepageSections("published", targetPageId),
  ].map(toPageSectionInsert);

  await supabase.from("page_sections").insert(inserts);

  return targetPageId;
}

async function cloneSectionsToStage(
  pageId: string,
  sourceStage: HomepageSectionStage,
  targetStage: HomepageSectionStage,
) {
  const supabase = await createSupabaseServerClient();
  const sourceRows = await getHomepageSectionRows(pageId, sourceStage);

  if (sourceRows.length === 0) {
    return;
  }

  await supabase.from("page_sections").delete().eq("page_id", pageId).eq("stage", targetStage);

  await supabase.from("page_sections").insert(
    sourceRows.map((row) => ({
      page_id: row.page_id,
      stage: targetStage,
      type: row.type,
      order_index: row.order_index,
      visible: row.visible,
      props_json: row.props_json,
    })),
  );
}

export async function ensureHomepageDraftExists() {
  try {
    let page = await getHomepagePageRow();

    if (!page) {
      const pageId = await insertDefaultHomepageData();
      page = await getHomepagePageRow();

      if (!page && !pageId) {
        return buildFallbackHomepage("draft");
      }
    }

    if (!page) {
      return buildFallbackHomepage("draft");
    }

    const publishedRows = await getHomepageSectionRows(page.id, "published");
    const draftRows = await getHomepageSectionRows(page.id, "draft");

    if (publishedRows.length === 0 && draftRows.length === 0) {
      await insertDefaultHomepageData(page.id);
    } else if (draftRows.length === 0 && publishedRows.length > 0) {
      await cloneSectionsToStage(page.id, "published", "draft");
    } else if (publishedRows.length === 0 && draftRows.length > 0) {
      await cloneSectionsToStage(page.id, "draft", "published");
    }

    const refreshedPage = (await getHomepagePageRow()) ?? page;
    const refreshedDraftRows = await getHomepageSectionRows(refreshedPage.id, "draft");
    const sections = refreshedDraftRows
      .map(toHomepageSectionRecord)
      .filter(Boolean) as HomepageSectionRecord[];

    return {
      page: toHomepagePageRecord(refreshedPage),
      sections,
    };
  } catch {
    return buildFallbackHomepage("draft");
  }
}

export async function getHomepageForStage(
  stage: HomepageSectionStage,
) {
  try {
    const page = await getHomepagePageRow();

    if (!page) {
      return buildFallbackHomepage(stage);
    }

    const rows = await getHomepageSectionRows(page.id, stage);

    if (rows.length === 0) {
      return buildFallbackHomepage(stage);
    }

    const sections = rows
      .map(toHomepageSectionRecord)
      .filter(Boolean) as HomepageSectionRecord[];

    return {
      page: toHomepagePageRecord(page),
      sections,
    };
  } catch {
    return buildFallbackHomepage(stage);
  }
}

export async function getHomepageEditorData() {
  const homepage = await ensureHomepageDraftExists();

  return {
    page: homepage.page,
    sections: homepage.sections,
    availableTypes: getAvailableHomepageSectionTypes(
      homepage.sections.map((section) => section.type),
    ),
  };
}
