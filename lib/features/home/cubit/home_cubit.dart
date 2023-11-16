import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'home_state.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._driverRepository,
    this._authRepository,
  ) : super(const HomeState.init());

  final AuthRepository _authRepository;
  final DriverRepository _driverRepository;

  final _permissionList = [
    Permission.location,
    Permission.locationWhenInUse,
    Permission.locationAlways,
    Permission.notification,
    Permission.ignoreBatteryOptimizations,
  ];

  Future<void> init() async {
    final hasCheckIn = _driverRepository.haveCheckIn();
    final user = await _authRepository.getCurrentUser();
    emit(state.copyWith(hasCheckIn: hasCheckIn, userId: user?.id));
  }

  Future<void> checkPermission() async {
    for (final _permission in _permissionList) {
      final status = await _permission.status;
      if (!status.isGranted) {}
    }
  }

  Future<void> postTracking(String name) async {
    final request = TrackingRequest(
      actionType: name,
      driverId: state.userId,
      lat: "lat",
      lng: "lng",
    );

    final result = await _driverRepository.postAnalystTracking(request);

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

  Future<void> postDriverToken() async {
    final deviceInfo = DeviceInfoPlugin();
    String deviceId = "";

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      deviceId = androidInfo.id;
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      deviceId = iosInfo.utsname.machine;
    }

    final request = FcmTokenRequest(
      userId: state.userId.toString(),
      deviceId: deviceId,
      deviceToken: "",
    );

    final result = await _driverRepository.postDriverToken(request);

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

  Future<void> logout() async => _authRepository.logout();

  void onNavigationChanged(int index) {
    final hasCheckIn = _driverRepository.haveCheckIn();
    emit(state.copyWith(hasCheckIn: hasCheckIn));
    if (!state.hasCheckIn && index == 2) {
      emit(state.copyWith(homeError: HomeError.notCheckIn));
    } else {
      emit(state.copyWith(index: index));
    }
  }

  void updateState(
    PageState blocState, {
    bool? hasCheckIn,
    String? errorMessage,
  }) {
    emit(
      state.copyWith(
        state: blocState,
        hasCheckIn: hasCheckIn,
        errorMessage: errorMessage,
      ),
    );
  }

  void resetErrorMessage() => emit(
        state.copyWith(
          errorMessage: "",
          homeError: HomeError.none,
        ),
      );
}

enum HomeError { notCheckIn, none }
