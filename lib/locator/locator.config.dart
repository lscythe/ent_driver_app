// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:driver/locator/initial_module.dart' as _i7;
import 'package:driver/services/secure_storage_service.dart' as _i4;
import 'package:driver/services/storage_service.dart' as _i6;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

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
    gh.factory<_i3.FlutterSecureStorage>(() => initialModule.secureStorage);
    gh.lazySingleton<_i4.SecureStorageService>(
        () => _i4.SecureStorageService(gh<_i3.FlutterSecureStorage>()));
    await gh.factoryAsync<_i5.SharedPreferences>(
      () => initialModule.sharedPreferences,
      preResolve: true,
    );
    gh.lazySingleton<_i6.StorageService>(
        () => _i6.StorageService(gh<_i5.SharedPreferences>()));
    return this;
  }
}

class _$InitialModule extends _i7.InitialModule {}
