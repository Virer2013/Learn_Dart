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
}
