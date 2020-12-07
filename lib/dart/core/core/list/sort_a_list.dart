void main() {
  sortIntegersDefault();
  sortIntegersDesc();

  sortStringsDefault();
}

/// Sort list of integers.
/// [compare] parameter is omitted.
void sortIntegersDefault() {
  final List<int> integers = [5, 10, 2, 7, 9];
  integers.sort();
  print(integers);
}

/// Sort list of integers.
/// [compare] parameter is omitted.
void sortIntegersDesc() {
  final List<int> integers = [5, 10, 2, 7, 9];

  integers.sort((n1, n2) {
    return n2 - n1;
  });
  print(integers);
}

/// Sort list of strings.
/// [compare] parameter is omitted.
void sortStringsDefault() {
  final List<String> strings = ['one', 'two', 'three'];
  strings.sort();
  print(strings);
}