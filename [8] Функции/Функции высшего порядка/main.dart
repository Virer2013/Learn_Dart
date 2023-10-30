// ignore_for_file: avoid_function_literals_in_foreach_calls, prefer_function_declarations_over_variables

void main() {
  // map:    1 2 3 4 5 6 => 1 4 9 16 25 36
  // where:  1 2 3 4 5 6 => 1 3 5
  // reduce: 1 2 3 4 5 6 => 21

  const listNumbers = [1, 2, 3, 4, 5, 6];

  final doubleElement = (number) => print(2 * number);
  listNumbers.forEach(doubleElement);

  // listNumbers.forEach();

  // (int number) {
  //   print(2 * number);
  // };

  final carColor = {
    'bmw': 'red',
    'volvo': 'green',
  };

  carColor.forEach((car, color) => print('$car are $color'));

  final looped = <int>[];
  for (final x in listNumbers) {
    looped.add(x * x);
  }
  print(looped);

  final mapped = listNumbers.map((x) => x * x);
  print(mapped.toList());

  final odds = listNumbers.where((element) => element.isOdd);
  print(odds);

  final emptyList = <int>[];
  final total = emptyList.fold(0, (sum, element) {
    print('$sum - $element');
    return sum + element;
  });
  print(total);

  const cars = ['bwv', 'volvo', 'mersedes', 'lada'];
  final bigCars = cars
      .where((car) => car.length > 4)
      .map((car) => car.toUpperCase())
      .toList();
  print(bigCars);

  final bigCars1 = <String>[];
  for (final item in cars) {
    if (item.length > 4) {
      final upperCase = item.toUpperCase();
      bigCars1.add(upperCase);
    }
  }
  print(bigCars1);
}
