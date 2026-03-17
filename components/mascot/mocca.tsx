import Image from "next/image";

export type MoccaVariant = "happy" | "neutral" | "grumpy";
type MoccaSize = "sm" | "md" | "lg" | "xl" | "portrait";

const SRC: Record<MoccaVariant, string> = {
  happy: "/mocca-happy.png",
  neutral: "/mocca-neutral.png",
  grumpy: "/mocca-grumpy.png",
};

const SIZE: Record<MoccaSize, { className: string; sizes: string }> = {
  sm:      { className: "h-16 w-16",   sizes: "64px" },
  md:      { className: "h-24 w-24",   sizes: "96px" },
  lg:      { className: "h-32 w-32",   sizes: "128px" },
  xl:      { className: "h-48 w-48",   sizes: "192px" },
  portrait:{ className: "h-80 w-64",   sizes: "256px" },
};

export function Mocca({
  variant,
  size = "md",
  className = "",
}: {
  variant: MoccaVariant;
  size?: MoccaSize;
  className?: string;
}) {
  const { className: sizeClass, sizes } = SIZE[size];
  return (
    <div className={`relative shrink-0 overflow-hidden ${sizeClass} ${className}`}>
      <Image
        src={SRC[variant]}
        alt=""
        fill
        className="object-contain object-bottom"
        sizes={sizes}
      />
    </div>
  );
}
