export const COLORS = [
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white",
] as const;

export type Colors = typeof COLORS;
export type Color = Colors[number];

export const colorCode = (color: Color) => {
  return COLORS.indexOf(color);
};
