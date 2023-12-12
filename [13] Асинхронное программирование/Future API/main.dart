void main() {
  // Класс Future<T>, где T - тип возвращаемого результата

  print('Запуск функции main()');

  final myFuture = Future.delayed(Duration(seconds: 3), () {
    print('Future начал выполняться');
    return 'Данные успешно загружены';
    // throw 'Сервер не отвечает';
  });

  myFuture
      .then((value) => value.split(''))
      .then((value) => value.map((e) => e.toUpperCase()))
      .then((result) => print('Результат: $result'))
      .catchError(
        (error) => print('Ошибка: $error'),
        test: (error) => error.runtimeType == String,
      )
      .whenComplete(() => print('Future завершил свою работу'));

  print(myFuture);

  print('Завершение работы функции main()');
}
