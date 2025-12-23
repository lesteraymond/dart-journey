void main(List<String> args) {
  //Set<String> names = <String>{"mario", "luigi", "peach"};
  //names.add("bowser");
  //names.remove("luigi");

  Set<String> left = <String>{"A", "B", "C"};
  Set<String> right = <String>{"A", "E", "F"};
  Set<String> A = left.intersection(right);
  print(A);
}
