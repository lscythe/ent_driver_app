// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransportLocationResponse _$TransportLocationResponseFromJson(
        Map<String, dynamic> json) =>
    TransportLocationResponse(
      id: json['Id'] as int?,
      location: json['Location'] as String?,
      shiftLocationId: json['ShiftLocationId'] as int?,
    );

Map<String, dynamic> _$TransportLocationResponseToJson(
        TransportLocationResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Location': instance.location,
      'ShiftLocationId': instance.shiftLocationId,
    };
