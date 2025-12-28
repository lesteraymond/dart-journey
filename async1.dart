void main(List<String> args) async {
  print(await getUserName());
  print(await getAddress());
  print(await getPhoneNumber());
  print(await getCity());
  print(await getZipCode());
}

Future<String> getUserName() async {
  return "John Doe";
}

Future<String> getAddress() => Future.value('123 Main St');
Future<String> getPhoneNumber() =>
    Future<String>.delayed(const Duration(seconds: 1), () => '555-555-555');
Future<String> getCity() async {
  await Future.delayed(const Duration(seconds: 1));
  return "New York";
}

Future<String> getCountry() async => "India";

Future<String> getZipCode() =>
    Future<String>.delayed(const Duration(seconds: 1), () => '12345');
