import 'package:bloc/bloc.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/usecases/usecases.dart';
import 'package:driver/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';

@lazySingleton
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._postLoginUseCase) : super(const LoginState.init());

  final PostLoginUseCase _postLoginUseCase;

  void onUsernameChanged(String value) {
    emit(state.copyWith(username: value));
  }

  void onPasswordChanged(String value) {
    emit(state.copyWith(password: value));
  }

  Future<void> login() async {
    if (state.username.isNotEmpty && state.password.isNotEmpty) {
      emit(state.copyWith(state: PageState.loading));
      final result = await _postLoginUseCase.invoke(
        params: LoginRequest(
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
