void main(List<String> args) async {
  //https://www.youtube.com/watch?v=-zNC2hWftho
  //Streams

  // getNumbers().listen((event) => print(event));
  await for (final int number in getNumbers()) {
    print(number);
  }
}

List<String> names() => ["John", "Doe"];

Stream<int> getNumbers() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

Stream<String> getNames() async* {
  await Future.delayed(const Duration(seconds: 1));
  yield "John";
  throw Exception("Someting went wrong");
}
