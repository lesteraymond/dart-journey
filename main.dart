void main() {
  //https://www.youtube.com/watch?v=Ej_Pcr4uC2Q
  //56:00
  //stdout.write("Enter your name: ");
  //String? name = stdin.readLineSync();

  //print("Hello, $name!");

  //int a = 200;
  //var b = a;

  //double c = 2.5;
  //var d = c;

  //String e = "HANNI";
  //var f = e;

  //dynamic x = 2;  //dynamic y = 2;

  //String str1 = "It's easy to escape string delimiter";
  //String str2 = 'It\'s easy to escape string delimiter';
  //String str3 = r"It's easy\n to escape string delimiter";

  //print(str3);

  //var age = 45;
  //var str = "My age is: $age";
  //print(str);

  //var names = """
  //HANNI
  //MINJI
  //HAERIN
  //DANIELLE
  //HYEIN
  //""";
  //print(names);

  //var num = int.parse("5");
  //print(num.isEven);

  //var fixed = double.parse("3.14159").toStringAsFixed(2);
  //print(fixed);

  //const int num = 15;
  //print(num.runtimeType);
  //dynamic x = 10;
  //print(x.runtimeType);
  //x = "HANNI";
  //print(x.runtimeType);
  //x = false;
  //print(x.runtimeType);
  //x = 3.14;
  //print(x.runtimeType);

  //var x;
  //print(x);

  //int x = 5;
  //print(++x);

  //var n;
  //var number;
  //number = n?.num ?? 0;
  //print(number.runtimeType);

  //var number;
  //print(number ??= 100);

  //int grade = 73;
  //String remarks = "";
  //String remarks = (grade >= 75) ? "PASSED" : "FAILED";
  //print(remarks);

  //  if (grade is int) {
  //    print("Integer");
  //  }

  //  if (remarks is String) {
  //    print("String");
  //  }
  //}

  //  switch (remarks) {
  //    case "PASSED":
  //      print("HELL YEAHH");
  //      break;
  //    case "FAILED":
  //      print("NOT HELL YEAHH");
  //      break;
  //  }
  //}

  //class Num {
  //  int num = 10;
  //}

  //for (int i = 0; i <= 10; i++) {
  //  print(i);
  //}

  //var numbers = [1, 2, 3, 4, 5];
  //numbers.forEach((n) {
  //  print(n);
  //});
  //for (int i = 0; i < numbers.length; i++) {
  //  print(numbers[i]);
  //}
  //for (var number in numbers) {
  //  print(number);
  //}

  List<String> names = ["Hanni", "Minji", "Haerin", "Danielle", "Hyein"];
  List<String> names2 = [...names];
  for (String name in names2) {
    print(name);
  }
}
