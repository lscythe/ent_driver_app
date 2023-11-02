// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_response.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDriverResponseCollection on Isar {
  IsarCollection<DriverResponse> get driverResponses => this.collection();
}

const DriverResponseSchema = CollectionSchema(
  name: r'DriverResponse',
  id: 738354002514767553,
  properties: {
    r'country': PropertySchema(
      id: 0,
      name: r'country',
      type: IsarType.string,
    ),
    r'drivingExperience': PropertySchema(
      id: 1,
      name: r'drivingExperience',
      type: IsarType.string,
    ),
    r'drivingLicenseClass': PropertySchema(
      id: 2,
      name: r'drivingLicenseClass',
      type: IsarType.string,
    ),
    r'drivingLicenseIssueDate': PropertySchema(
      id: 3,
      name: r'drivingLicenseIssueDate',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 4,
      name: r'email',
      type: IsarType.string,
    ),
    r'employeeNo': PropertySchema(
      id: 5,
      name: r'employeeNo',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 6,
      name: r'id',
      type: IsarType.long,
    ),
    r'joinDate': PropertySchema(
      id: 7,
      name: r'joinDate',
      type: IsarType.string,
    ),
    r'mobile': PropertySchema(
      id: 8,
      name: r'mobile',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 9,
      name: r'name',
      type: IsarType.string,
    ),
    r'passType': PropertySchema(
      id: 10,
      name: r'passType',
      type: IsarType.string,
    ),
    r'psaPassExpiryDate': PropertySchema(
      id: 11,
      name: r'psaPassExpiryDate',
      type: IsarType.string,
    ),
    r'psaPassNumber': PropertySchema(
      id: 12,
      name: r'psaPassNumber',
      type: IsarType.string,
    ),
    r'shiftGroup': PropertySchema(
      id: 13,
      name: r'shiftGroup',
      type: IsarType.string,
    ),
    r'totalLeaveBalance': PropertySchema(
      id: 14,
      name: r'totalLeaveBalance',
      type: IsarType.string,
    )
  },
  estimateSize: _driverResponseEstimateSize,
  serialize: _driverResponseSerialize,
  deserialize: _driverResponseDeserialize,
  deserializeProp: _driverResponseDeserializeProp,
  idName: r'colId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _driverResponseGetId,
  getLinks: _driverResponseGetLinks,
  attach: _driverResponseAttach,
  version: '3.1.0+1',
);

int _driverResponseEstimateSize(
  DriverResponse object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.country;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.drivingExperience;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.drivingLicenseClass;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.drivingLicenseIssueDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.employeeNo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.joinDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.mobile;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.passType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.psaPassExpiryDate;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.psaPassNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.shiftGroup;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.totalLeaveBalance;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _driverResponseSerialize(
  DriverResponse object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.country);
  writer.writeString(offsets[1], object.drivingExperience);
  writer.writeString(offsets[2], object.drivingLicenseClass);
  writer.writeString(offsets[3], object.drivingLicenseIssueDate);
  writer.writeString(offsets[4], object.email);
  writer.writeString(offsets[5], object.employeeNo);
  writer.writeLong(offsets[6], object.id);
  writer.writeString(offsets[7], object.joinDate);
  writer.writeString(offsets[8], object.mobile);
  writer.writeString(offsets[9], object.name);
  writer.writeString(offsets[10], object.passType);
  writer.writeString(offsets[11], object.psaPassExpiryDate);
  writer.writeString(offsets[12], object.psaPassNumber);
  writer.writeString(offsets[13], object.shiftGroup);
  writer.writeString(offsets[14], object.totalLeaveBalance);
}

DriverResponse _driverResponseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DriverResponse(
    country: reader.readStringOrNull(offsets[0]),
    drivingExperience: reader.readStringOrNull(offsets[1]),
    drivingLicenseClass: reader.readStringOrNull(offsets[2]),
    drivingLicenseIssueDate: reader.readStringOrNull(offsets[3]),
    email: reader.readStringOrNull(offsets[4]),
    employeeNo: reader.readStringOrNull(offsets[5]),
    id: reader.readLongOrNull(offsets[6]),
    joinDate: reader.readStringOrNull(offsets[7]),
    mobile: reader.readStringOrNull(offsets[8]),
    name: reader.readStringOrNull(offsets[9]),
    passType: reader.readStringOrNull(offsets[10]),
    psaPassExpiryDate: reader.readStringOrNull(offsets[11]),
    psaPassNumber: reader.readStringOrNull(offsets[12]),
    shiftGroup: reader.readStringOrNull(offsets[13]),
    totalLeaveBalance: reader.readStringOrNull(offsets[14]),
  );
  object.colId = id;
  return object;
}

