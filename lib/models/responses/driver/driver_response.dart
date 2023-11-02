import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'driver_response.g.dart';

@JsonSerializable()
@collection
class DriverResponse {
  @JsonKey(includeFromJson: false, includeToJson: false)
  Id colId = Isar.autoIncrement;

  @JsonKey(name: "Id")
  final int? id;
  @JsonKey(name: "PassType")
  final String? passType;
  @JsonKey(name: "PSAPassNumber")
  final String? psaPassNumber;
  @JsonKey(name: "PSAPassExpiryDate")
  final String? psaPassExpiryDate;
  @JsonKey(name: "TotalLeaveBalance")
  final String? totalLeaveBalance;
  @JsonKey(name: "Country")
  final String? country;
  @JsonKey(name: "Mobile")
  final String? mobile;
  @JsonKey(name: "JoinDate")
  final String? joinDate;
  @JsonKey(name: "EmployeeNo")
  final String? employeeNo;
  @JsonKey(name: "Email")
  final String? email;
  @JsonKey(name: "DrivingLicenseClass")
  final String? drivingLicenseClass;
  @JsonKey(name: "DrivingLicenseIssueDate")
  final String? drivingLicenseIssueDate;
  @JsonKey(name: "DrivingExperience")
  final String? drivingExperience;
  @JsonKey(name: "Name")
  final String? name;
  @JsonKey(name: "ShiftGroup")
  final String? shiftGroup;

  DriverResponse({
    this.id,
    this.passType,
    this.psaPassNumber,
    this.psaPassExpiryDate,
    this.totalLeaveBalance,
    this.country,
    this.mobile,
    this.joinDate,
    this.employeeNo,
    this.email,
    this.drivingLicenseClass,
    this.drivingLicenseIssueDate,
    this.drivingExperience,
    this.name,
    this.shiftGroup,
  });

  factory DriverResponse.fromJson(Map<String, dynamic> json) =>
      _$DriverResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DriverResponseToJson(this);
}
