part of 'checkin_cubit.dart';

class CheckInState extends Equatable {
  const CheckInState({
    required this.hasCheckIn,
    this.currentUser,
    required this.state,
    this.vehicleNumber = "",
    this.trailerNumber = "",
    this.errorMessage,
    this.vehicleChecks,
    required this.vehicleCheckAnswer,
    required this.checkedInAt,
    this.type,
  });

  const CheckInState.init()
      : hasCheckIn = false,
        currentUser = null,
        state = PageState.idle,
        vehicleNumber = "",
        trailerNumber = "",
        errorMessage = null,
        vehicleChecks = null,
        checkedInAt = "",
        type = null,
        vehicleCheckAnswer = const [];

  final bool hasCheckIn;
  final DriverResponse? currentUser;
  final PageState state;
  final String vehicleNumber;
  final String trailerNumber;
  final String checkedInAt;
  final String? errorMessage;
  final Cico? type;
  final List<VehicleCheckResponse>? vehicleChecks;
  final List<Question> vehicleCheckAnswer;

  CheckInState copyWith({
    bool? hasCheckIn,
    DriverResponse? currentUser,
    PageState? state,
    String? vehicleNumber,
    String? trailerNumber,
    String? errorMessage,
    List<VehicleCheckResponse>? vehicleChecks,
    List<Question>? vehicleCheckAnswer,
    String? checkedInAt,
    Cico? type,
  }) =>
      CheckInState(
        hasCheckIn: hasCheckIn ?? this.hasCheckIn,
        state: state ?? this.state,
        currentUser: currentUser ?? this.currentUser,
        vehicleNumber: vehicleNumber ?? this.vehicleNumber,
        trailerNumber: trailerNumber ?? this.trailerNumber,
        errorMessage: errorMessage ?? this.errorMessage,
        vehicleChecks: vehicleChecks ?? this.vehicleChecks,
        vehicleCheckAnswer: vehicleCheckAnswer ?? this.vehicleCheckAnswer,
        checkedInAt: checkedInAt ?? this.checkedInAt,
        type: type ?? this.type,
      );

  @override
  List<Object?> get props => <Object?>[
        hasCheckIn,
        currentUser,
        state,
        vehicleNumber,
        trailerNumber,
        errorMessage,
        type,
      ];
}
