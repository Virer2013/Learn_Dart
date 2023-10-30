void main() {
  num someNumber = 5;
  final someDouble = someNumber.toDouble();
  print(someDouble);

  // String -> int
  var myInt = int.parse('10');
  print(myInt);

  // String -> double
  var myDouble = double.parse('5.5');
  print(myDouble);

  // int -> String
  String s1 = 10.toString();
  String s2 = myInt.toString();
  print(s1);
  print(s2);

  // double -> String
  String s3 = 3.14159.toStringAsFixed(2);
  print(s3);
}
