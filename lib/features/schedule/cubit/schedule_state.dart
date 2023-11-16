part of 'schedule_cubit.dart';

class ScheduleState extends Equatable {
  const ScheduleState({
    required this.state,
    this.errorMessage,
    required this.schedules,
    required this.leaveTypes,
    required this.leaveQuota,
    required this.leaveType,
    required this.leaveDays,
    required this.userId,
  });

  const ScheduleState.init()
      : state = PageState.idle,
        errorMessage = null,
        schedules = const [],
        leaveTypes = const [],
        leaveQuota = 0,
        leaveType = "",
        leaveDays = "",
        userId = 0;

  final int userId;
  final PageState state;
  final String? errorMessage;
  final List<Schedule> schedules;
  final List<LeaveTypeResponse> leaveTypes;
  final int leaveQuota;
  final String leaveDays;
  final String leaveType;

  ScheduleState copyWith({
    PageState? state,
    String? errorMessage,
    List<Schedule>? schedules,
    List<LeaveTypeResponse>? leaveTypes,
    int? leaveQuota,
    String? leaveType,
    String? leaveDays,
    int? userId,
  }) =>
      ScheduleState(
        state: state ?? this.state,
        errorMessage: errorMessage ?? this.errorMessage,
        schedules: schedules ?? this.schedules,
        leaveTypes: leaveTypes ?? this.leaveTypes,
        leaveQuota: leaveQuota ?? this.leaveQuota,
        leaveDays: leaveDays ?? this.leaveDays,
        leaveType: leaveType ?? this.leaveType,
        userId: userId ?? this.userId,
      );

  @override
  List<Object?> get props => [
        state,
        errorMessage,
        schedules,
        leaveTypes,
        leaveQuota,
        leaveDays,
        leaveType,
        userId,
      ];
}
