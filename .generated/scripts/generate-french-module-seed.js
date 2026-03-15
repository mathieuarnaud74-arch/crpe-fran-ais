"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const node_fs_1 = require("node:fs");
const node_path_1 = __importDefault(require("node:path"));
const french_crpe_module_1 = require("../content/french-crpe-module");
function escapeSqlString(value) {
    return value.replace(/'/g, "''");
}
function toSqlString(value) {
    return `'${escapeSqlString(value)}'`;
}
function toSqlNullableString(value) {
    return value === null ? "null" : toSqlString(value);
}
function toJsonbLiteral(value) {
    return `${toSqlString(JSON.stringify(value))}::jsonb`;
}
function buildUuid(prefix, index) {
    return `${prefix}-0000-0000-0000-${String(index).padStart(12, "0")}`;
}
const outputPath = node_path_1.default.join(process.cwd(), "supabase", "seed_content_french_module_v1.sql");
const lines = [
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
const rows = [];
for (const series of french_crpe_module_1.part4PremierLotSeriesCompletes) {
    const integration = french_crpe_module_1.frenchModuleSeriesIntegration[series.id];
    series.questions.forEach((question, index) => {
        const row = [
            "(",
            `  ${toSqlString(buildUuid(integration.seedPrefix, index + 1))},`,
            "  'Francais',",
            `  ${toSqlString(series.domain)},`,
            `  ${toSqlString(series.subdomain)},`,
            `  ${toSqlString(series.subdomainLabel)},`,
            `  ${toSqlString(series.level)},`,
            `  ${toSqlString(question.type)},`,
            `  ${toSqlString(question.instruction)},`,
            `  ${toSqlNullableString(question.supportText)},`,
            `  ${question.choices ? toJsonbLiteral(question.choices) : "null"},`,
            `  ${toJsonbLiteral(question.expectedAnswer)},`,
            `  ${toSqlString(question.explanation)},`,
            "  'valide',",
            `  ${toSqlString(integration.sourceLabel)},`,
            `  ${toSqlString(integration.accessTier)},`,
            "  true",
            ")",
        ].join("\n");
        rows.push(row);
    });
}
lines.push(`${rows.join(",\n\n")};`, "");
(0, node_fs_1.mkdirSync)(node_path_1.default.dirname(outputPath), { recursive: true });
(0, node_fs_1.writeFileSync)(outputPath, lines.join("\n"), "utf8");
console.log(`Seed generated: ${outputPath}`);
