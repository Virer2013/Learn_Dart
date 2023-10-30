void main() {
  // Numbers (num -> int and double)
  double myDouble = 10.5;
  double myDouble1 = 10;
  print(myDouble1);

  // String
  // UTF - 16
  String myName = 'Konstantin';
  String mySurname = 'Kokorin';

  String name = 'What\'s your name';

  String myFio = '''
  Konstantin
  Kokorin
  Aleksandrovich
  ''';

  print(myFio);

  String personInfo =
      'I\' am ${myName.toUpperCase()} and my surname $mySurname';
  print(personInfo[0]);

  // bool
  var a = true;
  bool b = false;

  // Rune
  // UTF - 32
  Runes hello = Runes('Hello, Dart!');
  print(hello);

  // \uXXXX
  var input = Runes(']u2665 \u{1f600}');
  print(String.fromCharCodes(input));

  // Symbol
  var mySymbol = #myApi;
  print(mySymbol);

  // Null

  // List, Set, Map
}
