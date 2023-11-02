import 'package:json_annotation/json_annotation.dart';

part 'trip_form_request.g.dart';

@JsonSerializable()
class TripFormRequest {
  @JsonKey(name: "DriverId")
  final int driverId;
  @JsonKey(name: "ShiftName")
  final String shiftName;
  @JsonKey(name: "Vehicle")
  final String vehicle;
  @JsonKey(name: "ContainerNo")
  final String containerNo;
  @JsonKey(name: "TransportFrom")
  final String transportFrom;
  @JsonKey(name: "DeliveryTo")
  final String deliveryTo;
  @JsonKey(name: "ContaierSize")
  final int contaierSize;

  TripFormRequest({
    required this.driverId,
    required this.shiftName,
    required this.vehicle,
    required this.containerNo,
    required this.transportFrom,
    required this.deliveryTo,
    required this.contaierSize,
  });

  factory TripFormRequest.fromJson(Map<String, dynamic> json) =>
      _$TripFormRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TripFormRequestToJson(this);
}
