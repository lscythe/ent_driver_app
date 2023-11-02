// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageResponse _$MessageResponseFromJson(Map<String, dynamic> json) =>
    MessageResponse(
      date:
          json['Date'] == null ? null : DateTime.parse(json['Date'] as String),
      title: json['Title'] as String?,
      message: json['Message'] as String?,
    );

Map<String, dynamic> _$MessageResponseToJson(MessageResponse instance) =>
    <String, dynamic>{
      'Date': instance.date?.toIso8601String(),
      'Title': instance.title,
      'Message': instance.message,
    };
