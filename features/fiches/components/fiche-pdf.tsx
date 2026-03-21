"use client";

import {
  Document,
  Page,
  Text,
  View,
  StyleSheet,
  Font,
} from "@react-pdf/renderer";

import type { Fiche, FicheBlock, FicheSection } from "@/features/fiches/types";

// Register a fallback font
Font.register({
  family: "Helvetica",
  fonts: [
    { src: "Helvetica" },
    { src: "Helvetica-Bold", fontWeight: "bold" },
    { src: "Helvetica-Oblique", fontStyle: "italic" },
  ],
});

const styles = StyleSheet.create({
  page: {
    padding: 40,
    fontFamily: "Helvetica",
    fontSize: 10,
    color: "#2C2420",
    backgroundColor: "#FFFDF9",
  },
  header: {
    marginBottom: 20,
    borderBottom: "2pt solid #4A6E8F",
    paddingBottom: 12,
  },
  title: {
    fontSize: 22,
    fontWeight: "bold",
    color: "#2C2420",
    marginBottom: 4,
  },
  subtitle: {
    fontSize: 12,
    color: "#6B534A",
    marginBottom: 6,
  },
  badge: {
    fontSize: 8,
    color: "#4A6E8F",
    textTransform: "uppercase",
    letterSpacing: 1.5,
    marginBottom: 8,
  },
  section: {
    marginTop: 16,
    marginBottom: 8,
  },
  sectionTitle: {
    fontSize: 14,
    fontWeight: "bold",
    color: "#4A6E8F",
    marginBottom: 8,
    borderBottom: "1pt solid #D8D2C6",
    paddingBottom: 4,
  },
  blockRule: {
    backgroundColor: "#F5F1E8",
    padding: 10,
    borderLeft: "3pt solid #4A6E8F",
    marginBottom: 8,
    borderRadius: 4,
  },
  blockExample: {
    padding: 8,
    marginBottom: 6,
    borderLeft: "2pt solid #6EE7B7",
  },
  blockExampleIncorrect: {
    padding: 8,
    marginBottom: 6,
    borderLeft: "2pt solid #DC2626",
  },
  blockTip: {
    backgroundColor: "#F1E0D5",
    padding: 10,
    marginBottom: 8,
    borderRadius: 4,
  },
  blockWatchout: {
    backgroundColor: "#FEF2F2",
    padding: 10,
    marginBottom: 8,
    borderRadius: 4,
    borderLeft: "3pt solid #DC2626",
  },
  text: {
    fontSize: 10,
    lineHeight: 1.5,
    marginBottom: 4,
  },
  bold: {
    fontWeight: "bold",
  },
  italic: {
    fontStyle: "italic",
  },
  muted: {
    color: "#6B534A",
  },
  keyPoint: {
    flexDirection: "row",
    marginBottom: 4,
    paddingLeft: 12,
  },
  keyPointBullet: {
    width: 16,
    color: "#4A6E8F",
    fontWeight: "bold",
  },
  footer: {
    position: "absolute",
    bottom: 20,
    left: 40,
    right: 40,
    fontSize: 7,
    color: "#6B534A",
    textAlign: "center",
    borderTop: "0.5pt solid #D8D2C6",
    paddingTop: 6,
  },
  quizItem: {
    marginBottom: 8,
    padding: 8,
    backgroundColor: "#FDF9F3",
    borderRadius: 4,
    border: "0.5pt solid #D8D2C6",
  },
  table: {
    marginBottom: 8,
  },
  tableRow: {
    flexDirection: "row",
    borderBottom: "0.5pt solid #D8D2C6",
  },
  tableHeader: {
    flexDirection: "row",
    backgroundColor: "#EAE4D8",
    borderBottom: "1pt solid #D8D2C6",
  },
  tableCell: {
    flex: 1,
    padding: 6,
    fontSize: 9,
  },
  tableCellBold: {
    flex: 1,
    padding: 6,
    fontSize: 9,
    fontWeight: "bold",
  },
});

function renderBlock(block: FicheBlock, index: number) {
  switch (block.kind) {
    case "rule":
      return (
        <View key={index} style={styles.blockRule}>
          <Text style={styles.text}>{block.content}</Text>
          {block.linguisticLogic && (
            <Text style={[styles.text, styles.italic, styles.muted]}>
              Logique : {block.linguisticLogic}
            </Text>
          )}
          {block.watchout && (
            <Text style={[styles.text, { color: "#DC2626" }]}>
              ⚠ {block.watchout}
            </Text>
          )}
        </View>
      );

    case "example":
      return (
        <View
          key={index}
          style={block.isCorrect === false ? styles.blockExampleIncorrect : styles.blockExample}
        >
          <Text style={styles.text}>
            {block.isCorrect === false ? "✗ " : block.isCorrect === true ? "✓ " : ""}
            {block.sentence}
          </Text>
          {block.annotation && (
            <Text style={[styles.text, styles.muted, styles.italic]}>
              {block.annotation}
            </Text>
          )}
        </View>
      );

    case "tip":
      return (
        <View key={index} style={styles.blockTip}>
          <Text style={[styles.text, styles.bold]}>💡 Astuce</Text>
          <Text style={styles.text}>{block.text}</Text>
        </View>
      );

    case "watchout":
      return (
        <View key={index} style={styles.blockWatchout}>
          <Text style={[styles.text, styles.bold]}>⚠ Pièges courants</Text>
          {block.items.map((item, i) => (
            <View key={i} style={{ marginTop: 4 }}>
              <Text style={[styles.text, styles.bold]}>{item.label}</Text>
              <Text style={styles.text}>{item.explanation}</Text>
              {item.correction && (
                <Text style={[styles.text, styles.italic]}>
                  → {item.correction}
                </Text>
              )}
            </View>
          ))}
        </View>
      );

    case "table":
      return (
        <View key={index} style={styles.table}>
          {block.caption && (
            <Text style={[styles.text, styles.bold, { marginBottom: 4 }]}>
              {block.caption}
            </Text>
          )}
          <View style={styles.tableHeader}>
            {block.headers.map((h, i) => (
              <Text key={i} style={styles.tableCellBold}>{h}</Text>
            ))}
          </View>
          {block.rows.map((row, ri) => (
            <View key={ri} style={styles.tableRow}>
              {row.map((cell, ci) => (
                <Text key={ci} style={styles.tableCell}>{cell}</Text>
              ))}
            </View>
          ))}
        </View>
      );

    default:
      return null;
  }
}

