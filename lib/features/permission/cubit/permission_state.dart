part of 'permission_cubit.dart';

class PermissionState extends Equatable {
  const PermissionState({
    required this.state,
    required this.isPermissionGranted,
    required this.isPermissionPermanentlyDenied,
  });

  const PermissionState.init()
      : state = PageState.idle,
        isPermissionGranted = false,
        isPermissionPermanentlyDenied = false;

  final PageState state;
  final bool isPermissionGranted;
  final bool isPermissionPermanentlyDenied;

  PermissionState copyWith({
    PageState? state,
    bool? isPermissionGranted,
    bool? isPermissionPermanentlyDenied,
  }) =>
      PermissionState(
        state: state ?? this.state,
        isPermissionGranted: isPermissionGranted ?? this.isPermissionGranted,
        isPermissionPermanentlyDenied:
            isPermissionPermanentlyDenied ?? this.isPermissionPermanentlyDenied,
      );

  @override
  List<Object?> get props => [
        state,
        isPermissionGranted,
        isPermissionPermanentlyDenied,
      ];
}
