class Vehicle {
  String? _model;
  int? _year;

  Vehicle(String model, int year) {
    this._model = model;
    this._year = year;
  }

  String? get vehModel => _model;
  set vehModel(String value) {
    _model = value;
  }

  void showData() {
    print("Model: $_model");
    print("Year: $_year");
  }
}
