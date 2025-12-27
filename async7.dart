void main(List<String> args) async {
  //https://www.youtube.com/watch?v=-zNC2hWftho
  //Asynchronous Generators

  await for (final int number in numbers(end: 10, f: oddNumbersOnly)) {
    print(number);
  }

  print("----------------------------");
  await for (final int number in numbers(end: 10, f: evenNumbersOnly)) {
    print(number);
  }
}

bool evenNumbersOnly(int value) => (value % 2) == 0;
bool oddNumbersOnly(int value) => (value % 2) != 0;

typedef isIncluded = bool Function(int value);
Stream<int> numbers({int start = 0, int end = 4, isIncluded? f}) async* {
  for (int i = start; i < end; i++) {
    if (f == null || f(i)) {
      await Future.delayed(const Duration(seconds: 1));
      yield i;
    }
  }
}
