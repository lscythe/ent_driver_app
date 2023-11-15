// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_trip_form_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListTripFormRequest _$ListTripFormRequestFromJson(Map<String, dynamic> json) =>
    ListTripFormRequest(
      driverId: json['DriverId'] as int,
      date: json['Date'] as String,
    );

Map<String, dynamic> _$ListTripFormRequestToJson(
        ListTripFormRequest instance) =>
    <String, dynamic>{
      'DriverId': instance.driverId,
      'Date': instance.date,
    };
