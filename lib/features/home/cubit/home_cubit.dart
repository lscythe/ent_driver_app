import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/extensions/int_ext.dart';
import 'package:driver/features/features.dart';
import 'package:driver/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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
  Timer? _trackingTimer;

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
    } else {
      await checkPermissionAndLocationService();
    }
    postLocationTracking();
  }

  Future<void> postTracking(String name) async {
    emit(state.copyWith(state: PageState.loading));
    final position = await _getCurrentPosition(name);

    final request = TrackingRequest(
      actionType: name,
      driverId: state.userId,
      lat: position?.latitude.toString() ?? "0",
      lng: position?.longitude.toString() ?? "0",
      speed: position?.speed.toString(),
    );

    final isConnected = await connectivityService.isConnected();

    if (isConnected) {
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
    } else {
      await _driverRepository.storeOfflineData(request);
      emit(
        state.copyWith(
          state: PageState.failure,
          errorMessage: noInternetConnection,
        ),
      );
    }
  }

  Future<void> postLocationTracking() async {
    _trackingTimer?.cancel();
    _trackingTimer = Timer.periodic(const Duration(minutes: 10), (timer) async {
      emit(state.copyWith(state: PageState.loading));
      final position = await _getCurrentPosition("LOCATION_TRACKING");
      final request = TrackingRequest(
        actionType: "LOCATION_TRACKING",
        driverId: state.userId,
        lat: position?.latitude.toString() ?? "0",
        lng: position?.longitude.toString() ?? "0",
        speed: position?.speed.toString(),
      );
      final isConnected = await connectivityService.isConnected();

      if (isConnected) {
        final result = await _driverRepository.postTracking(request);

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
      } else {
        await _driverRepository.storeOfflineData(request);
        emit(
          state.copyWith(
            state: PageState.failure,
            errorMessage: noInternetConnection,
          ),
        );
      }
    });
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
    _trackingTimer?.cancel();
    await postTracking("LOGOUT")
        .whenComplete(() async => await _authRepository.logout());
  }

  Future<void> processOfflineData() async {
    final offlineDataList = await _driverRepository.getOfflineData();

    if (offlineDataList.isNotEmpty) {
      emit(state.copyWith(state: PageState.loading));
      for (final offlineData in offlineDataList) {
        final data = offlineData.getData();

        final isConnected = await connectivityService.isConnected();

        if (isConnected) {
          if (data is LeaveRequest) {
            final result = await _driverRepository.postRequestLeave(data);

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
            await _driverRepository.deleteOfflineData(offlineData.id.orZero);
          } else if (data is TrackingRequest) {
            final result = await _driverRepository.postTracking(data);

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
            await _driverRepository.deleteOfflineData(offlineData.id.orZero);
          } else if (data is TripFormRequest) {
            final result = await _driverRepository.postTripForm(data);

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
            await _driverRepository.deleteOfflineData(offlineData.id.orZero);
          }
        } else {
          emit(
            state.copyWith(
              state: PageState.failure,
              errorMessage: noInternetConnectionProcessLater,
            ),
          );
        }
      }
    }
  }

  Future<Position?> _getCurrentPosition(String action) async {
    bool serviceEnabled;
    PermissionStatus permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    permission = await Permission.location.status;
    if (!permission.isGranted && !serviceEnabled) {
      emit(
        state.copyWith(
          permissionStatus: Tuple2(Permission.location, permission),
          isPermissionGranted: false,
          lastAction: action,
          showPermissionDialog: true,
        ),
      );
      updatePermissionDialogState();
      return null;
    } else if (!serviceEnabled) {
      emit(
        state.copyWith(
          isLocationServiceEnabled: false,
          lastAction: action,
          showLocationServiceDialog: true,
        ),
      );
      updateLocationServiceDialogState();
      return null;
    } else {
      return await Geolocator.getCurrentPosition();
    }
  }

  Future<void> checkPermissionAndLocationService() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    final permissionGranted = await Permission.location.status;

    if (!serviceEnabled) {
      emit(
        state.copyWith(
          showLocationServiceDialog: true,
          isLocationServiceEnabled: serviceEnabled,
        ),
      );
      updateLocationServiceDialogState();
    } else if (!permissionGranted.isGranted) {
      emit(
        state.copyWith(
          showPermissionDialog: true,
          isPermissionGranted: permissionGranted.isGranted,
        ),
      );
      updatePermissionDialogState();
    }
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

  void updatePermissionDialogState() {
    emit(state.copyWith(showPermissionDialog: false));
  }

  void updateLocationServiceDialogState() {
    emit(state.copyWith(showLocationServiceDialog: false));
  }

  void resetErrorMessage() => emit(
        state.copyWith(
          errorMessage: "",
          homeError: HomeError.none,
        ),
      );

  @override
  Future<void> close() {
    _trackingTimer?.cancel();
    return super.close();
  }
}

enum HomeError { notCheckIn, none }
