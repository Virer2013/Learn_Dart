void main() {
  final myCar = Car(vin: 503, model: 'BMW');
  // myCar.vin = 404;
  // myCar.model = 'Reno';
  print(myCar);

  final volvoCar = Car.volvo();
  print(volvoCar);
}

class Car {
  final int _vin;
  final String _model;

  const Car({required int vin, String model = 'unknow'})
      : _vin = vin,
        _model = model;

  const Car.volvo() : this(vin: 200, model: 'Volvo');

  String printNewCar() {
    return 'My new car has vin: $_vin and model: $_model';
  }

  @override
  String toString() {
    return 'Car vin: $_vin \nCar model: $_model';
  }
}
