import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'schedule_state.dart';

@lazySingleton
class ScheduleCubit extends Cubit<ScheduleState> {
  ScheduleCubit(this._authRepository, this._driverRepository)
      : super(const ScheduleState.init());

  final AuthRepository _authRepository;
  final DriverRepository _driverRepository;

  final String scheduleType = "detailsMobile";

  Future<void> postSchedule({DateTime? date}) async {
    emit(state.copyWith(state: PageState.loading));
    final user = await _authRepository.getCurrentUser();
    final request = ScheduleRequest(
      type: scheduleType.toUpperCase(),
      period: date ?? DateTime.now(),
      driverId: user?.id ?? 0,
    );

    final result = await _driverRepository.postScheduleResponse(request);

    if (result is Success) {
      emit(state.copyWith(state: PageState.loading, schedules: result.data));
    } else {
      emit(
        state.copyWith(
          state: PageState.failure,
          errorMessage: result.message,
        ),
      );
    }
  }
}
