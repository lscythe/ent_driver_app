import 'package:dio/dio.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/features/features.dart';
import 'package:driver/models/result.dart';

class ConnectivityInterceptor extends InterceptorsWrapper {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final isConnected = await connectivityService.isConnected();

    if (!isConnected) {
      return handler.reject(
        DioException(
          requestOptions: options,
          response: Response(
            requestOptions: options,
            statusCode: 800,
            data: Failure(
              code: ErrorCode.connection,
            ),
          ),
        ),
      );
    }
    return super.onRequest(options, handler);
  }
}
