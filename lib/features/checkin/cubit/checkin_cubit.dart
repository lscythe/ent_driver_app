import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/extensions/extensions.dart';
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
    final trailerNumber = _driverRepository.trailerNumber();
    final vehicleNumber = _driverRepository.vehicleNumber();
    final hasCheckIn = _driverRepository.haveCheckIn();
    final lastCheckIn = _driverRepository.lastCheckIn();

    if (currentUser != null) {
      emit(state.copyWith(currentUser: currentUser));
    }
    emit(
      state.copyWith(
        hasCheckIn: hasCheckIn,
        vehicleNumber: vehicleNumber,
        trailerNumber: trailerNumber,
        checkedInAt: !lastCheckIn.isZero ? formatDate(lastCheckIn) : null,
        type: hasCheckIn ? Cico.checkIn : Cico.checkOut,
      ),
    );
  }

  void onVehicleNumberChanged(String value) {
    emit(state.copyWith(vehicleNumber: value));
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
          type: !state.hasCheckIn ? "Check-In" : "Check-Out",
        ),
      );

      if (result is Success) {
        if (!state.hasCheckIn) {
          emit(state.copyWith(type: Cico.checkIn));
          postVehicleCheckList();
        } else {
          emit(
            state.copyWith(
              state: PageState.success,
              hasCheckIn: false,
            ),
          );
        }
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

  Future<void> postVehicleCheckList() async {
    final result = await _driverRepository.postVehicleCheckList();

    if (result is Success) {
      final mappedData = mapVehicleCheckList(result.data);
      emit(
        state.copyWith(
          state: PageState.success,
          vehicleChecks: result.data,
          vehicleCheckAnswer: mappedData,
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

  Future<void> postVehicleCheck(List<Question> answer) async {
    emit(state.copyWith(state: PageState.loading));
    final request = VehicleCheckRequest(
      driverId: state.currentUser?.id ?? 0,
      questions: answer,
    );

    final result = await _driverRepository.postVehicleCheck(request);

    if (result is Success) {
      final hasCheckIn = _driverRepository.haveCheckIn();
      final lastCheckedIn = _driverRepository.lastCheckIn();
      emit(
        state.copyWith(
          state: PageState.success,
          hasCheckIn: hasCheckIn,
          checkedInAt: !lastCheckedIn.isZero ? formatDate(lastCheckedIn) : null,
          type: Cico.checkOut,
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

  List<Question> mapVehicleCheckList(List<VehicleCheckResponse>? data) {
    return data?.map((e) => Question(key: e.key ?? 0, value: false)).toList() ??
        List.empty();
  }

  String formatDate(int milliseconds) {
    final date = DateTime.fromMillisecondsSinceEpoch(milliseconds);

    return date.hhMmA;
  }
}

enum Cico {
  checkIn,
  checkOut,
}
