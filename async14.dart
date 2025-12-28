void main(List<String> args) async {
  final Stream<String> names3Times = await getNames().asyncExpand(
    (name) => times3(name),
  );

  await for (final String name in names3Times) {
    print(name);
  }
}

Stream<String> getNames() async* {
  yield "John";
  yield "Doe";
}

Stream<String> times3(String value) =>
    Stream.fromIterable(Iterable.generate(3, (_) => value));
