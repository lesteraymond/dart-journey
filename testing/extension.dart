void main() {
  String str = "raymond";
  print(str.isEqualToRaymond);
}

extension on String {
  bool get isEqualToRaymond => this.toLowerCase() == "raymond";
}
