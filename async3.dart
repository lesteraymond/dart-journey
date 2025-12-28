void main(List<String> args) async {
  // final int length = await calculateLength(await getFullName());
  // print(length);

  final int length = await getFullName().then(
    (String value) => calculateLength(value),
  );
  print(length);
}

Future<String> getFullName() =>
    Future.delayed(const Duration(seconds: 1), () => 'John Doe');

Future<int> calculateLength(String value) =>
    Future.delayed(const Duration(seconds: 1), () => value.length);
