void main() {
  double number = double.parse(1.2345.toStringAsFixed(2));
  print(number); // 1.23

  number = double.parse(1.2356.toStringAsFixed(2));
  print(number); // 1.24

  number = double.parse((-1.2345).toStringAsFixed(2));
  print(number); // -1.23

  number = double.parse((-1.2356).toStringAsFixed(2));
  print(number); // -1.24
}