// ignore_for_file: unnecessary_null_comparison, dead_code

void main() {
  // 1. Non-nullable by default
  // 2. Fully sound

  String? name; // String? -> String

  // Flow Analysis: Type Promotion

  //name = 'konstanntin'; // String
  //if (name == null) return print('Unknown name');
  //print(name.toUpperCase());

  // null-aware operators
  // ?? : if-null operator
  //print(name ?? 'Unknown name');

  // ??= : Null-aware assignment operator
  //print(name ??= 'konstantin');
  // if (name == null) name = 'konstantin';

  // ?. : Null-aware access operator
  print(name?.toUpperCase());
  print(name?.length ?? 0);

  // !  : Null assertion operator
  //print(name!.toUpperCase());

  // as : casting
  num? value = 10;
  print(value as int);

  // Flow Analysis: Definite Assignment
  String result;

  if (DateTime.now().hour < 12) {
    result = 'Good Morning';
  } else {
    result = 'Good Afternoon';
  }
  print(result);
}
