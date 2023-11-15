import 'package:driver/constants/constants.dart';
import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String get hhMmA => DateFormat(KDateFormat.hhMmA.format).format(this);

  String get eDdMmYYYY => DateFormat(KDateFormat.eDdMmYyyy.format).format(this);

  String get ddMmmYyyyHhMmA => DateFormat(KDateFormat.ddMmmYyyyHhMmA.format).format(this);

  String get yyyyMMdd => DateFormat(KDateFormat.yyyyMMdd.format).format(this);

  String get mmmYYYY => DateFormat(KDateFormat.mmmYYYY.format).format(this);

  String get timestamp => DateFormat(KDateFormat.timestamp.format).format(this);

  bool get isNightShift => hour > 17 && hour < 8;
}
