import 'package:dio/dio.dart';
import 'package:driver/constants/constants.dart';
import 'package:driver/models/models.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST("${ApiConstants.authPath}driver-auth")
  Future<BaseResponse<LoginResponse>> postLogin(@Body() LoginRequest request);

  @POST("${ApiConstants.analystPath}Tracking")
  Future<BaseResponse<EmptyResponse>> postTracking(
    @Body() TrackingRequest request,
  );

  @POST("${ApiConstants.driverPath}CheckIn")
  Future<BaseResponse<EmptyResponse>> postCico(@Body() CicoRequest request);

  @POST("${ApiConstants.driverPath}get-pre-op-check")
  Future<BaseResponse<List<VehicleCheckResponse>>> postVehicleCheckList();

  @POST("${ApiConstants.driverPath}submit-pre-op-check")
  Future<BaseResponse<EmptyResponse>> postVehicleCheck(
    @Body() VehicleCheckRequest request,
  );

  @POST("${ApiConstants.driverPath}Messages")
  Future<BaseResponse<List<MessageResponse>>> postMessage(
    @Body() MessageRequest request,
  );

  @POST("${ApiConstants.driverPath}List-Trip-Form")
  Future<BaseResponse<List<ListTripFormResponse>>> postListTripForm(
    @Body() ListTripFormRequest request,
  );

  @POST("${ApiConstants.driverPath}Trip-Form")
  Future<BaseResponse<EmptyResponse>> postTripForm(
    @Body() TripFormRequest request,
  );

  @POST("${ApiConstants.transportLocationPath}List")
  Future<BaseResponse<List<TransportLocationResponse>>> postTransportLocation();

  @POST("${ApiConstants.driverPath}Schedule")
  Future<BaseResponse<List<ScheduleResponse>>> postSchedule(
    @Body() ScheduleRequest request,
  );
}
