late int global;

void main() {
  global = 1;
  print(global);

  late var pizza = Pizza().orderPizza();
  // pizza.price = 20;
  print(pizza);
}

class Pizza {
  late String name;
  late final double price;

  Pizza() {
    name = 'Spring';
    price = 10.5;
  }

  String orderPizza() {
    print('Coocking pizza...');
    return 'Your pizza $name is ready';
  }

  @override
  String toString() => 'Pizza $name and price: $price';
}
