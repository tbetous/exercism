class Hamming {
  public compute(strand1: string, strand2: string): number {
    if (strand1.length != strand2.length)
      throw new Error("DNA strands must be of equal length.");
    return strand1
      .split("")
      .filter((nucleotide, index) => nucleotide !== strand2.charAt(index))
      .length;
  }
}

export default Hamming;
