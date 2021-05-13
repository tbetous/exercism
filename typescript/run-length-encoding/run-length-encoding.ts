const ENCODE_REGEXP = /(.)\1*/g;
const DECODE_REGEXP = /(\d*)(.)/g;

class RunLengthEncoding {
  static encode(text: string): string {
    return text.replace(
      ENCODE_REGEXP,
      (match) => `${match.length === 1 ? "" : match.length}${match[0]}`
    );
  }
  static decode(text: string): string {
    return text.replace(DECODE_REGEXP, (_, n, letter) =>
      letter.repeat(n ? parseInt(n) : 1)
    );
  }
}

export default RunLengthEncoding;
