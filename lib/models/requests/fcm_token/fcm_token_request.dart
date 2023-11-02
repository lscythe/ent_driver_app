import 'package:json_annotation/json_annotation.dart';

part 'fcm_token_request.g.dart';

@JsonSerializable()
class FcmTokenRequest {
  @JsonKey(name: "user_id")
  final String userId;
  @JsonKey(name: "device_id")
  final String deviceId;
  @JsonKey(name: "device_token")
  final String deviceToken;

  FcmTokenRequest({
    required this.userId,
    required this.deviceId,
    required this.deviceToken,
  });

  factory FcmTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$FcmTokenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FcmTokenRequestToJson(this);
}