P _driverResponseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _driverResponseGetId(DriverResponse object) {
  return object.colId;
}

List<IsarLinkBase<dynamic>> _driverResponseGetLinks(DriverResponse object) {
  return [];
}

void _driverResponseAttach(
    IsarCollection<dynamic> col, Id id, DriverResponse object) {
  object.colId = id;
}

extension DriverResponseQueryWhereSort
    on QueryBuilder<DriverResponse, DriverResponse, QWhere> {
  QueryBuilder<DriverResponse, DriverResponse, QAfterWhere> anyColId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DriverResponseQueryWhere
    on QueryBuilder<DriverResponse, DriverResponse, QWhereClause> {
  QueryBuilder<DriverResponse, DriverResponse, QAfterWhereClause> colIdEqualTo(
      Id colId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: colId,
        upper: colId,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterWhereClause>
      colIdNotEqualTo(Id colId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: colId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: colId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: colId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: colId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterWhereClause>
      colIdGreaterThan(Id colId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: colId, includeLower: include),
      );
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterWhereClause> colIdLessThan(
      Id colId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: colId, includeUpper: include),
      );
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterWhereClause> colIdBetween(
    Id lowerColId,
    Id upperColId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerColId,
        includeLower: includeLower,
        upper: upperColId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension DriverResponseQueryFilter
    on QueryBuilder<DriverResponse, DriverResponse, QFilterCondition> {
  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      colIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colId',
        value: value,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      colIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colId',
        value: value,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      colIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colId',
        value: value,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      colIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      countryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      countryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      countryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      countryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      countryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      countryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'country',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      countryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      countryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      countryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      countryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'country',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      countryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      countryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingExperienceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'drivingExperience',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingExperienceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'drivingExperience',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingExperienceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drivingExperience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingExperienceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'drivingExperience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingExperienceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'drivingExperience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingExperienceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'drivingExperience',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingExperienceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'drivingExperience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingExperienceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'drivingExperience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingExperienceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'drivingExperience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingExperienceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'drivingExperience',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingExperienceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drivingExperience',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingExperienceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'drivingExperience',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseClassIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'drivingLicenseClass',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseClassIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'drivingLicenseClass',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseClassEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drivingLicenseClass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseClassGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'drivingLicenseClass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseClassLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'drivingLicenseClass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseClassBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'drivingLicenseClass',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseClassStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'drivingLicenseClass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseClassEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'drivingLicenseClass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseClassContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'drivingLicenseClass',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseClassMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'drivingLicenseClass',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseClassIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drivingLicenseClass',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseClassIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'drivingLicenseClass',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseIssueDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'drivingLicenseIssueDate',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseIssueDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'drivingLicenseIssueDate',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseIssueDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drivingLicenseIssueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseIssueDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'drivingLicenseIssueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseIssueDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'drivingLicenseIssueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseIssueDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'drivingLicenseIssueDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseIssueDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'drivingLicenseIssueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseIssueDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'drivingLicenseIssueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseIssueDateContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'drivingLicenseIssueDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseIssueDateMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'drivingLicenseIssueDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseIssueDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'drivingLicenseIssueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      drivingLicenseIssueDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'drivingLicenseIssueDate',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      emailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      emailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      employeeNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'employeeNo',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      employeeNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'employeeNo',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      employeeNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      employeeNoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'employeeNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      employeeNoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'employeeNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      employeeNoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'employeeNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      employeeNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'employeeNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      employeeNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'employeeNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      employeeNoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'employeeNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      employeeNoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'employeeNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      employeeNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'employeeNo',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      employeeNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'employeeNo',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition> idEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      idGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      idLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition> idBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      joinDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'joinDate',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      joinDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'joinDate',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      joinDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'joinDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      joinDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'joinDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      joinDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'joinDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      joinDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'joinDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      joinDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'joinDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      joinDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'joinDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      joinDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'joinDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      joinDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'joinDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      joinDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'joinDate',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      joinDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'joinDate',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      mobileIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mobile',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      mobileIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mobile',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      mobileEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      mobileGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      mobileLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      mobileBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mobile',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      mobileStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      mobileEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      mobileContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      mobileMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mobile',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      mobileIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mobile',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      mobileIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mobile',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      passTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'passType',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      passTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'passType',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      passTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'passType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      passTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'passType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      passTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'passType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      passTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'passType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      passTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'passType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      passTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'passType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      passTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'passType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      passTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'passType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      passTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'passType',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      passTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'passType',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassExpiryDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'psaPassExpiryDate',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassExpiryDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'psaPassExpiryDate',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassExpiryDateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'psaPassExpiryDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassExpiryDateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'psaPassExpiryDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassExpiryDateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'psaPassExpiryDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassExpiryDateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'psaPassExpiryDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassExpiryDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'psaPassExpiryDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassExpiryDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'psaPassExpiryDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassExpiryDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'psaPassExpiryDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassExpiryDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'psaPassExpiryDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassExpiryDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'psaPassExpiryDate',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassExpiryDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'psaPassExpiryDate',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'psaPassNumber',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'psaPassNumber',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'psaPassNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'psaPassNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'psaPassNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'psaPassNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'psaPassNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'psaPassNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'psaPassNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'psaPassNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'psaPassNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      psaPassNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'psaPassNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      shiftGroupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shiftGroup',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      shiftGroupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shiftGroup',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      shiftGroupEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      shiftGroupGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shiftGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      shiftGroupLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shiftGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      shiftGroupBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shiftGroup',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      shiftGroupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shiftGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      shiftGroupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shiftGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      shiftGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shiftGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      shiftGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shiftGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      shiftGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shiftGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      shiftGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shiftGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      totalLeaveBalanceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalLeaveBalance',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      totalLeaveBalanceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalLeaveBalance',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      totalLeaveBalanceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalLeaveBalance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      totalLeaveBalanceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalLeaveBalance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      totalLeaveBalanceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalLeaveBalance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      totalLeaveBalanceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalLeaveBalance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      totalLeaveBalanceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'totalLeaveBalance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      totalLeaveBalanceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'totalLeaveBalance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      totalLeaveBalanceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'totalLeaveBalance',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      totalLeaveBalanceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'totalLeaveBalance',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      totalLeaveBalanceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalLeaveBalance',
        value: '',
      ));
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterFilterCondition>
      totalLeaveBalanceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'totalLeaveBalance',
        value: '',
      ));
    });
  }
}

