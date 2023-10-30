void main() {
  final konstantin = Person('konstantin', 'Kokorin');
  final ivan = Student('Ivan', 'Petrov');
  final vasya = StudentSwimmer('Vasya', 'Sidorov');
  final misha = StudentAthlet('Misha', 'Ivanov');

  final students = [ivan, vasya, misha];
  for (var student in students) {
    student.whoiam();
  }

  print(vasya is Object);
  print(vasya is Person);
  print(vasya is Student);
  print(vasya is StudentSwimmer);
  print(vasya is StudentAthlet);

  // final someStudent = SomeStudent('Some', 'Student');
  // someStudent.grades.add(5);
  // someStudent.name = 'Jon';
  // someStudent.surname = 'Snow';
  // someStudent.getFullName();

  // final someStudent = SomeStudent();
  // someStudent.getFullName();

  ivan.grades.add(4);
  vasya.grades.add(2);

  vasya.course = 'Flutter';
  misha.course = 'Dart';
  vasya.study();
  misha.study();

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

  void whoiam() => print('I am a Student');
}

mixin Learner {
  String? course;
  void study() => print('Course is $course');
}

class StudentSwimmer extends Student with Learner {
  StudentSwimmer(super.name, super.surname);

  @override
  void getFullName() {
    super.getFullName();
    grades.every((grade) => grade != 2)
        ? print('You cant swim')
        : print("Can't swim");
  }

  @override
  void whoiam() => print('I am a Student Swimmer');
}

class StudentAthlet extends Student with Learner {
  StudentAthlet(super.name, super.surname);
  static const minPracticeTime = 1;

  @override
  void whoiam() => print('I am a Student Athlet');
}

// class SomeStudent extends StudentSwimmer {
//   SomeStudent(super.name, super.surname);
// }

// class SomeStudent implements StudentSwimmer {
//   @override
//   List<int> grades = [4];

//   @override
//   String name = 'MyName';

//   @override
//   String surname = 'MySurname';

//   @override
//   void getFullName() => print('$surname $name');
// }
