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
    required this.isDisallow,
    required this.isLocationServiceEnabled,
    this.lastAction,
    required this.showLocationServiceDialog,
    required this.showPermissionDialog,
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
        isDisallow = false,
        isLocationServiceEnabled = false,
        lastAction = null,
        showLocationServiceDialog = false,
        showPermissionDialog = false;

  final int index;
  final PageState state;
  final bool hasCheckIn;
  final HomeError homeError;
  final String? errorMessage;
  final int userId;
  final Tuple2<Permission?, PermissionStatus> permissionStatus;
  final bool isPermissionGranted;
  final bool isDisallow;
  final bool isLocationServiceEnabled;
  final String? lastAction;
  final bool showLocationServiceDialog;
  final bool showPermissionDialog;

  HomeState copyWith({
    int? index,
    PageState? state,
    bool? hasCheckIn,
    HomeError? homeError,
    String? errorMessage,
    int? userId,
    Tuple2<Permission?, PermissionStatus>? permissionStatus,
    bool? isPermissionGranted,
    bool? isDisallow,
    bool? isLocationServiceEnabled,
    String? lastAction,
    bool? showLocationServiceDialog,
    bool? showPermissionDialog,
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
        isDisallow: isDisallow ?? this.isDisallow,
        isLocationServiceEnabled:
            isLocationServiceEnabled ?? this.isLocationServiceEnabled,
        lastAction: lastAction ?? this.lastAction,
        showLocationServiceDialog:
            showLocationServiceDialog ?? this.showLocationServiceDialog,
        showPermissionDialog: showPermissionDialog ?? this.showPermissionDialog,
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
        isDisallow,
        isLocationServiceEnabled,
        lastAction,
        showLocationServiceDialog,
      ];
}
