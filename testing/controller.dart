import 'dart:async';

void main() async {
  StreamController<int> controller = new StreamController<int>();
  for (int i = 0; i < 10; i++) {
    controller.sink.add(i);
  }
  controller.close();

  final int sum = await controller.stream.reduce((a, b) {
    return a + b;
  });
  print(sum);

  // await for (final int cnt in controller.stream) {
  //   if (cnt > 5) {
  //     await Future.delayed(const Duration(seconds: 1));
  //   } else {
  //     await Future.delayed(const Duration(milliseconds: 500));
  //   }
  //   print(cnt);
  // }
}
