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
    required this.isPermissionGranted,
    this.location,
    required this.isDisallow,
    required this.isLocationServiceEnabled,
    this.lastAction,
    required this.isDialogOpen,
  });

  const HomeState.init()
      : index = 0,
        state = PageState.idle,
        hasCheckIn = false,
        homeError = HomeError.none,
        errorMessage = null,
        userId = 0,
        permissionStatus = const Tuple2(null, PermissionStatus.denied),
        isPermissionGranted = true,
        location = null,
        isDisallow = false,
        isLocationServiceEnabled = false,
        lastAction = null,
        isDialogOpen = true;

  final int index;
  final PageState state;
  final bool hasCheckIn;
  final HomeError homeError;
  final String? errorMessage;
  final int userId;
  final Tuple2<Permission?, PermissionStatus> permissionStatus;
  final bool isPermissionGranted;
  final Location? location;
  final bool isDisallow;
  final bool isLocationServiceEnabled;
  final String? lastAction;
  final bool isDialogOpen;

  HomeState copyWith({
    int? index,
    PageState? state,
    bool? hasCheckIn,
    HomeError? homeError,
    String? errorMessage,
    int? userId,
    Tuple2<Permission?, PermissionStatus>? permissionStatus,
    bool? isPermissionGranted,
    Location? location,
    bool? isDisallow,
    bool? isLocationServiceEnabled,
    String? lastAction,
    bool? isDialogOpen,
  }) =>
      HomeState(
        index: index ?? this.index,
        state: state ?? this.state,
        hasCheckIn: hasCheckIn ?? this.hasCheckIn,
        homeError: homeError ?? this.homeError,
        errorMessage: errorMessage ?? this.errorMessage,
        userId: userId ?? this.userId,
        permissionStatus: permissionStatus ?? this.permissionStatus,
        isPermissionGranted: isPermissionGranted ?? this.isPermissionGranted,
        location: location ?? this.location,
        isDisallow: isDisallow ?? this.isDisallow,
        isLocationServiceEnabled:
            isLocationServiceEnabled ?? this.isLocationServiceEnabled,
        lastAction: lastAction ?? this.lastAction,
        isDialogOpen: isDialogOpen ?? this.isDialogOpen,
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
        isPermissionGranted,
        location,
        isDisallow,
        isLocationServiceEnabled,
        lastAction,
        isDialogOpen,
      ];
}
