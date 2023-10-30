void main() {
  final konstantin = Person('konstantin', 'Kokorin');
  final ivan = Student('Ivan', 'Petrov');
  final vasya = StudentSwimmer('Vasya', 'Sidorov');
  final misha = StudentAthlet('Misha', 'Ivanov');

  ivan.grades.add(4);
  vasya.grades.add(2);

  konstantin.getFullName();
  ivan.getFullName();
  vasya.getFullName();
  misha.getFullName();
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

class StudentSwimmer extends Student {
  StudentSwimmer(super.name, super.surname);

  @override
  void getFullName() {
    super.getFullName();
    grades.every((grade) => grade != 2)
        ? print('You cant swim')
        : print("Can't swim");
  }
}

class StudentAthlet extends Student {
  StudentAthlet(super.name, super.surname);
  static const minPracticeTime = 1;
}
