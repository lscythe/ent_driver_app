part of 'login_cubit.dart';

class LoginState extends Equatable {
  const LoginState({
    required this.state,
    this.username = "",
    this.password = "",
    this.errorMessage,
    required this.isLocationPermissionGranted,
    required this.isForgotPassword,
    this.message,
  });

  const LoginState.init()
      : state = PageState.idle,
        username = "",
        password = "",
        errorMessage = "",
        isLocationPermissionGranted = false,
        isForgotPassword = false,
        message = "";

  final PageState state;
  final String username;
  final String password;
  final String? errorMessage;
  final bool isLocationPermissionGranted;
  final bool isForgotPassword;
  final String? message;

  LoginState copyWith({
    PageState? state,
    String? username,
    String? password,
    String? errorMessage,
    bool? isLocationPermissionGranted,
    bool? isForgotPassword,
    String? message,
  }) {
    return LoginState(
      state: state ?? this.state,
      username: username ?? this.username,
      password: password ?? this.password,
      errorMessage: errorMessage ?? this.errorMessage,
      isLocationPermissionGranted:
          isLocationPermissionGranted ?? this.isLocationPermissionGranted,
      isForgotPassword: isForgotPassword ?? this.isForgotPassword,
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => <Object?>[
        state,
        username,
        password,
        errorMessage,
        isLocationPermissionGranted,
        isForgotPassword,
        message
      ];
}
