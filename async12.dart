import 'dart:async';

void main(List<String> args) async {
  await for (final String name
      in getAllNames().absorbErrorsUsingHandleError()) {
    print(name);
  }

  await for (final String name
      in getAllNames().absorbErrorsUsingTransformer()) {
    print(name);
  }
}

extension AbsorbErrors<T> on Stream<T> {
  Stream<T> absorbErrorsUsingHandleError() => handleError((_, __) {});

  Stream<T> absorbErrorsUsingHandles() => transform(
    StreamTransformer.fromHandlers(handleError: (_, __, sink) => sink.close()),
  );

  Stream<T> absorbErrorsUsingTransformer() => transform(StreamErrorAbsorber());
}

Stream<String> getAllNames() async* {
  yield "John";
  yield "Doe";
  throw "All out of names";
}

class StreamErrorAbsorber<T> extends StreamTransformerBase<T, T> {
  @override
  Stream<T> bind(Stream<T> stream) {
    final StreamController<T> controller = StreamController<T>();

    stream.listen(
      controller.sink.add,
      onError: (__) {},
      onDone: controller.close,
    );
    return controller.stream;
  }
}
