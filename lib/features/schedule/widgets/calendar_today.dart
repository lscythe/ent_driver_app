import 'package:driver/app/themes/themes.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/schedule/cubit/schedule_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class CalendarToday extends StatelessWidget {
  const CalendarToday({super.key, required this.day});

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
          color: _getBackgroundColor(event?.leaveCode).withOpacity(0.7),
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: KColors.todayColor,
              ),
              child: Padding(
                padding: Paddings.a14.size,
                child: Text(
                  date,
                  style: context.textTheme.labelLarge?.copyWith(
                    color: context.colorScheme.background,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
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
