void main(List<String> args) async {
  await for (final String name in allNames()) {
    print(name);
  }
}

Stream<String> maleNames() async* {
  yield "John";
  yield "Doe";
}

Stream<String> femaleNames() async* {
  yield "Alyanna";
  yield "Faith";
}

Stream<String> allNames() async* {
  yield* maleNames();
  yield* femaleNames();
}
