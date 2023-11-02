import 'package:json_annotation/json_annotation.dart';

part 'schedule_request.g.dart';

@JsonSerializable()
class ScheduleRequest {
  @JsonKey(name: "Type")
  final String type;
  @JsonKey(name: "Period")
  final DateTime period;
  @JsonKey(name: "DriverId")
  final int driverId;

  ScheduleRequest({
    required this.type,
    required this.period,
    required this.driverId,
  });

  factory ScheduleRequest.fromJson(Map<String, dynamic> json) =>
      _$ScheduleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleRequestToJson(this);
}
