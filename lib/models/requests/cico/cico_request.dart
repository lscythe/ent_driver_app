import 'package:json_annotation/json_annotation.dart';

part 'cico_request.g.dart';

@JsonSerializable()
class CicoRequest {
  @JsonKey(name: "DriverId")
  final int driverId;
  @JsonKey(name: "ShiftName")
  final String shiftName;
  @JsonKey(name: "VehicleNumber")
  final String vehicleNumber;
  @JsonKey(name: "TrailerNumber")
  final String trailerNumber;
  @JsonKey(name: "Type")
  final String type;

  CicoRequest({
    required this.driverId,
    required this.shiftName,
    required this.vehicleNumber,
    required this.trailerNumber,
    required this.type,
  });

  factory CicoRequest.fromJson(Map<String, dynamic> json) =>
      _$CicoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CicoRequestToJson(this);
}
