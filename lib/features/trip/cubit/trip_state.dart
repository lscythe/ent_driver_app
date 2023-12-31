part of 'trip_cubit.dart';

class TripState extends Equatable {
  const TripState({
    required this.state,
    this.errorMessage,
    required this.tripForms,
    required this.transportLocations,
    required this.containerFilters,
    required this.containerNumber,
    required this.transportFrom,
    required this.deliveryTo,
    required this.containerSize,
    required this.isFiltered,
    required this.filteredTripForms,
  });

  const TripState.init()
      : state = PageState.idle,
        errorMessage = null,
        tripForms = const [],
        filteredTripForms = const [],
        transportLocations = const [],
        containerFilters = const [],
        containerNumber = "",
        transportFrom = "",
        deliveryTo = "",
        containerSize = 20,
        isFiltered = false;

  final PageState state;
  final String? errorMessage;
  final List<ListTripFormResponse> tripForms;
  final List<ListTripFormResponse> filteredTripForms;
  final List<TransportLocationResponse> transportLocations;
  final List<ContainerFilter> containerFilters;
  final String containerNumber;
  final String transportFrom;
  final String deliveryTo;
  final int containerSize;
  final bool isFiltered;

  TripState copyWith({
    PageState? state,
    String? errorMessage,
    List<ListTripFormResponse>? tripForms,
    List<TransportLocationResponse>? transportLocations,
    List<ContainerFilter>? containerFilters,
    String? containerNumber,
    String? transportFrom,
    String? deliveryTo,
    int? containerSize,
    bool? isFiltered,
    List<ListTripFormResponse>? filteredTripForms,
  }) =>
      TripState(
        state: state ?? this.state,
        tripForms: tripForms ?? this.tripForms,
        errorMessage: errorMessage ?? this.errorMessage,
        transportLocations: transportLocations ?? this.transportLocations,
        containerFilters: containerFilters ?? this.containerFilters,
        containerNumber: containerNumber ?? this.containerNumber,
        transportFrom: transportFrom ?? this.transportFrom,
        deliveryTo: deliveryTo ?? this.deliveryTo,
        containerSize: containerSize ?? this.containerSize,
        isFiltered: isFiltered ?? this.isFiltered,
        filteredTripForms: filteredTripForms ?? this.filteredTripForms,
      );

  @override
  List<Object?> get props => [
        state,
        errorMessage,
        tripForms,
        transportLocations,
        containerFilters,
        containerNumber,
        transportFrom,
        deliveryTo,
        containerSize,
        isFiltered,
        filteredTripForms,
      ];
}
