void main() {
 doubleToInt();
 intToDouble();
}

void doubleToInt() {
  double d = 10.3;

  print(d.toInt());
  print(d.truncate());
  print(d.round());
  print(d.ceil());
  print(d.floor());
}

void intToDouble() {
  int i = 5;
  print(i.toDouble());
  print(double.tryParse('$i'));
}
