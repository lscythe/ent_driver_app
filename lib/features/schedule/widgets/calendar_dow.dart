import 'package:driver/extensions/extensions.dart';
import 'package:flutter/material.dart';

class CalendarDow extends StatelessWidget {
  const CalendarDow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _dow(context, "Mon"),
        _dow(context, "Tue"),
        _dow(context, "Wed"),
        _dow(context, "Thu"),
        _dow(context, "Fri"),
        _dow(context, "Sat"),
        _dow(context, "Sun"),
      ],
    );
  }

  Widget _dow(BuildContext context, String day) {
    return Expanded(
      child: Center(
        child: Text(
          day,
          style: context.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
