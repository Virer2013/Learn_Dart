void main() {
  final fruits = ['apple', 'pineapple', 'watermelon'];

  for (int i = 0; i < fruits.length; i++) {
    final fruit = fruits[i];
    print('I like $fruit');
  }

  for (final fruit in fruits) {
    print('I like $fruit');
  }

  // print(fruits.first);
  // print(fruits.last);

  // print(fruits[0]);
  // print(fruits[fruits.length - 1]);

  // print(fruits.isEmpty);
  // print(fruits.isNotEmpty);
}
