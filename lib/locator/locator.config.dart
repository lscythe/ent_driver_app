// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:driver/data/datasource/datasource.dart' as _i13;
import 'package:driver/data/datasource/local_data_source.dart' as _i10;
import 'package:driver/data/datasource/remote_data_source.dart' as _i7;
import 'package:driver/data/repositories/auth_repository.dart' as _i12;
import 'package:driver/data/repositories/driver_repository.dart' as _i14;
import 'package:driver/data/repositories/repositories.dart' as _i16;
import 'package:driver/features/checkin/cubit/checkin_cubit.dart' as _i21;
import 'package:driver/features/home/cubit/home_cubit.dart' as _i15;
import 'package:driver/features/login/cubit/login_cubit.dart' as _i17;
import 'package:driver/features/message/cubit/message_cubit.dart' as _i18;
import 'package:driver/features/schedule/cubit/schedule_cubit.dart' as _i19;
import 'package:driver/features/trip/cubit/trip_cubit.dart' as _i20;
import 'package:driver/locator/initial_module.dart' as _i22;
import 'package:driver/services/http/http.dart' as _i3;
import 'package:driver/services/service.dart' as _i11;
import 'package:driver/services/storage_service.dart' as _i9;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i8;

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
    await gh.factoryAsync<_i4.Dio>(
      () => initialModule.dio(),
      preResolve: true,
    );
    gh.factory<_i5.FlutterSecureStorage>(() => initialModule.secureStorage);
    await gh.factoryAsync<_i6.Isar>(
      () => initialModule.isar(),
      preResolve: true,
    );
    gh.lazySingleton<_i7.RemoteDataSource>(
        () => _i7.RemoteDataSource(gh<_i3.ApiService>()));
    await gh.factoryAsync<_i8.SharedPreferences>(
      () => initialModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i9.StorageService>(
        () => _i9.StorageService(gh<_i8.SharedPreferences>()));
    gh.lazySingleton<_i10.LocalDataSource>(() => _i10.LocalDataSource(
          gh<_i5.FlutterSecureStorage>(),
          gh<_i11.StorageService>(),
          gh<_i6.Isar>(),
        ));
    gh.lazySingleton<_i12.AuthRepository>(() => _i12.AuthRepository(
          gh<_i13.LocalDataSource>(),
          gh<_i13.RemoteDataSource>(),
        ));
    gh.lazySingleton<_i14.DriverRepository>(() => _i14.DriverRepository(
          gh<_i13.LocalDataSource>(),
          gh<_i13.RemoteDataSource>(),
        ));
    gh.lazySingleton<_i15.HomeCubit>(() => _i15.HomeCubit(
          gh<_i16.DriverRepository>(),
          gh<_i16.AuthRepository>(),
        ));
    gh.lazySingleton<_i17.LoginCubit>(
        () => _i17.LoginCubit(gh<_i12.AuthRepository>()));
    gh.lazySingleton<_i18.MessageCubit>(() => _i18.MessageCubit(
          gh<_i16.DriverRepository>(),
          gh<_i16.AuthRepository>(),
        ));
    gh.lazySingleton<_i19.ScheduleCubit>(() => _i19.ScheduleCubit(
          gh<_i16.AuthRepository>(),
          gh<_i16.DriverRepository>(),
        ));
    gh.lazySingleton<_i20.TripCubit>(() => _i20.TripCubit(
          gh<_i16.AuthRepository>(),
          gh<_i16.DriverRepository>(),
        ));
    gh.lazySingleton<_i21.CheckInCubit>(() => _i21.CheckInCubit(
          gh<_i16.DriverRepository>(),
          gh<_i16.AuthRepository>(),
        ));
    return this;
  }
}

class _$InitialModule extends _i22.InitialModule {}
