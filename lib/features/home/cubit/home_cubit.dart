import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/repositories/auth_repository.dart';
import 'package:driver/services/service.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'home_state.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(
    this._storageService, this._authRepository,
  ) : super(const HomeState.init());

  final StorageService _storageService;
  final AuthRepository _authRepository;

  final _permissionList = [
    Permission.location,
    Permission.locationWhenInUse,
    Permission.locationAlways,
    Permission.notification,
    Permission.ignoreBatteryOptimizations,
  ];

  Future<void> checkPermission() async {
    for (var _permission in _permissionList) {
      final status = await _permission.status;
      if (!status.isGranted) {}
    }
  }

  Future<void> logout() async => _authRepository.logout();

  void onNavigationChanged(int index) {
    if (!state.hasCheckIn && index == 2) {
      emit(state.copyWith(homeError: HomeError.notCheckIn));
    } else {
      emit(state.copyWith(index: index));
    }
  }
}

enum HomeError { notCheckIn, none }
