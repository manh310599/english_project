int roundUpAbsolute(double number) {
  return number.isNegative ? number.floor() : number.ceil();
}
