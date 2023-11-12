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

  Future<Result<EmptyResponse>> postCico(CicoRequest request) async {
    final result = await _remoteDataSource.postCico(request);

    if (result is Success) {
      await _localDataSource.setHaveCheckIn(true);
      await _localDataSource.setTrailerNumber(request.trailerNumber);
      await _localDataSource.setVehicleNumber(request.vehicleNumber);
      await _localDataSource
          .setLastCheckIn(DateTime.now().millisecondsSinceEpoch);
    }

    return result;
  }

  bool haveCheckIn() => _localDataSource.getHaveCheckIn();

  int lastCheckIn() => _localDataSource.getLastCheckIn();
}
