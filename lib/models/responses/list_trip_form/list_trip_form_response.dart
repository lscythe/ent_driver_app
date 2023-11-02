import 'package:json_annotation/json_annotation.dart';

part 'list_trip_form_response.g.dart';

@JsonSerializable()
class ListTripFormResponse {
  @JsonKey(name: "Id")
  final int? id;
  @JsonKey(name: "ShiftGroupId")
  final int? shiftGroupId;
  @JsonKey(name: "DriverId")
  final int? driverId;
  @JsonKey(name: "Name")
  final String? name;
  @JsonKey(name: "ShiftGroup")
  final String? shiftGroup;
  @JsonKey(name: "ShiftDate")
  final DateTime? shiftDate;
  @JsonKey(name: "Vehicle")
  final String? vehicle;
  @JsonKey(name: "ContainerNumber")
  final String? containerNumber;
  @JsonKey(name: "TransportFrom")
  final String? transportFrom;
  @JsonKey(name: "DeliveryTo")
  final String? deliveryTo;
  @JsonKey(name: "Size")
  final int? size;

  ListTripFormResponse({
    this.id,
    this.shiftGroupId,
    this.driverId,
    this.name,
    this.shiftGroup,
    this.shiftDate,
    this.vehicle,
    this.containerNumber,
    this.transportFrom,
    this.deliveryTo,
    this.size,
  });

  factory ListTripFormResponse.fromJson(Map<String, dynamic> json) =>
      _$ListTripFormResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ListTripFormResponseToJson(this);
}
