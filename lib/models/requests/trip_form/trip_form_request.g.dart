// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_form_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripFormRequest _$TripFormRequestFromJson(Map<String, dynamic> json) =>
    TripFormRequest(
      driverId: json['DriverId'] as int,
      shiftName: json['ShiftName'] as String,
      vehicle: json['Vehicle'] as String,
      containerNo: json['ContainerNo'] as String,
      transportFrom: json['TransportFrom'] as String,
      deliveryTo: json['DeliveryTo'] as String,
      contaierSize: json['ContaierSize'] as int,
    );

Map<String, dynamic> _$TripFormRequestToJson(TripFormRequest instance) =>
    <String, dynamic>{
      'DriverId': instance.driverId,
      'ShiftName': instance.shiftName,
      'Vehicle': instance.vehicle,
      'ContainerNo': instance.containerNo,
      'TransportFrom': instance.transportFrom,
      'DeliveryTo': instance.deliveryTo,
      'ContaierSize': instance.contaierSize,
    };
