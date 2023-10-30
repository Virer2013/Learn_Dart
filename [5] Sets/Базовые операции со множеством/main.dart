import 'dart:math';

void main() {
  // Creating a Set
  final Set<int> setOne = {};
  final setTwo = <int>{};

  final setThree = {1, 2, 3, 3};
  print(setThree);

  var setFour = {1, 'hello', true};

  // Checking the contents
  final fruits = {'apple', 'pineapple', 'watermelon'};
  print(fruits.contains('apple'));
  print(fruits.contains('pear'));

  // Adding and Removing single elements
  final newFruits = <String>{};
  newFruits.add('orange');
  newFruits.add('pear');
  newFruits.add('orange');
  print(newFruits);

  newFruits.remove('pear');
  print(newFruits);

  // Looping over the elements
  for (final fruit in fruits) {
    print('I\'m like $fruit');
  }

  // Copying Sets
  final freshFruits = fruits.toSet();
  print(fruits);
  freshFruits.remove('watermelon');
  print(fruits);
  print(freshFruits);

  // Other operations
  var newFruits2 = {'pear', ...freshFruits, if (true) ...fruits};
  print(newFruits2);

  final randomGenerator = Random();
  final randomList = <int>[];

  for (int i = 0; i < 10; i++) {
    final randomInt = randomGenerator.nextInt(10) + 1;
    randomList.add(randomInt);
  }
  print(randomList);

  final uniqueValue = <int>{};
  final duplicates = <int>{};

  for (int number in randomList) {
    if (uniqueValue.contains(number)) {
      duplicates.add(number);
    }
    uniqueValue.add(number);
  }

  print(duplicates);
}
