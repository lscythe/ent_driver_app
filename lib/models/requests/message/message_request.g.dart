// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageRequest _$MessageRequestFromJson(Map<String, dynamic> json) =>
    MessageRequest(
      drivers: (json['Drivers'] as List<dynamic>).map((e) => e as int).toList(),
      type: json['Type'] as String?,
    );

Map<String, dynamic> _$MessageRequestToJson(MessageRequest instance) =>
    <String, dynamic>{
      'Drivers': instance.drivers,
      'Type': instance.type,
    };
