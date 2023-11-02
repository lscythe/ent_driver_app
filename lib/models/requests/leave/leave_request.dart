import 'package:json_annotation/json_annotation.dart';

part 'leave_request.g.dart';

@JsonSerializable()
class LeaveRequest {
  @JsonKey(name: "DriverId")
  final int driverId;
  @JsonKey(name: "LeaveType")
  final String leaveType;
  @JsonKey(name: "Date")
  final DateTime date;
  @JsonKey(name: "TotalDay")
  final int totalDay;

  LeaveRequest({
    required this.driverId,
    required this.leaveType,
    required this.date,
    required this.totalDay,
  });

  factory LeaveRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LeaveRequestToJson(this);
}
