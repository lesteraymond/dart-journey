void main() async {
  while (true) {
    DateTime dt = new DateTime.now();
    final int hour = dt.hour;
    final int minutes = dt.minute;
    final int seconds = dt.second;

    await Future.delayed(const Duration(seconds: 1));
    print('$hour:$minutes:$seconds');
  }
}
