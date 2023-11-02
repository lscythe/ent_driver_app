import 'package:json_annotation/json_annotation.dart';

part 'tracking_request.g.dart';

@JsonSerializable()
class TrackingRequest {
  @JsonKey(name: "ActionType")
  final String actionType;
  @JsonKey(name: "DriverId")
  final int driverId;
  @JsonKey(name: "Lat")
  final String lat;
  @JsonKey(name: "Lng")
  final String lng;
  @JsonKey(name: "Speed")
  final String? speed;

  TrackingRequest({
    required this.actionType,
    required this.driverId,
    required this.lat,
    required this.lng,
    this.speed,
  });

  factory TrackingRequest.fromJson(Map<String, dynamic> json) =>
      _$TrackingRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TrackingRequestToJson(this);
}
