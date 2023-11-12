part of 'checkin_cubit.dart';

class CheckInState extends Equatable {
  const CheckInState({
    required this.hasCheckIn,
    this.currentUser,
    required this.state,
    this.vehicleNumber = "",
    this.trailerNumber = "",
    this.errorMessage,
  });

  const CheckInState.init()
      : hasCheckIn = false,
        currentUser = null,
        state = PageState.idle,
        vehicleNumber = "",
        trailerNumber = "",
        errorMessage = null;

  final bool hasCheckIn;
  final DriverResponse? currentUser;
  final PageState state;
  final String vehicleNumber;
  final String trailerNumber;
  final String? errorMessage;

  CheckInState copyWith({
    bool? hasCheckIn,
    DriverResponse? currentUser,
    PageState? state,
    String? vehicleNumber,
    String? trailerNumber,
    String? errorMessage,
  }) =>
      CheckInState(
        hasCheckIn: hasCheckIn ?? this.hasCheckIn,
        state: state ?? this.state,
        currentUser: currentUser ?? this.currentUser,
        vehicleNumber: vehicleNumber ?? this.vehicleNumber,
        trailerNumber: trailerNumber ?? this.trailerNumber,
        errorMessage: errorMessage ?? this.errorMessage,
      );

  @override
  List<Object?> get props => <Object?>[hasCheckIn, currentUser, state];
}
