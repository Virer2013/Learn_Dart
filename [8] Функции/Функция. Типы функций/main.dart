void main() {
  // Используем этот код в одном месте программы
  // var circleArea = 3.14 * 5 * 5;

  // Используем этот код в другом месте программы
  // var circleArea = 3.14 * 5 * 5;

  // Используем этот код в еще каком-то месте программы
  // var circleArea = 3.14 * 5 * 5;

  String myCircleArea = circleArea(5);
  print(myCircleArea);
}

String circleArea(int radius) {
  return 'Circle Area is ${3.14 * radius * radius}';
}
