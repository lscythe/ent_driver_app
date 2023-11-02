import 'package:json_annotation/json_annotation.dart';

part 'leave_type_response.g.dart';

@JsonSerializable()
class LeaveTypeResponse {
  @JsonKey(name: "Id")
  final int? id;
  @JsonKey(name: "Key")
  final String? key;
  @JsonKey(name: "Description")
  final String? description;

  LeaveTypeResponse({
    this.id,
    this.key,
    this.description,
  });

  factory LeaveTypeResponse.fromJson(Map<String, dynamic> json) =>
      _$LeaveTypeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LeaveTypeResponseToJson(this);
}
