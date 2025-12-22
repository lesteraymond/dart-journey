import 'Animal.dart';

class Dog extends Animal {
  String? _breed;

  Dog(String _name, int _age, [String? breed]) : super(_name, _age) {
    this._breed = breed;
  }

  String? get breed => _breed;
  set breed(String value) => _breed = value;

  @override
  void printData() {
    super.printData();
    if (breed != null) {
      print("Breed: $breed");
    }
  }
}
