export const ColorArray =
  [`black`,
    `brown`,
    `red`,
    `orange`,
    `yellow`,
    `green`,
    `blue`,
    `violet`,
    `grey`,
    `white`,] as const

// all of this is to disallow passing e.g. 'pink' to constructor
export type Colors = typeof ColorArray
export type Color = Colors[number]

export class ResistorColor {

  private _colors: Color[] = [];
  private _value: number;

  constructor(colors: Color[]) {
    if (colors.length < 2)
      throw new Error("At least two colors need to be present");
    this._colors = colors;
    this._value = parseInt(
      this._colors
        .slice(0, 2)
        .map((color) => ColorArray.indexOf(color))
        .join("")
    );
  }

  // Could be a getter but tests are not designed for
  public value(): number {
    return this._value;
  }
}

export default ResistorColor
