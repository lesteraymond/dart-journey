import 'dart:async';

void main(List<String> args) async {
  final StreamController controller = new StreamController<String>();
  controller.sink.add("Hello");
  controller.sink.add("World");

  await for (final String value in controller.stream) {
    print(value);
  }

  controller.close;
}
