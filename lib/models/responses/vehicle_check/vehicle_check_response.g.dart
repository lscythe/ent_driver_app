// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_check_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleCheckResponse _$VehicleCheckResponseFromJson(
        Map<String, dynamic> json) =>
    VehicleCheckResponse(
      key: json['Key'] as int?,
      no: json['No'] as int?,
      category: json['Category'] as String?,
      value: json['Value'] as String?,
    );

Map<String, dynamic> _$VehicleCheckResponseToJson(
        VehicleCheckResponse instance) =>
    <String, dynamic>{
      'Key': instance.key,
      'No': instance.no,
      'Category': instance.category,
      'Value': instance.value,
    };
