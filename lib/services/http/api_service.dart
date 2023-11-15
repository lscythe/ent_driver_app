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
  Future<BaseResponse<EmptyResponse>> postVehicleChek(
    @Body() VehicleCheckRequest request,
  );
}
