class CollatzConjecture {
  static steps(n: number, step: number = 0): number {
    if (n <= 0) throw new Error("Only positive numbers are allowed");
    if (n === 1) return step;
    if (n % 2 === 0) return CollatzConjecture.steps(n / 2, step + 1);
    return CollatzConjecture.steps(3 * n + 1, step + 1);
  }
}

export default CollatzConjecture;
