import 'package:dio/dio.dart';
import 'package:driver/models/models.dart';
import 'package:driver/services/http/http.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RemoteDataSource {
  const RemoteDataSource(this._api);

  final ApiService _api;

  Future<Result<LoginResponse>> postLogin(LoginRequest request) =>
      getResultWithSingleObject(_api.postLogin(request));

  Future<Result<EmptyResponse>> postTracking(TrackingRequest request) =>
      getResultWithSingleObject(_api.postTracking(request));

  Future<Result<EmptyResponse>> postCico(CicoRequest request) =>
      getResultWithSingleObject(_api.postCico(request));

  Future<Result<List<VehicleCheckResponse>>> postVehicleCheckList() =>
      getResultWithSingleObject(_api.postVehicleCheckList());

  Future<Result<EmptyResponse>> postVehicleCheck(VehicleCheckRequest request) =>
      getResultWithSingleObject(_api.postVehicleCheck(request));

  Future<Result<List<MessageResponse>>> postMessage(MessageRequest request) =>
      getResultWithSingleObject(_api.postMessage(request));

  Future<Result<List<ListTripFormResponse>>> postListTripForm(
    ListTripFormRequest request,
  ) =>
      getResultWithSingleObject(_api.postListTripForm(request));

  Future<Result<EmptyResponse>> postTripForm(TripFormRequest request) =>
      getResultWithSingleObject(_api.postTripForm(request));

  Future<Result<List<TransportLocationResponse>>> postTransportLocation() =>
      getResultWithSingleObject(_api.postTransportLocation());

  Future<Result<List<ScheduleResponse>>> postSchedule(
          ScheduleRequest request) =>
      getResultWithSingleObject(_api.postSchedule(request));

  Future<Result<T>> getResultWithSingleObject<T>(
    Future<BaseResponse<T>> apiCall,
  ) async {
    try {
      final BaseResponse<T> response = await apiCall;
      if (response.value != null) {
        return Success(response.value as T);
      } else {
        return errorHandler(response);
      }
    } on DioException catch (e) {
      final resp = e.response;
      return Failure(
        message: resp?.statusMessage,
        code: resp?.statusCode.toString(),
      );
    } catch (e) {
      return Failure(message: e.toString());
    }
  }

  Result<T> errorHandler<T>(BaseResponse<dynamic>? response) {
    BaseResponse<T> errorDetail;
    try {
      errorDetail = BaseResponse(
        statusCode: response?.statusCode ?? "0",
        statusMessage: response?.statusMessage,
      );
    } on Exception catch (e) {
      errorDetail = BaseResponse(statusMessage: e.toString());
    }

    return Failure(
      message: errorDetail.statusMessage,
      code: errorDetail.statusCode,
    );
  }
}
