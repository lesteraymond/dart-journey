import 'dart:async';

void main() async {
  try {
    await for (var name in getNames().timeout(const Duration(seconds: 3))) {
      print(name);
    }
  } catch (e) {
    print('Timeout happened');
  }
}

Stream<String> getNames() async* {
  yield 'John';
  await Future.delayed(const Duration(seconds: 1));
  yield 'Jane';
  await Future.delayed(const Duration(seconds: 10));
  yield 'Doe';
}
