// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_trip_form_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTripFormRequest _$ListTripFormRequestFromJson(Map<String, dynamic> json) =>
    ListTripFormRequest(
      driverId: json['DriverId'] as int,
      date: DateTime.parse(json['Date'] as String),
      vehicle: json['Vehicle'] as String,
    );

Map<String, dynamic> _$ListTripFormRequestToJson(
        ListTripFormRequest instance) =>
    <String, dynamic>{
      'DriverId': instance.driverId,
      'Date': instance.date.toIso8601String(),
      'Vehicle': instance.vehicle,
    };
