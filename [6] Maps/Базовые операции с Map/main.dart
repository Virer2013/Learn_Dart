void main() {
  // Creating a Map
  final Map<String, int> emptyMap = {};
  final emptyMap1 = <String, int>{};

  final emptySomething = {};
  final mySet = <String>{};

  final caloriesInFruit = {
    'apple': 200,
    'pineapple': 150,
    'watermelon': 650,
  };

  final test = {1: 'one', 2: 'two'};

  print(caloriesInFruit);
  print(test);

  final caloriesInFruit1 = {
    'apple': [200, 650],
    'pineapple': 150,
  };

  print(caloriesInFruit1);

  final caloriesInFruit2 = {
    'apple': 200,
    'pineapple': 200,
    'watermelon': 200,
  };

  print(caloriesInFruit2);

  // Accessing Key-Value Pairs
  final numberCaloriesInApple = caloriesInFruit['apple'];
  print(numberCaloriesInApple?.isEven);

  // Adding Elements to a Map
  caloriesInFruit['pear'] = 50;
  print(caloriesInFruit);

  // Updating an Element
  caloriesInFruit['pear'] = 100;
  print(caloriesInFruit);

  // Removing Elements From a Map
  caloriesInFruit.remove('pear');
  print(caloriesInFruit);

  // Accessing Properties
  print(caloriesInFruit.isEmpty);
  print(caloriesInFruit.isNotEmpty);
  print(caloriesInFruit.length);

  print(caloriesInFruit.keys);
  print(caloriesInFruit.values);

  // Checking for Key or Value Existance
  print(caloriesInFruit.containsKey('apple'));
  print(caloriesInFruit.containsValue(1));

  // Looping Over Elements of a Map
  // for (var calories in caloriesInFruit) {
  //   print(caloriesInFruit[calories]);
  // }

  // forEach

  for (var calories in caloriesInFruit.keys) {
    print(caloriesInFruit[calories]);
  }

  for (var entry in caloriesInFruit.entries) {
    print('${entry.key} -> ${entry.value}');
  }
}
