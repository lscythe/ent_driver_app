import 'package:json_annotation/json_annotation.dart';

part 'vehicle_check_response.g.dart';

@JsonSerializable()
class VehicleCheckResponse {
  @JsonKey(name: "Key")
  final int? key;
  @JsonKey(name: "No")
  final int? no;
  @JsonKey(name: "Category")
  final String? category;
  @JsonKey(name: "Value")
  final String? value;

  VehicleCheckResponse({
    this.key,
    this.no,
    this.category,
    this.value,
  });

  factory VehicleCheckResponse.fromJson(Map<String, dynamic> json) =>
      _$VehicleCheckResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleCheckResponseToJson(this);
}
