void main() {
  final myCar = Car(vin: 503, model: 'BMW');
  // myCar.vin = 404;
  // myCar.model = 'Reno';
  print(myCar);

  final volvoCar = Car.volvo();
  print(volvoCar);

  final renoCar = Car.reno();
  print(renoCar);

  final mapCar = {'vin': 700, 'model': 'Lada'};
  final ladaCar = Car.fromJson(mapCar);
  print(ladaCar);
}

class Car {
  final int _vin;
  final String _model;

  const Car({required int vin, String model = 'unknow'})
      : _vin = vin,
        _model = model;

  Car.volvo() : this(vin: 200, model: 'Volvo');

  factory Car.reno() {
    return Car(vin: 300, model: 'Reno');
  }

  factory Car.fromJson(Map<String, Object?> json) {
    final carVin = json['vin'] as int;
    final carModel = json['model'] as String;
    return Car(vin: carVin, model: carModel);
  }

  String printNewCar() {
    return 'My new car has vin: $_vin and model: $_model';
  }

  @override
  String toString() {
    return 'Car vin: $_vin \nCar model: $_model';
  }
}
