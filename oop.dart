//class Person {
//String? name;
//int? age;

//Person(String name, [int age = 18]) {
//  this.name = name;
//  this.age = age;
//}

//Person.guest() {
//  name = "Guest";
//  age = 18;
//}

//void showOutput() {
//  print(name);
//  print(age);
//}
//}

//class X {
//  final String? name = "Hanni";
//}

class Vehicle {
  String? model;
  int? year;

  Vehicle(String model, int year) {
    this.model = model;
    this.year = year;
  }

  String? get vehModel => model;
  set vehModel(String value) => model = value;

  void showData() {
    print("Model: $model");
    print("Year: $year");
  }
}

class Car extends Vehicle {
  int? price;
  Car(model, year, price) : super(model, year) {
    this.price = price;
  }

  @override
  void showData() {
    super.showData();
    print("Price: $price");
  }
}

void main() {
  Car car = new Car("Toyota", 2021, 1000000);
  car.showData();
  print("\n");
  car.vehModel = "Honda";
  car.showData();
  //Person person = new Person('Hanni', 21);
  //person.showOutput();

  //var person2 = new Person("Jack", 25);
  //person2.showOutput();

  //var person3 = new Person.guest();
  //person3.showOutput();
}
