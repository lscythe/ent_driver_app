import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:equatable/equatable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'permission_state.dart';

class PermissionCubit extends Cubit<PermissionState> {
  PermissionCubit() : super(const PermissionState.init());

  Future<void> requestPermission() async {
    final status = await Permission.location.request();

    if (!status.isGranted) {
      if (status.isDenied) {
        emit(state.copyWith(isPermissionGranted: false));
        return;
      }
    }

    if (status.isPermanentlyDenied) {
      emit(state.copyWith(isPermissionPermanentlyDenied: true));
      return;
    }

    emit(state.copyWith(isPermissionGranted: status.isGranted));
  }

  Future<void> checkPermission() async {
    final status = await Permission.location.status;

    if (status.isGranted) {
      emit(state.copyWith(isPermissionGranted: status.isGranted));
    }

    if (status.isDenied) {
      emit(state.copyWith(isPermissionGranted: !status.isGranted));
    }

    if (status.isPermanentlyDenied) {
      emit(
        state.copyWith(
          isPermissionPermanentlyDenied: status.isPermanentlyDenied,
        ),
      );
    }
  }
}