function renderSection(section: FicheSection, index: number) {
  return (
    <View key={index} style={styles.section}>
      <Text style={styles.sectionTitle}>{section.title}</Text>
      {section.blocks.map((block, i) => renderBlock(block, i))}
    </View>
  );
}

export function FichePdfDocument({ fiche }: { fiche: Fiche }) {
  const content = fiche.content;

  return (
    <Document title={fiche.title} author="CRPE Prep">
      <Page size="A4" style={styles.page}>
        {/* Header */}
        <View style={styles.header}>
          <Text style={styles.badge}>
            {fiche.domaine} · {fiche.model} · {fiche.difficulte}
          </Text>
          <Text style={styles.title}>{fiche.title}</Text>
          {fiche.subtitle && (
            <Text style={styles.subtitle}>{fiche.subtitle}</Text>
          )}
        </View>

        {/* Content based on model */}
        {content.model === "reference" && (
          <>
            <Text style={styles.text}>{content.intro}</Text>
            {content.sections.map((section, i) => renderSection(section, i))}

            {content.keyPoints.length > 0 && (
              <View style={styles.section}>
                <Text style={styles.sectionTitle}>Points clés</Text>
                {content.keyPoints.map((point, i) => (
                  <View key={i} style={styles.keyPoint}>
                    <Text style={styles.keyPointBullet}>{i + 1}.</Text>
                    <Text style={[styles.text, { flex: 1 }]}>{point}</Text>
                  </View>
                ))}
              </View>
            )}
          </>
        )}

        {content.model === "sprint" && (
          <>
            <View style={styles.blockRule}>
              <Text style={[styles.text, styles.bold]}>Règle en une ligne</Text>
              <Text style={styles.text}>{content.oneLiner}</Text>
            </View>

            <View style={styles.blockExample}>
              <Text style={[styles.text, styles.bold]}>✓ Exemple correct</Text>
              <Text style={styles.text}>{content.exampleCorrect.sentence}</Text>
              <Text style={[styles.text, styles.muted]}>{content.exampleCorrect.explanation}</Text>
            </View>

            <View style={styles.blockExampleIncorrect}>
              <Text style={[styles.text, styles.bold]}>✗ Exemple incorrect</Text>
              <Text style={styles.text}>{content.exampleWrong.sentence}</Text>
              <Text style={[styles.text, styles.muted]}>{content.exampleWrong.explanation}</Text>
            </View>

            <View style={styles.blockWatchout}>
              <Text style={[styles.text, styles.bold]}>Piège principal</Text>
              <Text style={styles.text}>{content.mainTrap}</Text>
            </View>
          </>
        )}

        {content.model === "operatoire" && (
          <>
            <View style={styles.blockRule}>
              <Text style={[styles.text, styles.bold]}>Question de départ</Text>
              <Text style={styles.text}>{content.startingQuestion}</Text>
            </View>

            <View style={styles.section}>
              <Text style={styles.sectionTitle}>Exemple guidé</Text>
              <Text style={[styles.text, styles.italic]}>
                {content.workedExample.phrase}
              </Text>
              {content.workedExample.steps.map((step, i) => (
                <View key={i} style={styles.keyPoint}>
                  <Text style={styles.keyPointBullet}>{i + 1}.</Text>
                  <Text style={[styles.text, { flex: 1 }]}>{step}</Text>
                </View>
              ))}
            </View>
          </>
        )}

        {/* Quiz section */}
        {"quiz" in content && content.quiz.length > 0 && (
          <View style={styles.section}>
            <Text style={styles.sectionTitle}>Quiz de révision</Text>
            {content.quiz.map((item, i) => (
              <View key={i} style={styles.quizItem}>
                <Text style={styles.text}>
                  {i + 1}. {item.sentence}
                </Text>
                <Text style={[styles.text, styles.muted]}>
                  → {item.isCorrect ? "Correct" : "Incorrect"} — {item.explanation}
                </Text>
              </View>
            ))}
          </View>
        )}

        {/* Footer */}
        <Text style={styles.footer}>
          CRPE Prep — Fiche générée le {new Date().toLocaleDateString("fr-FR")} — {fiche.tags.join(", ")}
        </Text>
      </Page>
    </Document>
  );
}
