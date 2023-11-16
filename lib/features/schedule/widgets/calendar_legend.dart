import 'package:driver/app/themes/themes.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/build_context_ext.dart';
import 'package:driver/features/schedule/schedule.dart';
import 'package:flutter/material.dart';

class CalendarLegends extends StatelessWidget {
  const CalendarLegends({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.localization.calendarInfo,
          style: context.textTheme.titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const Divider(),
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          childAspectRatio: 2.4,
          physics: const NeverScrollableScrollPhysics(),
          children: List.generate(EventType.values.length, (index) {
            final type = EventType.values[index];

            return Row(
              children: [
                Container(
                  height: 36,
                  width: 36,
                  decoration: BoxDecoration(
                    color: _getLegendColor(context, type),
                    border: Border.all(
                      color: type == EventType.standby
                          ? context.colorScheme.onBackground
                          : Colors.transparent,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      type == EventType.standby ? "" : type.value,
                      style: context.textTheme.labelLarge?.copyWith(
                        color: type == EventType.working
                            ? context.colorScheme.onSecondary
                            : context.colorScheme.onBackground,
                      ),
                    ),
                  ),
                ),
                Spaces.w10.size,
                Expanded(child: Text(_getLegendName(context, type))),
              ],
            );
          }),
        ),
      ],
    );
  }

  String _getLegendName(BuildContext context, EventType type) => switch (type) {
        EventType.working => context.localization.working,
        EventType.standby => context.localization.standby,
        EventType.paidLeave => context.localization.paidLeave,
        EventType.unpaidLeave => context.localization.unpaidLeave,
        EventType.pendingLeave => context.localization.pendingLeave,
        EventType.medicalLeave => context.localization.medicalLeave,
      };

  Color _getLegendColor(BuildContext context, EventType type) => switch (type) {
        EventType.working => KColors.working,
        EventType.standby => KColors.standby,
        EventType.paidLeave => KColors.paidLeave,
        EventType.unpaidLeave => KColors.unpaidLeave,
        EventType.pendingLeave => KColors.pendingLeave,
        EventType.medicalLeave => KColors.medicalLeave,
      };
}
