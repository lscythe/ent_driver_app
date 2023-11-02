// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_check_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleCheckRequest _$VehicleCheckRequestFromJson(Map<String, dynamic> json) =>
    VehicleCheckRequest(
      driverId: json['DriverId'] as int,
      questions: (json['Questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VehicleCheckRequestToJson(
        VehicleCheckRequest instance) =>
    <String, dynamic>{
      'DriverId': instance.driverId,
      'Questions': instance.questions,
    };

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      key: json['Key'] as int,
      value: json['Value'] as bool,
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'Key': instance.key,
      'Value': instance.value,
    };
