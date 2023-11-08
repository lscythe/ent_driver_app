part of 'login_cubit.dart';

class LoginState extends Equatable {
  const LoginState({
    required this.state,
    this.username = "",
    this.password = "",
    this.errorMessage,
  });

  const LoginState.init()
      : state = PageState.idle,
        username = "",
        password = "",
        errorMessage = "";

  final PageState state;
  final String username;
  final String password;
  final String? errorMessage;

  LoginState copyWith({
    PageState? state,
    String? username,
    String? password,
    String? errorMessage,
  }) {
    return LoginState(
      state: state ?? this.state,
      username: username ?? this.username,
      password: password ?? this.password,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => <Object?>[
        state,
        username,
        password,
        errorMessage,
      ];
}
