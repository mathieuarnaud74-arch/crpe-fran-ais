import type { BlockTable } from "@/features/fiches/types";

export function BlockTable({ block }: { block: BlockTable }) {
  return (
    <div className="space-y-2">
      {block.caption && (
        <p className="text-xs font-semibold uppercase tracking-[0.14em] text-muted">
          {block.caption}
        </p>
      )}
      <div className="overflow-x-auto rounded-[1.25rem] border border-border">
        <table className="w-full min-w-[400px] text-sm">
          <thead>
            <tr className="border-b border-border bg-secondary">
              {block.headers.map((h) => (
                <th
                  key={h}
                  className="px-4 py-3 text-left text-xs font-semibold uppercase tracking-[0.10em] text-muted"
                >
                  {h}
                </th>
              ))}
            </tr>
          </thead>
          <tbody>
            {block.rows.map((row, i) => (
              <tr
                key={i}
                className="border-b border-border last:border-0 odd:bg-card even:bg-paper"
              >
                {row.map((cell, j) => (
                  <td
                    key={j}
                    className="px-4 py-3 text-sm leading-6 text-ink first:font-medium"
                  >
                    {cell}
                  </td>
                ))}
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
