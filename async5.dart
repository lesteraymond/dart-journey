void main(List<String> args) async {
  await for (final String char in getNames().asyncExpand(
    (name) => getCharacters(name),
  )) {
    print(char);
  }
}

Stream<String> getCharacters(String fromString) async* {
  for (int i = 0; i < fromString.length; i++) {
    await Future.delayed(const Duration(milliseconds: 300));
    yield fromString[i];
  }
}

Stream<String> getNames() async* {
  await Future.delayed(const Duration(milliseconds: 200));
  yield "John";

  await Future.delayed(const Duration(milliseconds: 200));
  yield "Doe";
}
