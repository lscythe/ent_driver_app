import 'package:dio/dio.dart';
import 'package:driver/models/models.dart';

class ResponseInterceptor extends InterceptorsWrapper {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Result? result;

    try {
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        result = Success(response.data);
      }
    } on DioException catch (e) {
      result = Failure(
        data: response.data,
        code: response.statusCode.toString(),
        message: response.statusMessage,
      );
    }

    response.data = result;
    return handler.next(response);
  }
}
