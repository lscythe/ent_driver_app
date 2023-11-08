import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:driver/constants/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioService with DioMixin implements Dio {
  DioService._() {
    options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      contentType: ApiConstants.contentType,
      connectTimeout: ApiConstants.connectTimeout,
      sendTimeout: ApiConstants.sendTimeout,
      receiveTimeout: ApiConstants.receiveTimeout,
    );

    interceptors.add(PrettyDioLogger());
    interceptors.add(DioCacheInterceptor(options: _cacheOptions));
  }

  final _cacheOptions = CacheOptions(store: MemCacheStore());
}
