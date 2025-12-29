void main() {
  check(age: 25, f: checkAge);
}

bool checkAge(int? age) {
  return age! >= 18;
}

typedef isAllowed = bool Function(int? age);

void check({int? age, isAllowed? f}) {
  if (f == null || f(age)) {
    print("Access Granted!");
  } else {
    print("Access Denied!");
  }
}
