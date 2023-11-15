import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'trip_state.dart';

@lazySingleton
class TripCubit extends Cubit<TripState> {
  TripCubit(this._authRepository, this._driverRepository)
      : super(const TripState.init());

  final AuthRepository _authRepository;
  final DriverRepository _driverRepository;

  Future<void> postListTrip({
    DateTime? date,
    List<ContainerFilter> filters = const [],
  }) async {
    emit(state.copyWith(state: PageState.loading));
    final user = await _authRepository.getCurrentUser();
    final request = ListTripFormRequest(
      driverId: user?.id ?? 0,
      date: date?.yyyyMMdd ?? DateTime.now().yyyyMMdd,
    );

    final result = await _driverRepository.postListTripForm(
      request,
      containers: filters,
      date ?? DateTime.now(),
    );

    if (result is Success) {
      final containerFilter = mappedTripFormToContainerFilter(result.data);
      emit(
        state.copyWith(
          state: PageState.success,
          tripForms: result.data,
          containerFilters: containerFilter,
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

  Future<void> postTransportLocation() async {
    emit(state.copyWith(state: PageState.loading));

    final result = await _driverRepository.postTransportLocations();

    if (result is Success) {
      emit(
        state.copyWith(
          state: PageState.success,
          transportLocations: result.data,
          transportFrom: result.data?.first.location,
          deliveryTo: result.data?.first.location,
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

  Future<void> postTripForm() async {
    emit(state.copyWith(state: PageState.loading));
    final user = await _authRepository.getCurrentUser();
    final vehicleNumber = _driverRepository.vehicleNumber();
    final request = TripFormRequest(
      driverId: user?.id ?? 0,
      shiftName: DateTime.now().isNightShift ? "Night Shift" : "Day Shift",
      vehicle: vehicleNumber,
      containerNo: state.containerNumber,
      transportFrom: state.transportFrom,
      deliveryTo: state.deliveryTo,
      contaierSize: state.containerSize,
    );

    final result = await _driverRepository.postTripForm(request);

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

  List<ContainerFilter> mappedTripFormToContainerFilter(
    List<ListTripFormResponse>? data,
  ) =>
      data
          ?.map((e) => ContainerFilter(name: e.containerNumber.orEmpty))
          .toList() ??
      [];

  void onContainerNoChanged(String value) {
    emit(state.copyWith(containerNumber: value));
  }

  void onTransportFromChanged(String? value) {
    emit(state.copyWith(transportFrom: value));
  }

  void onDeliverToChanged(String? value) {
    emit(state.copyWith(deliveryTo: value));
  }

  void onContainerSizeChanged(int? value) {
    emit(state.copyWith(containerSize: value));
  }

  void onContainerFilterChecked(int index) {
    state.containerFilters[index].isEnable =
        !state.containerFilters[index].isEnable;
    emit(state.copyWith(containerFilters: state.containerFilters));
  }

  void filterByVehicle(List<ContainerFilter> filters) {
    final tripForms = state.tripForms
        .where((trip) => filters.any((filter) => trip.vehicle == filter.name))
        .toList();

    emit(state.copyWith(tripForms: tripForms));
  }
}
