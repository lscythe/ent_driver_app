import 'package:driver/data/datasource/datasource.dart';
import 'package:driver/models/models.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DriverRepository {
  const DriverRepository(this._localDataSource, this._remoteDataSource);

  final LocalDataSource _localDataSource;
  final RemoteDataSource _remoteDataSource;

  Future<Result<EmptyResponse>> postTracking(TrackingRequest request) async =>
      _remoteDataSource.postTracking(request);

  bool haveCheckIn() => _localDataSource.getHaveCheckIn();

  int lastCheckIn() => _localDataSource.getLastCheckIn();
}
