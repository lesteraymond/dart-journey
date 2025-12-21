import 'Vehicle.dart';

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
