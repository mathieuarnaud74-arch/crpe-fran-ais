import { mkdirSync, writeFileSync } from "node:fs";
import path from "node:path";

import {
  frenchModuleSeriesIntegration,
  part4PremierLotSeriesCompletes,
} from "../content/french-crpe-module";

function escapeSqlString(value: string) {
  return value.replace(/'/g, "''");
}

function toSqlString(value: string) {
  return `'${escapeSqlString(value)}'`;
}

function toSqlNullableString(value: string | null) {
  return value === null ? "null" : toSqlString(value);
}

function toJsonbLiteral(value: unknown) {
  return `${toSqlString(JSON.stringify(value))}::jsonb`;
}

function buildUuid(prefix: string, index: number) {
  return `${prefix}-0000-0000-0000-${String(index).padStart(12, "0")}`;
}

const outputPath = path.join(process.cwd(), "supabase", "seed_content_french_module_v1.sql");

const lines: string[] = [
  "-- CRPE Francais - Module V1",
  "-- Generated from content/french-crpe-module.ts",
  "-- Do not edit manually: rerun `npm run generate:french-module-seed`.",
  "",
  "insert into public.exercises (",
  "  id, subject, subdomain, topic_key, topic_label, level,",
  "  exercise_type, instruction, support_text, choices, expected_answer,",
  "  detailed_explanation, validation_status, source, access_tier, is_published",
  ")",
  "values",
];

const rows: string[] = [];

for (const series of part4PremierLotSeriesCompletes) {
  const integration = frenchModuleSeriesIntegration[series.id];

  series.questions.forEach((question, index) => {
    const row = [
      "(",
      `  ${toSqlString(buildUuid(integration.seedPrefix, index + 1))},`,
      "  'Francais',",
      `  ${toSqlString(series.domain)},`,
      `  ${toSqlString(series.subdomain)},`,
      `  ${toSqlString(series.subdomainLabel)},`,
      `  'Standard',`,
      `  ${toSqlString(question.type)},`,
      `  ${toSqlString(question.instruction)},`,
      `  ${toSqlNullableString(question.supportText)},`,
      `  ${question.choices ? toJsonbLiteral(question.choices) : "null"},`,
      `  ${toJsonbLiteral(question.expectedAnswer)},`,
      `  ${toSqlString(question.explanation)},`,
      "  'valide',",
      `  ${toSqlString(integration.sourceLabel)},`,
      `  'free',`,
      "  true",
      ")",
    ].join("\n");

    rows.push(row);
  });
}

lines.push(`${rows.join(",\n\n")};`, "");

mkdirSync(path.dirname(outputPath), { recursive: true });
writeFileSync(outputPath, lines.join("\n"), "utf8");

console.log(`Seed generated: ${outputPath}`);
