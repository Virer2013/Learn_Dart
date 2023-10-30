void main() {
  // Create List
  var fruits = ['apple', 'pineapple', 'watermelon'];
  print(fruits);
  fruits = [];
  print(fruits);
  fruits = ['orange', 'pear'];
  print(fruits);

  List<String> apple = [];

  var orange = <String>[];

  // Accessing Elements
  final secondElement = fruits[1];
  print(secondElement);

  final index = fruits.indexOf('watermelon');
  final value = fruits[index];
  print('The value at index $index is $value');

  // Assigning Values to List Elements
  fruits[1] = 'lemon';
  print(fruits);

  // Adding Elements to the End of a List
  fruits.add('avocado');
  print(fruits);

  // Inserting Elements
  fruits.insert(1, 'banana');
  print(fruits);

  // Removing Elements
  fruits.remove('apple');
  print(fruits);

  fruits.removeAt(1);
  print(fruits);

  // Sorting Lists
  final integers = [22, 83, 1, 443, 6, 20, 2];
  integers.sort();
  print(integers);

  final minValue = integers[0];
  print(minValue);

  final maxValue = integers[integers.length - 1];
  print(maxValue);

  fruits.sort();
  print(fruits);
}
