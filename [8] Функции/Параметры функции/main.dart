void main() {
  // Используем этот код в одном месте программы
  // var circleArea = 3.14 * 5 * 5;

  // Используем этот код в другом месте программы
  // var circleArea = 3.14 * 5 * 5;

  // Используем этот код в еще каком-то месте программы
  // var circleArea = 3.14 * 5 * 5;

  // String myCircleArea = circleArea(5);
  // print(myCircleArea);

  String myPerson = person(firstName: 'Konstantin');
  print(myPerson);
}

String circleArea(int radius) {
  return 'Circle Area is ${3.14 * radius * radius}';
}

String person({
  required String firstName,
  String? lastName,
  int age = 0,
}) {
  // if (age != null) {
  //   return 'First Name: $firstName, Last Name: $lastName, Age: $age';
  // }
  return 'First Name: $firstName, Last Name: $lastName, Age: $age';
}

//                  обязательные     опциональные
//             +---------------------+------------+
// позиционные |       f(int x)      | f([int x]) |
//             +---------------------+------------+
// именованные | f({required int x}) | f({int x}) |
//             +---------------------+------------+