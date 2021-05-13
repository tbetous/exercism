export default class Triangle {
  sides: number[];

  constructor(...sides: number[]) {
    this.sides = sides.sort((a, b) => a - b);
  }

  kind() {
    const [side_a, side_b, side_c] = this.sides;
    if (side_a + side_b < side_c || side_a <= 0)
      throw Error("Sides are not correctly set!");
    if (side_a === side_c) return "equilateral";
    if (side_a === side_b || side_b === side_c) return "isosceles";
    return "scalene";
  }
}
