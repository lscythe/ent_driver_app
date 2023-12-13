import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/features/features.dart';
import 'package:driver/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'schedule_state.dart';

@lazySingleton
class ScheduleCubit extends Cubit<ScheduleState> {
  ScheduleCubit(this._authRepository, this._driverRepository)
      : super(const ScheduleState.init());

  final AuthRepository _authRepository;
  final DriverRepository _driverRepository;

  final String scheduleType = "detailsMobile";

  Future<void> init({DateTime? date}) async {
    const ScheduleState.init();
    final user = await _authRepository.getCurrentUser();

    final leaveQuota = int.tryParse(user?.totalLeaveBalance ?? "0");
    emit(state.copyWith(leaveQuota: leaveQuota, userId: user?.id));

    await _postListLeaveType();
    await postSchedule();
  }

  Future<void> postSchedule({DateTime? date}) async {
    emit(state.copyWith(state: PageState.loading));
    final request = ScheduleRequest(
      type: scheduleType.toUpperCase(),
      period: date ?? DateTime.now(),
      driverId: state.userId,
    );

    final result = await _driverRepository.postScheduleResponse(request);

    if (result is Success) {
      final processedSchedule = processScheduleResponse(result.data);

      emit(
        state.copyWith(
          state: PageState.success,
          schedules: processedSchedule,
        ),
      );
    } else {
      emit(
        state.copyWith(
          state: PageState.failure,
          errorMessage: result.message,
        ),
      );
    }
  }

  Future<void> _postListLeaveType() async {
    state.copyWith(state: PageState.loading);
    final result = await _driverRepository.postListLeaveType();

    if (result is Success) {
      emit(
        state.copyWith(
          state: PageState.success,
          leaveTypes: result.data,
          leaveType: result.data?.first.description,
        ),
      );
    } else {
      emit(
        state.copyWith(
          state: PageState.failure,
          errorMessage: result.message,
        ),
      );
    }
  }

  Future<bool> postRequestLeave(DateTime date, {String? errorMessage}) async {
    state.copyWith(state: PageState.loading);
    final totalDay = int.parse(state.leaveDays);

    final isConnected = await connectivityService.isConnected();
    debugPrint("isConnected: $isConnected");

    final request = LeaveRequest(
      driverId: state.userId,
      leaveType: state.leaveType,
      date: date.ddMMMyyyy,
      totalDay: totalDay,
    );

    if (totalDay > state.leaveQuota) {
      emit(
        state.copyWith(errorMessage: errorMessage, state: PageState.failure),
      );
      return false;
    } else {
      if (isConnected) {
        final result = await _driverRepository.postRequestLeave(request);

        if (result is Success) {
          emit(state.copyWith(state: PageState.success));
          return true;
        } else {
          emit(
            state.copyWith(
              state: PageState.failure,
              errorMessage: result.message,
            ),
          );
          return false;
        }
      } else {
        _driverRepository.storeOfflineData(request);
        emit(
          state.copyWith(
            state: PageState.failure,
            errorMessage: noInternetConnection,
          ),
        );
        return false;
      }
    }
  }

  List<Schedule> processScheduleResponse(List<ScheduleResponse>? response) {
    final List<Schedule> schedules = List.empty(growable: true);

    if (response != null) {
      for (final schedule in response) {
        final dateFrom = schedule.dateFrom?.timestamp ?? DateTime.now();
        DateTime dateTo;

        if (schedule.dateTo != null && schedule.leaveCode!.isNotEmpty) {
          dateTo = schedule.dateTo?.timestamp ?? DateTime.now();
        } else if (schedule.dataTo != null) {
          dateTo = schedule.dataTo?.timestamp ?? DateTime.now();
        } else {
          dateTo = dateFrom;
        }

        final dayInBetween = dateFrom.daysInBetween(endDate: dateTo);
        for (final day in dayInBetween) {
          schedules.add(
            Schedule(
              leaveStatus: schedule.leaveStatus.orEmpty,
              leaveCode: schedule.leaveCode.orEmpty,
              date: day,
            ),
          );
        }
      }
    }
    return schedules;
  }

  void onLeaveTypeChanges(String? value) =>
      emit(state.copyWith(leaveType: value));

  void onLeaveDaysChanges(String value) =>
      emit(state.copyWith(leaveDays: value));

  void resetErrorMessage() => emit(state.copyWith(errorMessage: ""));
}

enum EventType {
  working("X"),
  standby("S"),
  paidLeave("L"),
  unpaidLeave("UL"),
  pendingLeave("PL"),
  medicalLeave("M");

  const EventType(this.value);

  final String value;
}
