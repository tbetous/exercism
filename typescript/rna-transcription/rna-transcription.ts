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
        if (!Transcriptor.DNA_TO_RNA_MAP.has(dnaNucleotide))
          throw new Error("Invalid input DNA.");
        const rnaNucleotide = Transcriptor.DNA_TO_RNA_MAP.get(dnaNucleotide);
        return rnaNucleotide;
      })
      .join("");
  }
}

export default Transcriptor;
