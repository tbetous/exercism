class Transcriptor {
  private static DNA_TO_RNA_MAP = new Map([
    ["G", "C"],
    ["C", "G"],
    ["T", "A"],
    ["A", "U"],
  ]);

  toRna(dnaStrand: string): string {
    return dnaStrand
      .split("")
      .map((dnaNucleotide) => {
        const rnaNucleotide = Transcriptor.DNA_TO_RNA_MAP.get(dnaNucleotide);
        if (!rnaNucleotide) throw new Error("Invalid input DNA.");
        return rnaNucleotide;
      })
      .join("");
  }
}

export default Transcriptor;
