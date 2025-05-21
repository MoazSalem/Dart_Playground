// this a terrible examble for decorator pattern
main() {
    Beverage coffee = Coffee();
    coffee.description();
    coffee = black(beverage: coffee);
    coffee.description();
    coffee = milk(beverage: coffee);
    coffee.description();
}

abstract class Beverage {
  void description();
  void cost();
}

class Coffee implements Beverage {
  @override
  void description() {
    print("i am coffee");
  }

  @override
  cost() {
    print("I Cost 10 egp");
  }
}

abstract class Decorator implements Beverage {
  late Beverage beverage;
}

class black implements Decorator {
  @override
  late Beverage beverage;

  black({required Beverage beverage}) {
    this.beverage = beverage;
  }

  @override
  void description() {
    print("im a black coffee");
  }
  
  @override
  void cost() {
    print("I Cost 10 egp");
  }

}

class milk implements Decorator {
  @override
  late Beverage beverage;

  milk({required Beverage beverage}) {
    this.beverage = beverage;
  }

  @override
  void description() {
    print("im a milk coffee");
  }
  
  @override
  void cost() {
    print("I Cost 12 egp");
  }

}