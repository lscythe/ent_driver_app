// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      tokenId: json['TokenID'] as int?,
      userId: json['UserID'] as int?,
      deviceType: json['DeviceType'] as String?,
      token: json['Token'] as String?,
      refreshToken: json['RefreshToken'] as String?,
      ipAddress: json['IpAddress'],
      createdAt: json['CreatedAt'] == null
          ? null
          : DateTime.parse(json['CreatedAt'] as String),
      expiredAt: json['ExpiredAt'] == null
          ? null
          : DateTime.parse(json['ExpiredAt'] as String),
      refreshCount: json['RefreshCount'] as int?,
      clientId: json['ClientId'] as int?,
      driver: json['Driver'] == null
          ? null
          : DriverResponse.fromJson(json['Driver'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'TokenID': instance.tokenId,
      'UserID': instance.userId,
      'DeviceType': instance.deviceType,
      'Token': instance.token,
      'RefreshToken': instance.refreshToken,
      'IpAddress': instance.ipAddress,
      'CreatedAt': instance.createdAt?.toIso8601String(),
      'ExpiredAt': instance.expiredAt?.toIso8601String(),
      'RefreshCount': instance.refreshCount,
      'ClientId': instance.clientId,
      'Driver': instance.driver,
    };
