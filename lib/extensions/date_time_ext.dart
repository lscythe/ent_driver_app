import 'package:driver/constants/constants.dart';
import 'package:intl/intl.dart';

extension DateTimeExt on DateTime {
  String get hhMmA => DateFormat(KDateFormat.hhMmA.format).format(this);

  String get eDdMmYYYY => DateFormat(KDateFormat.eDdMmYyyy.format).format(this);

  String get ddMmmYyyyHhMmA =>
      DateFormat(KDateFormat.ddMmmYyyyHhMmA.format).format(this);

  String get yyyyMMdd => DateFormat(KDateFormat.yyyyMMdd.format).format(this);

  String get mmmYYYY => DateFormat(KDateFormat.mmmYYYY.format).format(this);

  String get timestamp => DateFormat(KDateFormat.timestamp.format).format(this);

  String get ddMMMyyyy => DateFormat(KDateFormat.ddMMMyyyy.format).format(this);

  bool get isNightShift => hour > 17 && hour < 8;

  List<DateTime> daysInBetween({required DateTime endDate}) {
    final DateTime startDateUTC = DateTime.utc(year, month, day);
    final DateTime endDateUTC =
        DateTime.utc(endDate.year, endDate.month, endDate.day);

    final List<DateTime> daysInFormat = [];

    for (DateTime i = startDateUTC;
        i.isBefore(endDateUTC) || i.isAtSameMomentAs(endDateUTC);
        i = i.add(const Duration(days: 1))) {
      if (isUtc) {
        daysInFormat.add(i);
      } else {
        daysInFormat.add(DateTime(i.year, i.month, i.day));
      }
    }

    return daysInFormat;
  }
}
