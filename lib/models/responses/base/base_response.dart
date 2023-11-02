import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@JsonSerializable(genericArgumentFactories: true)
class BaseResponse<T> {
  @JsonKey(name: "StatusCode")
  final String? statusCode;
  @JsonKey(name: "StatusMessage")
  final String? statusMessage;
  @JsonKey(name: "Value")
  final T? value;

  BaseResponse({
    this.statusCode,
    this.statusMessage,
    this.value,
  });

  factory BaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT,) =>
      _$BaseResponseFromJson(
        json,
        fromJsonT,
      );

  Map<String, dynamic> toJson(Object Function(T value) toJsonT) =>
      _$BaseResponseToJson(
        this,
        toJsonT,
      );
}
