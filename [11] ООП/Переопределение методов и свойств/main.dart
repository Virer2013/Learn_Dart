void main() {
  final konstantin = Person('konstantin', 'Kokorin');
  final ivan = Student('Ivan', 'Petrov');

  ivan.grades.add(4);

  konstantin.getFullName();
  ivan.getFullName();
}

class Person {
  String name;
  String surname;

  Person(this.name, this.surname);

  void getFullName() => print('$name $surname');
}

class Student extends Person {
  List<int> grades = [];

  Student(super.name, super.surname);

  @override
  void getFullName() {
    super.getFullName();
    print('Student has grades: $grades');
  }
}
