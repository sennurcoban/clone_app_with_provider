import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime? {
  String convertDateTimeToString(){
    final DateFormat dateFormat = DateFormat("dd.MM.yyyy");
    try {
      if (DateTime.tryParse(this.toString()) == null) return "?";
      else return dateFormat.format(DateTime.parse(this.toString()));
    } on FormatException {
      return "?";
    }
  }
}