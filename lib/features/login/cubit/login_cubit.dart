import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/locator/locator.dart';
import 'package:driver/models/models.dart';
import 'package:driver/repositories/repositories.dart';
import 'package:equatable/equatable.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({AuthRepository? authRepository})
      : _authRepository = authRepository ?? locator.get<AuthRepository>(),
        super(const LoginState.init());

  final AuthRepository _authRepository;

  void onUsernameChanged(String value) {
    emit(state.copyWith(username: value));
  }

  void onPasswordChanged(String value) {
    emit(state.copyWith(password: value));
  }

  Future<void> login() async {
    if (state.username.isNotEmpty && state.password.isNotEmpty) {
      emit(state.copyWith(state: PageState.loading));
      await _authRepository.postLogin(
        LoginRequest(username: state.username, password: state.password),
      );
    }

    emit(state.copyWith(state: PageState.success));
  }
}
