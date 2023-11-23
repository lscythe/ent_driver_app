import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

part 'permission_state.dart';

class PermissionCubit extends Cubit<PermissionState> {
  PermissionCubit() : super(const PermissionState.init());

  Future<void> requestPermission() async {
    final alwaysStatus = await Permission.locationAlways.status;
    var status = await Permission.location.status;

    debugPrint(status.name);

    if (!status.isGranted && !alwaysStatus.isGranted) {
      status = await Permission.location.request();

      if (status.isDenied) {
        emit(state.copyWith(isPermissionGranted: false));
        emit(state.copyWith(isPermissionAlwaysGranted: false));
      }
      emit(state.copyWith(isPermissionGranted: status.isGranted));
    }

    if (status.isPermanentlyDenied) {
      emit(state.copyWith(isPermissionPermanentlyDenied: true));
    }
  }

  Future<void> checkPermission() async {
    final status = await Permission.locationAlways.status;

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
