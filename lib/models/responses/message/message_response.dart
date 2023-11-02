import 'package:json_annotation/json_annotation.dart';

part 'message_response.g.dart';

@JsonSerializable()
class MessageResponse {
  @JsonKey(name: "Date")
  final DateTime? date;
  @JsonKey(name: "Title")
  final String? title;
  @JsonKey(name: "Message")
  final String? message;

  MessageResponse({
    this.date,
    this.title,
    this.message,
  });

  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MessageResponseToJson(this);
}
