import 'package:driver/app/themes/themes.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/schedule/cubit/schedule_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CalendarDefault extends StatelessWidget {
  const CalendarDefault({super.key, required this.day});

  final DateTime day;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleCubit, ScheduleState>(
      builder: (context, state) {
        final event = state.schedules
            .where((element) => element.date.yyyyMMdd == day.yyyyMMdd)
            .firstOrNull;

        final date = DateFormat.d().format(day);

        return ColoredBox(
          color: _getBackgroundColor(event?.leaveCode),
          child: Center(
            child: Text(
              date,
              style: context.textTheme.labelLarge?.copyWith(
                color: _getTextColor(context, event?.leaveCode),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        );
      },
    );
  }

  Color _getTextColor(BuildContext context, String? leaveCode) {
    if (leaveCode == "" || leaveCode == EventType.working.value) {
      return context.colorScheme.background;
    } else {
      return context.colorScheme.onBackground;
    }
  }

  Color _getBackgroundColor(String? leaveCode, {String? leaveStatus}) {
    if (leaveCode == "" || leaveCode == EventType.working.value) {
      return KColors.working;
    } else if (leaveCode == EventType.paidLeave.value) {
      if (leaveStatus == "Pending") {
        return KColors.pendingLeave;
      } else {
        return KColors.paidLeave;
      }
    } else if (leaveCode == EventType.medicalLeave.value) {
      return KColors.medicalLeave;
    } else if (leaveCode == EventType.unpaidLeave.value) {
      return KColors.unpaidLeave;
    } else {
      return Colors.white;
    }
  }
}