extension DriverResponseQueryObject
    on QueryBuilder<DriverResponse, DriverResponse, QFilterCondition> {}

extension DriverResponseQueryLinks
    on QueryBuilder<DriverResponse, DriverResponse, QFilterCondition> {}

extension DriverResponseQuerySortBy
    on QueryBuilder<DriverResponse, DriverResponse, QSortBy> {
  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> sortByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByDrivingExperience() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingExperience', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByDrivingExperienceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingExperience', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByDrivingLicenseClass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingLicenseClass', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByDrivingLicenseClassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingLicenseClass', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByDrivingLicenseIssueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingLicenseIssueDate', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByDrivingLicenseIssueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingLicenseIssueDate', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByEmployeeNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeNo', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByEmployeeNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeNo', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> sortByJoinDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'joinDate', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByJoinDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'joinDate', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> sortByMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> sortByPassType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passType', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByPassTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passType', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByPsaPassExpiryDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'psaPassExpiryDate', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByPsaPassExpiryDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'psaPassExpiryDate', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByPsaPassNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'psaPassNumber', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByPsaPassNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'psaPassNumber', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByShiftGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroup', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByShiftGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroup', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByTotalLeaveBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalLeaveBalance', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      sortByTotalLeaveBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalLeaveBalance', Sort.desc);
    });
  }
}

extension DriverResponseQuerySortThenBy
    on QueryBuilder<DriverResponse, DriverResponse, QSortThenBy> {
  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> thenByColId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colId', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> thenByColIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colId', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> thenByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByDrivingExperience() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingExperience', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByDrivingExperienceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingExperience', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByDrivingLicenseClass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingLicenseClass', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByDrivingLicenseClassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingLicenseClass', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByDrivingLicenseIssueDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingLicenseIssueDate', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByDrivingLicenseIssueDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'drivingLicenseIssueDate', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByEmployeeNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeNo', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByEmployeeNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'employeeNo', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> thenByJoinDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'joinDate', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByJoinDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'joinDate', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> thenByMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy> thenByPassType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passType', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByPassTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passType', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByPsaPassExpiryDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'psaPassExpiryDate', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByPsaPassExpiryDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'psaPassExpiryDate', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByPsaPassNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'psaPassNumber', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByPsaPassNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'psaPassNumber', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByShiftGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroup', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByShiftGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shiftGroup', Sort.desc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByTotalLeaveBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalLeaveBalance', Sort.asc);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QAfterSortBy>
      thenByTotalLeaveBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalLeaveBalance', Sort.desc);
    });
  }
}

