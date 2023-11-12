import 'package:driver/constants/constants.dart';
import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String get hhMmA => DateFormat(KDateFormat.hhMmA.format).format(this);

  String get eDdMmYYYY => DateFormat(KDateFormat.eDdMmYyyy.format).format(this);

  bool get isNightShift => hour > 17 && hour < 8;
}
