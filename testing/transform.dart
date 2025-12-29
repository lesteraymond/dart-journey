import 'dart:async';

void main() async {
  Stream<int> numbers = Stream.fromIterable([1, 2, 3, 4]);
  await for (final value in numbers.transform(
    StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        sink.add(data * 2);
      },
    ),
  )) {
    await Future.delayed(const Duration(seconds: 1));
    print(value);
  }
}
