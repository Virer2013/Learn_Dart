Future<void> main() async {
  // Класс Future<T>, где T - тип возвращаемого результата
  print('Запуск функции main()');
  try {
    final myFuture = await loadData();
    print(myFuture);
  } catch (error) {
    print(error);
  } finally {
    print('Future завершил свою работу');
  }

  // myFuture
  //     .then((value) => value.split(''))
  //     .then((value) => value.map((e) => e.toUpperCase()))
  //     .then((result) => print('Результат: $result'))
  //     .catchError(
  //       (error) => print('Ошибка: $error'),
  //       test: (error) => error.runtimeType == String,
  //     )
  //     .whenComplete(() => print('Future завершил свою работу'));

  // firstName().then((firstName) {
  //   return lastName().then((lastName) {
  //     var fullName = '$firstName $lastName';
  //     return sayHello(fullName);
  //   });
  // }).then((value) => print(value));

  String first = await firstName();
  String last = await lastName();
  String hello = await sayHello('$first $last');
  print(hello);

  print('Завершение работы функции main()');
}

Future<String> loadData() {
  return Future.delayed(Duration(seconds: 3), () {
    print('Future начал выполняться');
    // return 'Данные успешно загружены';
    throw 'Сервер не отвечает';
  });
}

Future<String> firstName() {
  return Future.value('Константин');
}

Future<String> lastName() {
  return Future.value('Кокорин!');
}

Future<String> sayHello(String name) {
  return Future.value('Привет, $name');
}
