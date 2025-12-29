import 'dart:async';

void main() async {
  StreamController<int> numbers = new StreamController<int>();
  for (var i = 0; i < 10; i++) {
    if (i == 3) {
      numbers.sink.addError("Oops! i = $i");
    } else {
      numbers.sink.add(i);
    }
  }
  final Stream<int> transformed = numbers.stream.transform(
    StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        sink.add(data * 2);
      },
      handleError: (error, stackTrace, sink) {
        print("Error: $error");
        print("StackTrace: $stackTrace");
        sink.close();
      },
      handleDone: (sink) {
        sink.close();
      },
    ),
  );

  await for (final int value in transformed) {
    print(value);
  }

  await numbers.close();

  // numbers.stream.listen((value) => print(value));
}
