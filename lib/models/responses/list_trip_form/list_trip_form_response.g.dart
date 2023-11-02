// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_trip_form_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTripFormResponse _$ListTripFormResponseFromJson(
        Map<String, dynamic> json) =>
    ListTripFormResponse(
      id: json['Id'] as int?,
      shiftGroupId: json['ShiftGroupId'] as int?,
      driverId: json['DriverId'] as int?,
      name: json['Name'] as String?,
      shiftGroup: json['ShiftGroup'] as String?,
      shiftDate: json['ShiftDate'] == null
          ? null
          : DateTime.parse(json['ShiftDate'] as String),
      vehicle: json['Vehicle'] as String?,
      containerNumber: json['ContainerNumber'] as String?,
      transportFrom: json['TransportFrom'] as String?,
      deliveryTo: json['DeliveryTo'] as String?,
      size: json['Size'] as int?,
    );

Map<String, dynamic> _$ListTripFormResponseToJson(
        ListTripFormResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'ShiftGroupId': instance.shiftGroupId,
      'DriverId': instance.driverId,
      'Name': instance.name,
      'ShiftGroup': instance.shiftGroup,
      'ShiftDate': instance.shiftDate?.toIso8601String(),
      'Vehicle': instance.vehicle,
      'ContainerNumber': instance.containerNumber,
      'TransportFrom': instance.transportFrom,
      'DeliveryTo': instance.deliveryTo,
      'Size': instance.size,
    };
