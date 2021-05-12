export default class Square {
    private _squareOfSum : number;
    private _sumOfSquares : number;
    private _difference : number;

    constructor(n: number) {
        this._squareOfSum = Math.pow((n*(n+1))/2, 2)
        this._sumOfSquares = (n*(2*n + 1)*(n+1)) / 6
        this._difference = this._squareOfSum - this._sumOfSquares;
    }

    public get squareOfSum() : number {
        return this._squareOfSum;
    }

    public get sumOfSquares() : number {
        return this._sumOfSquares;
    }

    public get difference() : number {
        return this._difference;
    }
}