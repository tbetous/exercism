class ProteinTranslation {
  private static readonly CODONS_REGEXP = /\w{3}/g;

  private static readonly CODON_TO_PROTEIN_MAP = new Map([
    ["AUG", "Methionine"],
    ["UUU", "Phenylalanine"],
    ["UUC", "Phenylalanine"],
    ["UUA", "Leucine"],
    ["UUG", "Leucine"],
    ["UCU", "Serine"],
    ["UCC", "Serine"],
    ["UCA", "Serine"],
    ["UCG", "Serine"],
    ["UAU", "Tyrosine"],
    ["UAC", "Tyrosine"],
    ["UGU", "Cysteine"],
    ["UGC", "Cysteine"],
    ["UGG", "Tryptophan"],
    ["UAA", "STOP"],
    ["UAG", "STOP"],
    ["UGA", "STOP"],
  ]);

  static proteins(rnaSequence: string) {
    const proteins = [];
    const codons = rnaSequence.match(ProteinTranslation.CODONS_REGEXP) || [];
    for (const codon of codons) {
      const protein = ProteinTranslation.CODON_TO_PROTEIN_MAP.get(codon);
      if (protein == "STOP") break;
      proteins.push(protein);
    }
    return proteins;
  }
}

export default ProteinTranslation;
