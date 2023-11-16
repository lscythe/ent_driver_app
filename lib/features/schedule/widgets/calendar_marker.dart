import 'package:driver/extensions/extensions.dart';
import 'package:driver/models/models.dart';
import 'package:flutter/material.dart';

class CalendarMarker extends StatelessWidget {
  const CalendarMarker({
    super.key,
    required this.focusedDay,
    required this.events,
  });

  final DateTime focusedDay;
  final List<Schedule> events;

  @override
  Widget build(BuildContext context) {
    final event = events
        .where((element) => element.date.yyyyMMdd == focusedDay.yyyyMMdd)
        .firstOrNull;
    return Text(event?.leaveCode ?? "", style: context.textTheme.labelSmall,);
  }
}
