import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/repositories/auth_repository.dart';
import 'package:driver/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';

@lazySingleton
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepository) : super(const LoginState.init());

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
      final result = await _authRepository.postLogin(
        LoginRequest(
          username: state.username,
          password: state.password,
        ),
      );
      if (result is Success) {
        emit(state.copyWith(state: PageState.success));
      } else {
        emit(
          state.copyWith(
            state: PageState.failure,
            errorMessage: result.message,
          ),
        );
      }
    }
  }
}
