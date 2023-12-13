import 'package:driver/constants/constants.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/models/models.dart';
import 'package:driver/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
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
  late RefreshController _refreshController;

  @override
  void initState() {
    super.initState();

    _refreshController = RefreshController();
    context.read<ScheduleCubit>().init(date: _focusedDay.value);
  }

  @override
  void dispose() {
    _focusedDay.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScheduleCubit, ScheduleState>(
      builder: (context, state) => SmartRefresher(
        controller: _refreshController,
        header: const ClassicHeader(),
        child: Stack(
          children: [
            Padding(
              padding: Paddings.a18.size,
              child: ListView(
                children: [
                  _calendarHeader(),
                  Spaces.h18.size,
                  const CalendarDow(),
                  Spaces.h12.size,
                  _calendarWidget(),
                  Spaces.h12.size,
                  const CalendarLegends(),
                ],
              ),
            ),
            if (state.state == PageState.loading &&
                !_refreshController.isRefresh)
              const LoadingIndicator()
            else
              Container(),
          ],
        ),
        onRefresh: () =>
            context.read<ScheduleCubit>().postSchedule(date: _focusedDay.value),
      ),
      listener: (context, state) {
        if (state.errorMessage?.isNotEmpty ?? false) {
          context.scaffoldMessage
              .showSnackBar(_errorSnackBar(state.errorMessage!));
          context.read<ScheduleCubit>().resetErrorMessage();
        }
        if (state.state == PageState.success) {
          _refreshController.refreshCompleted();
        }

        if (state.state == PageState.failure) {
          _refreshController.refreshFailed();
        }
      },
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
        builder: (context, state) => TableCalendar<Schedule>(
          focusedDay: _focusedDay.value,
          firstDay: DateTime(2010),
          lastDay: DateTime(2050),
          onCalendarCreated: (pageController) =>
              _pageController = pageController,
          headerVisible: false,
          daysOfWeekVisible: false,
          onPageChanged: (focusedDay) {
            _focusedDay.value = focusedDay;
            context.read<ScheduleCubit>().postSchedule(date: focusedDay);
          },
          onDaySelected: (selectedDay, focusedDay) {
            if (selectedDay.isAfter(DateTime.now()) &&
                selectedDay.yyyyMMdd != DateTime.now().yyyyMMdd) {
              showModalBottomSheet(
                context: context,
                isDismissible: false,
                isScrollControlled: true,
                builder: (context) => RequestLeaveDialog(day: selectedDay),
              );
            }
          },
          startingDayOfWeek: StartingDayOfWeek.monday,
          eventLoader: (day) => state.schedules
              .where((element) => element.date.yyyyMMdd == day.yyyyMMdd)
              .toList(),
          calendarStyle: CalendarStyle(
            tableBorder: TableBorder(
              horizontalInside: BorderSide(
                color: context.colorScheme.onBackground.withOpacity(0.3),
              ),
              verticalInside: BorderSide(
                color: context.colorScheme.onBackground.withOpacity(0.3),
              ),
              top: BorderSide(
                color: context.colorScheme.onBackground.withOpacity(0.3),
              ),
              bottom: BorderSide(
                color: context.colorScheme.onBackground.withOpacity(0.3),
              ),
              left: BorderSide(
                color: context.colorScheme.onBackground.withOpacity(0.3),
              ),
              right: BorderSide(
                color: context.colorScheme.onBackground.withOpacity(0.3),
              ),
            ),
          ),
          calendarBuilders: CalendarBuilders(
            markerBuilder: (context, day, events) => CalendarMarker(
              focusedDay: day,
              events: events,
            ),
            defaultBuilder: (context, day, focusedDay) =>
                CalendarDefault(day: day),
            outsideBuilder: (context, day, focusedDay) =>
                CalendarOutside(day: day),
            todayBuilder: (context, day, focusedDay) => CalendarToday(day: day),
          ),
        ),
      );

  SnackBar _errorSnackBar(String message) => SnackBar(content: Text(message));
}
