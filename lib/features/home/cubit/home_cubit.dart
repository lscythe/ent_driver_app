import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/usecases/usecases.dart';
import 'package:driver/features/features.dart';
import 'package:driver/services/service.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';

@lazySingleton
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._storageService, this._postTrackingUsecase,
      this._getHasCheckInUseCase)
      : super(const HomeState.init());

  final StorageService _storageService;
  final PostTrackingUseCase _postTrackingUsecase;
  final GetHasCheckInUseCase _getHasCheckInUseCase;

  void onNavigationChanged(int index) {
    switch (index) {
      case 0:
        emit(state.copyWith(index: 0, path: CheckInScreen.path));
      case 1:
        emit(state.copyWith(index: 1, path: ScheduleScreen.path));
      case 2:
        emit(state.copyWith(index: 2, path: TripScreen.path));
      case 3:
        emit(state.copyWith(index: 3, path: MessageScreen.path));
    }
  }
}
