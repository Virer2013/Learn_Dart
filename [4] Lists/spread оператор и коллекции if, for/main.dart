// ignore_for_file: dead_code

void main() {
  // spread operator (...)
  // collection if
  // collection for

  const orangeAllerge = true;

  const appleAndPineapple = ['apple', 'pineapple'];
  // const orangeAndPear = ['orange', 'pear'];
  const orangeAndPear = [if (!orangeAllerge) 'orange', 'pear'];
  final fruits = [
    'watermelon',
    ...appleAndPineapple,
    ...orangeAndPear,
  ];

  var bigFruits = ['BANANA', for (final fruit in fruits) fruit.toUpperCase()];
  print(bigFruits);
  // fruits.addAll(appleAndPineapple);
  // fruits.addAll(orangeAndPear);
  print(fruits);
}
