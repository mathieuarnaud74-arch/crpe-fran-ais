"use client";

import { ReactNode, useState } from "react";
import {
  DndContext,
  DragEndEvent,
  DragOverlay,
  DragStartEvent,
  PointerSensor,
  useDraggable,
  useDroppable,
  useSensor,
  useSensors,
} from "@dnd-kit/core";

import { cn } from "@/lib/utils";
import { CategorizationCategory, ExerciseChoice } from "@/types/domain";

type SessionResult = { isCorrect: boolean };

type Props = {
  items: ExerciseChoice[];
  categories: CategorizationCategory[];
  onChange: (value: string) => void;
  result: SessionResult | undefined;
  expectedMapping: Record<string, string>;
  disabled: boolean;
};

function DraggableChip({
  item,
  inBank,
  correctness,
  disabled,
}: {
  item: ExerciseChoice;
  inBank: boolean;
  correctness: boolean | null;
  disabled: boolean;
}) {
  const { attributes, listeners, setNodeRef, isDragging } = useDraggable({
    id: item.id,
    disabled,
  });

  return (
    <div
      ref={setNodeRef}
      {...listeners}
      {...attributes}
      className={cn(
        "touch-none select-none rounded-full border px-3 py-1.5 text-sm font-medium transition-colors duration-150",
        !disabled && correctness === null && "cursor-grab active:cursor-grabbing",
        disabled && correctness === null && "cursor-default",
        isDragging && "opacity-40",
        inBank && correctness === null && "border-border bg-card text-ink",
        !inBank && correctness === null && "border-accentSecondary/40 bg-accentSecondarySoft text-ink",
        correctness === true && "cursor-default border-successBorder bg-successBg text-pine",
        correctness === false && "cursor-default border-errorBorder bg-errorBg text-error",
      )}
    >
      {item.label}
      {correctness === true && <span aria-hidden="true"> ✓</span>}
      {correctness === false && <span aria-hidden="true"> ✗</span>}
    </div>
  );
}

function DroppableBank({ children }: { children: ReactNode }) {
  const { setNodeRef, isOver } = useDroppable({ id: "bank" });
  return (
    <div
      ref={setNodeRef}
      className={cn(
        "min-h-[3.5rem] flex flex-wrap gap-2 rounded-[1.25rem] border px-4 py-3 transition-colors duration-150",
        isOver ? "border-accent/60 bg-accent/5" : "border-border bg-paper",
      )}
    >
      {children}
    </div>
  );
}

function DroppableColumn({
  id,
  label,
  children,
}: {
  id: string;
  label: string;
  children: ReactNode;
}) {
  const { setNodeRef, isOver } = useDroppable({ id });
  return (
    <div
      ref={setNodeRef}
      className={cn(
        "rounded-[1.25rem] border p-4 transition-colors duration-150",
        isOver ? "border-accent/60 bg-accent/5" : "border-border bg-paper",
      )}
    >
      <p
        className={cn(
          "mb-3 text-xs font-bold uppercase tracking-[0.14em]",
          isOver ? "text-accent" : "text-muted",
        )}
      >
        {label}
      </p>
      <div className="flex min-h-[3rem] flex-wrap gap-2">{children}</div>
    </div>
  );
}

