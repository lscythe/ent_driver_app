import 'package:dio/dio.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/data/repositories/repositories.dart';
import 'package:driver/locator/locator.dart';

class TokenInterceptor extends InterceptorsWrapper {
  final _exceptions = [
    "/driver-auth",
    "/supervisor-auth",
    "/forget_password",
  ];

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await locator<AuthRepository>().accessToken();

    if (!_exceptions.any(options.path.startsWith)) {
      if (token.isNotEmpty) {
        options.headers.putIfAbsent(
          ApiConstants.authorizationHeader,
          () => "${ApiConstants.bearerToken} $token",
        );
      }
    }

    return handler.next(options);
  }
}
