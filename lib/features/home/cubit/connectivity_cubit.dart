import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

part 'connectivity_state.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  final Connectivity _connectivity;
  StreamSubscription<ConnectivityResult>? _connectivitySubscription;

  ConnectivityCubit(this._connectivity)
      : super(const ConnectivityState.init()) {
    _checkCurrentConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_connectivityChanged);
  }

  Future<void> _checkCurrentConnectivity() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    _connectivityChanged(connectivityResult);
  }

  void _connectivityChanged(ConnectivityResult result) {
    if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
      emit(const ConnectivityState.connected());
    } else {
      emit(const ConnectivityState.disconnected());
    }
  }

  @override
  Future<void> close() {
    _connectivitySubscription?.cancel();
    return super.close();
  }
}
