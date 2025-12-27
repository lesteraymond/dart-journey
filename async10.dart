import 'dart:async';

void main(List<String> args) async {
  await for (final String value in names.capitalized) {
    print(value);
  }
}

Stream<String> names = Stream.fromIterable(["John", "Doe"]);

extension on Stream<String> {
  Stream<String> get capitalized => transform(ToUpperCase());
  Stream<String> get capitalizedUsingMap => map((name) => name.toUpperCase());
}

class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map((name) => name.toUpperCase());
  }
}
