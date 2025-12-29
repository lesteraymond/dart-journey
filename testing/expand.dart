void main(List<String> args) async {
  await for (final int len in getAllNames().asyncExpand(
    (name) => getLength(name),
  )) {
    print("LENGTH: $len");
  }
}

Stream<String> getAllNames() async* {
  yield "HANNI";
  yield "MINJI";
  yield "HAERIN";
  yield "DANIELLE";
  yield "HYEIN";
}

Stream<int> getLength(String name) async* {
  yield name.length;
}
