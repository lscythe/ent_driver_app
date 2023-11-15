import 'package:driver/constants/constants.dart';
import 'package:intl/intl.dart';

extension NullableStringExt on String? {
  String get orEmpty => this ?? "";
}

extension StringExt on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  DateTime get timestamp =>
      DateFormat(KDateFormat.timestamp.format).parse(this);
}
