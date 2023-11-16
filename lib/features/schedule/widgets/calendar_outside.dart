import 'package:driver/app/themes/themes.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CalendarOutside extends StatelessWidget {
  const CalendarOutside({super.key, required this.day});

  final DateTime day;

  @override
  Widget build(BuildContext context) {
    final date = DateFormat.d().format(day);
    return ColoredBox(
      color: KColors.inactiveColor.withOpacity(0.4),
      child: Center(
        child: Text(
          date,
          style: context.textTheme.labelLarge?.copyWith(
            color: KColors.inactiveTextColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
