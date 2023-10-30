void main() {
  // final fruits = ['apple', 'pineapple', 'watermelon'];
  final fruits = const ['apple', 'pineapple', 'watermelon'];
  // fruits.remove('apple');
  // fruits.add('orange');
  // fruits[1] = 'avocado';
  print(fruits);
  // print(fruits);
  // fruits = [];
  // print(fruits);
  // fruits = ['orange', 'pear'];
  // print(fruits);

  final modifiableList = [DateTime.now(), DateTime.now()];
  final unmodifiableList = List.unmodifiable(modifiableList);
  print(unmodifiableList);
}

class Fruits {
  final List<String> fruits;
  Fruits([this.fruits = const ['fruits']]);
}
