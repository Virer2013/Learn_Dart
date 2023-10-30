void main() {
  final myCar = Car();
  myCar.vin = 503;
  myCar.model = 'BMV';
  print(myCar);

  final myCar1 = Car()
    ..vin = 100
    ..model = 'Ford';
  print(myCar1.printNewCar());

  final anotherCar = myCar;
  print(myCar.vin);
  anotherCar.vin = 0;
  print(myCar.vin);
}

class Car {
  int vin = 0;
  String model = '';

  String printNewCar() {
    return 'My new car has vin: $vin and model: $model';
  }

  @override
  String toString() {
    return 'Car vin: $vin \nCar model: $model';
  }
}
