import 'package:json_annotation/json_annotation.dart';

part 'message_request.g.dart';

@JsonSerializable()
class MessageRequest {
  @JsonKey(name: "Drivers")
  final List<int> drivers;
  @JsonKey(name: "Type")
  final String? type;

  MessageRequest({
    required this.drivers,
    this.type,
  });

  factory MessageRequest.fromJson(Map<String, dynamic> json) =>
      _$MessageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MessageRequestToJson(this);
}
