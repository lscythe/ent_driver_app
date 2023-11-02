// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaveRequest _$LeaveRequestFromJson(Map<String, dynamic> json) => LeaveRequest(
      driverId: json['DriverId'] as int,
      leaveType: json['LeaveType'] as String,
      date: DateTime.parse(json['Date'] as String),
      totalDay: json['TotalDay'] as int,
    );

Map<String, dynamic> _$LeaveRequestToJson(LeaveRequest instance) =>
    <String, dynamic>{
      'DriverId': instance.driverId,
      'LeaveType': instance.leaveType,
      'Date': instance.date.toIso8601String(),
      'TotalDay': instance.totalDay,
    };
