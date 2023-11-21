part of 'login_cubit.dart';

class LoginState extends Equatable {
  const LoginState({
    required this.state,
    this.username = "",
    this.password = "",
    this.errorMessage,
    required this.isLocationPermissionGranted,
  });

  const LoginState.init()
      : state = PageState.idle,
        username = "",
        password = "",
        errorMessage = "",
        isLocationPermissionGranted = false;

  final PageState state;
  final String username;
  final String password;
  final String? errorMessage;
  final bool isLocationPermissionGranted;

  LoginState copyWith({
    PageState? state,
    String? username,
    String? password,
    String? errorMessage,
    bool? isLocationPermissionGranted,
  }) {
    return LoginState(
      state: state ?? this.state,
      username: username ?? this.username,
      password: password ?? this.password,
      errorMessage: errorMessage ?? this.errorMessage,
      isLocationPermissionGranted:
          isLocationPermissionGranted ?? this.isLocationPermissionGranted,
    );
  }

  @override
  List<Object?> get props => <Object?>[
        state,
        username,
        password,
        errorMessage,
        isLocationPermissionGranted,
      ];
}
