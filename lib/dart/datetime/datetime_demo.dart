void main() {
  print('=== DEMO current date time ===');
  currentDateTimeDemo();

  print('\n=== DEMO String to DateTime ===');
  stringToDateTimeDemo();
}

void currentDateTimeDemo() {
  final currentDateTime = DateTime.now();

  print(currentDateTime.toString());
  print(currentDateTime.toIso8601String());
  print(currentDateTime.toUtc());
  print(currentDateTime.timeZoneName);
  print('${currentDateTime.year} - ${currentDateTime.month} - ${currentDateTime.day}');
  print(currentDateTime.weekday);
}

void stringToDateTimeDemo() {
  /// DATE (required part)
  print(DateTime.parse('20190101'));
  // 2019-01-01 00:00:00.000

  print(DateTime.parse('2019-01-01'));
  // 2019-01-01 00:00:00.000

  print(DateTime.parse('00010101'));
  // 0001-01-01 00:00:00.000

  print(DateTime.parse('-0001-01-01'));
  // -0001-01-01 00:00:00.000

  print(DateTime.parse('12345-01-01'));
  // 12345-01-01 00:00:00.000

  print(DateTime.parse('20190101 01'));
  // 2019-01-01 01:00:00.000

  /// DATE and TIME
  print(DateTime.parse('20190101 010203'));
  // 2019-01-01 01:02:03.000

  print(DateTime.parse('20190101T12'));
  // 2019-01-01 12:00:00.000

  print(DateTime.parse('20190101 010203.456'));
  // 2019-01-01 01:02:03.456

  /// TIMEZONE
  print(DateTime.parse('20190101 010203Z'));
  // 2019-01-01 01:02:03.000Z

  print(DateTime.parse('20190101 010203z'));
  // 2019-01-01 01:02:03.000Z

  print(DateTime.parse('20190101 010203+07'));
  // 2018-12-31 18:02:03.000Z

  /// FormatException: Invalid date format
  // print(DateTime.parse('20190101 1'));
  // print(DateTime.parse('10:20:30'));
}