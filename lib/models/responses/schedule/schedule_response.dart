import 'package:json_annotation/json_annotation.dart';

part 'schedule_response.g.dart';

@JsonSerializable()
class ScheduleResponse {
  @JsonKey(name: "Id")
  final int? id;
  @JsonKey(name: "Name")
  final String? name;
  @JsonKey(name: "DateFrom")
  final String? dateFrom;
  @JsonKey(name: "DateTo")
  final String? dateTo;
  @JsonKey(name: "DataTo")
  final String? dataTo;
  @JsonKey(name: "Employee")
  final String? employee;
  @JsonKey(name: "Shift")
  final String? shift;
  @JsonKey(name: "ShiftGroup")
  final String? shiftGroup;
  @JsonKey(name: "LeaveType")
  final String? leaveType;
  @JsonKey(name: "LeaveCode")
  final String? leaveCode;
  @JsonKey(name: "LeaveStatus")
  final String? leaveStatus;

  ScheduleResponse({
    this.id,
    this.name,
    this.dateFrom,
    this.dateTo,
    this.dataTo,
    this.employee,
    this.shift,
    this.shiftGroup,
    this.leaveType,
    this.leaveCode,
    this.leaveStatus,
  });

  factory ScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleResponseToJson(this);
}
