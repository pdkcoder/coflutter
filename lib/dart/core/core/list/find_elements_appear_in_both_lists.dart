void main() {
  List<int> l1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> l2 = [2, 4, 6, 8, 10];

  print(getElementsAppearInBothList(l1, l2));

  /////////////////////////////////////////////////

  List<Book> books1 = [
    Book(1, 'Book 1'),
    Book(2, 'Book 2'),
    Book(3, 'Book 3'),
    Book(4, 'Book 4')
  ];
  List<Book> books2 = [
    Book(1, 'Book 1'),
    Book(3, 'Book 3'),
    Book(5, 'Book 4'),
    Book(6, 'Book 6')
  ];

  print(getElementsAppearInBothList(books1, books2));
}

List? getElementsAppearInBothList(List l1, List l2) {
  return l1.where((e) {
    // Pick any element in l1 and be contained in l2
    return l2.contains(e);
  }).toList();
}

class Book {
  final int id;
  final String name;

  Book(this.id, this.name);

  @override
  bool operator ==(Object other) =>
      // 2 books are equal if and only if they are both Book and have exactly
      // the same id AND name.
      identical(this, other) ||
      other is Book &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name;

  @override
  String toString() {
    return 'Book{id: $id, name: $name}';
  }
}
//
//   @override
//   int get hashCode => id.hashCode ^ name.hashCode;
// }
