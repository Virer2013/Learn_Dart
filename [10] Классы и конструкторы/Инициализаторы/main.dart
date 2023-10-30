void main() {
  final myCar = Car(vin: 503, model: 'BMW');
  // myCar.vin = 404;
  // myCar.model = 'Reno';
  print(myCar);

  final volvoCar = Car.volvo();
  print(volvoCar);
}

class Car {
  int _vin;
  String _model;

  Car({required int vin, String model = 'unknow'})
      : _vin = vin,
        _model = model.toUpperCase() {
    print('Car: $_vin and $_model');
  }

  Car.volvo() : this(vin: 200, model: 'Volvo');

  String printNewCar() {
    return 'My new car has vin: $_vin and model: $_model';
  }

  @override
  String toString() {
    return 'Car vin: $_vin \nCar model: $_model';
  }
}
