abstract class Animal {
  String? _name;
  int? _age;

  Animal(String name, int age) {
    this._name = name;
    this._age = age;
  }

  String? get name => _name;
  int? get age => _age;

  set name(String value) {
    this._name = value;
  }

  set age(int value) {
    this._age = value;
  }

  /**
  this method will print data
  **/
  void printData() {
    print("Name: $_name");
    print("Age: $_age");
  }
}
