void main() async {
  final int sum = await getAllNumbers().reduce((a, b) {
    return a + b;
  });
  print(sum);
}

Stream<int> getAllNumbers() async* {
  for (int i = 1; i <= 4; i++) {
    yield i;
  }
}
