import 'dart:io';

import 'package:background_location/background_location.dart';
import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tuple/tuple.dart';

part 'home_state.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._driverRepository,
    this._authRepository,
  ) : super(const HomeState.init());

  final AuthRepository _authRepository;
  final DriverRepository _driverRepository;

  Future<void> init() async {
    final hasCheckIn = _driverRepository.haveCheckIn();
    final user = await _authRepository.getCurrentUser();
    final isAfterLogin = _authRepository.isAfterLogin();
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    final permissionGranted = await Permission.location.status;

    emit(
      state.copyWith(
        hasCheckIn: hasCheckIn,
        userId: user?.id,
        isLocationServiceEnabled: serviceEnabled,
        isPermissionGranted: permissionGranted.isGranted,
      ),
    );

    await postDriverToken();
    if (isAfterLogin) {
      await _authRepository.setIsAfterLogin(false);
      postTracking("LOGIN");
    }
  }

  Future<void> postTracking(String name) async {
    emit(state.copyWith(state: PageState.loading));
    Position? position;

    if (state.location == null) {
      position = await _getCurrentPosition(name);
    }

    final request = TrackingRequest(
      actionType: name,
      driverId: state.userId,
      lat: position != null
          ? position.latitude.toString()
          : state.location?.latitude.toString() ?? "",
      lng: position != null
          ? position.longitude.toString()
          : state.location?.longitude.toString() ?? "",
      speed: position != null
          ? position.speed.toString()
          : state.location?.speed.toString() ?? "",
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
    final fcm = FirebaseMessaging.instance;
    await fcm.requestPermission(provisional: true);
    final deviceInfo = DeviceInfoPlugin();
    String deviceId = "";

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      deviceId = androidInfo.id;
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      deviceId = iosInfo.utsname.machine;
    }
    final token = await fcm.getToken();

    final request = FcmTokenRequest(
      userId: state.userId.toString(),
      deviceId: deviceId,
      deviceToken: token ?? "",
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

  Future<void> logout() async {
    await postTracking("LOGOUT");
    await _authRepository.logout();
  }

  Future<Position> _getCurrentPosition(String action) async {
    bool serviceEnabled;
    PermissionStatus permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    print("Service Enabled: $serviceEnabled");

    permission = await Permission.location.status;
    print("Permission Status: ${permission.name}");
    if (!permission.isGranted) {
      permission = await Permission.location.request();
      if (!permission.isGranted) {
        emit(
          state.copyWith(
            permissionStatus: Tuple2(Permission.location, permission),
            isPermissionGranted: false,
            lastAction: action,
            isDialogOpen: false,
          ),
        );
      }
    }

    if (permission.isPermanentlyDenied) {
      emit(
        state.copyWith(
          permissionStatus: Tuple2(Permission.location, permission),
          isPermissionGranted: false,
          lastAction: action,
          isDialogOpen: false,
        ),
      );
    }

    if (!serviceEnabled) {
      emit(
        state.copyWith(
          isLocationServiceEnabled: false,
          lastAction: action,
          isDialogOpen: false,
        ),
      );
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<void> setupBackgroundLocation() async {
    await BackgroundLocation.setAndroidNotification(
      title: "Location Tracker is running",
      message: "Background location in progress",
      icon: "@mipmap/ic_launcher_foreground",
    );

    await BackgroundLocation.setAndroidConfiguration(600000);
    if (state.hasCheckIn) {
      await BackgroundLocation.startLocationService(distanceFilter: 10);
    }
    BackgroundLocation.getLocationUpdates((location) async {
      emit(state.copyWith(location: location));
      await postTracking("LOCATION");
    });
  }

  void onPermissionDisallow() {
    emit(state.copyWith(isDisallow: true));
  }

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

  void updateDialogState() {
    emit(state.copyWith(isDialogOpen: !state.isDialogOpen));
  }

  void resetErrorMessage() => emit(
        state.copyWith(
          errorMessage: "",
          homeError: HomeError.none,
        ),
      );
}

enum HomeError { notCheckIn, none }
