// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FcmTokenRequest _$FcmTokenRequestFromJson(Map<String, dynamic> json) =>
    FcmTokenRequest(
      userId: json['user_id'] as String,
      deviceId: json['device_id'] as String,
      deviceToken: json['device_token'] as String,
    );

Map<String, dynamic> _$FcmTokenRequestToJson(FcmTokenRequest instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'device_id': instance.deviceId,
      'device_token': instance.deviceToken,
    };
