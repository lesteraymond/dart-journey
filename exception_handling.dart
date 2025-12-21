main(List<String> args) {
  int? val;
  try {
    val = mustGreaterThanZero(0);
  } catch (e) {
    List<String> arr = e.toString().split(":");
    print(arr[1].trim());
  } finally {
    if (val == null) {
      print("Value is not accepted.");
    } else {
      print("Value verifies: $val");
    }
  }
}

int mustGreaterThanZero(int x) {
  if (x <= 0) {
    throw new Exception('Value must be greater than zero');
  }
  return x;
}
