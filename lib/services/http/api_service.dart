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
}
