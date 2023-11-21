import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:equatable/equatable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'permission_state.dart';

class PermissionCubit extends Cubit<PermissionState> {
  PermissionCubit() : super(const PermissionState.init());

  Future<void> requestPermission() async {
    var status = await Permission.location.status;

    if (!status.isGranted) {
      status = await Permission.location.request();

      if (status.isDenied) {
        emit(state.copyWith(isPermissionGranted: false));
      }
    }

    if (status.isPermanentlyDenied) {
      emit(state.copyWith(isPermissionPermanentlyDenied: true));
    }
  }

  Future<void> checkPermission() async {
    final status = await Permission.location.status;

    if (status.isGranted) {
      emit(state.copyWith(isPermissionGranted: true));
    }

    if (status.isDenied) {
      emit(state.copyWith(isPermissionGranted: false));
    }

    if (status.isPermanentlyDenied) {
      emit(state.copyWith(isPermissionPermanentlyDenied: true));
    }
  }
}
