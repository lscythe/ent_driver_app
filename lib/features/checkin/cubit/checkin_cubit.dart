import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/extensions/date_time_ext.dart';
import 'package:driver/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'checkin_state.dart';

@lazySingleton
class CheckInCubit extends Cubit<CheckInState> {
  CheckInCubit(this._driverRepository, this._authRepository)
      : super(const CheckInState.init());

  final DriverRepository _driverRepository;
  final AuthRepository _authRepository;

  Future<void> init() async {
    final currentUser = await _authRepository.getCurrentUser();

    if (currentUser != null) {
      emit(state.copyWith(currentUser: currentUser));
    }
  }

  void onVehicleNumberChanged(String value) {
    print("onChanged:$value");
    emit(state.copyWith(vehicleNumber: value));
    print("vehicleNumber:${state.vehicleNumber}");
  }

  void onTrailerNumberChanged(String value) {
    emit(state.copyWith(trailerNumber: value));
  }

  Future<void> postCheckIn() async {
    if (state.vehicleNumber.isNotEmpty && state.trailerNumber.isNotEmpty) {
      emit(state.copyWith(state: PageState.loading));
      final result = await _driverRepository.postCico(
        CicoRequest(
          driverId: state.currentUser?.id ?? 0,
          shiftName: DateTime.now().isNightShift ? "Night Shift" : "Day Shift",
          vehicleNumber: state.vehicleNumber,
          trailerNumber: state.trailerNumber,
          type: state.hasCheckIn ? "Check-In" : "Check-Out",
        ),
      );

      if (result is Success) {
        emit(state.copyWith(state: PageState.success));
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
}
