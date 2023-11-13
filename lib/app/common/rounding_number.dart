int roundUpAbsolute(double number) {
  return number.isNegative ? number.floor() : number.ceil();
}

int roundTime(int time){
  int round = (time / 100000).round() * 100000;
  return round;
}