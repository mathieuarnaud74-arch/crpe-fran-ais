import Image from "next/image";

export type MoccaVariant = "happy" | "neutral" | "grumpy";
type MoccaSize = "sm" | "md" | "lg" | "portrait";

const SRC: Record<MoccaVariant, string> = {
  happy: "/mocca-happy.jpg",
  neutral: "/mocca-neutral.jpg",
  grumpy: "/mocca-grumpy.jpg",
};

const SIZE: Record<MoccaSize, string> = {
  sm: "h-16 w-16",
  md: "h-24 w-24",
  lg: "h-32 w-32",
  portrait: "h-40 w-28",
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
  return (
    <div className={`relative shrink-0 overflow-hidden ${SIZE[size]} ${className}`}>
      <Image
        src={SRC[variant]}
        alt=""
        fill
        className="object-cover object-right mix-blend-multiply"
        sizes="128px"
      />
    </div>
  );
}
