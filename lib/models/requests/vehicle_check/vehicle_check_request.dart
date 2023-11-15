import 'package:json_annotation/json_annotation.dart';

part 'vehicle_check_request.g.dart';

@JsonSerializable()
class VehicleCheckRequest {
  @JsonKey(name: "DriverId")
  final int driverId;
  @JsonKey(name: "Questions")
  final List<Question> questions;

  VehicleCheckRequest({
    required this.driverId,
    required this.questions,
  });

  factory VehicleCheckRequest.fromJson(Map<String, dynamic> json) =>
      _$VehicleCheckRequestFromJson(json);

  Map<String, dynamic> toJson() => _$VehicleCheckRequestToJson(this);
}

@JsonSerializable()
class Question {
  @JsonKey(name: "Key")
  final int key;
  @JsonKey(name: "Value")
  bool value;

  Question({
    required this.key,
    required this.value,
  });

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionToJson(this);
}
