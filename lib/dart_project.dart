int calculate() {
  return 6 * 7;
}

String twoFer(String? userName) {
  final name = (userName == null || userName.isEmpty) ? 'you' : userName;
  return "One for $name, one for me.";
}

class leap {
  bool leapYear(int year) {
    if (year % 400 == 0 || year % 4 == 0) {
      return true;
    }
    return false;
  }
}
