part of 'schedule_cubit.dart';

class ScheduleState extends Equatable {
  const ScheduleState({
    required this.state,
    this.errorMessage,
    required this.schedules,
  });

  const ScheduleState.init()
      : state = PageState.idle,
        errorMessage = null,
        schedules = const [];

  final PageState state;
  final String? errorMessage;
  final List<ScheduleResponse> schedules;

  ScheduleState copyWith({
    PageState? state,
    String? errorMessage,
    List<ScheduleResponse>? schedules,
  }) =>
      ScheduleState(
        state: state ?? this.state,
        errorMessage: errorMessage ?? this.errorMessage,
        schedules: schedules ?? this.schedules,
      );

  @override
  List<Object?> get props => [
        state,
        errorMessage,
        schedules,
      ];
}
