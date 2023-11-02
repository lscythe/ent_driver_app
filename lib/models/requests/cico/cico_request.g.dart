// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cico_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CicoRequest _$CicoRequestFromJson(Map<String, dynamic> json) => CicoRequest(
      driverId: json['DriverId'] as int,
      shiftName: json['ShiftName'] as String,
      vehicleNumber: json['VehicleNumber'] as String,
      trailerNumber: json['TrailerNumber'] as String,
      type: json['Type'] as String,
    );

Map<String, dynamic> _$CicoRequestToJson(CicoRequest instance) =>
    <String, dynamic>{
      'DriverId': instance.driverId,
      'ShiftName': instance.shiftName,
      'VehicleNumber': instance.vehicleNumber,
      'TrailerNumber': instance.trailerNumber,
      'Type': instance.type,
    };
