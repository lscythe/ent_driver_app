import 'package:json_annotation/json_annotation.dart';

part 'list_trip_form_request.g.dart';

@JsonSerializable()
class ListTripFormRequest {
  @JsonKey(name: "DriverId")
  final int driverId;
  @JsonKey(name: "Date")
  final String date;

  ListTripFormRequest({
    required this.driverId,
    required this.date,
  });

  factory ListTripFormRequest.fromJson(Map<String, dynamic> json) =>
      _$ListTripFormRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ListTripFormRequestToJson(this);
}