export function TriCategoriesInput({
  items,
  categories,
  onChange,
  result,
  expectedMapping,
  disabled,
}: Props) {
  const [placement, setPlacement] = useState<Record<string, string>>({});
  const [activeId, setActiveId] = useState<string | null>(null);

  const sensors = useSensors(
    useSensor(PointerSensor, { activationConstraint: { distance: 6 } }),
  );

  function placeItem(itemId: string, categoryId: string) {
    const next = { ...placement, [itemId]: categoryId };
    setPlacement(next);
    onChange(items.every((item) => item.id in next) ? JSON.stringify(next) : "");
  }

  function removeItem(itemId: string) {
    const next = { ...placement };
    delete next[itemId];
    setPlacement(next);
    onChange("");
  }

  function handleDragStart({ active }: DragStartEvent) {
    setActiveId(active.id as string);
  }

  function handleDragEnd({ active, over }: DragEndEvent) {
    setActiveId(null);
    if (!over) return;
    const itemId = active.id as string;
    const targetId = over.id as string;
    if (targetId === "bank") {
      removeItem(itemId);
    } else {
      placeItem(itemId, targetId);
    }
  }

  const bankItems = items.filter((item) => !(item.id in placement));
  const activeItem = activeId ? items.find((item) => item.id === activeId) : null;
  const activeInBank = activeId ? !(activeId in placement) : false;

  function getColumnItems(categoryId: string) {
    return items.filter((item) => placement[item.id] === categoryId);
  }

  function getItemCorrectness(itemId: string): boolean | null {
    if (!result) return null;
    return placement[itemId] === expectedMapping[itemId];
  }

  const wrongItems =
    result && !result.isCorrect
      ? items.filter((item) => placement[item.id] !== expectedMapping[item.id])
      : [];

  return (
    <DndContext
      sensors={sensors}
      onDragStart={handleDragStart}
      onDragEnd={handleDragEnd}
    >
      <div className="space-y-5">
        <div>
          <p className="mb-3 text-xs font-semibold uppercase tracking-[0.14em] text-muted">
            Banque de mots
          </p>
          <DroppableBank>
            {bankItems.length === 0 && !result ? (
              <p className="text-sm italic text-muted">
                Tous les mots sont placés — vérifiez ou soumettez.
              </p>
            ) : (
              bankItems.map((item) => (
                <DraggableChip
                  key={item.id}
                  item={item}
                  inBank={true}
                  correctness={null}
                  disabled={disabled}
                />
              ))
            )}
          </DroppableBank>
        </div>

        <div
          className={cn(
            "grid gap-3",
            categories.length === 2 && "grid-cols-1 sm:grid-cols-2",
            categories.length === 3 && "grid-cols-1 sm:grid-cols-3",
            categories.length > 3 && "grid-cols-1 sm:grid-cols-2",
          )}
        >
          {categories.map((category) => {
            const columnItems = getColumnItems(category.id);
            return (
              <DroppableColumn key={category.id} id={category.id} label={category.label}>
                {columnItems.length === 0 && (
                  <span className="text-xs italic text-muted">Glissez ici</span>
                )}
                {columnItems.map((item) => (
                  <DraggableChip
                    key={item.id}
                    item={item}
                    inBank={false}
                    correctness={getItemCorrectness(item.id)}
                    disabled={disabled}
                  />
                ))}
              </DroppableColumn>
            );
          })}
        </div>

        {wrongItems.length > 0 && (
          <div className="rounded-[1.25rem] border border-errorBorder bg-errorBg px-4 py-3 text-sm">
            <p className="mb-2 font-semibold text-ink">
              {wrongItems.length === 1
                ? "1 erreur de classement :"
                : `${wrongItems.length} erreurs de classement :`}
            </p>
            <ul className="space-y-1 text-muted">
              {wrongItems.map((item) => {
                const correctCat = categories.find((c) => c.id === expectedMapping[item.id]);
                const placedCat = categories.find((c) => c.id === placement[item.id]);
                return (
                  <li key={item.id}>
                    <span className="font-medium text-ink">{item.label}</span>
                    {" \u2192 "}
                    <span className="font-medium text-pine">{correctCat?.label}</span>
                    {placedCat && (
                      <span className="text-error"> (classé dans : {placedCat.label})</span>
                    )}
                  </li>
                );
              })}
            </ul>
          </div>
        )}
      </div>

      <DragOverlay>
        {activeItem ? (
          <div
            className={cn(
              "touch-none select-none rounded-full border px-3 py-1.5 text-sm font-medium",
              "cursor-grabbing shadow-elevated rotate-1 scale-105",
              activeInBank
                ? "border-border bg-card text-ink"
                : "border-accentSecondary/40 bg-accentSecondarySoft text-ink",
            )}
          >
            {activeItem.label}
          </div>
        ) : null}
      </DragOverlay>
    </DndContext>
  );
}
