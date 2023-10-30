void main() {
  final myCar = Car(vin: 503, model: 'BMW');
  // myCar.vin = 503;
  // myCar.model = 'BMV';
  print(myCar);

  final volvoCar = Car.volvo();
  print(volvoCar);
}

class Car {
  int vin = 0;
  String model = '';

  // Car(int vin, String model) {
  //   this.vin = vin;
  //   this.model = model;
  // }

  Car({required this.vin, this.model = 'unknow'});

  Car.volvo() {
    vin = 200;
    model = 'Volvo';
  }

  String printNewCar() {
    return 'My new car has vin: $vin and model: $model';
  }

  @override
  String toString() {
    return 'Car vin: $vin \nCar model: $model';
  }
}
