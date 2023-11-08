// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:driver/locator/initial_module.dart' as _i11;
import 'package:driver/repositories/auth_repository.dart' as _i9;
import 'package:driver/services/http/http.dart' as _i3;
import 'package:driver/services/secure_storage_service.dart' as _i6;
import 'package:driver/services/service.dart' as _i10;
import 'package:driver/services/storage_service.dart' as _i8;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final initialModule = _$InitialModule();
    gh.factory<_i3.ApiService>(() => initialModule.apiService);
    gh.factory<_i4.Dio>(() => initialModule.client);
    gh.factory<_i5.FlutterSecureStorage>(() => initialModule.secureStorage);
    gh.lazySingleton<_i6.SecureStorageService>(
        () => _i6.SecureStorageService(gh<_i5.FlutterSecureStorage>()));
    await gh.factoryAsync<_i7.SharedPreferences>(
      () => initialModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i8.StorageService>(
        () => _i8.StorageService(gh<_i7.SharedPreferences>()));
    gh.lazySingleton<_i9.AuthRepository>(() => _i9.AuthRepository(
          gh<_i10.ApiService>(),
          gh<_i10.SecureStorageService>(),
          gh<_i10.StorageService>(),
        ));
    return this;
  }
}

class _$InitialModule extends _i11.InitialModule {}
