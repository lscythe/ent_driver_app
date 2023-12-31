import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_isar_store/dio_cache_interceptor_isar_store.dart';
import 'package:driver/constants/api.dart';
import 'package:driver/locator/locator.dart';
import 'package:driver/models/models.dart';
import 'package:driver/services/http/http.dart';
import 'package:driver/services/service.dart';
import 'package:fancy_dio_inspector/fancy_dio_inspector.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class InitialModule {
  @preResolve
  Future<SharedPreferences> get sharedPreferences =>
      SharedPreferences.getInstance();

  FlutterSecureStorage get secureStorage => const FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
        iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
      );

  @preResolve
  Future<Isar> isar() async {
    final dir = await getApplicationDocumentsDirectory();
    final isar = await Isar.open(
      [
        DriverResponseSchema,
        MessageResponseSchema,
        ListTripFormResponseSchema,
        OfflineDataSchema,
        TransportLocationResponseSchema,
        LeaveTypeResponseSchema,
        ScheduleResponseSchema,
      ],
      directory: dir.path,
    );

    return isar;
  }

  @preResolve
  Future<Dio> dio() async {
    final dir = await getApplicationDocumentsDirectory();
    final BaseOptions options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      contentType: ApiConstants.contentType,
      connectTimeout: ApiConstants.connectTimeout,
      sendTimeout: ApiConstants.sendTimeout,
      receiveTimeout: ApiConstants.receiveTimeout,
    );
    final CacheOptions cacheOptions = CacheOptions(
      store: IsarCacheStore(dir.path),
      hitCacheOnErrorExcept: [401, 403],
      allowPostMethod: true,
    );
    final Dio dio = Dio(options);
    dio.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
      ),
    );
    dio.interceptors.add(FancyDioInterceptor());
    dio.interceptors.add(DioCacheInterceptor(options: cacheOptions));
    dio.interceptors.add(ConnectivityInterceptor());
    dio.interceptors.add(TokenInterceptor());

    return dio;
  }

  ApiService get apiService => ApiService(locator.get());
}