extension DriverResponseQueryWhereDistinct
    on QueryBuilder<DriverResponse, DriverResponse, QDistinct> {
  QueryBuilder<DriverResponse, DriverResponse, QDistinct> distinctByCountry(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'country', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct>
      distinctByDrivingExperience({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'drivingExperience',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct>
      distinctByDrivingLicenseClass({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'drivingLicenseClass',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct>
      distinctByDrivingLicenseIssueDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'drivingLicenseIssueDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct> distinctByEmployeeNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'employeeNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct> distinctById() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id');
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct> distinctByJoinDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'joinDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct> distinctByMobile(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mobile', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct> distinctByPassType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'passType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct>
      distinctByPsaPassExpiryDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'psaPassExpiryDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct>
      distinctByPsaPassNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'psaPassNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct> distinctByShiftGroup(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shiftGroup', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DriverResponse, DriverResponse, QDistinct>
      distinctByTotalLeaveBalance({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalLeaveBalance',
          caseSensitive: caseSensitive);
    });
  }
}

extension DriverResponseQueryProperty
    on QueryBuilder<DriverResponse, DriverResponse, QQueryProperty> {
  QueryBuilder<DriverResponse, int, QQueryOperations> colIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colId');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations> countryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'country');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations>
      drivingExperienceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'drivingExperience');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations>
      drivingLicenseClassProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'drivingLicenseClass');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations>
      drivingLicenseIssueDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'drivingLicenseIssueDate');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations> employeeNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'employeeNo');
    });
  }

  QueryBuilder<DriverResponse, int?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations> joinDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'joinDate');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations> mobileProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mobile');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations> passTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'passType');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations>
      psaPassExpiryDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'psaPassExpiryDate');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations>
      psaPassNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'psaPassNumber');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations> shiftGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shiftGroup');
    });
  }

  QueryBuilder<DriverResponse, String?, QQueryOperations>
      totalLeaveBalanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalLeaveBalance');
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriverResponse _$DriverResponseFromJson(Map<String, dynamic> json) =>
    DriverResponse(
      id: json['Id'] as int?,
      passType: json['PassType'] as String?,
      psaPassNumber: json['PSAPassNumber'] as String?,
      psaPassExpiryDate: json['PSAPassExpiryDate'] as String?,
      totalLeaveBalance: json['TotalLeaveBalance'] as String?,
      country: json['Country'] as String?,
      mobile: json['Mobile'] as String?,
      joinDate: json['JoinDate'] as String?,
      employeeNo: json['EmployeeNo'] as String?,
      email: json['Email'] as String?,
      drivingLicenseClass: json['DrivingLicenseClass'] as String?,
      drivingLicenseIssueDate: json['DrivingLicenseIssueDate'] as String?,
      drivingExperience: json['DrivingExperience'] as String?,
      name: json['Name'] as String?,
      shiftGroup: json['ShiftGroup'] as String?,
    );

Map<String, dynamic> _$DriverResponseToJson(DriverResponse instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'PassType': instance.passType,
      'PSAPassNumber': instance.psaPassNumber,
      'PSAPassExpiryDate': instance.psaPassExpiryDate,
      'TotalLeaveBalance': instance.totalLeaveBalance,
      'Country': instance.country,
      'Mobile': instance.mobile,
      'JoinDate': instance.joinDate,
      'EmployeeNo': instance.employeeNo,
      'Email': instance.email,
      'DrivingLicenseClass': instance.drivingLicenseClass,
      'DrivingLicenseIssueDate': instance.drivingLicenseIssueDate,
      'DrivingExperience': instance.drivingExperience,
      'Name': instance.name,
      'ShiftGroup': instance.shiftGroup,
    };
