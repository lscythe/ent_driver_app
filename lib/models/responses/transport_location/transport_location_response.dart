import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transport_location_response.g.dart';

@collection
@JsonSerializable()
class TransportLocationResponse {
  Id? isarId;
  @JsonKey(name: "Id")
  final int? id;
  @JsonKey(name: "Location")
  final String? location;
  @JsonKey(name: "ShiftLocationId")
  final int? shiftLocationId;

  TransportLocationResponse({
    this.id,
    this.location,
    this.shiftLocationId,
  });

  factory TransportLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$TransportLocationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransportLocationResponseToJson(this);
}
