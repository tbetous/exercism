export default class Gigasecond {
  constructor(private readonly _start: Date) {}

  date(): Date {
    return new Date(this._start.getTime() + 10 ** 12);
  }
}