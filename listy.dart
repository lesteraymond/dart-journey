main(List<String> args) {
  List<int> numbers = <int>[1, 2, 3, 4, 5];
  numbers.add(6);
  numbers.addAll(<int>[6, 7, 8, 9, 10]);
  //numbers.insert(numbers.indexOf(3), -1);
  numbers.replaceRange(0, numbers.length, <int>[
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
  ]);
  //numbers.removeLast();
  //print(numbers);
  for (final int n in numbers) {
    print(n);
  }
}
