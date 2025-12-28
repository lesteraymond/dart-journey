void main(List<String> args) async {
  final String result = await getNames()
      .asyncMap((name) => extractCharacters(name))
      .fold('', (previous, element) {
        final elements = element.join(' ');
        return '$previous $elements ';
      });
  print(result);
}

Stream<String> getNames() async* {
  yield "John";
  yield "Doe";
}

Future<List<String>> extractCharacters(String from) async {
  final List<String> characters = <String>[];
  for (final String character in from.split('')) {
    await Future.delayed(const Duration(milliseconds: 100));
    characters.add(character);
  }

  return characters;
}
