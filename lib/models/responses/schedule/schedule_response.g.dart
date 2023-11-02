// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleResponse _$ScheduleResponseFromJson(Map<String, dynamic> json) =>
    ScheduleResponse(
      id: json['Id'] as int?,
      name: json['Name'] as String?,
      dateFrom: json['DateFrom'] == null
          ? null
          : DateTime.parse(json['DateFrom'] as String),
      dateTo: json['DateTo'] == null
          ? null
          : DateTime.parse(json['DateTo'] as String),
      employee: json['Employee'] as String?,
      shift: json['Shift'] as String?,
      shiftGroup: json['ShiftGroup'] as String?,
      leaveType: json['LeaveType'] as String?,
      leaveCode: json['LeaveCode'] as String?,
      leaveStatus: json['LeaveStatus'] as String?,
    );

Map<String, dynamic> _$ScheduleResponseToJson(ScheduleResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'DateFrom': instance.dateFrom?.toIso8601String(),
      'DateTo': instance.dateTo?.toIso8601String(),
      'Employee': instance.employee,
      'Shift': instance.shift,
      'ShiftGroup': instance.shiftGroup,
      'LeaveType': instance.leaveType,
      'LeaveCode': instance.leaveCode,
      'LeaveStatus': instance.leaveStatus,
    };
