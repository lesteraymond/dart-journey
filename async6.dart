void main(List<String> args) async {
  // int sum = 0;
  // await for (final int age in getAllAges()) {
  //   sum += age;
  // }

  final int sum = await getAllAges().reduce(add);

  print("The sum all numbers is $sum");
}

/** 
 This method will add two numbers
 **/
int add(int a, int b) => a + b;
Stream<int> getAllAges() async* {
  yield 10;
  yield 20;
  yield 30;
  yield 40;
  yield 50;
}
