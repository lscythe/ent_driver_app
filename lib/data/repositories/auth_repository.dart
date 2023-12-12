import 'package:driver/data/datasource/datasource.dart';
import 'package:driver/extensions/extensions.dart';
import 'package:driver/models/models.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthRepository {
  const AuthRepository(this._localDataSource, this._remoteDataSource);

  final LocalDataSource _localDataSource;
  final RemoteDataSource _remoteDataSource;

  Future<Result<LoginResponse>> postLogin(LoginRequest request) async {
    final result = await _remoteDataSource.postLogin(request);

    if (result is Success && result.data != null) {
      await _localDataSource.setAccessToken(result.data!.token.orEmpty);
      await _localDataSource.setLastLogin(
        DateTime.now().millisecondsSinceEpoch,
      );
      await setIsAfterLogin(true);
      if (result.data!.driver != null) {
        await _localDataSource.saveUser(result.data!.driver!);
      }
    }

    return result;
  }

  Future<Result<EmptyResponse>> postForgotPassword(
          ForgotPasswordRequest request) =>
      _remoteDataSource.postForgotPassword(request);

  Future<DriverResponse?> getCurrentUser() async => _localDataSource.getUser();

  Future<String> accessToken() async => _localDataSource.getAccessToken();

  int lastLogin() => _localDataSource.getLastLogin();

  Future<void> logout() async => _localDataSource.clear();

  bool isAfterLogin() => _localDataSource.isAfterLogin();

  Future<void> setIsAfterLogin(bool value) async =>
      _localDataSource.setIsAfterLogin(value);
}
