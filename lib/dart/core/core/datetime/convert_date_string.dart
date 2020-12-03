import 'package:intl/intl.dart';

main() {
  var now = new DateTime.now();
  var dateFormat = new DateFormat('yyyy-MM-dd HH:mm:ss');
  String formattedDate = dateFormat.format(now);
  print(formattedDate); // 2019-04-28 8:58:15
}