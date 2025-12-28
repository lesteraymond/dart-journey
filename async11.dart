void main(List<String> args) async {
  //https://www.youtube.com/watch?v=-zNC2hWftho
  //Stream.ToList

  final List<String> allNames = await getNames().toList();
  for (final String name in allNames) {
    print(name);
  }
  print("Done");
}

Stream<String> getNames() async* {
  yield "John";
  yield "Doe";
}
