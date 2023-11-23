part of 'permission_cubit.dart';

class PermissionState extends Equatable {
  const PermissionState({
    required this.state,
    required this.isPermissionGranted,
    required this.isPermissionPermanentlyDenied,
    required this.isPermissionAlwaysGranted,
  });

  const PermissionState.init()
      : state = PageState.idle,
        isPermissionGranted = false,
        isPermissionPermanentlyDenied = false,
        isPermissionAlwaysGranted = false;

  final PageState state;
  final bool isPermissionGranted;
  final bool isPermissionPermanentlyDenied;
  final bool isPermissionAlwaysGranted;

  PermissionState copyWith({
    PageState? state,
    bool? isPermissionGranted,
    bool? isPermissionAlwaysGranted,
    bool? isPermissionPermanentlyDenied,
  }) =>
      PermissionState(
        state: state ?? this.state,
        isPermissionGranted: isPermissionGranted ?? this.isPermissionGranted,
        isPermissionPermanentlyDenied:
            isPermissionPermanentlyDenied ?? this.isPermissionPermanentlyDenied,
        isPermissionAlwaysGranted:
            isPermissionAlwaysGranted ?? this.isPermissionAlwaysGranted,
      );

  @override
  List<Object?> get props => [
        state,
        isPermissionGranted,
        isPermissionPermanentlyDenied,
        isPermissionAlwaysGranted,
      ];
}
