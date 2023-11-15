import 'package:driver/extensions/extensions.dart';
import 'package:driver/models/responses/schedule/schedule_response.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarMarker extends StatelessWidget {
  const CalendarMarker({
    super.key,
    required this.focusedDay,
    required this.events,
  });

  final DateTime focusedDay;
  final List<ScheduleResponse> events;

  @override
  Widget build(BuildContext context) {
    final event = events
        .where(
          (element) =>
              element.dateFrom?.timestamp.yyyyMMdd == focusedDay.yyyyMMdd ||
              element.dateFrom?.timestamp.yyyyMMdd == focusedDay.yyyyMMdd,
        )
        .firstOrNull;
    print(event?.dateFrom);
    return Container(
      color: _getBackgroundColor(
        event?.leaveCode,
        leaveStatus: event?.leaveStatus,
      ),
      child: Text(DateFormat.d().format(focusedDay)),
    );
  }

  Color _getBackgroundColor(String? leaveCode, {String? leaveStatus}) {
    if (leaveCode == "" || leaveCode == EventType.working.value) {
      return const Color(0xFF45539D);
    } else if (leaveCode == EventType.paidLeave.value) {
      if (leaveStatus == "Pending") {
        return const Color(0xFF76FF9F);
      } else {
        return const Color(0xFFEAFFC8);
      }
    } else {
      return Colors.white;
    }
  }
}

enum EventType {
  working("X"),
  offDay("O"),
  standby("S"),
  paidLeave("L"),
  unpaidLeave("UL"),
  pendingLeave("PL"),
  medicalLeave("MD"),
  fclDriver("FCL");

  const EventType(this.value);

  final String value;
}
