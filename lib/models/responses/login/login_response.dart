import 'package:driver/models/responses/driver/driver_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: "TokenID")
  final int? tokenId;
  @JsonKey(name: "UserID")
  final int? userId;
  @JsonKey(name: "DeviceType")
  final String? deviceType;
  @JsonKey(name: "Token")
  final String? token;
  @JsonKey(name: "RefreshToken")
  final String? refreshToken;
  @JsonKey(name: "IpAddress")
  final dynamic ipAddress;
  @JsonKey(name: "CreatedAt")
  final DateTime? createdAt;
  @JsonKey(name: "ExpiredAt")
  final DateTime? expiredAt;
  @JsonKey(name: "RefreshCount")
  final int? refreshCount;
  @JsonKey(name: "ClientId")
  final int? clientId;
  @JsonKey(name: "Driver")
  final DriverResponse? driver;

  LoginResponse({
    this.tokenId,
    this.userId,
    this.deviceType,
    this.token,
    this.refreshToken,
    this.ipAddress,
    this.createdAt,
    this.expiredAt,
    this.refreshCount,
    this.clientId,
    this.driver,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
