export default class ArmstrongNumbers {
    public static isArmstrongNumber(number: number) {
        const numberAsString = number.toString();
        const power = numberAsString.length;
        const sum = numberAsString.split("")
            .map(digitAsString => parseInt(digitAsString))
            .reduce((sum, digit) => sum + Math.pow(digit, power), 0)
        return number == sum
    }
}