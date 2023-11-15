import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list_trip_form_response.g.dart';

@JsonSerializable()
@collection
class ListTripFormResponse {
  @JsonKey(includeFromJson: false, includeToJson: false)
  Id colId = Isar.autoIncrement;

  @JsonKey(name: "Id")
  int? id;
  @JsonKey(name: "ShiftGroupId")
  int? shiftGroupId;
  @JsonKey(name: "DriverId")
  int? driverId;
  @JsonKey(name: "Name")
  String? name;
  @JsonKey(name: "ShiftGroup")
  String? shiftGroup;
  @JsonKey(name: "ShiftDate")
  DateTime? shiftDate;
  @JsonKey(name: "Vehicle")
  String? vehicle;
  @JsonKey(name: "ContainerNumber")
  String? containerNumber;
  @JsonKey(name: "TransportFrom")
  String? transportFrom;
  @JsonKey(name: "DeliveryTo")
  String? deliveryTo;
  @JsonKey(name: "Size")
  int? size;

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

class ContainerFilter {
  String name;
  bool isEnable;

  ContainerFilter({required this.name, this.isEnable = false});
}
