import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  static const String path = "/schedule";
  static const String name = "schedule_screen";

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final ValueNotifier<DateTime> _focusedDay = ValueNotifier(DateTime.now());

  late PageController _pageController;

  @override
  void dispose() {
    _focusedDay.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScheduleCubit, ScheduleState>(
      builder: (context, state) => Padding(
        padding: Paddings.a18.size,
        child: Column(
          children: [
            _calendarHeader(),
            Spaces.h18.size,
            const CalendarDow(),
            Spaces.h12.size,
            _calendarWidget(),
          ],
        ),
      ),
      listener: (context, state) {},
    );
  }

  Widget _calendarHeader() => ValueListenableBuilder(
        valueListenable: _focusedDay,
        builder: (context, value, child) => CalendarHeader(
          focusedDay: value,
          onLeftArrowTap: () => _pageController.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          ),
          onRightArrowTap: () => _pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
          ),
        ),
      );

  Widget _calendarWidget() => BlocBuilder<ScheduleCubit, ScheduleState>(
        builder: (context, state) => TableCalendar<ScheduleResponse>(
          focusedDay: _focusedDay.value,
          firstDay: DateTime(2010),
          lastDay: DateTime(2050),
          onCalendarCreated: (pageController) =>
              _pageController = pageController,
          headerVisible: false,
          daysOfWeekVisible: false,
          onPageChanged: (focusedDay) => _focusedDay.value = focusedDay,
          onDaySelected: (selectedDay, focusedDay) {
            if (selectedDay.isAfter(DateTime.now())) {
              showModalBottomSheet(
                context: context,
                builder: (context) => Container(),
              );
            }
          },
          startingDayOfWeek: StartingDayOfWeek.monday,
          eventLoader: (day) => state.schedules
              .where(
                (element) =>
                    element.dateFrom?.timestamp.yyyyMMdd == day.yyyyMMdd ||
                    element.dateFrom?.timestamp.yyyyMMdd == day.yyyyMMdd,
              )
              .toList(),
          calendarStyle: CalendarStyle(
            tableBorder: TableBorder(
              horizontalInside:
                  BorderSide(color: context.colorScheme.onBackground),
              verticalInside:
                  BorderSide(color: context.colorScheme.onBackground),
              top: BorderSide(color: context.colorScheme.onBackground),
              bottom: BorderSide(color: context.colorScheme.onBackground),
              left: BorderSide(color: context.colorScheme.onBackground),
              right: BorderSide(color: context.colorScheme.onBackground),
            ),
          ),
          calendarBuilders: CalendarBuilders(
            markerBuilder: (context, day, events) => CalendarMarker(
              focusedDay: day,
              events: events,
            ),
          ),
        ),
      );
}
