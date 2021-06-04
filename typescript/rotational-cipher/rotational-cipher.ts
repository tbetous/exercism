const UPPER_A_CODE = "A".charCodeAt(0);
const LOWER_A_CODE = "a".charCodeAt(0);

export default class RotationalCipher {
  static rotate(text: string, key: number) {
    return text.replace(/[a-zA-Z]/g, (c) => this.rotateChar(c, key));
  }

  static rotateChar(char: string, key: number) {
    const base = char >= "A" && char <= "Z" ? UPPER_A_CODE : LOWER_A_CODE;
    const rotatedCode = ((char.charCodeAt(0) + key - base) % 26) + base;
    return String.fromCharCode(rotatedCode);
  }
}
