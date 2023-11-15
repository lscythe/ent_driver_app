import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_response.g.dart';

@JsonSerializable()
@collection
class MessageResponse {
  @JsonKey(includeFromJson: false, includeToJson: false)
  Id id = Isar.autoIncrement;

  @JsonKey(includeFromJson: false, includeToJson: false)
  bool isRead;

  @JsonKey(includeFromJson: false, includeToJson: false)
  String? type;

  @JsonKey(name: "Date")
  DateTime? date;
  @JsonKey(name: "Title")
  String? title;
  @JsonKey(name: "Message")
  String? message;

  MessageResponse({
    this.date,
    this.title,
    this.message,
    this.isRead = false,
    this.type,
  });

  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MessageResponseToJson(this);
}
