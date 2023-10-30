void main() {
  final myCar = Car(503, 'BMW');
  // myCar.vin = 404;
  // myCar.model = 'Reno';
  // Car.numOfWheels = 4;
  myCar.checkMove();
  Car.setWheels(4);
}

class Car {
  int vin;
  String model;
  static int numOfWheels = 3;

  void checkMove() {
    numOfWheels < 4 ? print('Car is broken') : print('Car is good');
  }

  static double time(int dist, double speed) => dist / speed;

  static void setWheels(int value) {
    if (value == 4) {
      numOfWheels = value;
    } else {
      print('Please, correct value(4)');
    }
  }

  Car(this.vin, this.model) {
    var t = time(500, 80);
    print('Time: $t');
  }

  @override
  String toString() {
    return 'Car vin: $vin \nCar model: $model';
  }
}
