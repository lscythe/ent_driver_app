part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({
    required this.index,
    required this.state,
    required this.hasCheckIn,
    required this.homeError,
    this.errorMessage,
    required this.userId,
    required this.permissionStatus,
    required this.isAllPermissionGranted,
    this.location,
  });

  const HomeState.init()
      : index = 0,
        state = PageState.idle,
        hasCheckIn = false,
        homeError = HomeError.none,
        errorMessage = null,
        userId = 0,
        permissionStatus = const Tuple2(null, PermissionStatus.denied),
        isAllPermissionGranted = true,
        location = null;

  final int index;
  final PageState state;
  final bool hasCheckIn;
  final HomeError homeError;
  final String? errorMessage;
  final int userId;
  final Tuple2<Permission?, PermissionStatus> permissionStatus;
  final bool isAllPermissionGranted;
  final Location? location;

  HomeState copyWith({
    int? index,
    PageState? state,
    bool? hasCheckIn,
    HomeError? homeError,
    String? errorMessage,
    int? userId,
    Tuple2<Permission?, PermissionStatus>? permissionStatus,
    bool? isAllPermissionGranted,
    Location? location,
  }) =>
      HomeState(
        index: index ?? this.index,
        state: state ?? this.state,
        hasCheckIn: hasCheckIn ?? this.hasCheckIn,
        homeError: homeError ?? this.homeError,
        errorMessage: errorMessage ?? this.errorMessage,
        userId: userId ?? this.userId,
        permissionStatus: permissionStatus ?? this.permissionStatus,
        isAllPermissionGranted:
            isAllPermissionGranted ?? this.isAllPermissionGranted,
        location: location ?? this.location,
      );

  @override
  List<Object?> get props => <Object?>[
        index,
        state,
        hasCheckIn,
        homeError,
        errorMessage,
        userId,
        permissionStatus,
        isAllPermissionGranted,
        location,
      ];
}
