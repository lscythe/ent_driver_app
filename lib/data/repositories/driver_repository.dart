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
      if (request.type == "Check-Out") {
        await _localDataSource.setHaveCheckIn(false);
        await _localDataSource.setTrailerNumber("");
        await _localDataSource.setVehicleNumber("");
        await _localDataSource.setLastCheckIn(0);
      }
      await _localDataSource.setTrailerNumber(request.trailerNumber);
      await _localDataSource.setVehicleNumber(request.vehicleNumber);
    }

    return result;
  }

  Future<Result<List<VehicleCheckResponse>>> postVehicleCheckList() async =>
      _remoteDataSource.postVehicleCheckList();

  Future<Result<EmptyResponse>> postVehicleCheck(
    VehicleCheckRequest request,
  ) async {
    final result = await _remoteDataSource.postVehicleCheck(request);

    if (result is Success) {
      await _localDataSource.setHaveCheckIn(true);
      await _localDataSource.setLastCheckIn(
        DateTime.now().millisecondsSinceEpoch,
      );
    }

    return result;
  }

  Future<Result<List<MessageResponse>>> postMessage(
    MessageRequest request,
  ) async {
    final result = await _remoteDataSource.postMessage(request);

    if (result is Success) {
      if (result.data != null) {
        await _localDataSource.saveMessages(
          result.data!,
          request.type ?? "all",
        );
      }
      final data = await _localDataSource.getMessages(request.type);
      return Success(data);
    }

    return result;
  }

  Future<Result<List<ListTripFormResponse>>> postListTripForm(
    ListTripFormRequest request,
    DateTime filterDate,
  ) async {
    final result = await _remoteDataSource.postListTripForm(request);

    if (result is Success) {
      if (result.data != null) {
        await _localDataSource.saveTripForm(result.data!);
      }

      final data = await _localDataSource.getListTripForm(
        filterDate,
      );

      return Success(data);
    }

    return result;
  }

  Future<Result<List<ScheduleResponse>>> postScheduleResponse(
    ScheduleRequest request,
  ) async =>
      _remoteDataSource.postSchedule(request);

  Future<Result<EmptyResponse>> postTripForm(TripFormRequest request) async =>
      _remoteDataSource.postTripForm(request);

  Future<Result<List<TransportLocationResponse>>>
      postTransportLocations() async =>
          _remoteDataSource.postTransportLocation();

  Future<Result<List<LeaveTypeResponse>>> postListLeaveType() async =>
      _remoteDataSource.postListLeaveType();

  Future<Result<EmptyResponse>> postRequestLeave(LeaveRequest request) async =>
      _remoteDataSource.postRequestLeave(request);

  Future<Result<EmptyResponse>> postDriverToken(
          FcmTokenRequest request,) async =>
      _remoteDataSource.postDriverToken(request);

  Future<Result<EmptyResponse>> postAnalystTracking(
          TrackingRequest request,) async =>
      _remoteDataSource.postAnalystTracking(request);

  Future<int> getUnreadMessageCount(String type) async =>
      _localDataSource.getUnreadMessageCount(type);

  Future<void> updateMessageOnRead(int id) async =>
      _localDataSource.updateMessage(id);

  bool haveCheckIn() => _localDataSource.getHaveCheckIn();

  String vehicleNumber() => _localDataSource.getVehicleNumber();

  String trailerNumber() => _localDataSource.getTrailerNumber();

  int lastCheckIn() => _localDataSource.getLastCheckIn();
}
