// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackingRequest _$TrackingRequestFromJson(Map<String, dynamic> json) =>
    TrackingRequest(
      actionType: json['ActionType'] as String,
      driverId: json['DriverId'] as int,
      lat: json['Lat'] as String,
      lng: json['Lng'] as String,
      speed: json['Speed'] as String?,
    );

Map<String, dynamic> _$TrackingRequestToJson(TrackingRequest instance) =>
    <String, dynamic>{
      'ActionType': instance.actionType,
      'DriverId': instance.driverId,
      'Lat': instance.lat,
      'Lng': instance.lng,
      'Speed': instance.speed,
    };
