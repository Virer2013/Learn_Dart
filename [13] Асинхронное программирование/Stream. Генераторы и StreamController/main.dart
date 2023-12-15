// 1. С помощью конструкторов.
// 2. С помощью асинхронного генератора.
// 3. С помощью StreamController.

// Transform methods
// map
// where
// expand
// take
// skip

import 'dart:async';

StreamSubscription<int>? subscription;

void main() async {
  // readStream();
  // await readStreamAsyncForLoop();
  // final result = asyncGenerator();
  // result.listen(
  //   (event) {
  //     print(event);
  //   },
  // );
  usingStreamController();
}

void usingStreamController() {
  final controller = StreamController<String>.broadcast();
  final stream = controller.stream;
  final sink = controller.sink; // event sink

  stream.listen(
    (data) {
      print('Данные получены: $data');
    },
    onDone: () {
      print('Sink закрыт');
    },
    onError: (Object error) {
      print(error);
    },
  );

  sink.add('Виноград');
  sink.add('Виноград');
  sink.addError(Exception('Вишня'));
  sink.add('Виноград');
  sink.close();
}

Stream<int> asyncGenerator() async* {
  for (int i = 1; i <= 100; i++) {
    yield i;
  }
}

Future<void> readStreamAsyncForLoop() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  try {
    await for (var data in stream) {
      print('Получено: $data');
      throw Exception('Ошибка в событии');
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    print('Все события завершены');
  }
}

void readStream() {
  final stream = Stream.periodic(Duration(seconds: 1), (tick) {
    // if (tick == 2) throw Exception('Исключение в событии');
    return tick;
  }).take(5);

  stream
      .where((number) => number % 2 == 0)
      .map((event) => event * 10)
      .take(2)
      .listen(
    (data) {
      print('Получено: $data');
    },
    onDone: () {
      print('Все события завершены');
    },
    onError: (Object error) {
      print(error);
    },
    cancelOnError: true,
  );

  // stream.listen((data) {
  //   print('Получено: $data');
  // });

  // Future.delayed(Duration(seconds: 5), () {
  //   print('Приостановка потока');
  //   subscription?.pause();
  // });

  // Future.delayed(Duration(seconds: 10), () {
  //   print('Возобновление потока');
  //   subscription?.resume();
  // });

  Future.delayed(Duration(seconds: 7), () {
    print('Отписка от потока');
    subscription?.cancel();
  });
}
