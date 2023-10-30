void main() {
  // a, b, c, d, e
  // 2, 4, 8, 16, 32

  final mylist = ['a', 'b', 'c'];
  print(mylist);

  for (final item in mylist) {
    print(item);
  }

  final reversedList = mylist.reversed;
  print(reversedList.toList());

  // Creating an Iterable
  Iterable<String> myIterable = ['a', 'b', 'c'];

  // Accessing elements
  final twoElement = myIterable.elementAt(1);
  print(twoElement);

  // Finding the First and Last elements
  print(myIterable.first);
  print(myIterable.last);

  // Getting the length
  print(myIterable.length);

  // Other important methods on Iterable
  // map
  // where
  // expand
  // contains
  // forEach
  // reduce
  // fold

  // 1 to 10 000: 1, 4, 9, 16
  Iterable<int> hundredSquare() sync* {
    for (int i = 1; i < 100; i++) {
      yield i * i;
    }
  }

  // final squares = hundredSquare();
  // for(int square in squares) {
  //   print(square);
  // }

  final squares = HundredSquares();
  for (int square in squares) {
    print(square);
  }
}
