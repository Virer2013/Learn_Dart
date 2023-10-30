void main() {
  final myCar = Car(vin: 503, model: 'BMW');
  // myCar.vin = 503;
  // myCar.model = 'BMV';
  print(myCar);

  // final myCar1 = Car();
  // myCar1.vin = 100;
  // myCar1.model = 'Ford';
  // print(myCar1.printNewCar());
}

class Car {
  int vin = 0;
  String model = '';

  // Car(int vin, String model) {
  //   this.vin = vin;
  //   this.model = model;
  // }

  Car({required this.vin, this.model = 'unknow'});

  String printNewCar() {
    return 'My new car has vin: $vin and model: $model';
  }

  @override
  String toString() {
    return 'Car vin: $vin \nCar model: $model';
  }
}
