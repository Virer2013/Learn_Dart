void main() {
  ({int x, int y, int z}) point1 = (x: 1, y: 2, z: 3);
  ({int x, int y, int z}) point2 = (x: 1, y: 2, z: 3);
  print(point1 == point2);

  final int one = (10);
  print(one.runtimeType);

  final (int,) two = (10,);
  print(two.runtimeType);
  // final json = {'name': 'Konstantin', 'age': 38, 'height': 178};

  // final (:name, :age, height: _) = getPerson(json);
  // print(name);
  // print(age);
  //print(height);

  // (String, String, int) reccord = ('Konstantin', 'Dart', 3);
  // print(reccord);
  // print(reccord.$1);
  // print(reccord.$2);
  // print(reccord.$3);

  // ({String name, String language, int version}) namedRecord =
  //     (name: 'Konstantin', language: 'Dart', version: 3);
  // print(namedRecord);
  // print(namedRecord.name);
  // print(namedRecord.language);
  // print(namedRecord.version);

  // (int?, {String name, String language})? mixedRecord =
  //     (name: 'Konstantin', language: 'Dart', null);
  // print(mixedRecord);
  // mixedRecord = null;
  // print(mixedRecord);

  // final computer =
  //     (brand: 'HP', memory: 16, processor: (name: 'Intel', frequency: 2.3));
  // print(computer.runtimeType);
}

({String name, int age, int height}) getPerson(Map<String, dynamic> json) {
  return (
    name: json['name'],
    age: json['age'],
    height: json['height'],
  );
}

class Person {
  final String name;
  final int age;
  final int height;

  const Person({required this.name, required this.age, required this.height});

  factory Person.fromJson(Map<String, dynamic> json) {
    // Какие-то дополнительные проверки
    return Person(
      name: json['name'],
      age: json['age'],
      height: json['height'],
    );
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Person &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age, height);
}
