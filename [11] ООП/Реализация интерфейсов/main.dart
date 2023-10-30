void main() {
  final konstantin = Person('konstantin', 'Kokorin');
  final ivan = Student('Ivan', 'Petrov');
  final vasya = StudentSwimmer('Vasya', 'Sidorov');
  final misha = StudentAthlet('Misha', 'Ivanov');

  // final someStudent = SomeStudent('Some', 'Student');
  // someStudent.grades.add(5);
  // someStudent.name = 'Jon';
  // someStudent.surname = 'Snow';
  // someStudent.getFullName();

  final someStudent = SomeStudent();
  someStudent.getFullName();

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

// class SomeStudent extends StudentSwimmer {
//   SomeStudent(super.name, super.surname);
// }

class SomeStudent implements StudentSwimmer {
  @override
  List<int> grades = [4];

  @override
  String name = 'MyName';

  @override
  String surname = 'MySurname';

  @override
  void getFullName() => print('$surname $name');
}
